vim.cmd.packadd "packer.nvim"
require("packer").startup(function()
    use {"wbthomason/packer.nvim", opt = true}
    use "nvim-lualine/lualine.nvim"
    use "rmehri01/onenord.nvim"
    use "neoclide/coc.nvim"
    use "cohama/lexima.vim"
    use "bronson/vim-trailing-whitespace"
    use "Yggdroot/indentLine"
end)
