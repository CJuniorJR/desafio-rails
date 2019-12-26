class UsersController < ApplicationController
    def setActiveFlag
        @user = User.find(params[:id])

        if @user.active 
            if @user.update_attribute(:active, false)
                flash[:success] = "User was successfully deactivated"
                redirect_to '/'
            else
                flash[:error] = "Something went wrong"
            end
        else
            if @user.update_attribute(:active, true)
                flash[:success] = "User was successfully activated"
                redirect_to '/'
            else
                flash[:error] = "Something went wrong"
            end
        end
    end
end