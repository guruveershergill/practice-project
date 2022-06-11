class ArticlesController < ApplicationController
	before_action :set_article, only: %i[ show edit update destroy ]

	def new
		 @article = Article.new
	end

	def create
		@article = Article.new(article_params)
		 if @article.save
		    redirect_to root_path
    	else
        render 'new'
    	end
		
	end

	def edit
		
	end

	def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: "Article was successfully updated." }
      
      else
        format.html { render :edit, status: :unprocessable_entity }
        
      end
    end
  end

	def index
		@articles = Article.all
	end


	def show
		@article = Article.find(params[:id])
	end

	def destroy
    	@article.destroy
	    respond_to do |format|
	      format.html { redirect_to articles_url, notice: "Article was successfully destroyed." }
	    
	    end
  	end

private

	def set_article
      @article = Article.find(params[:id])
    end
	
	def article_params
        params.require(:article).permit(:title, :description, :image)
    end

end



	# def create
	# 	@user = User.new(user_param)
	# 	if @user.save
	# 		session[:user_id] = @user.id
	# 		flash[:notice] = "Welcome to Alpha blog #{@user.username}, you have successfully signed up"
	# 		redirect_to root_path
	# 	else
	# 		render 'new'
	# 	end
	# end
