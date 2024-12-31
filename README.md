# Ditana Config Zsh

This Arch Linux package provides zsh-specific configurations for Ditana GNU/Linux, complementing the shared shell configurations.

## Description

Ditana Config Zsh sets up zsh-specific settings and integrations for Ditana GNU/Linux. It works in conjunction with the [ditana-config-shell](https://github.com/acrion/ditana-config-shell) package, which provides the common shell configurations shared between bash and zsh.

## Features

- Zsh-specific configuration file (`.zshrc`)
- Integration with Starship prompt
- Incorporation of various zsh plugins for enhanced functionality
- Custom key bindings for improved terminal navigation

## Components

1. **`.zshrc`**:
   - Configures zsh history settings
   - Initializes [Starship prompt](https://starship.rs) for zsh
   - Sources various zsh plugins ([syntax highlighting](https://github.com/zsh-users/zsh-syntax-highlighting), [autosuggestions](https://github.com/zsh-users/zsh-autosuggestions), [history substring search](https://github.com/zsh-users/zsh-history-substring-search))
   - Incorporates [fzf](https://github.com/junegunn/fzf) key bindings and completion
   - Custom key bindings for delete, home, and end keys
   - Sources the common `.shellrc` file (provided by [ditana-config-shell](https://github.com/acrion/ditana-config-shell))

## Installation

On Ditana GNU/Linux, this package is installed if zsh is selected for installation (which is default).

## Dependencies

- [ditana-config-shell](https://github.com/acrion/ditana-config-shell)
- [zsh](https://gitlab.archlinux.org/archlinux/packaging/packages/zsh)
- [zsh-syntax-highlighting](https://gitlab.archlinux.org/archlinux/packaging/packages/zsh-syntax-highlighting.git)
- [zsh-autosuggestions](https://gitlab.archlinux.org/archlinux/packaging/packages/zsh-autosuggestions.git)
- [zsh-history-substring-search](https://gitlab.archlinux.org/archlinux/packaging/packages/zsh-history-substring-search.git)
- [fzf](https://gitlab.archlinux.org/archlinux/packaging/packages/fzf.git)
- [starship](https://gitlab.archlinux.org/archlinux/packaging/packages/starship)
- [pkgfile](https://gitlab.archlinux.org/archlinux/packaging/packages/pkgfile.git)

## Usage

The Ditana zsh configuration is automatically applied after installation. Users don't need to take any additional steps to activate it.

## Customization

For user-specific customizations:
1. Edit `~/.zshrc` for zsh-specific settings
2. Use `~/.shellrc` or `~/.shell.d/` directory for configurations shared with bash (see [ditana-config-shell](https://github.com/acrion/ditana-config-shell))

## Relation to ditana-config-shell

While this package provides zsh-specific configurations, the majority of shell settings are managed by the [ditana-config-shell](https://github.com/acrion/ditana-config-shell) package. This separation allows for a clean, modular approach to shell configuration in Ditana GNU/Linux.

## Support

For issues, feature requests, or contributions related to Ditana Config Zsh, please use the GitHub issue tracker or submit a pull request.

---

Ditana Config Zsh is part of the Ditana GNU/Linux project, providing a tailored zsh experience while maintaining consistency with the overall shell environment.
