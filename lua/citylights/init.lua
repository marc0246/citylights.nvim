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
  DiffAdd = { bg = c.dim_green },
  DiffChange = { bg = c.dim_blue },
  DiffDelete = { bg = c.dim_red },
  DiffText = {},
  EndOfBuffer = { fg = c.gray14 },
  ErrorMsg = { fg = c.error },
  VertSplit = { fg = c.gray11 },
  WinSeparator = { fg = c.gray11 },
  Folded = { fg = c.blue, bg = c.gray32 },
  FoldColumn = { fg = c.gray32, bg = transparent and "NONE" or c.gray14 },
  SignColumn = { fg = c.gray32, bg = transparent and "NONE" or c.gray14 },
  SignColumnSB = { fg = c.gray32, bg = transparent and "NONE" or c.gray14 },
  Substitute = { fg = c.gray14, bg = c.error },
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
  IncSearch = { fg = c.gray14, bg = c.warn },
  CurSearch = { link = "IncSearch" },
  SpecialKey = { fg = c.gray23 },
  SpellBad = { sp = c.error, undercurl = true },
  SpellCap = { sp = c.warn, undercurl = true },
  SpellLocal = { sp = c.blue, undercurl = true },
  SpellRare = { sp = c.cyan, undercurl = true },
  StatusLine = { fg = c.gray53, bg = c.gray11 },
  StatusLineNC = { fg = c.gray32, bg = c.gray11 },
  TabLine = { fg = c.gray53, bg = c.gray11 },
  TabLineFill = { bg = c.gray11 },
  TabLineSel = { fg = c.gray77, bg = c.gray14 },
  Title = { fg = c.blue, bold = true },
  Visual = { bg = c.gray20 },
  VisualNOS = { bg = c.gray20 },
  WarningMsg = { fg = c.warn },
  Whitespace = { fg = c.gray20 },
  WildMenu = { bg = c.gray20 },

  Bold = { bold = true },
  Character = { fg = c.violet },
  Constant = { fg = c.red },
  Delimiter = { fg = c.blue },
  Error = { fg = c.error },
  Function = { fg = c.bright_cyan },
  Identifier = { fg = c.gray77 },
  Include = { fg = c.blue },
  Italic = {},
  Keyword = { fg = c.blue },
  Operator = { fg = c.blue },
  PreProc = { fg = c.gray53 },
  Special = { fg = c.red },
  Statement = { fg = c.blue },
  StorageClass = { fg = c.dark_cyan },
  String = { fg = c.violet },
  Structure = { fg = c.dark_cyan },
  Todo = { fg = c.gray14, bg = c.warn },
  Type = { fg = c.cyan },
  Underlined = { underline = true },

  ["@annotation"] = { fg = c.gray53 },
  ["@attribute"] = { fg = c.gray53 },
  ["@boolean"] = { fg = c.red },
  ["@character"] = { fg = c.violet },
  ["@character.special"] = { fg = c.red },
  ["@comment"] = { fg = c.gray32 },
  ["@conditional"] = { fg = c.blue },
  ["@constant"] = { fg = c.red },
  ["@constant.builtin"] = { fg = c.red },
  ["@constant.macro"] = { fg = c.gray53 },
  ["@constructor"] = { fg = c.cyan },
  ["@define"] = { fg = c.gray53 },
  ["@error"] = { fg = c.error },
  ["@exception"] = { fg = c.blue },
  ["@field"] = { fg = c.gray53 },
  ["@float"] = { fg = c.red },
  ["@function"] = { fg = c.bright_cyan },
  ["@function.builtin"] = { fg = c.bright_cyan },
  ["@function.macro"] = { fg = c.bright_cyan },
  ["@include"] = { fg = c.blue },
  ["@keyword"] = { fg = c.blue },
  ["@label"] = { fg = c.gray53 },
  ["@macro"] = { fg = c.gray53 },
  ["@method"] = { fg = c.bright_cyan },
  ["@namespace"] = { fg = c.cyan },
  ["@number"] = { fg = c.red },
  ["@operator"] = { fg = c.blue },
  ["@parameter"] = { fg = c.yellow },
  ["@preproc"] = { fg = c.gray53 },
  ["@property"] = { fg = c.gray53 },
  ["@punctuation"] = { fg = c.gray53 },
  ["@punctuation.delimiter"] = { fg = c.blue },
  ["@repeat"] = { fg = c.blue },
  ["@storageclass"] = { fg = c.dark_cyan },
  ["@storageclass.lifetime"] = { fg = c.cyan },
  ["@string"] = { fg = c.violet },
  ["@string.escape"] = { fg = c.red },
  ["@string.regex"] = { fg = c.violet },
  ["@string.special"] = { fg = c.red },
  ["@symbol"] = { fg = c.gray77 },
  ["@tag"] = { fg = c.dark_cyan },
  ["@tag.attribute"] = { fg = c.cyan },
  ["@tag.delimiter"] = { fg = c.gray53 },
  ["@text"] = { fg = c.gray77 },
  ["@text.danger"] = { fg = c.error },
  ["@text.literal"] = { fg = c.violet },
  ["@text.note"] = { fg = c.gray14, bg = c.gray77 },
  ["@text.strike"] = { strikethrough = true },
  ["@text.strong"] = { bold = true },
  ["@text.todo"] = { fg = c.gray14, bg = c.gray77 },
  ["@text.underline"] = { underline = true },
  ["@text.uri"] = { underline = true },
  ["@type"] = { fg = c.cyan },
  ["@type.definition"] = { fg = c.cyan },
  ["@type.qualifier"] = { fg = c.dark_cyan },
  ["@variable"] = { fg = c.gray77 },
  ["@variable.builtin"] = { fg = c.red },

  GitSignsAdd = { fg = c.green },
  GitSignsChange = { fg = c.dim_blue },
  GitSignsDelete = { fg = c.red },

  IndentBlanklineChar = { fg = c.gray20 },
  IndentBlanklineContextChar = { fg = c.gray26 },

  NvimTreeCursorLine = { bg = c.gray17 },
  NvimTreeEmptyFolderName = { fg = c.gray53 },
  NvimTreeEndOfBuffer = { fg = c.gray11 },
  NvimTreeExecFile = { fg = c.gray53 },
  NvimTreeFileIcon = { fg = c.gray77 },
  NvimTreeFolderIcon = { fg = c.gray77 },
  NvimTreeFolderName = { fg = c.gray53 },
  NvimTreeGitDeleted = { fg = c.red },
  NvimTreeGitDirty = { fg = c.yellow },
  NvimTreeGitIgnored = { fg = c.gray32 },
  NvimTreeGitMerge = { fg = c.yellow },
  NvimTreeGitNew = { fg = c.green },
  NvimTreeImageFile = { fg = c.gray53 },
  NvimTreeIndentMarker = { fg = c.gray17 },
  NvimTreeLspDiagnosticsError = { fg = c.error },
  NvimTreeLspDiagnosticsHint = { fg = c.dim_blue },
  NvimTreeLspDiagnosticsInformation = { fg = c.gray77 },
  NvimTreeLspDiagnosticsWarning = { fg = c.warn },
  NvimTreeNormal = { fg = c.gray53, bg = c.gray11 },
  NvimTreeOpenedFile = { fg = c.gray77 },
  NvimTreeOpenedFolderName = { fg = c.gray53 },
  NvimTreeRootFolder = { fg = c.gray53 },
  NvimTreeSpecialFile = { fg = c.gray53 },
  NvimTreeSymlink = { fg = c.gray53 },
  NvimTreeWinSeparator = { fg = c.gray11, bg = c.gray11 },
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
