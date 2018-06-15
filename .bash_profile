# Load dotfiles
for file in ~/.exports ~/.path ; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
