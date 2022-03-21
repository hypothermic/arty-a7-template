## Project Template for Arty A7-35 designs

This includes a barebones project template which can be used in Vivado non-project mode.

To demonstrate a simple project and a testbench, the switches have been connected to the leds.

### How to build & generate the bitstream

1. Source your Vivado environment

```sh
$ source /opt/Xilinx/Vivado/xxxx.x/settings64.sh
```

2. Execute the build target of the makefile

```sh
$ make build
```

3. Grab a coffee while the build is being done...

4. Find the bitstream file in the build folder

```sh
$ ls -al ./build
```
```
-rw-r--r-- 1 mbr users 2192112 Mar 21 18:54 top.bit
```

### How to program the Arty using the bitstream

1. Make sure the Arty board is connected (e.g. lsusb)
2. Source your Vivado environment (see above)
3. Execute the upload target of the makefile

```sh
$ make upload
```

### How to run the testbenches

1. Source your Vivado environment (see above)
2. Execute the test target of the makefile

```sh
$ make test
```

### License

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <https://unlicense.org>

