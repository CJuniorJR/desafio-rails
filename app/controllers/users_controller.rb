class UsersController < ApplicationController
    def setActiveFlag
      @user = User.find(params[:id])

    if @user.active 
        if @user.update(:active => false)
            flash[:success] = "User was successfully deactivated"
            redirect_back(fallback_location: root_path)
        else
            flash[:error] = "Something went wrong"
        end
    else
        if @user.update(:active => true)
            flash[:success] = "User was successfully activated"
            redirect_back(fallback_location: root_path)
        else
            flash[:error] = "Something went wrong"
        end
    end
  end
end