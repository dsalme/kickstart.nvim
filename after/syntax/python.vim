syn region pythonInterpolation contained matchgroup=pythonQuotes start=/{/ end=/}/ extend contains=ALLBUT,pythonDecoratorName,pythonDecorator,pythonFunction,pythonDoctestValue,pythonDoctest

syn region pythonfString matchgroup=pythonQuotes start=+[fF]\z(['"]\)+ end="\z1" skip="\\\\\|\\\z1" contains=@Spell,pythonInterpolation

hi pythonInterpolation ctermfg=12
hi def link pythonfString String

syn region pythonArguments
      \ matchgroup=NONE
      \ start=/\%(\(\<def\>.*\|\<class\>\)\s\+\w\+\)\@<=(/rs=e-2
      \ end=/):/
      \ keepend
      \ contains=pythonString,pythonBuiltin,pythonArgument

syn match pythonArgument /\w\+\([,)=]\)\@=/ contained
hi pythonArgument ctermfg=5
