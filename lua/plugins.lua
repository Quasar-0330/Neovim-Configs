vim.cmd.packadd "packer.nvim"
require("packer").startup(function()
    use {"wbthomason/packer.nvim", opt = true}
    use "itchyny/lightline.vim"
    use "joshdick/onedark.vim"
    use "neoclide/coc.nvim"
    use "cohama/lexima.vim"
    use "bronson/vim-trailing-whitespace"
    use "Yggdroot/indentLine"
end)
