class TabController < ApplicationController

  def update
    add_drink_to_tab(params[:drink_id])
    flash[:success] = "Order: #{params[:drink_name]}"
    redirect_to drinks_path
    # byebug
  end

end
