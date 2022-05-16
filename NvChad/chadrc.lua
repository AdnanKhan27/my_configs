-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,

-- Options
M.options = {
    user = function()
      vim.opt.tabstop = 4
      vim.opt.autoindent = true
      vim.opt.shiftwidth = 4
      vim.opt.smarttab = true
      vim.opt.cul = true
   end,
}

-- example of changing theme:

M.ui = {
    theme = "onedark",
    hl_override = {
      --override default highlights
        Pmenu = { bg = "" },
    },
}

-- Plugins
return M
