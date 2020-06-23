function! intellisurround#register(left, right) abort
    execute 'inoremap ' . a:left . ' ' . a:left . a:right . '<ESC>i'
    execute 'inoremap ' . a:right . ' ' . a:right . '<ESC>:call intellisurround#exit_bracket_if_needed("' . a:right .'")<CR>'
endfunction

function! intellisurround#exit_bracket_if_needed(right) abort
    let current = matchstr(getline('.'), '\%' . (col('.') + 1) . 'c.')
    echo current
    if current == a:right
        normal x
    endif
    normal l
    let current_col = col('.')
    let end_col = col('$') - 1
    if current_col == end_col
        startinsert!
    else
        startinsert
    endif
endfunction
