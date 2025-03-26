local wezterm = require("wezterm");

local config = {};
--This will be the main thing
config = wezterm.config_builder();

--Basic settings
config.color_scheme = "Tokyo Night";
config.font = wezterm.font_with_fallback( {
	{ family = "CaskaydiaMono Nerd Font", scale = 1.3 }
});
config.window_background_opacity = 1;
config.window_decorations = "RESIZE";
config.scrollback_lines= 10000
config.enable_tab_bar = false;

--Cursor
config.colors =
{
	cursor_bg = '#00FFFF',
	cursor_border = '#00FFFF',
	cursor_fg = '#000000'
};

config.default_cursor_style = 'BlinkingBar';
config.cursor_blink_rate = 500;
config.cursor_blink_ease_in = 'Constant';
config.cursor_blink_ease_out = 'Constant';

--Keys

config.keys = {
	{ key='F11', mods = 'NONE', action=wezterm.action.ToggleFullScreen },
	{ key='f', mods = 'SUPER', action=wezterm.action.Search({ CaseInSensitiveString = '' }) },
	{ key='o', mods = 'SUPER', action=wezterm.action.SendString '\u{1b}OH'},
	--{ key=';', mods = 'SUPER', action=wezterm.action.SendString '\u{1b}OF'},
	--{ key='.', mods = 'SUPER', action=wezterm.action.SendString '\u{15}'}
};

--Background image

config.background = {
  {
    source = {
      File = 'DarkCat.png',
    },
    -- Vous pouvez ajuster l'opacité ici
    hsb = {
      brightness = 0.1,
    },
  },
};

return config;
