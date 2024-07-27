return {
	"NStefan002/screenkey.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("screenkey").setup({
			win_opts = {
				row = vim.o.lines - 4,
				col = vim.o.columns,
				relative = "editor",
				anchor = "NE",
				width = 20,
				height = 1,
				border = "rounded",
				title = "",
				zindex = 1000,
				style = "minimal",
				focusable = false,
				noautocmd = true,
			},
			compress_after = 3,
			clear_after = 3,
			disable = {
				filetypes = {},
				buftypes = {},
			},
			show_leader = true,
			group_mappings = true,
			display_infront = {},
			display_behind = {},
			keys = {
				["<TAB>"] = "󰌒",
				["<CR>"] = "󰌑",
				["<ESC>"] = "Esc",
				["<SPACE>"] = "␣",
				["<BS>"] = "󰌥",
				["<DEL>"] = "Del",
				["<LEFT>"] = "",
				["<RIGHT>"] = "",
				["<UP>"] = "",
				["<DOWN>"] = "",
				["CTRL"] = "Ctrl",
				["ALT"] = "Alt",
				-- ["SUPER"] = "󰘳",
				["<leader>"] = "<leader>",
			},
		})
		vim.cmd("Screenkey")
	end,
}
