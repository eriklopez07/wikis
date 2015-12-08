class WikisController < ApplicationController
  def new
    @wiki = Wiki.new
  end

  def edit
    @wiki = Wiki.find(params[:id])
  end

  def show
    @wiki = Wiki.find(params[:id])
  end

  def index
    @wikis = Wiki.all
  end

  def create
     @wiki = Wiki.new(wiki_params)

     if @wiki.save
       redirect_to @wiki, notice: "Topic was saved successfully."
     else
       flash[:error] = "Error creating topic. Please try again."
       render :new
     end
  end

  private

  def wiki_params
    params.require(:wiki).permit(:title, :body, :private)
  end
end
