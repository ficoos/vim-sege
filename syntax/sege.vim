" Vim syntax file
" Language:     Sege
" Maintainer:   Saggi Mizrahi <ficoos@gmail.com>
" Filenames:    *.sege

syn keyword     segeDecleration     declare note destroy
syn keyword     segeLifelineOp      activate deactivate wait
syn keyword     segeControl         alt opt loop else
syn keyword     segeNotePos         left of right over
syn match       segeLink            "\(->\|<-\|\~>\)"
syn region      segeComment         start="#" end="$" contains=@Spell
syn region      segeString          start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=@segeStringGroup
syn match       segeStringLineStart ":" nextgroup=segeStrip
syn match       segeStrip           contained "\s*" nextgroup=segeStringLine
syn region      segeStringLine      contained skipwhite start="." end="$" contains=@segeStringGroup
syn cluster     segeStringGroup     contains=segeEscapeC
syn match       segeEscapeC         display contained +\\[abfnrtv\\'"]+
syn match       segeInt             "\<\d\+\>"
syn region      segeBlock           start="{" end="}" transparent fold

hi def link     segeDecleration     Type
hi def link     segeLink            operator
hi def link     segeNotePos         keyword
hi def link     segeLifelineOp      Statement
hi def link     segeComment         Comment
hi def link     segeControl         Conditional
hi def link     segeNotePos         keyword
hi def link     segeStringLineStart special
hi def link     segeString          string
hi def link     segeStringLine      string
hi def link     segeInt             number
hi def link     segeEscapeC         special

let b:current_syntax = "sege"
" vim:set sw=2:
