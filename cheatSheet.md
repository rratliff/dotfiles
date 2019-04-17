Inspiration: https://gist.github.com/JoshuaEstes/2627607

Shell utilities
===============

grep -RF --binary-files=without-match  REGEX .

Less efficient way: see findall.sh script.

Bash
====

## Moving

| command  | description                    |
|----------|--------------------------------|
| ctrl + a | Goto BEGINNING of command line |
| ctrl + e | Goto END of command line       |
| alt + b  | Go back a word                 |
| alt + f  | Forward a word                 |
| alt + d  | Forward delete a word          |

## Other

| command    | description                    |
|------------|--------------------------------|
| ctrl + r   | Search backward starting at the current line and moving 'up' through the history as necessary |
| ctrl + k   | Clear all AFTER cursor |
| ctrl + g   | Cancel search started with C-r |

Less
====

| command | description                   |
|---------|-------------------------------|
| g       | go to top (not gg, as in vim) |
| N       | repeat previous search, but in reverse direction |

Note: vim scrolling commands work here too (C-f, C-b, C-d, C-u), though for bonus points you can leave off the Control modifier.

Vim
===

| command  | description                                |
|----------|--------------------------------------------|
| C-w s    | split current window in two                |
| C-w l    | move focus to right window (works in XVim) |
| C-w h    | move focus to left window (works in XVim)  |
| t (char) | till (excludes char)                       |
| f (char) | find (includes char)                       |

Vimwiki
=======

| command             | Description                              |
|---------------------|------------------------------------------|
| \ww                 | Goes to the index page |
| Backspace           | Go back to parent(previous) wiki link |
| Tab                 | Find next wiki link in current document |
| :h vimwiki-mappings | Show keyboard shortcuts |
| gll                 | Indent |

