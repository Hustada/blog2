class ArticlesController < ApplicationController

  

  def new
    @article = Article.new
  end

  def index
    @article = Article.all


    @articles = Article.order('created_at DESC')
    @articles_by_month = Article.find(:all, :order => 'created_at DESC').group_by { |article| article.created_at.strftime("%B %Y") }
  end
  

  def month_count
    @articles_by_month = Article.find(:all, :order => 'created_at DESC').group_by { |article| article.created_at.strftime("%B %Y") }
  end

  def create  
    @article = Article.new(article_params)
    
      if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end



  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
   
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end


  def show
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private
  
  def article_params
    params.require(:article).permit(:title, :text, :image)
  end

end
