require 'pry'

class Song

  include Memorable::InstanceMethods, Paramable
  extend Memorable::ClassMethods, Findable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def self.all
    @@songs
  end

  def initialize
    self.class.all << self
  end

  def artist=(artist)
    @artist = artist
  end

end
