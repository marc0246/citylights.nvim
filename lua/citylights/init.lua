local c = require "citylights.colors"

local transparent = vim.g.transparent_background

local highlights = {
  Comment = { fg = c.gray32 },
  ColorColumn = { bg = c.gray17 },
  Conceal = { fg = c.gray32 },
  Cursor = { fg = c.gray14, bg = c.gray77 },
  lCursor = { fg = c.gray14, bg = c.gray77 },
  CursorIM = { fg = c.gray14, bg = c.gray77 },
  CursorColumn = { bg = c.gray17 },
  CursorLine = { bg = c.gray17 },
  Directory = { fg = c.blue },
  DiffAdd = { bg = c.green_dim },
  DiffChange = { bg = c.blue_dim },
  DiffDelete = { bg = c.red_dim },
  DiffText = {},
  EndOfBuffer = { fg = c.gray14 },
  TermCursor = {},
  TermCursorNC = {},
  ErrorMsg = { fg = c.red },
  VertSplit = { fg = c.gray11 },
  WinSeparator = { fg = c.gray11 },
  Folded = { fg = c.blue, bg = c.gray32 },
  FoldColumn = { fg = c.gray32, bg = transparent and "NONE" or c.gray14 },
  SignColumn = { fg = c.gray32, bg = transparent and "NONE" or c.gray14 },
  SignColumnSB = { fg = c.gray32, bg = transparent and "NONE" or c.gray14 },
  Substitute = { fg = c.gray14, bg = c.red },
  LineNr = { fg = c.gray32 },
  CursorLineNr = { fg = c.gray77 },
  MatchParen = { fg = c.yellow, bold = true },
  ModeMsg = { fg = c.gray53, bold = true },
  MsgArea = { fg = c.gray53 },
  MsgSeparator = {},
  MoreMsg = { fg = c.blue },
  NonText = { fg = c.gray23 },
  Normal = { fg = c.gray77, bg = transparent and "NONE" or c.gray14 },
  NormalNC = { fg = c.gray77, bg = transparent and "NONE" or c.gray14 },
  NormalSB = { fg = c.gray53, bg = c.gray11 },
  NormalFloat = { fg = c.gray77, bg = c.gray14 },
  FloatBorder = { fg = c.gray20, bg = c.gray14 },
  Pmenu = { fg = c.gray77, bg = c.gray11 },
  PmenuSel = { bg = c.gray11 },
  PmenuSbar = { bg = c.gray11 },
  PmenuThumb = { bg = c.gray23 },
  Question = { fg = c.blue },
  QuickFixLine = { bg = c.gray20, bold = true },
  Search = { fg = c.gray77, bg = c.gray_26 },
  IncSearch = { fg = c.gray14, bg = c.yellow },
  CurSearch = { link = "IncSearch" },
  SpecialKey = { fg = c.gray23 },
  SpellBad = { sp = c.red, undercurl = true },
  SpellCap = { sp = c.yellow, undercurl = true },
  SpellLocal = { sp = c.blue, undercurl = true },
  SpellRare = { sp = c.teal, undercurl = true },
  StatusLine = { fg = c.gray53, bg = c.gray11 },
  StatusLineNC = { fg = c.gray32, bg = c.gray11 },
  TabLine = { fg = c.gray53, bg = c.gray11 },
  TabLineFill = { bg = c.gray11 },
  TabLineSel = { fg = c.gray77, bg = c.gray14 },
  Title = { fg = c.blue, bold = true },
  Visual = { bg = c.gray20 },
  VisualNOS = { bg = c.gray20 },
  WarningMsg = { fg = c.yellow },
  Whitespace = { fg = c.gray32 },
  WildMenu = { bg = c.gray20 },
}

if vim.g.colors_name then
  vim.cmd "highlight clear"
end
vim.g.colors_name = "citylights"

vim.o.background = "dark"
vim.o.termguicolors = true

for group, hl in pairs(highlights) do
  vim.api.nvim_set_hl(0, group, hl)
end
