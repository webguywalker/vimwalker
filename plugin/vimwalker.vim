"""""""""""
" VIM Walker
" A collection of vim functions that aren't ready to be packaged as a plugin
"
"@author	Jamar A. Walker
"@date		01/13/2015
"@requires	PHP 5.3+, PHP-CLI enabled
"""""""""""

" Helpers
function g:isInGitRepo(...)
:	let g:ok = expand(g:cwd).';'
:	let g:found = finddir('.git', g:ok)
:	return isdirectory(g:found)
endfunction

" Variables
:let g:cwd = getcwd()
:let g:found_git_repo = g:isInGitRepo()

"""
"" Git Restore Vim Tabs
"" Uses `git status` to figure out Modified Files and opens them in Vim Tabs
"""
function g:GitRestoreVimTabs(...)

	:if g:found_git_repo

		:silent ! git status | php -r '$gitstatus = file_get_contents("php://stdin"); preg_match_all("/(?<=modified:\s{3})([a-zA-Z\/_.]+)/m",$gitstatus,$matches); $matches = array_unique($matches[0]); echo implode("\n",$matches)."\n";' > /tmp/gitmodifiedfiles.txt
		:let wholefile = readfile("/tmp/gitmodifiedfiles.txt")
		
		:for line in wholefile
		:	let run = ':tabedit ' . line
		:	execute run
		:endfor

	:else 
		:echom 'Please: Move into a Git Repo, hint: cd ~/a/git/repo'
	:endif

endfunction
