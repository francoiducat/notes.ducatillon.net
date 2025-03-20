# Every day Git commands for developers

![git](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Git-logo.svg/1280px-Git-logo.svg.png)

Here are some day to day useful git commands


### Refresh git repo after .gitignore edition

When you add a new file to the `.gitignore` it is not immediatly ignored. It stills appears on `git status`

To refresh the git repo

```
 git rm -rf --cached .
```

or 

```
 git rm -rf --cached specifyOnlyTheFolderToResfreshInsteadOftheEntireRepo
```

### Remove remote branch

````
git push origin --delete my-branch
````

### Remove locale branch

````
git branch -D my-branch
````

### Discard changes on a file

```
 git checkout fileYouDiscardChanges
```

### Show all remotes

This show origin and upstream remotes

```
git remote -v
git remote show origin #shows branches, tags etc.
git remote show upstream #shows branches, tags etc.
```
### Add upstream remote

(vs origin remote)

```
git remote add upstream git@github.com:username/git-repo.git
```

### Update git submodule
```
git submodule update --remote --merge
```

### Remove a remote file

Remove a remote file or directory from a Git repository without deleting it from the local filesystem

#### For single file:
```
git rm --cached myremotefiletodelete.log
git commit -m "remove file from repo"
git push
```

#### For single directory:
```
git rm --cached -r myremotedirectortytodelete
git commit -m "remove folder from repo"
git push
```

### Shortcut add & commit all files
Without shortcut
```
git add .
git commit -m "commit message"
```
With shortcut
```
git commit -am "commit message"
```

### Show git history

using pretty format
```
git log --pretty=format:"%h - %an, %ar : %s"
```

### Changing old commit messages

```
git rebase -i HEAD~3 
```

Then this prompt pops up

```
pick f45c433 update readme 
pick e023d22 edit README
pick c245d34 init readme

# Rebase 9fdb3bd..f7fde4a onto 9fdb3bd
#
# Commands:
# p, pick = use commit
# r, reword = use commit, but edit the commit message
# e, edit = use commit, but stop for amending
# s, squash = use commit, but meld into previous commit
# f, fixup = like "squash", but discard this commit's log message
# x, exec = run command (the rest of the line) using shell
#
# These lines can be re- ordered; they are executed from top to
bottom.
#
# If you remove a line here THAT COMMIT WILL BE LOST.
#
# However, if you remove everything, the rebase will be aborted.
#
# Note that empty commits are commented out
```

Then replace `pick` with `reword`. Save and close.

Finih with git push force:

```
git push --force
```