require 'sinatra/base'

class Bowling < Sinatra::Base
  get '/' do
    'Bowling!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end