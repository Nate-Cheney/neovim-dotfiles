return require("packer").startup(function(use)
	-- Packer can manage itself
	use { "wbthomason/packer.nvim" }
    
    -- Requred for nvim plugins
    use "nvim-lua/plenary.nvim"

	-- Harpoon
    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} }
    }

    -- Markview
    use {
        "OXY2DEV/markview.nvim",
        requires = { {"saghen/blink.cmp"} }
    }
    
    -- Theme
	use { "catppuccin/nvim", as = "catppuccin" }
    
	-- Telescope
	use {
		"nvim-telescope/telescope.nvim", tag = "0.1.8",
		requires = { {"nvim-lua/plenary.nvim"} }
	}
    
	-- Treesitter
	use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

	-- Undotree
	use { "mbbill/undotree" }
end)
