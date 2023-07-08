## Compress PDF offline

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

### Setup

Add this command in your `.bash_profile` or `.zshrc` file

```
# Usage: spdf [input file] [output file] [screen*|ebook|printer|prepress]
spdf() {
    gs -sDEVICE=pdfwrite -dNOPAUSE -dQUIET -dBATCH -dPDFSETTINGS=/${3:-"screen"} -dCompatibilityLevel=1.4 -sOutputFile="$2" "$1"
}
```

### Usage
```
spdf BigFile.pdf SmallFile.pdf ebook
```

[ghoscript]: https://www.ghostscript.com


## Image command lines

### Batch resize image

#### Usage
```
 ~ sips -Z 720 *.jpg
 ```

Adjsut max image ratio examples: 640,720,1024,1280 etc.


### Combine two images into one

#### Prerequisites
```
 ~ brew install imagemagick
 ```

#### Usage
```
 ~ convert +append image1.png image2.png combined_image.png
 ```

#### Result

#### Image 1:
![image1](/img/image1.png)
##### Image 2:
![image2](/img/image2.png)
##### Combined image:
![combined_image](/img/combined_image.png)

## Compress Video with ffmpeg

### Requirements
```
ffmpeg
```

### Usage
```
ffmpeg -i source480.mov -r 15 outputSmall.gif
```

## Gmail clean

larger_than:5m smaller_than:8M
size:5mb has:attachment
before: 2011 after:2005/04/17 

