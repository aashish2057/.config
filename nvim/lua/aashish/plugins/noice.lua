local noice_setup, noice = pcall(require, "noice")
if not noice_setup then
	return
end

noice.setup({
	lsp = {
		-- override markdown rendering so that **cmp** and other plugins use **Treesitter**
		override = {
			["vim.lsp.util.convert_input_to_markdown_lines"] = true,
			["vim.lsp.util.stylize_markdown"] = true,
			["cmp.entry.get_documentation"] = true,
		},
	},
	-- you can enable a preset for easier configuration
	-- cmdline = {
	-- 	view = "cmdline",
	-- },
	-- presets = {
	-- 	bottom_search = true, -- use a classic bottom cmdline for search
	-- 	command_palette = true, -- position the cmdline and popupmenu together
	-- 	long_message_to_split = true, -- long messages will be sent to a split
	-- 	inc_rename = false, -- enables an input dialog for inc-rename.nvim
	-- 	lsp_doc_border = false, -- add a border to hover docs and signature help
	-- },
	routes = {
		{
			filter = {
				event = "msg_show",
				any = {
					{ find = "%d+L, %d+B" },
					{ find = "; after #%d+" },
					{ find = "; before #%d+" },
				},
			},
			view = "mini",
		},
	},
	-- presets = {
	-- 	command_palette = true,
	-- 	long_message_to_split = true,
	-- 	inc_rename = true,
	-- },
	views = {
		cmdline_popup = {
			position = {
				row = 5,
				col = "50%",
			},
			size = {
				width = 60,
				height = "auto",
			},
		},
		popupmenu = {
			relative = "editor",
			position = {
				row = 8,
				col = "50%",
			},
			size = {
				width = 60,
				height = 10,
			},
			border = {
				style = "rounded",
				padding = { 0, 1 },
			},
			win_options = {
				winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
			},
		},
	},
})
