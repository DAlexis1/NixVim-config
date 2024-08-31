{
	plugins.lualine = {
		enable = true;
		theme = "moonfly";
		sections = {
			lualine_a = [ "mode" ];
			lualine_b = [ "diagnostics" "branch" "diff" ];
			lualine_c = [];
			lualine_x = [ "encoding" "fileformat" "filetype" ];
			lualine_y = [ "progress" ];
			lualine_z = [ "location" ];
		};
	};
}
