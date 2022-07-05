if exists("b:current_syntax")
    finish
endif

syntax spell toplevel
syntax case ignore

syntax keyword hwtRepeat for
syntax keyword hwtKeyword of 
syntax keyword hwtConditional if elseif else

syntax match hwtStatement "\v\@\w+"

syntax match hwtIdentifier "$\h\w*"

syntax match cssClassName "\.-\=[A-Za-z_][:A-Za-z0-9_-]*" contains=cssClassNameDot
syntax match cssClassNameDot contained '\.'


syntax match hwtOperator "&&\|\<and\>" 
syntax match hwtOperator "||\|\<x\=or\>" 
syntax match hwtOperator "[!=<>]=" 
syntax match hwtOperator "[<>]" 
syntax match hwtOperator "=" 

syntax region hwtComment start="/\*" end="\*/"
syntax match hwtComment "\v^\s*//.*$"
syntax region hwtString start=/\v"/ skip=/\v\\./ end=/\v"/ contains=hwtIdentifier
syntax region hwtString start=/\v'/ skip=/\v\\./ end=/\v'/ contains=hwtIdentifier

" tag names
syntax keyword hwtTagName _ address applet area a base basefont
syntax keyword hwtTagName big blockquote br caption center
syntax keyword hwtTagName cite code dd dfn dir div dl dt font
syntax keyword hwtTagName form hr hwt img
syntax keyword hwtTagName input isindex kbd li link map menu
syntax keyword hwtTagName meta ol option param pre p samp span
syntax keyword hwtTagName select small sub sup
syntax keyword hwtTagName table td textarea th tr tt ul var xmp
syntax match hwtTagName "\<\(b\|i\|u\|h[1-6]\|em\|strong\|head\|body\|title\)\>"

syntax keyword hwtTagName abbr acronym bdo button col label
syntax keyword hwtTagName colgroup fieldset iframe ins legend
syntax keyword hwtTagName object optgroup q s tbody tfoot thead

syntax keyword hwtTagName article aside audio bdi canvas data
syntax keyword hwtTagName datalist details dialog embed figcaption
syntax keyword hwtTagName figure footer header hgroup keygen main
syntax keyword hwtTagName mark menuitem meter nav output picture
syntax keyword hwtTagName progress rb rp rt rtc ruby section script
syntax keyword hwtTagName slot source summary template time track
syntax keyword hwtTagName video wbr

" legal arg names
syntax keyword hwtArg action
syntax keyword hwtArg align alink alt archive background bgcolor
syntax keyword hwtArg border bordercolor cellpadding
syntax keyword hwtArg cellspacing checked class clear code codebase color
syntax keyword hwtArg cols colspan content coords enctype face
syntax keyword hwtArg gutter height hspace id
syntax keyword hwtArg lowsrc marginheight
syntax keyword hwtArg marginwidth maxlength method name prompt
syntax keyword hwtArg rel rev rows rowspan scrolling selected shape
syntax keyword hwtArg size src start target text type url
syntax keyword hwtArg usemap ismap valign value vlink vspace width wrap
syntax match   hwtArg "\<\(http-equiv\|href\|title\)="me=e-1
" aria attributes
exe 'syntax match hwtArg "\<aria\%(' . join([
    \ 'activedescendant', 'atomic', 'autocomplete', 'busy', 'checked', 'colcount',
    \ 'colindex', 'colspan', 'controls', 'current', 'describedby', 'details',
    \ 'disabled', 'dropeffect', 'errormessage', 'expanded', 'flowto', 'grabbed',
    \ 'haspopup', 'hidden', 'invalid', 'keyshortcuts', 'label', 'labelledby', 'level',
    \ 'live', 'modal', 'multiline', 'multiselectable', 'orientation', 'owns',
    \ 'placeholder', 'posinset', 'pressed', 'readonly', 'relevant', 'required',
    \ 'roledescription', 'rowcount', 'rowindex', 'rowspan', 'selected', 'setsize',
    \ 'sort', 'valuemax', 'valuemin', 'valuenow', 'valuetext'
    \ ], '\|') . '\)\>"'
syntax keyword hwtArg role

" html 4.0 arg names
syntax match   hwtArg "\<\(accept-charset\|label\)\>"
syntax keyword hwtArg abbr accept accesskey axis char charoff charset
syntax keyword hwtArg cite classid codetype compact data datetime
syntax keyword hwtArg declare defer dir disabled for frame
syntax keyword hwtArg headers hreflang lang language longdesc
syntax keyword hwtArg multiple nohref nowrap object profile readonly
syntax keyword hwtArg rules scheme scope standby style
syntax keyword hwtArg summary tabindex valuetype version

" html 5 arg names
syntax keyword hwtArg allowfullscreen async autocomplete autofocus
syntax keyword hwtArg autoplay challenge contenteditable contextmenu
syntax keyword hwtArg controls crossorigin default dirname download
syntax keyword hwtArg draggable dropzone form formaction formenctype
syntax keyword hwtArg formmethod formnovalidate formtarget hidden
syntax keyword hwtArg high icon inputmode keytype kind list loop low
syntax keyword hwtArg max min minlength muted nonce novalidate open
syntax keyword hwtArg optimum pattern placeholder poster preload
syntax keyword hwtArg radiogroup required reversed sandbox spellcheck
syntax keyword hwtArg sizes srcset srcdoc srclang step title translate
syntax keyword hwtArg typemustmatch

highlight link cssClassName Special 
highlight link hwtStatement Macro 
highlight link hwtSpecial Special 
highlight link hwtTagName Statement
highlight link hwtArg Type
highlight link hwtIdentifier Identifier
highlight link hwtOperator Operator 
highlight link hwtComment Comment
highlight link hwtString String

highlight link hwtKeyword Keyword
highlight link hwtFunction Function

let b:current_syntax = "hwt"
