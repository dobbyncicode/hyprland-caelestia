abbr --set-cursor gac 'git add . && git commit -m "%"' 
abbr upo 'yay -Syyu --noconfirm && poweroff'
abbr upr 'yay -Syyu --noconfirm && reboot'
abbr gup 'git push -u origin main'

# --- Abbr and Alias can't handle these --- #
function ts-get
    set -l config_file "$HOME/.config/caelestia/repo-path.conf"

    if not test -f "$config_file"
	    echo "💀 Config file not found!"
	    return 1
    end

    set -l repo_root (string replace '$root_dir = ' '' (cat $config_file))
    set -l target "$repo_root/tailscale-files"

    sudo tailscale file get "$target/"

    sudo chown -R $USER:$USER $target
end


function ts-send
    if test (count $argv) -eq 0
        echo "⚠️ What do you want to send, man? (usage: tssend <file>)"
        return 1
    end

    set -l target (tailscale status | awk '{print $2}' | fzf --header="🚀 Send file to..." --height=15% --reverse)

    if test -n "$target"
		sudo tailscale file cp $argv "$target:" >/dev/null 2>&1
        echo "✅ Sent to $target"
	else
        echo "✖️  Cancelled."
    end
end
