# dotfiles

[![Build Status](https://travis-ci.org/ohing504/dotfiles.svg?branch=master)](https://travis-ci.org/ohing504/dotfiles)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://raw.githubusercontent.com/ohing504/dotfiles/master/LICENSE)

My dotfiles as Ansible roles.
Fully supports macOS. Debian support is good but not as complete.

## Fresh Installation

### Command Line Tools for Xcode (macOS only) 

```shell
xcode-select --install
```

### Homebrew (macOS only)

The missing package manager for macOS.
[Visit site](https://brew.sh/).

```shell
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## Pre-requisites (install these first)

* Python >= 2.7
* ansible >= 2.4


## Roles

* git
  - Installs and configures git
  - Useful git aliases
* package_manager
  - Update and upgrade packages
* zsh
  - Installs and configures zsh with oh-my-zsh

## Reference

* [sloria's dotfiles](https://github.com/sloria/dotfiles)

