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

## Updating VSCode in Ubuntu

```
wget https://vscode-update.azurewebsites.net/latest/linux-deb-x64/stable -O /tmp/code_latest_amd64.deb
sudo dpkg -i /tmp/code_latest_amd64.deb
```