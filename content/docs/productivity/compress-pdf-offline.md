## Compress PDF offline with ghostscript

![Ghoscript_logo](https://www.ghostscript.com/images/logos/ghostscript-plus-text.png)

I found this great tool to compress pdf (python script) from the command line.

### Requirements
Make sure you have [ghoscript][ghoscript] installed. If not just run `brew install ghoscript`

### How to
Copy source files from `https://github.com/hkdb/cpdf` to your bin directory (that’s defined in your env) eg. `/usr/local/bin` if you are on OSX.

Then from your favorite terminal, just use one of the commands described in the `readme` of the project.

Basic command:
```
cpdf ebook in.pdf out.pdf
```

That’s all.

Thank you [hkdb][hkdb]!


[hkdb]: https://github.com/hkdb
[ghoscript]: https://www.ghostscript.com
