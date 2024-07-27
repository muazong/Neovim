return {
	"smjonas/inc-rename.nvim",
	event = "InsertEnter",
	config = function()
		vim.keymap.set("n", "<leader>rn", function()
			return ":IncRename " .. vim.fn.expand("<cword>")
		end, { expr = true })

		require("inc_rename").setup({
			cmd_name = "IncRename",
			hl_group = "IncSearch",
			preview_empty_name = false,
			show_message = true,
			post_hook = nil,
		})
	end,
}
