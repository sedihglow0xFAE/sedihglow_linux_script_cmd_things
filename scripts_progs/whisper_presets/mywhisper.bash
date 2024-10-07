#!/bin/bash

# This script will eventually hold the different cmd-line pre-set arguments and
# options for the whisper assistant utility

whisper --threads 6 --processors 3 $1 
