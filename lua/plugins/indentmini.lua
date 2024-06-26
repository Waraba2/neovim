return {
	{
		"nvimdev/indentmini.nvim",
		event = "BufEnter",
		config = function()
			local configs = require("indentmini")
			configs.setup({
				char = "|",
				exclude = {
					"markdown",
				},
			})
			-- use comment color
			vim.cmd.highlight("default link IndentLine Comment")
		end,
	},
}
