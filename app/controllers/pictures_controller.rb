class PicturesController < ApplicationController
	before_action :find_picture, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
before_action :authenticate_user!, except: [:index, :show]

def index
	
		@pictures = Picture.all.order("created_at DESC")
end

def show
	#@comments = Comment.where(picture_id: @picture)
	#@random_picture = picture.where.not(id: @picture).order("RANDOM()").first
end

def new
	@picture = current_user.pictures.build
end

def create
	@picture = current_user.pictures.build(picture_params)

	if @picture.save
		redirect_to @picture
	else
		render 'new'
	end
end

def edit
end

def update
	if @picture.update(picture_params)
		redirect_to @picture
	else
		render 'edit'
	end
end

def destroy
	@picture.destroy
	redirect_to root_path
end

def upvote
	@picture.upvote_by current_user
	redirect_to :back
end

def downvote
	@picture.downvote_by current_user
	redirect_to :back
end

private

def find_picture
	@picture = Picture.find(params[:id])
end

def picture_params
	params.require(:picture).permit(:advertiser, :title, :description, :qualification, :contract_nature, :salary, :start_date, :application_deadline, :picture_img)
end
end
