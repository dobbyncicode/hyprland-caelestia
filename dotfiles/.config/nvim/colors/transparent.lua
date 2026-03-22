-- Key groups to make transparent
local highlights = {
  "Normal",
  "NormalFloat",
  "FloatBorder",
  "SignColumn",
  "TabLineFill",
  "NeoTreeNormal",
  "NeoTreeNormalNC",
  "LazyNormal",
  "MasonNormal",
  "WinSeparator",
  "CursorLine",
  "ColorColumn",
}

for _, group in ipairs(highlights) do
  vim.api.nvim_set_hl(0, group, { bg = "NONE" })
end

-- Link other common groups to Normal to ensure they are also transparent
local links = {
  "FoldColumn",
  "NvimTreeNormal",
}
for _, group in ipairs(links) do
  vim.cmd("highlight link " .. group .. " Normal")
end
