module ApplicationHelper
  def page_title
    params[:action]
  end
end
