class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(user_params)
    @article.save
    redirect_to articles_path
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(user_params)
    redirect_to article_path(@article)
  end

  def delete
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private

  def user_params
    params.require(:article).permit(:title, :content)
  end

end

