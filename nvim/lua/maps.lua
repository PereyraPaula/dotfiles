local keymap = vim.keymap

keymap.set('n', 'x', '"_x')

-- Incrementar/Decrementar
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Borrar una palabra hacia atrás
keymap.set('n', 'dw', 'vb"_d')

-- Seleccionar todo
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- Nueva pestaña
keymap.set('n', 'te', ':tabedit')
keymap.set('n', 'tl', ':tabprevious') -- Pasa a la tab de la izquierda
keymap.set('n', 'tr', ':tabNext') -- Pasa al tab de la derecha

-- Dividir ventana
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Mover ventana
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Redimensionar ventana
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')
