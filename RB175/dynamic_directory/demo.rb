require 'sinatra'
require 'sinatra/reloader'
require 'tilt/erubis'

get '/' do
   @filenames = Dir["./public/*"].map {|file| File.basename(file) }.sort
   @filenames.reverse! if params[:sort] == "desc"
   erb :home
end