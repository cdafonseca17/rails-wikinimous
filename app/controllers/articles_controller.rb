class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(params_create)
    redirect_to article_path(@article.id)
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.update(params_create)
  end

  private

  def params_create
    params.require(:article).permit(:title, :content)
  end
end
