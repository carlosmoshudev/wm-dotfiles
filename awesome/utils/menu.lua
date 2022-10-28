local awful = require("awful")
local hotkeys_popup = require("awful.hotkeys_popup")
local beautiful = require("beautiful")
local wibox = require("wibox")
local menubar = require("menubar")
local debian = require("debian.menu")
local has_fdo, freedesktop = pcall(require, "freedesktop")
require("awful.hotkeys_popup.keys")

Awesome_menu =
{
    {
        "Hotkeys",
        function() hotkeys_popup.show_help(
                nil,
                awful.screen.focused()
            )
        end,
    },
    {
        "Manual",
        Terminal .. " -e man awesome",
    },
    {
        "Configure",
        Editor_cmd .. " " .. awesome.conffile,
    },
    {
        "Restart",
        awesome.restart,
    },
    {
        "Exit",
        function() awesome.quit() end,
    },
}

Power_menu = {
    {
        "Lock",
        "i3lock-fancy",
    },
    {
        "Suspend",
        "systemctl suspend",
    },
    {
        "Hibernate",
        "systemctl hibernate",
    },
    {
        "Reboot",
        "systemctl reboot",
    },
    {
        "Shutdown",
        "systemctl poweroff",
    },
}

local menu_awesome =
{
    "Environment",
    Awesome_menu,
    beautiful.awesome_icon,
}
local menu_terminal =
{
    "Kitty",
    Terminal,
}
local menu_power =
{
    "Power",
    Power_menu,
    beautiful.awesome_icon,
}

if has_fdo then
    MainMenu = freedesktop.menu.build(
        {
            before =
            {
                menu_terminal
            },
            after =
            {
                menu_awesome,
                menu_power,
            }
        }
    )
else
    MainMenu = awful.menu(
        {
            items =
            {
                menu_terminal,
                menu_awesome,
                {
                    "APPs",
                    debian.menu.Debian_menu.Debian,
                },
                menu_power,
            }
        }
    )
end

Launcher = awful.widget.launcher(
    {
        image = beautiful.awesome_icon,
        menu = MainMenu,
    }
)

menubar.utils.Terminal = Terminal
KeyboardLayout         = awful.widget.keyboardlayout()
TextClock              = wibox.widget.textclock()
