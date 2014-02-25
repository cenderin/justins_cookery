class ChefsController < ApplicationController
  def index
    @chefs = Chef.all
  end
	def new
		@chef = Chef.new
	end

	def show
		@chef = Chef.find(params[:id])
	end

	def edit
		@chef = Chef.find(params[:id])
	end

  def create
    @chef = Chef.new(chef_params)

      if @chef.save
        flash[:success] = "New chef has been created."
       	redirect_to chef_path(@chef.id)
      else
        flash[:error] = "There was an error saving your form."
       	render :new
      end
  end
  def update
    @chef = Chef.find(params[:id])
       if @chef.update_attributes(chef_params)
        flash[:success] = "changes have been made"
        redirect_to chef_path(@chef.id)
       else
        flash[:error] = "you are a failure and no one loves you"
        render :edit

       end
  end

  private
  def chef_params
      params.require(:chef).permit(:name, :show, :speciality, :avatar)
    end
end
