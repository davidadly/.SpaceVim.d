function! myspacevim#before() abort

autocmd CursorHold * silent! checktime

endfunction

function! myspacevim#after() abort

    " you can remove key binding in bootstrap_after function
    " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
    " other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#_select_confirm() :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


map <F9> :w<CR>:term python %<CR>
set clipboard=unnamedplus
set spelllang=en_us


nnoremap <silent> <F6> :set spell!<CR>
inoremap <silent> <F6> <C-O>:set spell!<CR>
let g:rainbow_active = 1


let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1
let b:neoformat_run_all_formatters = 1

let g:neoformat_cpp_clangformat = {
    \ 'exe': 'clang-format',
    \ 'args': ['--style="{IndentWidth: 4}"']
\}

let g:neoformat_enabled_cpp = ['clangformat']
let g:neoformat_enabled_c = ['clangformat']

filetype plugin on       " may already be in your .vimrc

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END

if has('nvim') && !empty($CONDA_PREFIX)
  let g:python3_host_prog = $CONDA_PREFIX . '/bin/python'
endif

let g:python3_host_prog = "C:/Users/AdlyD/anaconda3/python"

" let g:neoformat_python_black = {
"     \ 'exe': 'black', 
"     \ 'stdin': 1,
"     \ 'args': ['-q', '-'],
"     \ }
let g:neoformat_enabled_python = [ 'yapf']

" let g:neomake_python_python_exe= 'C:\msys64\mingw64\bin\python.exe'

nnoremap<F3> :Copilot disable<CR>
nnoremap<F4> :Copilot enable<CR>

imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true

let g:cpp_attributes_highlight = 1
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

vnoremap <C-c> "*y

vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

let l:vimwiki_fold_blank_lines = 0  " set to 1 to fold blank lines
let l:vimwiki_header_type = ''     " set to '=' for wiki syntax
setlocal foldlevel=1
setlocal foldenable
setlocal foldmethod=expr
setlocal foldexpr=Fold(v:lnum)

function! Fold(lnum)
 let fold_level = strlen(matchstr(getline(a:lnum), '^' . l:vimwiki_header_type . '\+'))
 if (fold_level)
   return '>' . fold_level  " start a fold level
 endif
 if getline(a:lnum) =~? '\v^\s*$'
   if (strlen(matchstr(getline(a:lnum + 1), '^' . l:vimwiki_header_type . '\+')) > 0 && !g:vimwiki_fold_blank_lines)
     return '-1' " don't fold last blank line before header
   endif
 endif
 return '=' " return previous fold level
endfunction

nnoremap <silent> <leader>rs :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

nmap L <Plug>(devdocs-under-cursor)

let g:openbrowser_search_engines = extend(
\ get(g:, 'openbrowser_search_engines', {}),
\ {
\   'cppreference': 'https://en.cppreference.com/mwiki/index.php?title=Special%3ASearch&search={query}',
\   'qt': 'https://doc.qt.io/qt-5/search-results.html?q={query}',
\ },
\ 'keep'
\)

nnoremap <silent> <leader>osx :call openbrowser#smart_search(expand('<cword>'), "cppreference")<CR>
nnoremap <silent> <leader>osq :call openbrowser#smart_search(expand('<cword>'), "qt")<CR>


nnoremap <silent> <A-o> :FSHere<cr>
" Extra hotkeys to open header/source in the split
nnoremap <silent> <localleader>oh :FSSplitLeft<cr>
nnoremap <silent> <localleader>oj :FSSplitBelow<cr>
nnoremap <silent> <localleader>ok :FSSplitAbove<cr>
nnoremap <silent> <localleader>ol :FSSplitRight<cr>

nnoremap <silent> <A-6> :Vista!!<CR>

function! LightlineCurrentFunctionVista() abort
  let l:method = get(b:, 'vista_nearest_method_or_function', '')
  if l:method != ''
    let l:method = '[' . l:method . ']'
  endif
  return l:method
endfunction
au VimEnter * call vista#RunForNearestMethodOrFunction()


let g:vimspector_install_gadgets = [ 'debugpy']
nnoremap <localleader>gd :call vimspector#Launch()<cr>
nnoremap <localleader>gc :call vimspector#Continue()<cr>
nnoremap <localleader>gs :call vimspector#Stop()<cr>
nnoremap <localleader>gR :call vimspector#Restart()<cr>
nnoremap <localleader>gp :call vimspector#Pause()<cr>
nnoremap <localleader>gb :call vimspector#ToggleBreakpoint()<cr>
nnoremap <localleader>gB :call vimspector#ToggleConditionalBreakpoint()<cr>
nnoremap <localleader>gn :call vimspector#StepOver()<cr>
nnoremap <localleader>gi :call vimspector#StepInto()<cr>
nnoremap <localleader>go :call vimspector#StepOut()<cr>
nnoremap <localleader>gr :call vimspector#RunToCursor()<cr>

function! s:JbzRemoveDebugPrints()
  let save_cursor = getcurpos()
  :g/\/\/\ prdbg$/d
  call setpos('.', save_cursor)
endfunction

let g:leetcode_browser = 'firefox'
let g:leetcode_default_language = 'cpp'

nnoremap <leader>ll :LeetCodeList<cr>
nnoremap <leader>lt :LeetCodeTest<cr>
nnoremap <leader>ls :LeetCodeSubmit<cr>
nnoremap <leader>li :LeetCodeSignIn<cr>

command! JbzRemoveDebugPrints call s:JbzRemoveDebugPrints()

map <F10> :e %:p:s,.hpp$,.X123X,:s,.cpp$,.hpp,:s,.X123X$,.cpp,<CR>

let g:copilot_enabled = v:false

autocmd CursorHold * silent! checktime


endfunction
