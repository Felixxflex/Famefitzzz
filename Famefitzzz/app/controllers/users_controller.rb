class UsersController < ApplicationController

before_action :set_user, only: [:show, :edit, :update, :destroy]



def show
 
end

def edit
end

def update
  @user.update(user_params)
  redirect_to user_path(@celebs)
end

def saved_celebs
  @celebs = Celeb.all
  @saved_celebs = []
  @celebs.each do |celeb|
    @saved_celebs << celeb if celeb.save
  end
end



private

def set_user
  @user = current_user
end

def user_params
  params.require(:user).permit(
    :email, :full_name, :username, photos: []
    )
end

end