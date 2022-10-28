-- Path /etc/xdg/awesome/configuration/keybindings.lua
local awful = require("awful")
local env = require("configuration.env")

-- Key variables
mod     = "Mod4"
alt     = "Mod1"
ctrl    = "Control"
shift   = "Shift"
enter   = "Return"

-- Keybindings
awful.keyboard.append_global_keybindings({
    -- Applications
    awful.key(
        { mod }, enter, 
        function () awful.spawn(env.apps.terminal) end,
        { description = "launch kitty", group = "Applications" }
    ),
    awful.key(
        { mod }, "c",
        function () awful.spawn(env.apps.code) end,
        { description = "launch vscode", group = "Applications" }
    ),
    awful.key(
        { mod }, "b",
        function () awful.spawn(env.apps.browser) end,
        { description = "launch firefox", group = "Applications" }
    ),
    awful.key(
        { mod }, "f",
        function () awful.spawn(env.apps.file_manager) end,
        { description = "launch thunar", group = "Applications" }
    ),
    -- Environment
    awful.key(
        { mod, ctrl }, "r", 
        awesome.restart,
        { description = "reload", group = "Environment" }
    ),
    awful.key(
        { mod, ctrl }, "q", 
        awesome.quit,
        { description = "quit", group = "Environment" }
    ),
})