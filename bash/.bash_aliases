#!/bin/bash

# bash_aliases


#alias tmux="tmux -u2 attach || tmux -u2 new"

# Allow passing aliases to sudo
alias sudo='sudo '

# PS
alias psa="ps aux"
alias psg="ps aux | grep "
alias psr='ps aux | grep ruby'

# Moving around
alias cdb='cd -'
alias cls='clear;ls'

# Show human friendly numbers and colors
alias df='df -h'
alias du='du -h -d 2'

# Common shell functions
alias less='less -r'
alias tf='tail -f'
alias l='less'
alias lh='ls -alt | head' # see the last modified files
alias screen='TERM=screen screen'
alias clr='clear'

# Pacman alias examples
alias pacupg='sudo pacman -Syu'				# Synchronize with repositories and then upgrade packages that are out of date on the local system.
alias pacdl='pacman -Sw'							# Download specified package(s) as .tar.xz ball
alias pacin='sudo pacman -S'					# Install specific package(s) from the repositories
alias pacins='sudo pacman -U'					# Install specific package not from the repositories but from a file
alias pacre='sudo pacman -R'					# Remove the specified package(s), retaining its configuration(s) and required dependencies
alias pacrem='sudo pacman -Rns'				# Remove the specified package(s), its configuration(s) and unneeded dependencies
alias pacrep='pacman -Si'							# Display information about a given package in the repositories
alias pacreps='pacman -Ss'						# Search for package(s) in the repositories
alias pacloc='pacman -Qi'							# Display information about a given package in the local database
alias paclocs='pacman -Qs'						# Search for package(s) in the local database
alias paclo="pacman -Qdt"							# List all packages which are orphaned
alias pacc="sudo pacman -Scc"					# Clean cache - delete all not currently installed package files
alias paclf="pacman -Ql"							# List all files installed by a given package
alias pacown="pacman -Qo"							# Show package(s) owning the specified file(s)
alias pacexpl="pacman -D --asexp"			# Mark one or more installed packages as explicitly installed
alias pacimpl="pacman -D --asdep"			# Mark one or more installed packages as non explicitly installed

# Additional pacman alias examples
alias pacupd='sudo pacman -Sy && sudo abs'         # Update and refresh the local package and ABS databases against repositories
alias pacinsd='sudo pacman -S --asdeps'            # Install given package(s) as dependencies
alias pacmir='sudo pacman -Syy'                    # Force refresh of all package lists after updating /etc/pacman.d/mirrorlisti

# '[r]emove [o]rphans' - recursively remove ALL orphaned packages
alias pacro="/usr/bin/pacman -Qtdq > /dev/null && sudo /usr/bin/pacman -Rns \$(/usr/bin/pacman -Qtdq | sed -e ':a;N;\$!ba;s/\n/ /g')"

# above as function.
orphans() {
	if [[ ! -n $(pacman -Qdt) ]]; then
		echo "No orphans to remove."
	else
		sudo pacman -Rns $(pacman -Qdtq)
	fi
}

pacman-size() {
	CMD="pacman -Si"
	SEP=": "
	TOTAL_SIZE=0

	RESULT=$(eval "${CMD} $@ 2>/dev/null" | awk -F "$SEP" -v filter="Size" -v pkg="^Name" \
		'$0 ~ pkg {pkgname=$2} $0 ~ filter {gsub(/\..*/,"") ; printf("%6s KiB %s\n", $2, pkgname)}' | sort -u -k3)

	echo "$RESULT"

	## Print total size.
	echo "$RESULT" | awk '{TOTAL=$1+TOTAL} END {printf("Total : %d KiB\n",TOTAL)}'
}
