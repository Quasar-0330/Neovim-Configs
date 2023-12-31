vim.opt.encoding = 'utf-8'
vim.opt.number = true
vim.opt.title = true
vim.opt.laststatus = 2
vim.opt.ruler = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.matchtime = 1
vim.opt.showmatch = true
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.showcmd = true
vim.opt.autoread = true
vim.opt.incsearch = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 5
vim.opt.backspace = 'indent,eol,start'
vim.opt.syntax = 'on'
vim.opt.mouse = ''

vim.keymap.set('n', '<Up>', '<NOP>')
vim.keymap.set('n', '<Down>', '<NOP>')
vim.keymap.set('n', '<Right>', '<NOP>')
vim.keymap.set('n', '<Left>', '<NOP>')

vim.keymap.set('i', '<Up>', '<NOP>')
vim.keymap.set('i', '<Down>', '<NOP>')
vim.keymap.set('i', '<Right>', '<NOP>')
vim.keymap.set('i', '<Left>', '<NOP>')

vim.keymap.set('i', '<C-h>', '<Left>')
vim.keymap.set('i', '<C-j>', '<Down>')
vim.keymap.set('i', '<C-k>', '<Up>')
vim.keymap.set('i', '<C-l>', '<Right>')
vim.keymap.set('i', '<C-o>', '<BS>')

require('plugins')

vim.g.coc_global_extensions = {'coc-jedi'}
vim.g.indentLine_char = '┊'

require('onenord').setup()

require('lualine').setup {
    option = {
        theme = 'onenord'
    }
}

if vim.fn.executable('fcitx5') then
    vim.cmd([[autocmd InsertLeave * :silent !fcitx5-remote -c]])
    vim.cmd([[autocmd CmdlineLeave * :silent !fcitx5-remote -c]])
end
