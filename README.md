# dotfiles

My dotfiles, managed with yadm.

## Installation

> Download yadm and use it to clone this repository and bootstrap the system:

```bash
curl \
  -fsSL \
  https://github.com/thelocehiliosan/yadm/raw/master/yadm | \
    bash \
    -s \
    clone \
    --recurse-submodules \
      ssh://git@github.com/2627500295/dotfiles
      -f
```

### macOS

> Ensure that the Xcode Command Line Tools are installed. Otherwise, run:

```bash
xcode-select --install
```
