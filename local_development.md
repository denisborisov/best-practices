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

## 4. Changing the color of the command line

Go to your home directory via

```bash
cd ~
```

Execute the following command:
```bash
echo "export PS1='%F{green}%n@%m:%~%f$ '" >> ~/.zshrc
```

## 5. [Homebrew](https://brew.sh/) installation

Download the installation script and fire it up:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Follow the guidelines from the `===> Next steps` section of the output.

## 6. [pyenv](https://github.com/pyenv/pyenv) installation

Fire up the command:

```bash
brew install pyenv
```

Set up your shell environment for Pyenv (more information can be found [here](https://github.com/pyenv/pyenv?tab=readme-ov-file#b-set-up-your-shell-environment-for-pyenv)):

```bash
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
```

```bash
echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
```

```bash
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
```

Apply the profile changes

```bash
source ~/.zshrc
```

## 7. [Python](https://www.python.org/) installation

Run the following command:

```bash
brew install xz
```

Fire up the command:

```bash
pyenv install 3.13.1
```

Select the version of Python to be used:

```bash
pyenv global 3.13.1
```

## 8. [PIP](https://pip.pypa.io/en/stable/) upgrading and [Poetry](https://python-poetry.org/) installation

> [!info]
> Do not forget to perform steps from this section for each Python version installed via `pyenv`.

```bash
pip install -U pip poetry
```

Set poetry configuration so that `.venv` directory is created in a project folder for each project:

```bash
poetry config virtualenvs.in-project true
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

## 10. [Podman](https://podman.io/) installation

If you have previously worked with Docker via Docker Desktop, then it is very important to remove it correctly in order to avoid conflicts with Podman.

To completely uninstall, open the Docker Desktop application, click on the Bug icon in the upper right corner, and select "Uninstall" from the menu that appears at the very bottom. After the process is complete, if the application is still present in Applications, move it to the trash and empty it.

If you have already deleted Docker desktop incorrectly, then use the first approach from [this guide](https://www.drbuho.com/how-to/uninstall-docker-mac) to clean up the "tails".

After the cleanup is complete, fire up the command:

```bash
brew install podman podman-desktop podman-compose
```

Set up and start the virtual machine:

```bash
podman machine init
```

```bash
podman machine start
```

Follow the guidelines from the output to install the system helper service:

```bash
sudo /opt/homebrew/Cellar/podman/5.3.1/bin/podman-mac-helper install
```

Restart the virtual machine:

```bash
podman machine stop
```

```bash
podman machine start
```

Test that Podman works correctly:

```bash
podman run --rm busybox echo "Hello World"
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
# Docker
code --install-extension ms-azuretools.vscode-docker
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
# vscode-pets (perhaps the most important extension, especially for pet lovers)
code --install-extension tonybaloney.vscode-pets
```

Set up the `settings.json`:
1. Open Visual Studio Code.
2. Open the command pallette via `Cmd` + `,`.
3. Type `json schemas` in the search bar.
5. Press on the `Edit in settings.json`.
6. replace the contents with the following (change the `username` to your macOS username):

```json
{
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
    "python.defaultInterpreterPath": "/Users/username/.pyenv/shims/python",
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
