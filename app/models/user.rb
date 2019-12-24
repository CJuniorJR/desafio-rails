class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def destroy
    update_attributes(active: false) unless active
  end

  def active_for_authentication?
    super && active
  end
end
