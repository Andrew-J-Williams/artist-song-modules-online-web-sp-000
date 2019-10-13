#require_relative '../lib/concerns/memorable'
require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  extend Memorable::ClassMethods
  extend Memorable::InstanceMethods
  extend Findable
  include Paramable

  #def initialize
  #  self.class.all << self
  #  @@songs << self
  #end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
