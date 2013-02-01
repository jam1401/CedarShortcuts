#import "CDRSOpenAlternateMenu.h"
#import "CDRSOpenAlternate.h"
#import "CDRSXcode.h"

@implementation CDRSOpenAlternateMenu

- (void)alternateBetweenSpec:(id)sender {
    [[[[CDRSOpenAlternate alloc] init] autorelease] alternateBetweenSpec];
}

- (void)openAlternateInAdjacentEditor:(id)sender {
    [[[[CDRSOpenAlternate alloc] init] autorelease] openAlternateInAdjacentEditor];
}

- (void)attach {
    NSMenu *navigateMenu = [CDRSXcode menuWithTitle:@"Navigate"];

    // Seems that bottom items in Navigate menu are manipulated at times
    // so let's just insert above specific item that's always there
    NSInteger index = [navigateMenu indexOfItemWithTitle:@"Jump to Selection"];

    // insert backwards
    [navigateMenu insertItem:NSMenuItem.separatorItem atIndex:index];
    [navigateMenu insertItem:self._openSpecOrImplInAdjacentEditorItem atIndex:index];
    [navigateMenu insertItem:self._alternateBetweenSpecItem atIndex:index];
}

#pragma mark - Menu items
static NSString * const gotoSpecKeyEquivalent = @"t";

- (NSMenuItem *)_openSpecOrImplInAdjacentEditorItem {
    NSMenuItem *item = [[[NSMenuItem alloc] init] autorelease];
    item.title = @"Open Spec/Impl in Adjacent Editor";
    item.target = self;
    item.action = @selector(openAlternateInAdjacentEditor:);
    item.keyEquivalent = gotoSpecKeyEquivalent;
    item.keyEquivalentModifierMask = NSAlternateKeyMask | NSCommandKeyMask;
    return item;
}

- (NSMenuItem *)_alternateBetweenSpecItem {
    NSMenuItem *item = [[[NSMenuItem alloc] init] autorelease];
    item.title = @"Alternate Between Spec";
    item.target = self;
    item.action = @selector(alternateBetweenSpec:);
    item.keyEquivalent = gotoSpecKeyEquivalent;
    item.keyEquivalentModifierMask = NSShiftKeyMask | NSCommandKeyMask;
    return item;
}
@end
