-- import gitsigns plugin safely
local setup, gitsigns = pcall(require, "gitsigns")
if not setup then
	return
end
-- git integration
return {
  {
    "lewis6991/gitsigns.nvim",
    config = function ()
      -- configure/enable gitsigns
      gitsigns.setup()
    end
  },
}-- show line modifications on left hand side

