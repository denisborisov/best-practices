# Local Development

This set of steps is used for setting local development workspace.

## 1. Xcode Command Line Tools installation

Fire up the command:

```bash
xcode-select --install
```

## 2. Set up git

Set the user name:

```bash
git config --global user.name "Your Name"
```

Set the user email:

```bash
git config --global user.email "your_email@example.com"
```

Check that new settings applied:

```bash
git config --list --global
```

## 3. [Oh My Zsh](https://ohmyz.sh/) installation

Fire up the command:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

When it asks if you want to change your default shell to `zsh`, the answer is `Y`.

Check that the default shell switched to zsh by running this command:

```bash
echo $0
```

## 4. [Homebrew](https://brew.sh/) installation

Download the installation script and fire it up:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Follow the guidelines from the `===> Next steps` section of the output.

**OR** if you need to update it:

At first:

```bash
brew update
```

And then:

```bash
brew upgrade
```

## 5. Set up [Warp](https://www.warp.dev/) Terminal

Fire up the command:

```bash
brew install --cask warp
```

## 6. [uv](https://docs.astral.sh/uv/) installation

Fire up the command:

```bash
brew install uv
```

**uv project workflow:**

```bash
uv init
uv sync
uv run python main.py
uv add fastapi
uv add --dev pytest
```

## 7. [Python](https://www.python.org/) installation

Run the following command:

```bash
uv python install 3.14
```

See installed Python versions:

```bash
uv python list
```

## 8. [Docker](https://www.docker.com/) installation

Fire up the command:

```bash
brew install --cask docker
```

## 9. [K8s](https://kubernetes.io/) installation

Fire up the command:

```bash
brew install kubectl
```

Test and ensure that the version you installed is up-to-date:

```bash
kubectl version --client
```

Execute the following command:

```bash
echo 'source <(kubectl completion zsh)' >> ~/.zshrc
```

## 10. Install useful CLI tools

```bash
brew install curl
brew install fd
brew install htop
brew install k9s
brew install make
brew install jq
brew install pgcli
brew install postgresql
brew install ripgrep
brew install tree
brew install watch
brew install wget
brew install yq
```

## 11. [Visual Studio](https://code.visualstudio.com/) Code installation

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
```

```bash
# Container Tools
code --install-extension ms-azuretools.vscode-containers
```

```bash
# Dev Containers
code --install-extension ms-vscode-remote.remote-containers
```

```bash
# Docker
code --install-extension ms-azuretools.vscode-docker
```

```bash
# Docker DX
code --install-extension docker.docker
```

```bash
# Even Better TOML
code --install-extension tamasfe.even-better-toml
```

```bash
# Fira Code and Material Icon Theme
code --install-extension aleleba.fira-code-material-icon-theme
```

```bash
# Indent Rainbow
code --install-extension oderwat.indent-rainbow
```

```bash
# Kubernetes
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
```

```bash
# Makefile Tools
code --install-extension ms-vscode.makefile-tools
```

```bash
# Mako
code --install-extension tommorris.mako
```

```bash
# PostgreSQL
code --install-extension ms-ossdata.vscode-pgsql
```

```bash
# Pylance
code --install-extension ms-python.vscode-pylance
```

```bash
# Python
code --install-extension ms-python.python
```

```bash
# Python Debugger
code --install-extension ms-python.debugpy
```

```bash
# Python Environments
code --install-extension ms-python.vscode-python-envs
```

```bash
# Markdown All in One
code --install-extension yzhang.markdown-all-in-one
```

```bash
# Markdown Preview Mermaid Support
code --install-extension bierner.markdown-mermaid
```

```bash
# MyPy Type Checker
code --install-extension ms-python.mypy-type-checker
```

```bash
# Ruff
code --install-extension charliermarsh.ruff
```

```bash
# Run on Save
code --install-extension emeraldwalk.RunOnSave
```

```bash
# Sourcery
code --install-extension sourcery.sourcery
```

```bash
# SQLTools
code --install-extension mtxr.sqltools
```

```bash
# vscode-pets (perhaps the most important extension, especially for pet lovers)
code --install-extension tonybaloney.vscode-pets
```

```bash
# YAML
code --install-extension redhat.vscode-yaml
```

Set up the `settings.json`:
1. Open Visual Studio Code.
2. Open the command pallette via `Cmd` + `,`.
3. Type `json schemas` in the search bar.
5. Press on the `Edit in settings.json`.
6. Replace the contents with the following:

```json
{
    "diffEditor.ignoreTrimWhitespace": false,
    "docker.extension.enableComposeLanguageServer": false,
    "editor.bracketPairColorization.independentColorPoolPerBracketType": true,
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
        99
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
    "json.schemas": [
    
    ],
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
    "python.defaultInterpreterPath": ".venv/bin/python",
    "python.venvPath": "./.venv",
    "[python]": {
        "editor.formatOnPaste": true,
        "editor.formatOnSave": true,
        "editor.formatOnType": true,
        "editor.codeActionsOnSave": {
            "source.organizeImports": "explicit",
            "source.fixAll": "explicit"
        }
    },
    "redhat.telemetry.enabled": true,
    "ruff.path": [
        "./.venv/bin/ruff"
    ],
    "security.promptForLocalFileProtocolHandling": false,
    "security.workspace.trust.untrustedFiles": "open",
    "terminal.external.osxExec": "Warp.app",
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
    "vscode-pets.theme": "forest",
    "vscode-pets.throwBallWithMouse": true,
    "window.zoomLevel": 2,
    "workbench.colorTheme": "Quiet Light",
    "workbench.editor.empty.hint": "hidden",
    "workbench.iconTheme": "fira-code-material-icon-theme"
}
```

*P.S. If one doesn't like a light theme, then go to the `Code` -> `Preferences` -> `Themes` -> `Color Theme` and select the one that is needed.*

## 12. Add shell plugins

Fire up the command:
```
code ~/.zshrc
```

Update the plugin section with
```bash
plugins=(
    docker
    git
    kubectl
    python
)
```

Then execute:
```bash
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
echo "source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
echo "source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
```
