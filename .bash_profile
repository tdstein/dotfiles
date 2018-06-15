
# Load dotfiles
for file in ~/.exports; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
