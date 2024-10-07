#!/usr/bin/env bash

getopts_parse()
{
	echo "Arguments passed to getopts_parse()"
	echo "---> $@"

	while getopts "a:b:" opt; do
	  case "$opt" in
		a) 
			arg_file=$OPTARG
			echo -e "optarg: $OPTARG\n"\
				 "arg_file: $arg_file\n"\
			;;

		b) 
			echo $OPTARG
			;;
		:)
			echo "Option -$OPTARG requires an argument"
			;;
			
		\?)
			echo "Error: Invalid option passed: -$OPTARG"
			;;
	  esac
	done

	shift $((OPTIND - 1))

    # Iterate over the remaining arguments
	echo 'Remaining arguments:'
    for arg; do
        echo "--> '$arg'"
    done

	# Resetting OPTIND because it does not get reset when the function exits
	# and when getopts potentially gets called again outside of this function.
	OPTIND=1
}
