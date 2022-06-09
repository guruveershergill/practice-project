class ArticlesController < ApplicationController
	before_action :set_article, only: %i[ show edit update destroy ]

	def new
		# @article = Article.new
	end
end
