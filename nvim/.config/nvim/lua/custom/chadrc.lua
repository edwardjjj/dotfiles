---@type ChadrcConfig
local M = {}
local highlights = require "custom.highlights"

-- Path to overriding theme and highlights files

M.ui = {
  theme = "catppuccin",
  transparency = false,

  -- hl_override = {
  --   CursorLine = {
  --     bg = "one_bg",
  --   },
  -- },
  hl_override = highlights.override,
  hl_add = highlights.add,
  nvdash = {
    load_on_startup = true,
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
