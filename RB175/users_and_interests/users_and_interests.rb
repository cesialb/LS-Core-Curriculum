require "sinatra"
require "sinatra/reloader"
require "tilt/erubis"
require "yaml"

before do
  # loading users from yaml file
  @users = YAML.load_file('data/users.yaml')
end

helpers do 
  def count_interests
    names = @users.keys
    total = 0

    names.each do |name|
      total += @users[name][:interests].size
    end

    total
  end

  def count_users
    @users.size
  end
end

get '/' do
  erb :home
end

get '/user/:name' do
  @user = params[:name].downcase.to_sym
  redirect '/' unless @users.key? @user
  @interests = @users[@user][:interests]

  erb :user
end