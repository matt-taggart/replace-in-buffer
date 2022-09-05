if exists("g:loaded_replace_in_buffer")
  finish
endif
let g:loaded_replace_in_buffer = 1

function! s:ReplaceInBuffer()
  let wordUnderCursor = expand("<cword>")
  call inputsave()
  let replacementText = input("Enter replacement text: ")
  call inputrestore()
  execute ":%s/" . wordUnderCursor . "/" . replacementText . "\/g"
endfunction

:command -nargs=0 ReplaceInBuffer :call s:ReplaceInBuffer()
