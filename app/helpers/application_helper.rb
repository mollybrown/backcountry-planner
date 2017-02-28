module ApplicationHelper
  def page_is_login?
    current_uri(request) == "/"
  end

  def current_uri(request)
    request.env['PATH_INFO']
  end

end
