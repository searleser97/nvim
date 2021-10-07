let g:vim_sneah_hl_group_target = "vim_sneak_target"

function! InitHL(group, colors) " {{{
    let group_default = a:group . 'Default'

    " Prepare highlighting variables
    let guihl = printf('guibg=%s guifg=%s gui=%s', a:colors.gui[0], a:colors.gui[1], a:colors.gui[2])
    let ctermhl = &t_Co == 256
        \ ? printf('ctermbg=%s ctermfg=%s cterm=%s', a:colors.cterm256[0], a:colors.cterm256[1], a:colors.cterm256[2])
        \ : printf('ctermbg=%s ctermfg=%s cterm=%s', a:colors.cterm[0], a:colors.cterm[1], a:colors.cterm[2])

    " Create default highlighting group
    execute printf('hi default %s %s %s', group_default, guihl, ctermhl)

    " Check if the hl group exists
    if hlexists(a:group)
        redir => hlstatus | exec 'silent hi ' . a:group | redir END

        " Return if the group isn't cleared
        if hlstatus !~ 'cleared'
            return
        endif
    endif

    " No colors are defined for this group, link to defaults
    execute printf('hi default link %s %s', a:group, group_default)
endfunction " }}}

let s:target_hl_defaults = {
    \   'gui'     : ['NONE', '#ff0000' , 'bold']
    \ , 'cterm256': ['NONE', '196'     , 'bold']
    \ , 'cterm'   : ['NONE', 'red'     , 'bold']
    \ }

function! ExecTest()
    call InitHL("hola", s:target_hl_defaults)
    call VSCodeSetTextDecorations("hola", [['10', [ [6, 'jaja'] ] ] ])
endfunction

