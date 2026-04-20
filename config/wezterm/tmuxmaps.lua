local wezterm = require("wezterm")
local act = wezterm.action

return {
	{
		key = "k",
		mods = "SHIFT|CMD",
		action = act.Multiple({
			act.SendKey({ key = "b", mods = "CTRL" }),
			act.SendKey({ key = '"' }),
			act.SendKey({ key = "b", mods = "CTRL" }),
			act.SendKey({ key = "{" }),
		}),
	},
	{
		key = "j",
		mods = "SHIFT|CMD",
		action = act.Multiple({
			act.SendKey({ key = "b", mods = "CTRL" }),
			act.SendKey({ key = '"' }),
		}),
	},
	{
		key = "l",
		mods = "SHIFT|CMD",
		action = act.Multiple({
			act.SendKey({ key = "b", mods = "CTRL" }),
			act.SendKey({ key = "%" }),
		}),
	},
	{
		key = "h",
		mods = "SHIFT|CMD",
		action = act.Multiple({
			act.SendKey({ key = "b", mods = "CTRL" }),
			act.SendKey({ key = "%" }),
			act.SendKey({ key = "b", mods = "CTRL" }),
			act.SendKey({ key = "{" }),
		}),
	},
	{
		key = "x",
		mods = "CMD",
		action = act.Multiple({
			act.SendKey({ key = "b", mods = "CTRL" }),
			act.SendKey({ key = "x" }),
		}),
	},
	{
		key = "h",
		mods = "OPT",
		action = act.Multiple({
			act.SendKey({ key = "b", mods = "CTRL" }),
			act.SendKey({ key = "LeftArrow", mods = "OPT" }),
		}),
	},
	{
		key = "j",
		mods = "OPT",
		action = act.Multiple({
			act.SendKey({ key = "b", mods = "CTRL" }),
			act.SendKey({ key = "DownArrow", mods = "OPT" }),
		}),
	},
	{
		key = "k",
		mods = "OPT",
		action = act.Multiple({
			act.SendKey({ key = "b", mods = "CTRL" }),
			act.SendKey({ key = "UpArrow", mods = "OPT" }),
		}),
	},
	{
		key = "l",
		mods = "OPT",
		action = act.Multiple({
			act.SendKey({ key = "b", mods = "CTRL" }),
			act.SendKey({ key = "RightArrow", mods = "OPT" }),
		}),
	},
	{
		key = "h",
		mods = "OPT|SHIFT",
		action = act.Multiple({
			act.SendKey({ key = "b", mods = "CTRL" }),
			act.SendKey({ key = "LeftArrow", mods = "CTRL" }),
		}),
	},
	{
		key = "j",
		mods = "OPT|SHIFT",
		action = act.Multiple({
			act.SendKey({ key = "b", mods = "CTRL" }),
			act.SendKey({ key = "DownArrow", mods = "CTRL" }),
		}),
	},
	{
		key = "k",
		mods = "OPT|SHIFT",
		action = act.Multiple({
			act.SendKey({ key = "b", mods = "CTRL" }),
			act.SendKey({ key = "UpArrow", mods = "CTRL" }),
		}),
	},
	{
		key = "l",
		mods = "OPT|SHIFT",
		action = act.Multiple({
			act.SendKey({ key = "b", mods = "CTRL" }),
			act.SendKey({ key = "RightArrow", mods = "CTRL" }),
		}),
	},
	{
		key = "h",
		mods = "CMD",
		action = act.Multiple({
			act.SendKey({ key = "b", mods = "CTRL" }),
			act.SendKey({ key = "LeftArrow" }),
		}),
	},
	{
		key = "j",
		mods = "CMD",
		action = act.Multiple({
			act.SendKey({ key = "b", mods = "CTRL" }),
			act.SendKey({ key = "DownArrow" }),
		}),
	},
	{
		key = "k",
		mods = "CMD",
		action = act.Multiple({
			act.SendKey({ key = "b", mods = "CTRL" }),
			act.SendKey({ key = "UpArrow" }),
		}),
	},
	{
		key = "l",
		mods = "CMD",
		action = act.Multiple({
			act.SendKey({ key = "b", mods = "CTRL" }),
			act.SendKey({ key = "RightArrow" }),
		}),
	},
}
