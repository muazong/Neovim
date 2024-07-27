return {
	"brenton-leighton/multiple-cursors.nvim",
	opts = {},
	keys = {
		{ "<C-j>", "<Cmd>MultipleCursorsAddDown<CR>", mode = { "v", "x" } },
		{ "<C-k>", "<Cmd>MultipleCursorsAddUp<CR>", mode = { "v", "x" } },
		{ "<C-d>", "<Cmd>MultipleCursorsAddJumpNextMatch<CR>", mode = { "v", "x" } },
		{ "<S-d>", "<Cmd>MultipleCursorsJumpNextMatch<CR>", mode = { "v", "x" } },
	},
}
