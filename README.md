CedarShortcuts is an Xcode 4 plugin that adds handy shortcuts for
[Cedar](http://github.com/pivotal/cedar) (testing framework) to the
Xcode menus. For example: Cedar allows you to focus on examples with 
`fit/fdescribe` but with this plugin you can select `it/describe` with your 
cursor and use a shortcut instead.

* Install by building this project

* Shortcuts

    `Ctrl + Alt + U`  
    Runs example under the cursor in the currently active file  
    (Product > Run Focused Spec)

    `Ctrl + Alt + Cmd + U`  
    Runs the all examples in the currently active file  
    (Product > Run Focused File)

    `Shift + Ctrl + Alt + Cmd + U`  
    Runs the previously focused example(s)  
    (Product > Run Last Focused Spec(s))

    `Ctrl + Alt + I`  
    Insert `#import` declaration for a symbol under the cursor  
    (Edit > Insert Import)

    `Shift + Cmd + T`  
    Alternate between Spec and implementation in current editor  
    (Navigate > Alternate Between Spec)

    `Alt + Cmd + T`  
    Open alternate (spec or implementation) in adjacent editor  
    (Navigate > Open Spec/Impl in Adjacent Editor)

    `Ctrl + Alt + E`  
    Show list of recently opened files  
    (View > Standard Editor > Show Recent Files)

You can use OS X keyboard preferences pane to override shortcut for any menu item
(System Preferences > Keyboard > Keyboard Shortcuts > Application Shortcuts > '+').

(Plugin can be uninstalled by removing `CedarShortcuts.xcplugin` from
`~/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins`)
