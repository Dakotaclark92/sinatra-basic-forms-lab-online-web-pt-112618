require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :index
  end
  
  post '/create_puppy' do
    cp = Puppy.new
    @name = cp.puppys(params[:name])
    @age = cp.puppies(params[:age])
    @
    
    erb :create_puppy
  end
  
  post '/display_puppy' do
    
    
    erb :display_puppy
  end

end
