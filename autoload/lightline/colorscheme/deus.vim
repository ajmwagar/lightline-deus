" ============================================================================
" File: deus.vim
" Description: deus colorscheme for Lightline (itchyny/lightline.vim)
" Author: Avery Wagar
" Source: https://github.com/ajmwagar/lightline-deus
" Last Modified: 11 March 2018
" ===========================================================================

let s:bold = get(g:, 'lightline#deus#disable_bold_style', 0) ? '' : 'bold'

" Colour codes that are used in the original deus.vim theme
let s:light_red     = [ '#fb4934', 204 ] " Deus
let s:dark_red      = [ '#be5046', 196 ]
let s:green         = [ '#98C379', 114 ] " Deus
let s:blue          = [ '#83a598', 39 ] " Deus
let s:aqua          = [ '#8ec07c', 38 ]
let s:purple        = [ '#C678DD', 170 ] " Deus
let s:light_yellow  = [ '#e5c07b', 180 ] " Dues
let s:dark_yellow   = [ '#d19a66', 173 ]

let s:black         = [ '#282c34', 235 ]
let s:white         = [ '#abb2bf', 145 ]
let s:comment_grey  = [ '#5c6370', 59 ]
let s:gutter_grey   = [ '#242a32', 238 ]
let s:cursor_grey   = [ '#2c323c', 236 ]
let s:visual_grey   = [ '#3e4452', 237 ]
let s:menu_grey     = s:visual_grey
let s:special_grey  = [ '#3b4048', 238 ]
let s:vertsplit     = [ '#242a32', 59 ]

let s:tab_color     = s:blue
let s:normal_color  = s:green
let s:insert_color  = s:blue
let s:replace_color = s:light_red
let s:visual_color  = s:purple
let s:active_bg     = s:visual_grey
let s:inactive_bg   = s:special_grey

let s:p = {'normal': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'inactive': {}, 'tabline': {}}

let s:p.normal.left     = [ [ s:black, s:normal_color, s:bold ], [ s:white, s:active_bg ] ]
let s:p.normal.right    = [ [ s:black, s:normal_color ], [ s:white, s:active_bg ] ]
let s:p.normal.middle   = [ [ s:normal_color, s:cursor_grey ] ]

let s:p.insert.left     = [ [ s:black, s:insert_color, s:bold ], [ s:white, s:active_bg ] ]
let s:p.insert.right    = [ [ s:black, s:insert_color ], [ s:white, s:active_bg ] ]
let s:p.insert.middle   = [ [ s:insert_color, s:cursor_grey ] ]

let s:p.replace.left    = [ [ s:black, s:replace_color, s:bold ], [ s:white, s:active_bg ] ]
let s:p.replace.right   = [ [ s:black, s:replace_color ], [ s:white, s:active_bg ] ]
let s:p.replace.middle  = [ [ s:replace_color, s:cursor_grey ] ]

let s:p.visual.left     = [ [ s:black, s:visual_color, s:bold ], [ s:white, s:active_bg ] ]
let s:p.visual.right    = [ [ s:black, s:visual_color ], [ s:white, s:active_bg ] ]
let s:p.visual.middle   = [ [ s:visual_color, s:cursor_grey ] ]

let s:p.inactive.left   = [ [ s:white, s:inactive_bg ], [ s:white, s:inactive_bg ] ]
let s:p.inactive.right  = [ [ s:white, s:inactive_bg ], [ s:white, s:inactive_bg ] ]
let s:p.inactive.middle = [ [ s:white, s:inactive_bg ] ]

let s:p.tabline.left    = [ [ s:gutter_grey, s:cursor_grey ] ]
let s:p.tabline.right   = [ [ s:tab_color, s:cursor_grey ] ]
let s:p.tabline.middle  = [ [ s:green, s:black ] ]
let s:p.tabline.tabsel  = [ [ s:black, s:green, s:bold ] ]
let s:p.tabline.bufsel  = [ [ s:tab_color, s:visual_grey ] ]
let s:p.tabline.tabsep  = [ [ s:white, s:cursor_grey ] ]

let s:p.normal.error    = [ [ s:black, s:light_red ] ]
let s:p.normal.warning  = [ [ s:black, s:light_yellow ] ]

let g:lightline#colorscheme#deus#palette = lightline#colorscheme#flatten(s:p)
