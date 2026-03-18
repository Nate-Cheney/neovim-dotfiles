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
		"nvim-telescope/telescope.nvim", 
		requires = { {"nvim-lua/plenary.nvim"} }
	}
    
	-- Treesitter
--	use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

	-- Undotree
	use { "mbbill/undotree" }
end)
