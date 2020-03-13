class ArticlesController < ApplicationController
  def index
    @articles = Article.all # show all articles
  end

  def show
    @article = Article.find(params[:id]) # present a certain article
  end

  def new
    @article = Article.new # set a form for a new article 
  end

  def create
    @article = Article.new # process of making a new article 
    @article.title = params[:title]
    @article.description = params[:description]
    @article.save
    redirect_to article_path(@article)
  end

  # add edit and update methods here
  def edit
    @article = Article.find(params[:id]) # finding a existing article 
  end 

  def update
    @article = Article.find(params[:id])  # find the id 
    @article.update(title: params[:article][:title], description: params[:article][:description]) # update the attributes of the article
    redirect_to article_path(@article) # Then redirect to the current article
  end 
end
