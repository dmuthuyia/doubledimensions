class CareersController < ApplicationController
before_action :find_career, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
before_action :authenticate_user!, except: [:index, :show]

def index
	
		@careers = Career.all.order("created_at DESC")
end

def show
	#@comments = Comment.where(career_id: @career)
	#@random_career = career.where.not(id: @career).order("RANDOM()").first
end

def new
	@career = current_user.careers.build
end

def create
	@career = current_user.careers.build(career_params)

	if @career.save
		redirect_to @career
	else
		render 'new'
	end
end

def edit
end

def update
	if @career.update(career_params)
		redirect_to @career
	else
		render 'edit'
	end
end

def destroy
	@career.destroy
	redirect_to root_path
end

def upvote
	@career.upvote_by current_user
	redirect_to :back
end

def downvote
	@career.downvote_by current_user
	redirect_to :back
end

private

def find_career
	@career = Career.find(params[:id])
end

def career_params
	params.require(:career).permit(:advertiser, :title, :description, :qualification, :contract_nature, :salary, :start_date, :application_deadline, :career_img)
end
end
