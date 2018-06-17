################################################################################
# Bash Profile																																 #
################################################################################

# Load dotfiles
for file in ~/.exports ~/.path ~/.secrets ; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
