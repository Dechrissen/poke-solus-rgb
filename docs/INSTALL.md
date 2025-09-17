# Pokémon Solus RGB: Installation Guide

This guide explains how to set up the tools required to build **Pokémon Solus RGB**, including [rgbds](https://github.com/gbdev/rgbds), which assembles the source files into three ROMs:

- `pokesolusred.gbc`
- `pokesolusgreen.gbc`
- `pokesolusblue.gbc`

### Jump to instructions for
- [Windows 10](#windows-10)
- [Windows](#windows)
- [macOS](#macos)
- [Linux](#linux)
- [Build poke-solus-rgb](#build-poke-solus-rgb)


## Windows 10

Download and install [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10). Then open the WSL terminal.

Update WSL's software before continuing. Choose Debian, Ubuntu, or another distribution that uses `apt-get`, then enter this command:

```bash
apt-get update && apt-get upgrade
```

WSL has its own file system that's not accessible from Windows, but Windows files *are* accessible from WSL. So you're going to want to install `poke-solus-rgb` within Windows. You'll have to change the current working directory every time you open WSL.

For example, if you want to store `poke-solus-rgb` in `C:\Users\\<user>\Desktop`, enter this command:

```bash
cd /mnt/c/Users/<user>/Desktop
```

(The Windows `C:\` drive is called `/mnt/c/` in WSL. Replace *\<user>* in the example path with your username.)

Then follow [the instructions for Linux](#linux) below for whatever distribution you installed for WSL.

Otherwise, continue reading below for [the older Windows instructions](#windows).


## Windows

Download [Cygwin](http://cygwin.com/install.html): *setup-x86_64.exe* for 64-bit Windows, *setup-x86.exe* for 32-bit.

Run setup and leave the default settings. At the "Select Packages" step, choose to install the following, all of which are in the "Devel" category:

- `make`
- `git`
- `gcc-core`

Double click on the text that says "Skip" next to each package to select the most recent version to install.

Then follow the [rgbds install instructions](https://rgbds.gbdev.io/install#pre-built) for Windows with Cygwin to install `rgbds 0.7.0`.

> [!NOTE]
> If you already have an installed `rgbds` older than 0.7.0, you will need to update to 0.7.0. Ignore this if you have never installed `rgbds` before. If a version newer than 0.7.0 does not work, try downloading 0.7.0.

Now open the Cygwin terminal and enter the following commands.

Cygwin has its own file system that's within Windows, at `C:\cygwin64\home\\<user>`. If you don't want to store the `poke-solus-rgb` repo there, you'll have to change the current working directory every time you open Cygwin.

For example, if you want to store `poke-solus-rgb` in `C:\Users\\<user>\Desktop`:

```bash
cd /cygdrive/c/Users/<user>/Desktop
```

(The Windows `C:\` drive is called `/cygdrive/c/` in Cygwin. Replace `<user>` in the example path with your username.)

Now you're ready to [build `poke-solus-rgb`](#build-poke-solus-rgb).


## macOS

Install [Homebrew](https://brew.sh/). Follow the official instructions.

Open Terminal and prepare to enter commands.

Then follow the [rgbds instructions](https://rgbds.gbdev.io/install#pre-built) for macOS to install `rgbds 0.7.0`.

Now you're ready to [build `poke-solus-rgb`](#build-poke-solus-rgb).


## Linux

Open Terminal and enter the following commands, depending on which distro you're using.

### Debian or Ubuntu

To install the software required for `poke-solus-rgb`:

```bash
sudo apt-get install make gcc git
```

Then follow the [rgbds instructions](https://rgbds.gbdev.io/install#building-from-source) to build `rgbds 0.7.0` from source.

### OpenSUSE

To install the software required for `poke-solus-rgb`:

```bash
sudo zypper install make gcc git
```

Then follow the [rgbds instructions](https://rgbds.gbdev.io/install#building-from-source) to build `rgbds 0.7.0` from source.

### Arch Linux

To install the software required for `poke-solus-rgb`:

```bash
sudo pacman -S make gcc git rgbds
```

If you want to compile and install rgbds yourself instead, then follow the [rgbds instructions](https://rgbds.gbdev.io/install#building-from-source) to build `rgbds 0.7.0` from source.

### Termux

To install the software required for `poke-solus-rgb`:

```bash
sudo apt install make clang git sed
```

To install `rgbds`:

```bash
sudo apt install rgbds
```

If you want to compile and install `rgbds` yourself instead, then follow the [rgbds instructions](https://rgbds.gbdev.io/install#building-from-source) to build `rgbds 0.7.0` from source.

### Other distros

If your distro is not listed here, try to find the required software in its repositories:

- `make`
- `gcc` (or `clang`)
- `git`
- `rgbds`

If `rgbds` is not available, you'll need to follow the [rgbds instructions](https://rgbds.gbdev.io/install#building-from-source) to build `rgbds 0.7.0` from source.

Now you're ready to [build `poke-solus-rgb`](#build-poke-solus-rgb).


## Build poke-solus-rgb

To download the `poke-solus-rgb` source files:

```bash
git clone https://github.com/Dechrissen/poke-solus-rgb
cd poke-solus-rgb
```

To build `pokesolusred.gbc`, `pokesolusgreen.gbc` and `pokesolusblue.gbc`:

```bash
make
```

### Build with a local rgbds version

If you have different projects that require different versions of `rgbds`, it might not be convenient to install rgbds 0.7.0 globally. Instead, you can put its files in a directory within `poke-solus-rgb`, such as `poke-solus-rgb/rgbds-0.7.0/`. Then specify it when you run `make`:

```bash
make RGBDS=rgbds-0.7.0/
```

Specifically, for this per-repository setup, do this:
1. Go the page for the [rgbds release](https://github.com/gbdev/rgbds/releases) you need
2. Under "Assets" at the bottom, download `rgbds-<version>-linux-x86_64.tar.xz` (for example, version 0.7.0 would be `rgbds-0.7.0-linux-x86_64.tar.xz`)
    - place this `.tar.gz` into the Solus root of your directory
3. `cd` into your Solus directory
4. Extract the `.tar.xz` file into a new directory named after the version, e.g.

    ```
    % mkdir rgbds-0.7.0
    % tar xf rgbds-0.7.0-linux-x86_64.tar.xz -C rgbds-0.7.0
    ```
5. You can now delete the `.tar.gz` file from the root of your Solus directory

Now, when you run `make`, do this to use the version you installed in the repository:
```bash
make RGBDS=rgbds-0.7.0/
```