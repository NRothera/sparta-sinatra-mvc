require 'sinatra'
require 'sinatra/reloader' if development?
require_relative "controllers/photos_controllers.rb"

run PhotosController
