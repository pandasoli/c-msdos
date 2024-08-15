<div align=center>

# <samp>[MSDOS C Compilation][msdos-compilation] :tv: 2024
</div>
<br>
<br>
<br>

The code template used here is described at [msdos-compilation][msdos-compilation].  
Here are the links to [TC][tc] and [TASM][tasm].

<div align=right>

## <samp>Environment
> Setup environment
</div>

```sh
$ mkdir TC && cd $_ && \
  unzip $tc_zip && cd ..
$ unzip $tasm_zip && mv tasm TASM
```

<br>
<br>
<br>
<div align=right>

## <samp>Usage
</div>

[`make.sh`](make.sh) does all you can need (but debug).

```sh
$ ./make.sh build # Build and show logs
$ ./make.sh run   # Run program

# It accepts many args at the same time
$ ./make.sh build run # Build and run
```


[tc]: https://archive.org/details/msdos_borland_turbo_c_2.01
[tasm]: http://trimtab.ca/2010/tech/tasm-5-intel-8086-turbo-assembler-download
[msdos-compilation]: https://simontang.dev/posts/msdos-compilation
