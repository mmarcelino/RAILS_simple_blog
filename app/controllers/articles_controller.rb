class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :update, :show, :destroy]


  def new
    @article = Article.new
  end


  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:success] = "Hooray! Check below the article you've just created!"
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end

  def index
    @articles = Article.all
  end

  def show

  end


  def edit

  end


  def update

    if @article.update(article_params)
      flash[:success] = "This article has been successfully updated"
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end

  def destroy

    @article.destroy
    flash[:success] = "The article has been deleted"
    redirect_to articles_path
  end


  private

  def article_params
   params.require(:article).permit(:title, :description, :body)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
