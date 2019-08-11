class ApplicationController < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views/") }
  
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/recipes/new" do 
    erb :new
  end
  
  get '/recipes' do 
    @recipes = Recipe.all
    erb :index
  end
  
  get '/recipes/:id' do  #loads show page
    @recipe = Recipe.find_by_id(params[:id])
    erb :show
  end

end
