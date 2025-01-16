return {
	{
		'xiyaowong/transparent.nvim',
		config = function()
			local configs = require("transparent")
			configs.setup({

				groups = { -- table: default groups
					'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
					'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
					'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
					'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
					'EndOfBuffer', 'Folded', 'FoldColumn'
				},
				extra_groups = {
					-- "NeoTreeNormal",
					-- "NeoTreeNormalNC",
				},
				exclude_groups = {},
			})
			require('transparent').clear_prefix('NeoTree')
      require('transparent').clear_prefix('bufferline')
      require('transparent').clear_prefix('ufo')
		end
	}
}
