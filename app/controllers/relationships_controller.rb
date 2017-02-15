class RelationshipsController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]
  before_action :admin_user,     only: [:create, :destroy]

  def create
    other_saint = Saint.find(params[:followed_id])
    current_saint = Saint.find(params[:current_saint_id])
    current_saint.follow(other_saint)
    redirect_to other_saint
  end

  def destroy
    saint = Relationship.find(params[:id]).followed
    # current_user.unfollow(saint)
    redirect_to saint
  end

  private

  # Before filters

  # Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = 'Please log in.'
      redirect_to login_url
    end
  end

  # Confirms an admin user.
  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end
