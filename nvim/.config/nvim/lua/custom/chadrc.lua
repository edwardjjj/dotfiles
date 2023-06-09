---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files

M.ui = {
  theme = "catppuccin",

  hl_override = {
    CursorLine = {
      bg = "grey"
    }
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
