# Dev Config

# TODO

- Vim config
    - Minimal
        - Color scheme
        - Mappings
    - Full
        - Plugins
- Common, cool and useful commands
- Good install script
- Regex

> Goal: Unix wizard + Vim maestro

# Common CLI Commands

```sh
$ cat
$ clear
$ echo
$ find
$ git add [pattern]
$ git add --all
$ git branch -a
$ git branch -d [branch]
$ git checkout [branch]
$ git checkout -b [branch]
$ git checkout .
$ git commit -m “commit message”
$ git commit --amend
$ git diff HEAD
$ git diff HEAD~1 HEAD
$ git fetch --all --prune
$ git log --oneline --decorate --graph
$ git log --oneline --decorate --graph --all
$ git merge [branch]
$ git pull
$ git push
$ git push -u [remote] [branch]
$ git reset
$ git reset --hard
$ git stash apply
$ git stash clear
$ git stash drop
$ git stash list
$ git stash pop
$ git stash save
$ git status
$ git tag
$ git tag -s
$ grep
$ less
$ ls
$ ls -alh
$ ls -alhR
$ ls -alhS
$ ls -alhSr
$ ls -alht
$ ls -alhtr
$ ls -alhX
$ man
$ mkdir -p
$ rm
$ rm -r
$ sed
$ sort
$ tail -f
$ tail -n
$ tee
$ touch
$ vim
$ whereis
$ which
```

Add more commands, including specific examples as well as ones that use pipes and redirects.

Add some information about regex too.

## Cool Commands

```sh
# Display output as a table
$ mount | column -t
$ cat /etc/passwd | column -t -s :
# Run until success
$ while true do ping -c 1 google.com > /dev/null 2>&1 && break done;
# Sort processes by memory/cpu usage
$ ps aux | sort -nk 4
$ ps aux | sort -nk 3
# Check your architecture
$ getconf LONG_BIT
# Return to previous directory
$ cd -
# Watch command output
$ watch df -h
# Continue program after ending session
$ nohup wget site.com/file.zip
$ nohup ping -c 10 google.com
# Answer bot with yes/no commands (-y flags are probably better in general)
$ yes | apt-get update
$ yes no | command
# Run last command as root
$ sudo !!
# Record your command line session (all commands will be saved to file on exit)
$ script
# xargs
$ find . -name "*.png" -type f -print | xargs tar -cvzf pics.tar.gz
$ cat links.txt | xargs wget
```

> Note: `{}` expansion for `-exec` flag for `find`

## Cool Programs

- rg
- exa
- fd
- multitail
- watch
- rake

---

# Unix as IDE Notes

## `ls`

```sh
# show all files
$ ls -a
# long listing
$ ls -l
# modification time
$ ls -t
# 10 last modified files
$ ls -t | head
$ ls -t | sed 10q
# 10 oldest modified files
$ ls -trl | head
# Group by extension
$ ls -X
# Sort version numbers in files
$ ls -v
# Sort by filesize
$ ls -S
# List files recursively
$ ls -R
# List files recursively and page through them
$ ls -lR | less
$ ls -XR | vim -
```

## `find`

```sh
# Complete list of files
$ find .
# Sort the files
$ find . | sort
# Long listing
$ find . -ls | sort -k11,11 # -k11
# Files with names matching pattern
$ find . -name '*.c'
# Case insensitive search for names
$ find . -iname '*test.c'
# Files with paths matching pattern
$ find . -path '*test*'
# Case insensitive search for paths
$ find . -ipath '*env*'
# Find files edited in the last 5 days
$ find . -mtime -5
# Find files edited longer than 5 days ago
$ find . -mtime +5
# Find files edited more recently than server.c
$ find . -newer server.c
# Find directories
$ find . -type d
# Find files
$ find . -type f
# Find symbolic links
$ find . -type l
# Find C source files edited in the last two days
$ find . -name '*.c' -mtime -2
# Delete matching files
$ find . -name '*.js' -delete
# Check the syntax for all the perl files (Invokes the command for each file)
$ find . -name '*.pl' -exec perl -c {} \;
# Edit all C files in Vim (Invokes the command once with an argument for each file)
$ find . -name '*.c' -exec vim {} +
# file gives you metadata
$ find . -exec file {} +
```

## `grep`

```sh
# F is for fixed string
# Search directory recursively for someVar
$ grep -FR someVar .
# Case insensitive search (recursive)
$ grep -iR somevar .
# Print list of files with matches, but not the matches
$ grep -lR someVar .
# Use a while loop to read input from grep
$ grep -lR someVar | while IFS= read -r file; do head "$file" done
# Exclude matches
$ grep -R someVar . | grep -vF .git
# Also, --exclude and --exclude-dir
```

## `vim`

- Minimal setup: Just mappings, etc.
- Full setup: Plugins too (NVim conditions for other plugins)

ctags

`:!ctags -R`

`:tag someClass`

`:tn`

`:tp`

Review config

Searching, taglist, unimpaired, easymotion, ctrlp, snippets, boilerplate templates

`^[`

Try using search-to-navigate technique: `/ ? * #`

Text objects, motions, visual mode

```vimscript
command PerlLint !perl -c %
nnoremap <leader>l :PerlLint<Cr>
```

For a quickfix window:

```vimscript
set makeprg=perl\ -c\ -MVi::QuickFix\ %
set errorformat+=%m\ at\ %f\ line\ %l\.
set errorformat+=%m\ at\ %f\ line\ %l\
```

This invokes with `:make`. `:copen` to inspect errors, `:cn` for next and `:cp` for previous.

Reading in command output and files

Filtering output through other commands:

```
:%!sort -k2,2r
:'<,'>!awk '/vim/ {print $3}'
:1,10!column -t
```

Built-in `:sort`, `:grep` and `:vimdiff`

```sh
$ vimdiff file-v1.c file-v2.c
```

Compiling, using `cargo` mostly.

```
:!cargo run
```

Building, using `rake`.

## Other Binaries

- sed
- ack
- rg
- fd
- exa

## Power User Command Reference

