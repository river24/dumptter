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
It will take long-time to import and update (retrieve full json(s) for imported tweets).

	bundle exec bin/dumptter import ARCHIVE_DATA_DIR

`ARCHIVE_DATA_DIR` is the `data` directory which is in the top directory of the zip file of your twitter archive which you can get from the following URL.

	https://twitter.com/settings/account

