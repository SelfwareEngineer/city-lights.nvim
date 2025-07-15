local M = {}

local colors = {
	red = "#ff0000",
	-- It's extremely important for any reference to a constructor or factory function to be a reference to Satisfactory
	ficsit_orange = "#d17c2d",
	gold = "#ffa700",
	yellow = "#ffff00",
	lime = "#9aff00",
	green = "#00ff00",
	cyan = "#00ffff",
	blue = "#0094ff",
	purple = "#ac1eff",
	white = "#ffffff",
	grey = "#9eabac",
	black = "#000000",

	accent = "#000f0f",

	dark_red = "#7a0000",
	dark_gold = "#885b00",
	dark_blue = "#004f8d",
	dark_cyan = "#005454",

	bg_red = "#2d0000",
	bg_gold = "#251800",
	bg_green = "#021c00",
	bg_blue = "#001322",
	bg_cyan = "#001c1c",
}

function M.setup()
	-- Reset the colorscheme to start from clean state
	-- vim.cmd("highlight clear")
	-- vim.cmd("syntax reset")

	vim.o.background = "dark"
	vim.g.colors_name = "city-lights"

	local set = vim.api.nvim_set_hl

	--:INFO: Builtin Vim UI elements

	-- Basic UI elements
	set(0, "Normal", { fg = colors.grey, bg = colors.black })
	set(0, "Visual", { bg = colors.dark_cyan })
	set(0, "CursorLine", { bg = colors.accent })
	set(0, "LineNr", { fg = colors.dark_cyan })
	set(0, "CursorLineNr", { fg = colors.cyan, bold = true })
	set(0, "Directory", { fg = colors.gold, bold = true })
	set(0, "Search", { fg = colors.white, bg = colors.dark_cyan })
	set(0, "CurSearch", { fg = colors.black, bg = colors.cyan })

	-- Basic builtin Vim syntax groups
	set(0, "Comment", { fg = colors.dark_cyan, italic = true })
	set(0, "String", { fg = colors.white })
	set(0, "Constant", { fg = colors.grey })
	set(0, "Title", { fg = colors.lime, bold = true })
	set(0, "Number", { fg = colors.purple })
	set(0, "Boolean", { fg = colors.gold })
	set(0, "Identifier", { fg = colors.lime })
	set(0, "Keyword", { fg = colors.cyan, italic = true })
	set(0, "Function", { fg = colors.blue, bold = true, italic = true })
	set(0, "Statement", { fg = colors.cyan })
	set(0, "PreProc", { fg = colors.gold })

	-- Builtin Vim error groups
	set(0, "Exception", { fg = colors.red, bg = colors.bg_red })
	set(0, "ErrorMsg", { link = "Exception" })
	set(0, "WarningMsg", { fg = colors.gold, bg = colors.bg_gold })
	set(0, "ModeMsg", { fg = colors.green, bg = colors.bg_green })
	set(0, "MoreMsg", { fg = colors.cyan, bg = colors.bg_cyan })

	-- Diagnostics
	set(0, "DiagnosticError", { link = "Exception" })
	set(0, "DiagnosticWarn", { link = "WarningMsg" })
	set(0, "DiagnosticInfo", { link = "MoreMsg" })
	set(0, "DiagnosticHint", { fg = colors.blue, bg = colors.bg_blue })
	set(0, "DiagnosticOk", { link = "ModeMsg" })

	-- Diagnostics Signs
	set(0, "DiagnosticSignError", { fg = colors.red })
	set(0, "DiagnosticSignWarn", { fg = colors.gold })
	set(0, "DiagnosticSignInfo", { fg = colors.cyan })
	set(0, "DiagnosticSignHint", { fg = colors.blue })
	set(0, "DiagnosticSignOk", { fg = colors.green })

	-- Diffing
	set(0, "Added", { fg = colors.green, bg = colors.bg_green })
	set(0, "Changed", { fg = colors.blue, bg = colors.bg_blue })
	set(0, "Removed", { link = "Exception" })

	--:INFO: Treesitter

	-- Basic Treesitter syntax groups
	set(0, "@variable", { fg = colors.green })
	set(0, "@variable.parameter", { fg = colors.purple })
	set(0, "@constructor", { fg = colors.ficsit_orange })

	-- Treesitter comment groups
	set(0, "@comment.error", { fg = colors.red, bg = colors.bg_red, italic = true })
	set(0, "@comment.warning", { fg = colors.gold, bg = colors.bg_gold, italic = true })
	set(0, "@comment.todo", { fg = colors.blue, bg = colors.bg_blue, italic = true })
	set(0, "@comment.note", { fg = colors.cyan, bg = colors.bg_cyan, italic = true })

	--:INFO: nvim-tree

	-- Basic
	set(0, "NvimTreeNormal", { link = "String" })
	set(0, "NvimTreeSymlink", { link = "Statement" })
	set(0, "NVimTreeSymlinkIcon", { link = "Statement" })

	-- Dir
	set(0, "NvimTreeFolderIcon", { link = "Directory" })

	-- Git
	set(0, "NvimTreeGitDeletedIcon", { fg = colors.red })
	set(0, "NvimTreeGitDirtyIcon", { fg = colors.blue })
	set(0, "NvimTreeGitNewIcon", { fg = colors.green })
	set(0, "NvimTreeGitStagedIcon", { fg = colors.lime })
end

return M
