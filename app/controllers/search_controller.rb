class SearchController < ApplicationController
  before_action :authenticate_user!

  def search 
    case params[:cat]
      when 'drawings' then redirect_to drawings_path(search: params[:cont]) 
      when 'instruments' then redirect_to instruments_path(search: params[:cont]) 
      else
    end
  end

end
