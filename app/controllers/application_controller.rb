<<<<<<< HEAD

require_relative '../../config/environment'
require 'pry'
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
  end
  
  get '/articles/new' do
    
    erb :new 
  end 
  
  post '/articles' do 
  
    @article1 = Article.create(params)
    
     redirect to "/articles/#{@article1.id}"
     
  end 
  
  get '/articles/:id' do 
    @article = Article.find_by(id: params[:id])
    erb :show 
  end 
  
  get '/articles' do
    @articles = Article.all
    erb :index
  end
  
  get '/articles/:id/edit' do 
    @article2 = Article.find_by(id: params[:id])
    erb :edit 
  end 
  
  patch '/articles/:id' do 
    @article3 = Article.find_by(id: params[:id])
    @article3.title = params[:title]
    @article3.content = params[:content]
    @article3.save
    erb :show
  end 
  
  delete '/articles/:id' do
    @article4 = Article.find_by(id: params[:id])
    @article4.delete 
  end
  
end
=======

require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
  end 
  
     get '/articles' do 
    @articles = Article.all 
    erb :index
  end 

  get '/articles/new' do 
    erb :new
  end 

  post '/articles' do 
    @article = Article.create(params)
    redirect to "/articles/#{@article.id}"
  end 

  get '/articles/:id' do 
    @article = Article.find(params[:id])
    erb :show
  end 

  patch '/articles/:id' do 
    @article = Article.find(params[:id])
    @article.title = params[:title]
    @article.content = params[:content]
    @article.save
    redirect to "/articles/#{@selc_article.id}"
  end 


  get '/articles/:id/edit' do 
    @article = Article.find(params[:id])
    erb :edit
  end 

  delete '/articles/:id/delete' do 
    @article = Article.find(params[:id])
    @article.destroy
    erb :index
  end 

end
  end
end
>>>>>>> c41125ab6005dd263a91ae3feb7184e7ca661344
