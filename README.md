# Lua interpreter for the Numworks calculator

[![Build](https://github.com/nwagyu/lua/actions/workflows/build.yml/badge.svg)](https://github.com/nwagyu/lua/actions/workflows/build.yml)

This apps lets you run a [Lua](https://www.lua.org/about.html) script on your [NumWorks calculator](https://www.numworks.com)!

## Install the app

Installing is rather easy:
1. Download the latest `lua.nwa` file from the [Releases](https://github.com/nwagyu/lua/releases) page ;
1. This Release page is out-dated on my fork, use [this folder instead](https://perso.crans.org/besson/publis/Numworks-apps/) ;
2. Head to [my.numworks.com/apps](https://my.numworks.com/apps) to send the `nwa` file on your calculator. On [this page](https://my.numworks.com/python/lilian-besson-1/lua) you will be able to also send a default example of a Lua script, and you can edit it yourself later on, on your calculator.

## How to use the app

Just launch the app, and it will read and execute your script `lua.py`!

This script should be located in the `lua.py` file, that you can create, edit and save **from within your Numworks!**.

If you want a demo, use [this `lua.py` script](https://my.numworks.com/python/lilian-besson-1/lua), that you can install on your Numworks calculator, directly from their website (from my user space).

## Dependencies

This programs uses Lua version 5.4.4.

## Build the app

To build this sample app, you will need to install the [embedded ARM toolchain](https://developer.arm.com/Tools%20and%20Software/GNU%20Toolchain) and [nwlink](https://www.npmjs.com/package/nwlink).

```shell
brew install numworks/tap/arm-none-eabi-gcc node # Or equivalent on your OS
npm install -g nwlink
make clean && make build
```
