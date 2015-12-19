# dumptter

- This script collect your tweets on 'twitter.com'.

## Install

	git clone https://github.com/river24/dumptter.git
	cd dumptter
	bundle install

## Usage

	bundle exec bin/dumptter

This script creates $HOME/.dumptter directory, config YAML file including your twitter account, and sqlite3 database file in the directory.

## Import from your twitter archive

You can import tweets from your twitter archive by the following command.  
It will take time to import.

	bundle exec bin/import_from_archive ARCHIVE_DATA_DIR

`ARCHIVE_DATA_DIR` is the `data` directory which is in the top directory of the zip file of your twitter archive which you can get from the following URL.

	https://twitter.com/settings/account

After finishing import, it is recommended to run the following command.  
It will take long-time.

	bundle exec bin/dumptter update

