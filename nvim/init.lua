require("mrio")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath) 

local plugins = {
	{'preservim/nerdtree'},
	{'preservim/nerdcommenter'},
	{'morhetz/gruvbox'}, 
	{'kkoomen/vim-doge', build = ':call doge#install()' },
	{'google/vim-jsonnet'}, 
	{ 'christoomey/vim-tmux-navigator'},
	{'nvim-treesitter/nvim-treesitter', build = ":TSUpdate"}, 
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},

	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},
}

local opts = {}
vim.keymap.set('n', '<C-H>', '<C-W>h', {})
vim.keymap.set('n', '<C-J>', '<C-W>j', {})
vim.keymap.set('n', '<C-K>', '<C-W>k', {})
vim.keymap.set('n', '<C-L>', '<C-W>l', {})

require("lazy").setup(plugins, opts)

vim.opt.number = true
