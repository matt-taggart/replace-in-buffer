if exists("g:loaded_replace_in_buffer")
  finish
endif
let g:loaded_replace_in_buffer = 1

function! s:ReplaceInBuffer()
  let l:wordUnderCursor = expand("<cword>")
  normal gg0
  call inputsave()
  let l:replacementText = input("Replace '" . l:wordUnderCursor . "' with: ")
  call inputrestore()
  execute "%s/" . l:wordUnderCursor . "/" . l:replacementText . "/g"
endfunction

:command ReplaceInBuffer :call s:ReplaceInBuffer()

