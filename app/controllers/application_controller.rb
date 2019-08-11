class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/recipes/new" do 
    erb :new
  end
  
  post '/recipes' do
  @recipe = Recipe.create(:name => params[:name], :ingredients => params[:ingredients])
  redirect to "/articles/#{@article.id}"
end

end
