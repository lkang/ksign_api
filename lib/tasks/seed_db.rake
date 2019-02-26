namespace :seed_db do
  desc 'Initialize the songs table from csv'
  task :read_csv => :environment do
    songs = CSV.read('karaokelist.csv')
    songs.each_with_index do |s, i|
      next if i.zero?
      Song.find_by(title: s[0]) || Song.create(title: s[0], artist: s[1], tab_url: s[2])
    end
  end

  desc 'Add events_songs to the last event'
  task :events_songs => :environment do
    event = Event.last
    Song.all.each{|s| event.songs << s }
  end

  desc 'Create performances for Dave Grohl for each events_song'
  task :performances => :environment do
    EventsSong.all.each{|es| Performance.create(events_song: es, singer:'Dave Grohl', event: es.event, )}
  end
end