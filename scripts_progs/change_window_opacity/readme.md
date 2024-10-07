CREDIT - original code taken from the following gist
https://gist.github.com/ikbelkirasan/558a64b84bcdcafd5946e94e6a6feb91

## Change active window opacity in Linux using keyboard shortcut

### Prerequisites

You need these dependencies on your machine:

- xprop
- xdotool

### Setup

1. Put the script somewhere e.g. `~/.scripts/change_window_opacity.sh`

  make it executable `chmod +x ~/.scripts/change_window_opacity.sh`

2. Open Settings center -> Keyboard

3. Create a custom shortcut for increasing the window opacity and set the hotkey to whatever you want, then set the command to be: `bash -c "~/.scripts/change_window_opacity.sh -i"`.
 
4. Same for decreasing the window opacity, set the command to be: `bash -c "~/.scripts/change_window_opacity.sh -d"`. 

Done. Have fun! :)
