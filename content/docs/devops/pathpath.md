# PATH variable explained

## The `$PATH` variable

- lists directories to search fro executables
- only contains the directory paths where executables live
- itself never contains any executables (like "python")

## See all directories in your PATH

`echo $PATH | tr ':' '\n'`

We see directories like:

```bash
/usr/local/bin
/usr/bin
/opt/homebrew/bin
/bin
```

Executables INSIDE those directories:
ls /usr/local/bin | grep python
ls /opt/homebrew/bin | grep python
ls /usr/bin | grep python

### This shows the first python3 found in PATH
`which python3`
-- /usr/local/bin/python3
### This shows ALL python3 executables in PATH
`which -a python3`
-- /usr/local/bin/python3
-- /usr/bin/python3

## How it works?

When we type `python3`, our shell:

- Looks in /usr/local/bin/ for a file called python3
- If found, executes it
- If not found, moves to next directory (/usr/bin/)

### What's actually in /usr/local/bin/

`ls -l /usr/local/bin/python*`

You'll see **symlinks** (shortcuts):
```
python3 -> ../../../Library/Frameworks/Python.framework/Versions/3.11/bin/python3
python3.11 -> ../../../Library/Frameworks/Python.framework/Versions/3.11/bin/python3.11
```

### The symlink chain
```
You type: python3
    ↓
Shell finds: /usr/local/bin/python3 (symlink)
    ↓
Symlink points to: /Library/Frameworks/Python.framework/Versions/3.11/bin/python3
    ↓
This is the actual Python executable
```

#### See the symlinks

`ls -l /usr/local/bin/python*`

#### Follow the chain

`readlink /usr/local/bin/python3`

#### See the actual executable

`realpath /usr/local/bin/python3`

## Where is the default Python version set?

There's no single configuration file - it's determined by which symlink exists first in the PATH:

### Edit directories order

`export PATH="/usr/local/bin:$PATH"`

This puts /usr/local/bin FIRST, so it's searched before /usr/bin

## How to change your default Python?

### Modify your PATH order

```
export PATH="/opt/homebrew/bin:$PATH"
source ~/.zshrc
# Now python3 will find Homebrew's version first
```

### Use version-specific commands

python3
python3.11
python3.12

### Why directories order may be confusing


```
cho $PATH | tr ':' '\n' | nl

     1  /.nvm/versions/node/v23.6.1/bin
     2  /.rd/bin
     3  /google-cloud-sdk/bin
     4  /opt/homebrew/bin
     5  /opt/homebrew/sbin
     6  /usr/local/bin
     7  /System/Cryptexes/App/usr/bin
     8  /usr/bin
     9  /bin
    10  /usr/sbin
    11  /sbin
```

Homebrew Python may not be your default even though /opt/homebrew/bin comes first.

The key issue: What's IN those directories

#### Check what's in /opt/homebrew/bin
`ls -la /opt/homebrew/bin/python*`

#### Check what's in /usr/local/bin
`ls -la /usr/local/bin/python*`

#### Results

`/opt/homebrew/bin/` may have:
- `python3.12` ✅
- `python3.13` ✅
- **NO `python3`** ❌

`/usr/local/bin/` may have:
- `python3` ✅ (symlink to python.org 3.11)
- `python3.11` ✅

#### What happens when you type `python3`

Shell searches in PATH order for a file named "python3":

1. /opt/homebrew/bin/python3 → NOT FOUND (only python3.12, python3.13)
2. /usr/local/bin/python3 → FOUND! (stops here)

#### Switch python version

From `.zshrc`

```
# Switch to 3.9.6
export PATH="/usr/bin:$PATH"
source ~/.zshrc
python3 --version  # 3.9.6

# Switch to 3.12
export PATH="/opt/homebrew/opt/python@3.12/libexec/bin:$PATH"
source ~/.zshrc
python3 --version  # 3.12.x
```