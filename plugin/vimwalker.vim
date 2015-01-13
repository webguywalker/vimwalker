"""""""""""
" VIM Walker
" A collection of vim functions that aren't ready to be packaged as a plugin
"
"@author	Jamar A. Walker
"@date		01/13/2015
"@requires	PHP 5.3+, PHP-CLI enabled
"""""""""""


" Variables
let g:cwd = getcwd()
let g:realtime = '/Users/jamarwalker/vm/app/precise/realtime-ng'

"""
"" Global: Git Restore Vim Tabs
"" Uses `git status` to figure out Modified Files and opens them in Vim Tabs
"""
function g:GitRestoreVimTabs(...)

	:if g:cwd == g:realtime

		:silent ! git status | php -r '$gitstatus = file_get_contents("php://stdin"); preg_match_all("/(?<=modified:\s{3})([a-zA-Z\/_.]+)/m",$gitstatus,$matches); $matches = array_unique($matches[0]); echo implode("\n",$matches)."\n";' > /tmp/gitmodifiedfiles.txt
		:let wholefile = readfile("/tmp/gitmodifiedfiles.txt")
		
		:for line in wholefile
		:	let run = ':tabedit ' . line
		:	echo run
		:	execute run
		:endfor

	:else 
		:echom 'Please: Move into the app directory - ' . g:realtime
	:endif

endfunction
