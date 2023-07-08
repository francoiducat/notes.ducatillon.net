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