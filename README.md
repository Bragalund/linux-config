# Linux Config

Bootstrap script for a fresh Ubuntu/Debian machine that installs common tools (git, gh, tmux, Vim, Zsh/Oh-My-Zsh, chezmoi, Java, VS Code) and sets a dark GNOME theme. Includes a placeholder tmux color scheme directory.

## Features
- Updates and cleans the system with `apt`
- Installs Git aliases and GitHub CLI
- Sets up tmux (with TPM), Vim (vim-plug), Oh-My-Zsh, chezmoi, Java, and VS Code
- Applies the GNOME dark theme

## Prerequisites
- Ubuntu/Debian-based distro with `bash`
- Sudo privileges (script runs multiple `sudo` commands)
- Internet connectivity for package and installer downloads

## Usage
```bash
chmod +x os-setup.sh
./os-setup.sh
```
Review the script before running; it will install packages system-wide and clone configuration resources to your home directory.

## Contributing
Open an issue or PR to suggest additional packages or improvements. Please test changes on a fresh VM when possible.

## License
This project is open source under the terms of the `LICENSE` file in this repository.
