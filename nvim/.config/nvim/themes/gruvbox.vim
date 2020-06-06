let g:gruvbox_bold=0

if (g:colors_name == "gruvbox")
   set background=dark

   if (has("termguicolors"))
       set termguicolors
       hi LineNr ctermbg=NONE guibg=NONE
   endif
endif
