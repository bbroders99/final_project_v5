class IdeasController < ApplicationController

  def index
    @ideas = Idea.all
  end

  def show
    @idea = Idea.find_by(id: params[:id])
  end

  def new
    @levels = [1,2,3,4,5]
  end

  def create
    @idea = Idea.new
    @idea.post_date = params[:post_date]
    @idea.title = params[:title]
    @idea.description = params[:description]
    @idea.price = params[:price]
    @idea.category = params[:category]
    @idea.size = params[:size]
    @idea.status = params[:status]
    @idea.completion_date = params[:completion_date]
    @idea.rating = params[:rating]
    @idea.buyer_id = params[:buyer_id]
    @idea.artist_id = params[:artist_id]

    if @idea.save
      redirect_to ideas_url, notice: "Idea created successfully."
    else
      render 'new'
    end
  end

  def edit
    @idea = Idea.find_by(id: params[:id])
  end

  def update
    @idea = Idea.find_by(id: params[:id])
    @idea.post_date = params[:post_date]
    @idea.title = params[:title]
    @idea.description = params[:description]
    @idea.price = params[:price]
    @idea.category = params[:category]
    @idea.size = params[:size]
    @idea.status = params[:status]
    @idea.completion_date = params[:completion_date]
    @idea.rating = params[:rating]
    @idea.buyer_id = params[:buyer_id]
    @idea.artist_id = params[:artist_id]

    if @idea.save
      redirect_to ideas_url, notice: "Idea updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @idea = Idea.find_by(id: params[:id])
    @idea.destroy

    redirect_to ideas_url, notice: "Idea deleted."
  end
end
