#!/bin/bash
# Script to display application menu indicator

get_appmenu() {
    # Get active window info
    local window_info=$(hyprctl activewindow -j 2>/dev/null)

    if [ -z "$window_info" ] || [ "$window_info" = "null" ]; then
        echo '{"text": "", "tooltip": "No active window", "class": "inactive"}'
        return
    fi

    local app_class=$(echo "$window_info" | jq -r '.class // empty')
    local app_title=$(echo "$window_info" | jq -r '.title // empty' | head -c 50)

    if [ -z "$app_class" ]; then
        echo '{"text": "", "tooltip": "No application", "class": "inactive"}'
        return
    fi

    # List of applications that typically have menus
    local has_menu=false
    case "$app_class" in
        *firefox*|*Firefox*|*chrome*|*Chrome*|*chromium*|*Chromium*)
            has_menu=false  # Browsers don't export DBus menus
            ;;
        *GIMP*|*gimp*|*Inkscape*|*inkscape*|*LibreOffice*|*libreoffice*)
            has_menu=true   # GTK apps with menus
            ;;
        *gedit*|*Gedit*|*nautilus*|*Nautilus*|*evince*|*Evince*)
            has_menu=true   # GNOME apps
            ;;
        *)
            # Check if it's a GTK app by looking for GTK_MODULES
            local pid=$(echo "$window_info" | jq -r '.pid // empty')
            if [ -n "$pid" ] && grep -q "GTK" /proc/$pid/environ 2>/dev/null; then
                has_menu=true
            fi
            ;;
    esac

    if [ "$has_menu" = true ]; then
        echo "{\"text\": \"☰\", \"tooltip\": \"Menu: $app_title\", \"class\": \"active\"}"
    else
        echo "{\"text\": \"☰\", \"tooltip\": \"$app_title\", \"class\": \"inactive\"}"
    fi
}

get_appmenu
