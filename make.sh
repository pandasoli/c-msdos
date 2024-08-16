#!/usr/bin/env bash
set -e

executable="BUILD/MAIN.EXE"
buildlog="BUILD/TCC.LOG"

if [ "$#" -eq 0 ]; then
	args=("build" "run")
else
	args=("$@")
fi

for arg in "${args[@]}"; do
	case $arg in
		'build')
			[ ! -d BUILD ] && mkdir BUILD

			# On Linux and Windows SDL_VIDEODRIVER=dummy and -noconsole options hide
			# the DOSBox window (During the build step, we don't need to view the window)

			SDL_VIDEODRIVER=dummy dosbox -conf ./build.dosbox.conf -noconsole

			if [ ! -f "$buildlog" ]; then
				echo 'Error: No build log found.'
				exit 4
			fi

			echo -e "\n"
			cat $buildlog

			if grep --quiet 'error|Error|Undefined symbol' $buildlog; then
				echo 'Error(s) during compilation.'
				exit 5
			elif [ ! -f "$executable" ]; then
				echo 'Error: No executable found.'
				exit 6
			fi
			;;

		'run')
			dosbox -conf run.dosbox.conf BUILD/MAIN.EXE
			;;
	esac
done
