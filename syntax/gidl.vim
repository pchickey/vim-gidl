" Vim syntax file
" Language: Gidl
" Maintainer: Pat Hickey <pat@galois.com>
" ----------------------------------------------------------------------------

if exists("b:current_syntax")
  finish
endif

syn match gidlIdentifier  "\<[a-z]\%([a-z]\|[0-9]\|_\)*\>"
syn match gidlDecNumber   "\<\d\+\>"
syn match gidlHexNumber   "\<0x\x\+\>"


syn keyword   gidlForm     def-enum
syn keyword   gidlForm     def-struct
syn keyword   gidlForm     def-newtype
syn keyword   gidlForm     def-interface
syn keyword   gidlPrim     uint8_t uint16_t uint32_t uint64_t
syn keyword   gidlPrim     sint8_t sint16_t sint32_t sint64_t
syn keyword   gidlPrim     bool_t float_t double_t
syn keyword   gidlIfPrim   stream attr
syn keyword   gidlPerm     read write readwrite r w rw

syn region  gidlCommentLine   start="--" end="$"   contains=@Spell
syn region  gidlStruc         matchgroup=Delimiter start="(" matchgroup=Delimiter end=")" contains=ALL
syn sync match matchPlace grouphere NONE "^[^ \t]"

hi def link gidlDecNumber     gidlNumber
hi def link gidlHexNumber     gidlNumber

hi def link gidlCommentLine   Comment
hi def link gidlForm          Conditional
hi def link gidlIdentifier    Type
hi def link gidlNumber        Number
hi def link gidlPrim          Special
hi def link gidlIfPrim        Statement
hi def link gidlPerm          Special

let b:current_syntax = "gidl"
