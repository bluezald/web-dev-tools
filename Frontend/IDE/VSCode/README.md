# My Custom Keybindings:
- keybindings.json
```json
// Place your key bindings in this file to overwrite the defaultsauto[]
[
    {
        "key": "ctrl+shift+[",
        "command": "editor.foldAll",
        "when": "editorTextFocus"
    },
    {
        "key": "ctrl+k ctrl+0",
        "command": "-editor.foldAll",
        "when": "editorTextFocus"
    },
    {
        "key": "ctrl+shift+]",
        "command": "editor.unfoldAll",
        "when": "editorTextFocus"
    },
    {
        "key": "ctrl+k ctrl+j",
        "command": "-editor.unfoldAll",
        "when": "editorTextFocus"
    }
]
```