local wezterm = require 'wezterm'
local mux = wezterm.mux
local act = wezterm.action

wezterm.on('gui-startup', function()
 local tab, pane, window = mux.spawn_window({})
end)


return {

    font = wezterm.font('JetBrainsMono'),
    font_size = 12,
    harfbuzz_features = {"calt=0", "clig=0", "liga=0"},
    line_height = 1.2,
    window_decorations = "RESIZE",
    use_dead_keys = false,
    scrollback_lines = 5000,
    enable_scroll_bar = true,
    adjust_window_size_when_changing_font_size = false,
    font_shaper = "Harfbuzz";
    freetype_load_flags = "NO_HINTING";
    -- hide_tab_bar_if_only_one_tab = true,
    -- use_fancy_tab_bar = false;
    -- window_padding = {
    --     left = 0,
    --     right = 0,
    --     top = 0,
    --     bottom = -3,
    -- };
    adjust_window_size_when_changing_font_size = false;


    -- -- Define the custom Compline color scheme
    -- color_schemes = {
    --     ['Compline'] = {
    --         foreground = '#f0efeb',
    --         background = '#1a1d21',
    --         cursor_bg = '#f0efeb',
    --         cursor_fg = '#1a1d21',
    --         cursor_border = '#f0efeb',
    --         selection_fg = '#1a1d21',
    --         selection_bg = '#ccc4b4',
    --         scrollbar_thumb = '#22262b',
    --         split = '#3d424a',
    --     
    --         ansi = {
    --           '#0f1114', -- black
    --           '#cdacac', -- red
    --           '#b8c4b8', -- green
    --           '#d4ccb4', -- yellow
    --           '#b4bcc4', -- blue
    --           '#cdacac', -- magenta (mapped to red variant)
    --           '#b4c0c8', -- cyan
    --           '#ccc4b4', -- white
    --         },
    --         brights = {
    --           '#515761', -- black
    --           '#cdacac', -- red
    --           '#b8c4b8', -- green
    --           '#d4ccb4', -- yellow
    --           '#b4bcc4', -- blue
    --           '#cdacac', -- magenta
    --           '#b4c0c8', -- cyan
    --           '#f0efeb', -- white
    --         },
    --     },
    -- },
    -- Activate the scheme
    -- color_scheme = 'Compline'
    color_scheme = 'nord',

    mouse_bindings = {
        -- Scrolling up while holding CTRL increases the font size
        {
            event = { Down = { streak = 1, button = { WheelUp = 1 } } },
            mods = 'CTRL',
            action = act.IncreaseFontSize,
        },

        -- Scrolling down while holding CTRL decreases the font size
        {
            event = { Down = { streak = 1, button = { WheelDown = 1 } } },
            mods = 'CTRL',
            action = act.DecreaseFontSize,
        },

        -- Left drag release: copy selection to clipboard + primary,
        -- or open the link on a plain click (no drag)
        {
            event = { Up = { streak = 1, button = 'Left' } },
            mods = 'NONE',
            action = act.CompleteSelectionOrOpenLinkAtMouseCursor 'ClipboardAndPrimarySelection',
        },

        -- Plain left drag: extend a cell selection
        {
            event = { Drag = { streak = 1, button = 'Left' } },
            mods = 'NONE',
            action = act.ExtendSelectionToMouseCursor 'Cell',
        },

        -- Double-click selects word, triple-click selects line
        {
            event = { Up = { streak = 2, button = 'Left' } },
            mods = 'NONE',
            action = act.SelectTextAtMouseCursor 'Word',
        },
        {
            event = { Up = { streak = 3, button = 'Left' } },
            mods = 'NONE',
            action = act.SelectTextAtMouseCursor 'Line',
        },

        -- Ctrl+Left: start a rectangular block selection on press,
        -- extend it on drag, and on release copy the block (if dragged)
        -- or open the link under the cursor (if it was just a click)
        {
            event = { Down = { streak = 1, button = 'Left' } },
            mods = 'CTRL',
            action = act.SelectTextAtMouseCursor 'Block',
        },
        {
            event = { Drag = { streak = 1, button = 'Left' } },
            mods = 'CTRL',
            action = act.ExtendSelectionToMouseCursor 'Block',
        },
        {
            event = { Up = { streak = 1, button = 'Left' } },
            mods = 'CTRL',
            action = act.CompleteSelectionOrOpenLinkAtMouseCursor 'ClipboardAndPrimarySelection',
        },

        -- Right click: paste from system clipboard
        {
            event = { Down = { streak = 1, button = 'Right' } },
            mods = 'NONE',
            action = act.PasteFrom 'Clipboard',
        },

        -- Middle click: paste from X11 primary selection
        {
            event = { Down = { streak = 1, button = 'Middle' } },
            mods = 'NONE',
            action = act.PasteFrom 'PrimarySelection',
        },
    },
}



--      inactive_pane_hsb = {
--          saturation = 0.8,
--          brightness = 0.7,
--      },


