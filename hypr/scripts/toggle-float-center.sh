#!/bin/bash
# Toggle floating, center and resize window

# Toggle floating mode
hyprctl dispatch togglefloating

# Check if window is now floating
is_floating=$(hyprctl activewindow -j | jq -r '.floating')

if [ "$is_floating" = "true" ]; then
    # Center the window
    hyprctl dispatch centerwindow

    # Resize to 80% of screen (optional, adjust as needed)
    # hyprctl dispatch resizeactive exact 80% 80%
fi
