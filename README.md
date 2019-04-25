# VIM Walker [![Build Status](https://travis-ci.org/webguywalker/vimwalker.svg?branch=master)](https://travis-ci.org/webguywalker/vimwalker)
>A collection of useful vim functions (vimscipts) that aren't ready to be packaged as individual plugins, but are grouped into this single plugin until they find a home.<br />
**Note: [Vundle](https://github.com/gmarik/Vundle.vim)/[Pathogen](https://github.com/tpope/vim-pathogen) Compatible.**<br />
<br />
<br />

### Git Restore Vim Tabs
`:call g:GitRestoreVimTabs()`
- have you every had to stash files, make a change, and had to reopen all those vim tabs again?
- started coding, stopped, and had to pickup where you left off?
- computer shutdown due to some type of failure or you just closed terminal by mistake? 

**Solution:**  Open `vim` and run `:call g:GitRestoreVimTabs()` <br />
**Description:** While you're in a directory that's apart of a git repo it will look at your modified files in your Working Tree and reopen them all in Vim Tabs.

<br />
<hr />
<br />

### How to use Plugin (For Novice)
Vundle: 
```
" Add to .vimrc
Plugin 'webguywalker/vimwalker'

" Run this Command
:PluginInstall
```
Pathogen:
```
" Move into vim's bundles directory
cd ~/.vim/into_bundles_dir

" Clone Repo
git clone https://github.com/webguywalker/vimwalker.git
```

Manually:
```
"Clone Repo 
git clone https://github.com/webguywalker/vimwalker.git

"Copy Plugin File (./plugin/vimwalker.vim) into Vim Directory ~/.vim/plugin/
cp ./plugin/vimwalker.vim ~/.vim/plugin/
```

> testing pipline
