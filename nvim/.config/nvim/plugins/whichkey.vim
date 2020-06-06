" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['v'] = [ '<c-w>v'  , 'split right' ]
let g:which_key_map['t'] = [ ':tabnew'  , 'new tab' ]
let g:which_key_map['s'] = [ '<C-W>s'                     , 'split bottom']
let g:which_key_map['.'] = [ ':e $MYVIMRC'                , 'open init' ]
let g:which_key_map['o'] = [ ':source $MYVIMRC'                , 'source config' ]
let g:which_key_map['c'] = [ '<c-w>c'                  , 'close window' ]
let g:which_key_map['='] = [ '<C-W>='                     , 'balance windows' ]
let g:which_key_map['/'] = [ '<Plug>(easymotion-overwin-line)', 'easymotion line' ]
let g:which_key_map['d'] = [ ':Bclose'                        , 'delete buffer']
let g:which_key_map['e'] = [ ':NERDTreeFind'       , 'find file' ]
let g:which_key_map['q'] = [ ':q!'                          , 'quit' ]
let g:which_key_map['g'] = [ ':Rg'                        , 'search text' ]
let g:which_key_map['w'] = [ 'w'                          , 'write' ]
let g:which_key_map['z'] = [ ':ZoomWinTabToggle'            , 'focus' ]
let g:which_key_map['k'] = [ ':%bd|e#'                          , 'kill except' ]
let g:which_key_map['r'] = [ ':WinModeStart'   , 'win mode' ]

" Group mappings

" b is for buffer
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ '1' : ['b1'        , 'buffer 1']        ,
      \ '2' : ['b2'        , 'buffer 2']        ,
      \ 'd' : ['bd'        , 'delete-buffer']   ,
      \ 'f' : ['bfirst'    , 'first-buffer']    ,
      \ 'l' : ['blast'     , 'last-buffer']     ,
      \ 'n' : ['bnext'     , 'next-buffer']     ,
      \ 'p' : ['bprevious' , 'previous-buffer'] ,
      \ '?' : ['Buffers'   , 'fzf-buffer']      ,
      \ }

" s is for search
let g:which_key_map.f = {
      \ 'name' : '+find' ,
      \ '/' : [':History/'     , 'history'],
      \ ';' : [':Commands'     , 'commands'],
      \ 't' : [':Ag'           , 'text Ag'],
      \ 'B' : [':BLines'       , 'current buffer'],
      \ 'b' : [':Buffers'      , 'open buffers'],
      \ 'c' : [':Commits'      , 'commits'],
      \ 'C' : [':BCommits'     , 'buffer commits'],
      \ 'f' : [':Files'        , 'files'],
      \ 'g' : [':GFiles'       , 'git files'],
      \ 'G' : [':GFiles?'      , 'modified git files'],
      \ 'h' : [':History'      , 'file history'],
      \ 'H' : [':History:'     , 'command history'],
      \ 'l' : [':Lines'        , 'lines'] ,
      \ 'm' : [':Marks'        , 'marks'] ,
      \ 'M' : [':Maps'         , 'normal maps'] ,
      \ 'd' : [':Helptags'     , 'help tags'] ,
      \ 'P' : [':Tags'         , 'project tags'],
      \ 's' : [':CocList snippets'     , 'snippets'],
      \ 'S' : [':Colors'       , 'color schemes'],
      \ 'y' : [':Filetypes'    , 'file types'],
      \ }

" l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ '.' : [':CocConfig'                          , 'config'],
      \ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],
      \ 'a' : ['<Plug>(coc-codeaction)'              , 'line action'],
      \ 'A' : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],
      \ 'b' : [':CocNext'                            , 'next action'],
      \ 'B' : [':CocPrev'                            , 'prev action'],
      \ 'c' : [':CocList commands'                   , 'commands'],
      \ 's' : [':CocList snippets'                   , 'snppets'],
      \ 'd' : ['<Plug>(coc-definition)'              , 'definition'],
      \ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],
      \ 'e' : [':CocList extensions'                 , 'extensions'],
      \ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
      \ 'F' : ['<Plug>(coc-format)'                  , 'format'],
      \ 'h' : ['<Plug>(coc-float-hide)'              , 'hide'],
      \ 'i' : ['<Plug>(coc-implementation)'          , 'implementation'],
      \ 'I' : [':CocList diagnostics'                , 'diagnostics'],
      \ 'j' : ['<Plug>(coc-float-jump)'              , 'float jump'],
      \ 'l' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
      \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
      \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
      \ 'o' : ['<Plug>(coc-openlink)'                , 'open link'],
      \ 'O' : [':CocList outline'                    , 'outline'],
      \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
      \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
      \ 'r' : ['<Plug>(coc-rename)'                  , 'rename'],
      \ 'R' : ['<Plug>(coc-references)'              , 'references'],
      \ 't' : ['<Plug>(coc-type-definition)'         , 'type definition'],
      \ 'u' : [':CocListResume'                      , 'resume list'],
      \ 'U' : [':CocUpdate'                          , 'update CoC'],
      \ 'z' : [':CocDisable'                         , 'disable CoC'],
      \ 'Z' : [':CocEnable'                          , 'enable CoC'],
      \ }


" t is for toggle
let g:which_key_map.u = {
      \ 'name' : '+toggle' ,
      \ 'n' : [':set nonumber!'          , 'line-numbers'],
      \ 'r' : [':set norelativenumber!'  , 'relative line nums'],
      \ 's' : [':let @/ = ""'            , 'remove search highlight'],
      \ 'u' : ['viwU'                    , 'toggle caps' ]
      \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
