require 'pry'

class Artist
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  #include Paramable::InstanceMethods
  include Memorable::InstanceMethods
  attr_accessor :name
  attr_reader :songs

  @@songs = []

  def initialize
    super
    @songs = []
  end
  # def initialize
  #   self.class.all << self
  # end

  # def self.find_by_name(name)
  #   @@artists.detect{|artist| artist.name == name}
  # end

  def self.all
    @@songs
  end

  # def self.reset_all
  #   self.all.clear
  # end
  #
  # def self.count
  #   self.all.count
  # end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
end
