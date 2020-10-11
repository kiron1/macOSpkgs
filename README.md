# macOS Packages

A repository with Makefiles to fetch binary packages from upstream.
When the upstream package is not already in the `*.pkg` format, generate it.

## Usage

1. Enter the directory of the package you want to install.
2. Run the `make` command to download and generate the `*.pkg` file.
3. To install the package, run `sudo make install`.

## Alternative solutions

- [Homebrew](http://brew.sh/)
- [Macports](https://www.macports.org/)
- [Fink](http://finkproject.org/)
- [pkgsrc](https://pkgsrc.joyent.com/install-on-osx/)
- [Nix](https://nixos.org/)