# VIM Walker
>A collection of vim functions (vimscipts) that aren't ready to be packaged as a plugin



### Restore Modified Files
> This command will use `git status` to figure out your Modified Files and reopen them all as Vim Tabs 

1. `vim`
2. `:call g:GitRestoreVimTabs()`

### Git Branch Clean-Up
> This command will use regex to step you through an interactive prompt to remove old git branches
