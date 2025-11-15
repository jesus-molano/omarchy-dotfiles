#!/bin/bash
# Toggle floating, center and resize window

# Toggle floating mode
hyprctl dispatch togglefloating

# Check if window is now floating
is_floating=$(hyprctl activewindow -j | jq -r '.floating')

if [ "$is_floating" = "true" ]; then
    # Resize to 60% of screen
    hyprctl dispatch resizeactive exact 60% 60%

    # Center the window
    hyprctl dispatch centerwindow
fi
