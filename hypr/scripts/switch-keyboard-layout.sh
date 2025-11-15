#!/bin/bash
# Switch keyboard layout and show notification

# Switch to next layout for all keyboards
hyprctl switchxkblayout at-translated-set-2-keyboard next
hyprctl switchxkblayout keychron-k2 next

# Get current layout from Keychron if available, otherwise from internal keyboard
if hyprctl devices -j | jq -e '.keyboards[] | select(.name == "keychron-k2")' > /dev/null 2>&1; then
    current_layout=$(hyprctl devices -j | jq -r '.keyboards[] | select(.name == "keychron-k2") | .active_keymap')
else
    current_layout=$(hyprctl devices -j | jq -r '.keyboards[] | select(.name == "at-translated-set-2-keyboard") | .active_keymap')
fi

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
