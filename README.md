# VIM Walker
>A collection of vim functions (vimscipts) that aren't ready to be packaged as a plugin<br />


###Getting Started
**Note: Vundle Compatible.**<br /> 
add `Plugin 'webguywalker/vimwalker'` to .vimrc file and run: `:PluginInstall vimwalker.vim`

**Manually:**<br />
1. Clone Repo: `git clone https://github.com/webguywalker/vimwalker.git`<br />
2. Copy Plugin File `(./plugin/vimwalker.vim)` into Vim Directory ~/.vim/plugin/


### Restore Modified Files
> This command will use `git status` to figure out your Modified Files and reopen them all as Vim Tabs 

1. `vim`
2. `:call g:GitRestoreVimTabs()`

### Git Branch Clean-Up
> This command will use regex to step you through an interactive prompt to remove old git branches
