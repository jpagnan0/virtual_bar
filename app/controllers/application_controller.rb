
=begin
def current_user
  # User.find would throw an error if we cannot find the user
  User.find_by({ id: session[:user_id] })
end

def logged_in?
  # nil is falsey in ruby
  # a user instance is truthy
  !!current_user
end

def authorized
  redirect_to login_path unless logged_in?
end

# def tab
#   session[:tab] ||= []
# end
#
# def add_drink_to_tab(drink_id)
#   tab << drink_id
# end
#
# def get_drinks_from_tab
#   @ordered_drinks = Drink.find(tab)
# end
#
# def count_ordered_drinks
#   get_drinks_from_tab.length
# end
#
# def set_drink_timeout
#
# end
=end

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authorized #lock down this whole app
  # helper_method :current_user #i can call current_user from a view
  include SessionsHelper
end
