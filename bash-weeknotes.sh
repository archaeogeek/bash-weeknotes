#!/bin/bash

function showUsage
{
  echo -e "\nThis script utlises tosheets to send stdin to a google sheet"
  echo
  echo -e "Usage: ./`basename $0 $1` \"double-quote delimited text to add\""
  echo
  echo -e "Example:"
  echo -e "\t./`basename $0 $1` \"oh hey this is cool\""
  echo
}

parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

cd "$parent_path"

. bash-weeknotes.config

if [ "$1" = "-h" ]
then
	showUsage
	exit
fi

text=$1
echo $spreadsheet

echo $(date '+%Y-%m-%d') : ${text} | tosheets -c a1 --spreadsheet=$spreadsheet -q '"' -d ':'
echo done!



