# bash-weeknotes

Very simple wrapper script for https://github.com/kren1/tosheets to easily send dated notes to a google sheet. 
The idea is to have a quick and frictionless way of noting down "Things of note" into a spreadsheet for review 
and conversion into a blog post later.

Assumes a spreadsheet of the form:

`date | note`

Uses the options:

```
-d ':'
-q '"'
```

## Setup

* Follow instructions at https://github.com/kren1/tosheets to install
* Allow **tosheets** to access your google sheet.
* Copy `bash-weeknotes.config.sample` to `bash-weeknotes.config` and add your spreadsheet ID.
* Ensure bash-weeknotes.sh is executable

## Configuration

Configuration options are minimal, currently it assumes the date to be saved is of the form `Y-%m-%d` but this can be adjusted in
the script, as can the `-q` and `-d` options (see above).

## To run

See `./bash-weeknotes.sh` for usage or:

```
./bash-weeknotes.sh "Text you want to add to google spreadsheet, can have commas and semi-colons in it but no colons"
```

Will return errors to stdin, or will echo `done!` if it completes successfully.


