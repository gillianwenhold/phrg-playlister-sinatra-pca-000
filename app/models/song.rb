# frozen_string_literal: true

require_relative "concerns/slugifiable"

class Song < ActiveRecord::Base
  include Slugifiable::InstanceMethod
  extend Slugifiable::ClassMethod
  belongs_to :artist
  has_many :song_genres
  has_many :genres, through: :song_genres
end
