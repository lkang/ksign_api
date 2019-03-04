# ksign_api

Karaoke Sign Up API

This is the API for a Live Band Karaoke Website. The UI is at https://github.com/lkang/ksign_ui

The API uses sqlite3 database; however config/pg_database.yml is included just in case you'd like to use psql.

A couple rake commands exist to seed the db:

    rake seed_db:read_csv                   # Initialize the songs table from csv
    rake seed_db:events_songs               # Add events_songs to the last event
    rake seed_db:performances               # Create performances for Dave Grohl for each events_song

This is a rails 5 app. To start the server:

    $ bundle install
    $ bundle exec rake db:create db:migrate
    $ bundle exec rails s
