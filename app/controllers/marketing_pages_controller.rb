class MarketingPagesController < ApplicationController
  layout false

  def index
    if current_user != nil
      redirect_to "/posts"
    end
  end
end
