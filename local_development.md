# Local Development

This set of steps is used for setting local development workspace.

## 1. Oh My Zsh installation

Fire up the command:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

When it asks if you want to change your default shell to `zsh`, the answer is `Y`.

Check that the default shell switched to zsh by running this command:

```bash
echo $0
```

## 2. Xcode installation

Fire up the command:

```bash
xcode-select --install
```

## 3. Homebrew installation

Download the installation script and fire it up:

```bash
curl -fsSL -o install.sh https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh

/bin/bash install.sh
```

Go to your home directory via

```bash
cd ~
```

and open `.profile` file. Add these lines to this file if you operate on a machine with an Apple chip:

```bash
## HomeBrew
export PATH=/usr/local/bin:/opt/homebrew/bin:$PATH
```

or this one if you operate on a machine with an Intel chip:

```bash
## HomeBrew
export PATH=/usr/local/bin:$PATH
```

Apply the profile changes

```bash
source ~/.profile
```

## 4. pyenv installation

Fire up the command:

```bash
brew install pyenv
```

Go to your home directory via

```bash
cd ~
```

and open `.profile` file. Add these lines to this file (more information can be found [here](https://github.com/pyenv/pyenv?tab=readme-ov-file#set-up-your-shell-environment-for-pyenv)):

```bash
## pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
```

Apply the profile changes

```bash
source ~/.profile
```

## 5. Python installation

Fire up the command:

```bash
pyenv install 3.11.4
```

Select the version of Python to be used:

```bash
pyenv global 3.11.4
```

## 6. PIP upgrading and Poetry installation

```bash
pip install -U pip poetry
```

## 7. Visual Studio Code installation

Install VS Code from [here](https://code.visualstudio.com/Download).

Set up the PATH so that you can run VS Code via the terminal:
1. Open Visual Studio Code.
2. Open the command pallette via `Cmd` + `Shift` + `P` (or press `F1`).
3. Type `shell` in command palette.
4. Select `Shell Command: Install code in PATH` from the suggested list

Install VS Code extensions:

```bash
# Black Formatter
code --install-extension ms-python.black-formatter

# CodeSnap
code --install-extension adpyke.codesnap

# Docker
code --install-extension ms-azuretools.vscode-docker

# Even Better TOML
code --install-extension tamasfe.even-better-toml

# Fira Code and Material Icon Theme
code --install-extension aleleba.fira-code-material-icon-theme

# Makefile Tools
code --install-extension ms-vscode.makefile-tools

# Mako
code --install-extension tommorris.mako

# Markdown All in One
code --install-extension yzhang.markdown-all-in-one

# Markdown Preview Mermaid Support
code --install-extension bierner.markdown-mermaid

# MyPy Type Checker
code --install-extension ms-python.mypy-type-checker

# Pylance
code --install-extension ms-python.vscode-pylance

# Ruff
code --install-extension charliermarsh.ruff

# Run on Save
code --install-extension emeraldwalk.RunOnSave

# Sourcery
code --install-extension sourcery.sourcery

# vscode-pets (пожалуй, самое важное расширение для любителей домашних питомцев)
code --install-extension tonybaloney.vscode-pets
```

Set up the `settings.json`:
1. Open Visual Studio Code.
2. Open the command pallette via `Cmd` + `,`.
3. Type `json schemas` in the search bar.
5. Press on the `Edit in settings.json`.
6. replace the contents with the following:

```json
{
    "black-formatter.path": [
        "./.venv/bin/black"
    ],
    "codesnap.backgroundColor": "",
    "codesnap.boxShadow": "",
    "codesnap.containerPadding": "0",
    "codesnap.transparentBackground": true,
    "diffEditor.ignoreTrimWhitespace": false,
    "editor.codeActionsOnSave": {},
    "editor.fontFamily": "'Fira Code', Menlo, Monaco, 'Courier New', monospace",
    "editor.fontLigatures": true,
    "editor.fontSize": 12,
    "editor.formatOnPaste": true,
    "editor.formatOnSave": true,
    "editor.formatOnType": true,
    "editor.inlineSuggest.enabled": true,
    "editor.renderWhitespace": "all",
    "editor.rulers": [
        72,
        79,
        99,
        120
    ],
    "editor.unicodeHighlight.ambiguousCharacters": false,
    "editor.unicodeHighlight.nonBasicASCII": false,
    "editor.wordBasedSuggestions": "off",
    "emeraldwalk.runonsave": {
        "commands": [
            {
                "match": ".py",
                "cmd": "./.venv/bin/isort",
                "isAsync": true
            }
        ]
    },
    "emmet.triggerExpansionOnTab": true,
    "emmet.includeLanguages": {
        "plaintext": "html"
    },
    "explorer.confirmDragAndDrop": false,
    "explorer.confirmDelete": false,
    "files.autoSave": "afterDelay",
    "github.copilot.enable": {
        "*": true,
        "yaml": true,
        "plaintext": true,
        "markdown": true,
        "html": true
    },
    "json.schemas": [],
    "launch": {
        "inputs": [],
        "configurations": [],
        "compounds": []
    },
    "markdown.extension.orderedList.marker": "one",
    "markdown.preview.typographer": true,
    "mypy-type-checker.path": [
        "./.venv/bin/mypy"
    ],
    "python.defaultInterpreterPath": "/Users/denisborisov/.pyenv/shims/python",
    "[python]": {
        "editor.formatOnPaste": true,
        "editor.formatOnSave": true,
        "editor.formatOnType": true,
        "editor.codeActionsOnSave": {
            "source.organizeImports": "explicit",
            "source.fixAll": "explicit"
        }
    },
    "ruff.path": [
        "./.venv/bin/ruff"
    ],
    "security.workspace.trust.untrustedFiles": "open",
    "vscode-pets.theme": "forest",
    "vscode-pets.throwBallWithMouse": true,
    "terminal.integrated.defaultProfile.osx": "zsh",
    "terminal.integrated.profiles.linux": {
        "bash": {
            "path": "bash",
            "icon": "terminal-bash"
        },
        "zsh": {
            "path": "zsh"
        },
        "fish": {
            "path": "fish"
        },
        "tmux": {
            "path": "tmux",
            "icon": "terminal-tmux"
        },
        "pwsh": {
            "path": "pwsh",
            "icon": "terminal-powershell"
        }
    },
    "window.zoomLevel": 2,
    "workbench.colorTheme": "Quiet Light",
    "workbench.editor.empty.hint": "hidden",
    "workbench.iconTheme": "fira-code-material-icon-theme"
}
```

*P.S. If one doesn't like a light theme, then go to the `Code` -> `Settings` -> `Theme` -> `Color Theme` and select the one that is needed.*

## 8. Podman installation

If you have previously worked with Docker via Docker Desktop, then it is very important to remove it correctly in order to avoid conflicts with Podman.

To completely uninstall, open the Docker Desktop application, click on the Bug icon in the upper right corner, and select "Uninstall" from the menu that appears at the very bottom. After the process is complete, if the application is still present in Applications, move it to the trash and empty it.

If you have already deleted Docker desktop incorrectly, then use the first approach from [this guide](https://www.drbuho.com/how-to/uninstall-docker-mac) to clean up the "tails".

After the cleanup is complete, fire up the command:

```bash
brew install podman podman-desktop
```

Set up and start the virtual machine:

```bash
podman machine init
podman machine set --rootful
podman machine start
```

If the last commands hangs on, then one should install the older version of Podman and then start the virtual machine:
```bash
brew uninstall podman-desktop podman qemu

wget https://raw.githubusercontent.com/Homebrew/homebrew-core/d0c1a25835de4aeac60a4fadbf46ebf14a7d1934/Formula/p/podman.rb -O /tmp/podman.rb
wget https://raw.githubusercontent.com/Homebrew/homebrew-core/676c6922d79d24cc0794dd22250e3ea1167f2cd9/Formula/q/qemu.rb -O /tmp/qemu.rb

brew install /tmp/podman.rb
brew install /tmp/qemu.rb
brew install podman-desktop

podman machine init
podman machine set --rootful
podman machine start
```

After starting the virtual machine, install an auxiliary utility that allows you to maintain backward compatibility with Docker at the socket level (the installation command must be copied from the text that is output after the VM starts). Fire up this command if you operate on a machine with an Apple chip:

```bash
sudo /opt/homebrew/Cellar/podman/4.5.0/bin/podman-mac-helper install
```

or this one if you operate on a machine with an Intel chip:

```bash
## HomeBrew
sudo /usr/local/Cellar/podman/4.5.1/bin/podman-mac-helper install
```

Restart the virtual machine:

```bash
podman machine stop
podman machine start
```

Test that Podman wirks correctly:

```bash
podman run --rm busybox echo "Hello World"
```

## 9. Ansible installation

Fire up the command:

```bash
brew install ansible
```

## 10. Changing the color of the command line

Go to your home directory via

```bash
cd ~
```

and open `.profile` file. Add these lines to this file:

```bash
## Terminal
export PS1=' \[\e[0;32m\]\u@\h:\w\$ \[\e[m\]'
```

Apply the profile changes

```bash
source ~/.profile
```
