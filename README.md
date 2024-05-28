# Bootstrap Scripts for various OS.

## Steps to bootstrap a new Mac

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.

```sh
xcode-select --install
```

2. Clone repo into new hidden directory.

### Set up Homebrew

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Set up Git (optional)

```sh
brew install git git-credential-manager
```

```sh
git config --global user.name "Your Name"
```

```sh
git config --global user.email "123456789+odin@users.noreply.github.com" # Remember to use your own private GitHub email here.
```

```sh
ls ~/.ssh/id_ed25519.pub
```

```sh
ssh-keygen -t ed25519
```

```sh
cat ~/.ssh/id_ed25519.pub
```

### Clone repo into new hidden directory.

# Use SSH (if set up)...
```sh
git clone git@github.com:BryanMarqz/dotfiles.git ~/.dotfiles
```

# ...or use HTTPS and switch remotes later.
```sh
git clone https://github.com/BryanMarqz/dotfiles.git ~/.dotfiles
```

### Running the Bootstrap Script

Run the `bootstrap_mac.sh` script to execute all steps at once:

```sh
~/.dotfiles/macOS/mac_bootstrap_scripts/bootstrap_mac.sh
```

## Steps to Bootstrap a New Linux Machine (in progress)

## Steps to Bootstrap a New Windows Machine (in progress)

## Recommended font: Meslo Nerd Font patched for Powerlevel10k

### Manual font installation

1. Download these four ttf files:
   - [MesloLGS NF Regular.ttf](
       https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)
   - [MesloLGS NF Bold.ttf](
       https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf)
   - [MesloLGS NF Italic.ttf](
       https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf)
   - [MesloLGS NF Bold Italic.ttf](
       https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf)
2. Double-click on each file and click "Install". This will make `MesloLGS NF` font available to all
   applications on your system.
3. Configure your terminal to use this font:
   - **Apple Terminal**: Open *Terminal → Preferences → Profiles → Text*, click *Change* under *Font*
     and select `MesloLGS NF` family.
   - **Visual Studio Code**: Open *File → Preferences → Settings* (PC) or
     *Code → Preferences → Settings* (Mac), enter `terminal.integrated.fontFamily` in the search box at
     the top of *Settings* tab and set the value below to `MesloLGS NF`.
     Consult [this screenshot](
       https://raw.githubusercontent.com/romkatv/powerlevel10k-media/389133fb8c9a2347929a23702ce3039aacc46c3d/visual-studio-code-font-settings.jpg)
     to see how it should look like or see [this issue](
       https://github.com/romkatv/powerlevel10k/issues/671) for extra information.
   - **GNOME Terminal** (the default Ubuntu terminal): Open *Terminal → Preferences* and click on the
     selected profile under *Profiles*. Check *Custom font* under *Text Appearance* and select
     `MesloLGS NF Regular`.
   - **Konsole**: Open *Settings → Edit Current Profile → Appearance*, click *Select Font* and select
     `MesloLGS NF Regular`.
   - **Windows Terminal** by Microsoft (the new thing): Open *Settings* (<kbd>Ctrl+,</kbd>), click
     either on the selected profile under *Profiles* or on *Defaults*, click *Appearance* and set
     *Font face* to `MesloLGS NF`.
   - **WSLtty**: Right click on an open terminal and then on *Options*. In the *Text* section, under
     *Font*, click *"Select..."* and set Font to `MesloLGS NF Regular`.
   - **Alacritty**: Create or open `~/.config/alacritty/alacritty.toml` and add the following
     section to it:
     ```toml
     [font.normal]
     family = "MesloLGS NF"
     ```
   - **puTTY**: Set *Window* → *Appearance* → *Font* to `MesloLGS NF`. Requires puTTY
     version >= 0.75.
4. Run `p10k configure` to generate a new `~/.p10k.zsh`. The old config may work
   incorrectly with the new font.
