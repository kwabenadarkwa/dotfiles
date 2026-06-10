return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("catppuccin-macchiato")
	end,
}
-- return {
-- 	"metalelf0/jellybeans-nvim",
-- 	dependencies = {
-- 		"rktjmp/lush.nvim",
-- 	},
-- 	config = function()
-- 		vim.cmd.colorscheme("jellybeans-nvim")
-- 	end,
-- }
-- lua/plugins/rose-pine.lua
-- return {
-- 	"rose-pine/neovim",
-- 	name = "rose-pine",
--     variant = "dawn",
-- 	config = function()
-- 		vim.cmd("colorscheme rose-pine")
-- 	end,
-- }
