# dumptter

- This script collect your tweets on 'twitter.com'.

## Install

	git clone https://github.com/river24/dumptter.git
	cd dumptter
	bundle install

## Usage

	bundle exec bin/dumptter

This script creates $HOME/.dumptter directory, config YAML file including your twitter account, and sqlite3 database file in the directory.

## Import from old dumptter

	bundle exec bin/import_from_dumptter1

## Import from tweets archive

	bundle exec bin/import_from_archive ARCHIVE_DATA_DIR

`ARCHIVE_DATA_DIR` is the `data` directory which is in the top directory of the zip file which you can get by requesting your archive.

