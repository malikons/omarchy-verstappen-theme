-- Verstappen Theme — Neovim
-- Deep navy darkness with Red Bull red accents and championship gold

vim.cmd("highlight clear")
vim.cmd("syntax reset")
vim.g.colors_name = "verstappen"

local c = {
  bg        = "#0a0e1a",
  bg2       = "#0f1629",
  bg3       = "#162040",
  border    = "#1e2d50",
  subtle    = "#3d4a6b",
  muted     = "#6878a0",
  fg_dim    = "#b0b8d0",
  fg        = "#e8eaf0",
  red       = "#e8002d",
  red_bright= "#ff3355",
  orange    = "#ff6600",
  gold      = "#ffd700",
  gold_dim  = "#ffee44",
  green     = "#00c853",
  cyan      = "#00aabb",
  blue      = "#1a6bcc",
  blue_bright="#4499ee",
  magenta   = "#cc2255",
  selection = "#1a2a50",
}

local hi = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Editor base
hi("Normal",        { fg = c.fg,       bg = c.bg })
hi("NormalFloat",   { fg = c.fg,       bg = c.bg2 })
hi("NormalNC",      { fg = c.fg_dim,   bg = c.bg })
hi("LineNr",        { fg = c.subtle })
hi("CursorLineNr",  { fg = c.gold,     bold = true })
hi("CursorLine",    { bg = "#111828" })
hi("SignColumn",    { fg = c.subtle,   bg = c.bg })
hi("ColorColumn",   { bg = c.bg2 })
hi("VertSplit",     { fg = c.border })
hi("WinSeparator",  { fg = c.border })
hi("EndOfBuffer",   { fg = c.border })

-- Selection & search
hi("Visual",        { bg = c.selection })
hi("Search",        { fg = c.bg,       bg = c.gold })
hi("IncSearch",     { fg = c.bg,       bg = c.orange, bold = true })
hi("Substitute",    { fg = c.bg,       bg = c.red })

-- Syntax
hi("Comment",       { fg = c.muted,    italic = true })
hi("Constant",      { fg = c.gold })
hi("String",        { fg = c.green })
hi("Character",     { fg = c.green })
hi("Number",        { fg = c.orange })
hi("Boolean",       { fg = c.orange })
hi("Float",         { fg = c.orange })
hi("Identifier",    { fg = c.fg })
hi("Function",      { fg = c.blue_bright, bold = true })
hi("Statement",     { fg = c.red,      bold = true })
hi("Keyword",       { fg = c.red,      bold = true })
hi("Conditional",   { fg = c.red })
hi("Repeat",        { fg = c.red })
hi("Label",         { fg = c.orange })
hi("Operator",      { fg = c.cyan })
hi("Exception",     { fg = c.red_bright })
hi("PreProc",       { fg = c.magenta })
hi("Include",       { fg = c.magenta })
hi("Define",        { fg = c.magenta })
hi("Type",          { fg = c.gold })
hi("StorageClass",  { fg = c.gold,     bold = true })
hi("Structure",     { fg = c.gold })
hi("Special",       { fg = c.cyan })
hi("Underlined",    { underline = true })
hi("Error",         { fg = c.red_bright, bold = true })
hi("Todo",          { fg = c.bg,       bg = c.gold,   bold = true })

-- Status / UI
hi("StatusLine",    { fg = c.fg,       bg = c.bg3 })
hi("StatusLineNC",  { fg = c.muted,    bg = c.bg2 })
hi("TabLine",       { fg = c.muted,    bg = c.bg2 })
hi("TabLineSel",    { fg = c.fg,       bg = c.bg3,    bold = true })
hi("TabLineFill",   { bg = c.bg2 })
hi("Pmenu",         { fg = c.fg_dim,   bg = c.bg2 })
hi("PmenuSel",      { fg = c.fg,       bg = c.selection, bold = true })
hi("PmenuSbar",     { bg = c.bg3 })
hi("PmenuThumb",    { bg = c.red })
hi("WildMenu",      { fg = c.bg,       bg = c.gold })

-- Diagnostics
hi("DiagnosticError",       { fg = c.red })
hi("DiagnosticWarn",        { fg = c.orange })
hi("DiagnosticInfo",        { fg = c.blue_bright })
hi("DiagnosticHint",        { fg = c.cyan })
hi("DiagnosticUnderlineError", { undercurl = true, sp = c.red })
hi("DiagnosticUnderlineWarn",  { undercurl = true, sp = c.orange })

-- Git diff
hi("DiffAdd",       { bg = "#0a1f12" })
hi("DiffChange",    { bg = "#1a1a0a" })
hi("DiffDelete",    { bg = "#1f0a0a" })
hi("DiffText",      { bg = "#2a2000" })
