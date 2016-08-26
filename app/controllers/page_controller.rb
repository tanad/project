class PageController < ApplicationController
  
  before_action :authenticate_user!,only: [:faq]
  def home
  end

  def about
  end

  def faq
  end
end
