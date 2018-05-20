class ApplicationController < ActionController::Base

  before_action :set_title

  def set_title
    @page_title = "SchoolHub Admin Panel"
  end
end