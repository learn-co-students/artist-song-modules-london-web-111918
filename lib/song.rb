require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  #include Paramable::InstanceMethods
  include Memorable::InstanceMethods
  attr_accessor :name
  attr_reader :artist

  @@artists = []


  # def self.find_by_name(name)
  #   @@songs.detect{|song| song.name == name}
  # end

  def self.all
    @@artists
  end

  # def self.reset_all
  #   self.all.clear
  # end
  #
  # def self.count
  #   self.all.count
  # end

  def artist=(artist)
    @artist = artist
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
end
