{
	plugins.telescope = {
		enable = true;
		extensions = {
			file-browser = {
				enable = true;
				settings = {
					hijack_netrw = true;
					theme = "ivy";
					previewer = false;
					hidden = true;
				};
			};
		};
		keymaps = {
			"<leader>fk" = {
				action = "keymaps";
			};
			"<leader>ff" = "find_files";
			"<leader>fd" = { 
				action = "file_browser";
			};
			"<leader>fh" = {
				action = "help_tags";
			};
			"<leader>fg" = {
				action = "live_grep";
			};
			"<leader>fb" = {
				action = "buffers";
			};
		};
		settings = {
			defaults = {
				mappings = {
					i = {
						"<C-j>" = {
							__raw = "require('telescope.actions').move_selection_next";
						};
						"<C-k>" = {
							__raw = "require('telescope.actions').move_selection_previous";
						};
					};
				};
			};
			pickers = {
				find_files = {
					theme = "ivy";
					previewer = false;
					hidden = true;
				};
				live_grep = {
					theme = "dropdown";
					previewer = true;
				};
				buffers = {
					theme = "ivy";
					previewer = false;
				};
			

			};

		};
	};
}
