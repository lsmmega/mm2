# Instructions
These instructions explain how to set up the tools required to build **mm2**, which assembles the source files into the ROM.

## Windows
Download [**Cygwin**](http://cygwin.com/install.html): **setup-x86_64.exe** for 64-bit Windows, **setup-x86.exe** for 32-bit.

Run setup and leave the default settings. At the "**Select Packages**" step, choose to install the following, all of which are in the "**Devel**" category:

- `make`
- `git`

Double click on the text that says "**Skip**" next to each package to select the most recent version to install.

Then download cc65 tool-chains and bmp2nes.

[cc65 tool-chains](https://github.com/cc65/cc65)

[bmp2nes](https://www.romhacking.net/utilities/803/)

Unzip them to **<your_cygwin_install_folder>**/usr/local/bin/

Now you're ready to build **mm2**.

## Build mm2

To download the **mm2** source files:

```bash
git clone https://github.com/lsmmega/mm2.git
cd mm2
```

To build **mm2.nes**:

```bash
make
```
