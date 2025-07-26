# nvim-settings

## Setup
This setup guide is based around RHEL distributions, and the steps may differ on other distros.

Install EPEL repository
```bash
sudo dnf install epel-release -y
```

### Install dependencies
```bash
sudo dnf install gcc git luarocks ripgrep curl wget unzip -y
```
(ripgrep is required for fuzzy-finding functionality in the [Telescope plugin](https://github.com/nvim-telescope/telescope.nvim)

### Install Neovim
#### With DNF
At the time of writing, the Telescope plugin requires at least Neovim v0.9.0. Please check EPEL to see what version it provides.
If it provides a compatible version, it can be installed with:
```bash
sudo dnf install neovim -y
```
#### Downloading pre-built binary manually
Otherwise, the pre-built binary can be downloaded from GitHub releases with the following commands:
```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo tar -C /opt -xzf nvim-linux64.tar.gz
```

Then add the binary to the path variable by adding the following to your `~/.bashrc` file:
```bash
export PATH="$PATH:/opt/nvim-linux64/bin"
```

### Install this configuration
```bash
git clone https://github.com/jgcrunden/nvim-settings ~/.config/nvim
```
N.B. Packer (the Neovim plugin manager), Mason (a plugin that acts as an LSP installer) and nvim-treesitter (the plugin that installs parsers that give better syntax highlighting), all require tweaking to work with a GitHub proxy. You may need to uncomment lua config in the follow files to get it working with a proxy:
- [lsp.lua](after/plugin/lsp.lua)
- [treesitter.lua](after/plugin/treesitter.lua)


## Starting Neovim
After following the guide above, you can start Neovim with the following command:
**Important: Opening for the first time will produce errors. This is because Packer cannot find the plugins from the config**
```bash
nvim
```

## Updating Plugins
Plugins are managed by [lazy.nvim](https://github.com/folke/lazy.nvim). Please consult the documentation for working with Lazy. Run the following to open the plugin manager.
```
:Lazy
```

## Installing LSPs
LSPs (Language Servers) can be installed with the following steps.
- Open source code for a given language (e.g. open a `main.c` file)
- Type `:LspInstall`
- Use the numbered prompt to select the appropriate language server. Some languages only have one server available for download. Others have multiple options. With the latter, a bit of research/trying-them-out will give an indication of which LSP is most suitable.

## Plugins
I have included minimal configuration for the various plugins I've used. Please consult the README.mds in the GitHub repos for a given plugin to see how it can be used and configured.

## Icons
Telescope and Nvim-Tree (the file explorer) use icons for filetypes. You may want to download and install a font that contains compatible glyphs so these plugins can render them correctly. Such fonts can be downloaded from [Nerd Fonts](https://www.nerdfonts.com/)
- Download a font from the [downloads](https://www.nerdfonts.com/font-downloads) page.
- Extract the zip
- Double click on the font files and click the "Install" button in the programme your OS opens them in
- Open the settings for your terminal emulator. The font you've installed should now appear in list of available fonts
