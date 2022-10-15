## Compress PDF offline with ghostscript

![Ghoscript_logo](https://www.ghostscript.com/images/logos/ghostscript-plus-text.png)

I found this great tool to compress pdf (python script) from the command line.

### Requirements
#### Python
Check your python version
```
➜  ~ python --version
Python 3.8.9
```

#### Ghoscript
Check your ghoscript version
```
➜  ~ gs
GPL Ghostscript 10.0.0 (2022-09-21)
```

### How to

Add this command in your `.bash_profile` or `.zshrc` file

#### Setup
```
# Usage: spdf [input file] [output file] [screen*|ebook|printer|prepress]
spdf() {
    gs -sDEVICE=pdfwrite -dNOPAUSE -dQUIET -dBATCH -dPDFSETTINGS=/${3:-"screen"} -dCompatibilityLevel=1.4 -sOutputFile="$2" "$1"
}
```

#### Usage
```
spdf BigFile.pdf SmallFile.pdf ebook
```

[ghoscript]: https://www.ghostscript.com
