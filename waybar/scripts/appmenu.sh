#!/bin/bash
# Script to display application menu from DBus

# Get the active window's GTK menu if available
get_appmenu() {
    # Get active window address
    local active_window=$(hyprctl activewindow -j 2>/dev/null | jq -r '.address // empty')

    if [ -z "$active_window" ]; then
        echo '{"text": "", "tooltip": "No active window"}'
        return
    fi

    # Try to get the window's application ID
    local app_class=$(hyprctl activewindow -j 2>/dev/null | jq -r '.class // empty')

    if [ -z "$app_class" ]; then
        echo '{"text": "", "tooltip": "No menu available"}'
        return
    fi

    # Check if the application exports an AppMenu via DBus
    local menu_available=$(busctl tree --user 2>/dev/null | grep -i "menu" | wc -l)

    if [ "$menu_available" -gt 0 ]; then
        echo '{"text": "☰", "tooltip": "Application Menu (Click to show)", "class": "active"}'
    else
        echo '{"text": "", "tooltip": "No menu available for this application"}'
    fi
}

get_appmenu
