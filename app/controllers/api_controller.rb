class ApiController < ApplicationController
  include ApiHelper
  
  before_filter :find_user_by_api_key
  before_filter do |c| 
    c.params = query_values_to_upcase(params)
  end
private

  #TODO This is ugly shit.
  def find_user_by_api_key 
    unless Rails.env.test?
      @user = User.find_by_api_key(params[:key])
      unless @user || user_signed_in?
        redirect_to root_path, notice: "Please append your api key to your request"
      end
    end
  end
  
end
