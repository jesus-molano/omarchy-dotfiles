#!/bin/bash
# Switch keyboard layout and show notification

# Switch to next layout
hyprctl switchxkblayout at-translated-set-2-keyboard next

# Get current layout
current_layout=$(hyprctl devices -j | jq -r '.keyboards[] | select(.name == "at-translated-set-2-keyboard") | .active_keymap')

# Show notification with flag emoji
case "$current_layout" in
    "Spanish")
        notify-send -t 2000 "🇪🇸 Español" "Teclado español activado"
        ;;
    "English (US)")
        notify-send -t 2000 "🇺🇸 English" "US keyboard layout"
        ;;
    *)
        notify-send -t 2000 "⌨️  Keyboard" "Layout: $current_layout"
        ;;
esac
