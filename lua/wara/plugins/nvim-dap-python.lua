local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"

require("dap-python").setup(path)
table.insert(require("dap").configurations.python, {
	type = "python",
	request = "launch",
	name = "My custom launch configuration",
	program = "${file}",
	-- ... more options, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings
})
