local dap = require("dap")

local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
dap.configurations.python = {
	{
		type = "python",
		request = "launch",
		name = "Launch file",
		program = "${file}",
		pythonPath = function()
			return path
		end,
	},
}
