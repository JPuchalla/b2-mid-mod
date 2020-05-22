class StudioController < ApplicationController
  validates_presence_of :name, :location, :movies
end
