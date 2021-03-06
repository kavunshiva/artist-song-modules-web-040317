require 'pry'

class Song
  include Paramable, Memorable::InstanceMethods
  extend Findable, Memorable::ClassMethods
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
