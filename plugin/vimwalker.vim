"""""""""""
" VIM Walker
" A collection of vim functions that aren't ready to be packaged as a plugin
"
"@author	Jamar A. Walker
"@date		01/13/2015
"@requires	Git 1.9+
"""""""""""

" Helpers
function s:isInGitRepo(...)
:	let l:ok = expand(s:cwd).';'
:	let l:found = finddir('.git', l:ok)
:	return isdirectory(l:found)
endfunction

" Variables
:let s:cwd = getcwd()
:let s:found_git_repo = s:isInGitRepo()

"""
"" Git Restore Vim Tabs
"" Uses `git status` to figure out Modified Files and opens them in Vim Tabs
"""
function g:GitRestoreVimTabs(...)

	:if s:found_git_repo

		:let l:modified_files = system('git ls-files -m')
		:let l:modified_files_list = split(l:modified_files, '\n')
		
		:for line in l:modified_files_list
		:	let l:run = ':tabedit ' . line
		:	execute l:run
		:endfor

	:else
		:echom 'Please: Move into a Git Repo, hint: cd ~/a/git/repo'
	:endif

endfunction
