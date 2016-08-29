class OntechnologiesController < ApplicationController

before_action :find_ontechnology, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
before_action :authenticate_user!, except: [:index, :show]

def index
	
		@ontechnologies = Ontechnology.all.order("created_at DESC")
end

def show
	#@comments = Comment.where(ontechnology_id: @ontechnology)
	#@random_ontechnology = ontechnology.where.not(id: @ontechnology).order("RANDOM()").first
end

def new
	@ontechnology = current_user.ontechnologies.build
end

def create
	@ontechnology = current_user.ontechnologies.build(ontechnology_params)

	if @ontechnology.save
		redirect_to @ontechnology
	else
		render 'new'
	end
end

def edit
end

def update
	if @ontechnology.update(ontechnology_params)
		redirect_to @ontechnology
	else
		render 'edit'
	end
end

def destroy
	@ontechnology.destroy
	redirect_to root_path
end

def upvote
	@ontechnology.upvote_by current_user
	redirect_to :back
end

def downvote
	@ontechnology.downvote_by current_user
	redirect_to :back
end

private

def find_ontechnology
	@ontechnology = Ontechnology.find(params[:id])
end

def ontechnology_params
	params.require(:ontechnology).permit(:title, :body, :ontechnology_img, :url)
end
end
