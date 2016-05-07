module ApplicationHelper
  def pages_nav_active? page_id
    if params[:action] == 'show' and params[:controller] == 'pages' and params[:id] == page_id.to_s
      'active'
    end
  end
end
