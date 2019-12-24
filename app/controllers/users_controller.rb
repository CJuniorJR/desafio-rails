class UsersController < ApplicationController
    def activate
      @user = User.find(params[:id])

      if @user.update_attributes(:active => true)
        flash[:success] = "User was successfully activated"
        redirect_back(fallback_location: root_path)
      else
        flash[:error] = "Something went wrong"
      end
    end

    def deactivate
      @user = User.find(params[:id])

      if @user.update_attributes(:active => false)
        flash[:success] = "User was successfully deactivated"
        redirect_back(fallback_location: root_path)
      else
        flash[:error] = "Something went wrong"
      end
    end
  end