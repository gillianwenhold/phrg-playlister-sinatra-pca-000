# frozen_string_literal: true

require_relative "concerns/slugifiable"

class Genre < ActiveRecord::Base
  include Slugifiable::InstanceMethod
  extend Slugifiable::ClassMethod
  has_many :song_genres
  has_many :songs, through: :song_genres
  has_many :artists, through: :songs
end
