class ApplicationController < ActionController::Base
  before_action :set_raven_context
  before_action :set_title

  def set_title
    @page_title = "SchoolHub Admin Panel"
  end

  private
  def set_raven_context
    Raven.user_context(id: session[:current_user_id]) # or anything else in session
    Raven.extra_context(params: params.to_unsafe_h, url: request.url)
  end
end