require "nvchad.options"

--#region Visual
local o = vim.o
o.cursorline = true
o.cursorlineopt ='both' -- to enable cursorline!
o.number = true
o.relativenumber = true
o.showmode = false
-- o.list = true
-- o.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
--#endregion

--#region Tabs
o.expandtab = true
o.tabstop = 2

--#endregion
