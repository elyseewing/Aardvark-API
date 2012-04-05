class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :cors_preflight_check
  after_filter  :set_access_control_headers

  def set_access_control_headers
    if request.method != "OPTIONS"
      headers['Access-Control-Allow-Origin'] = 'http://local.trapp.io'
      headers['Access-Control-Request-Method'] = '*'
      headers['Access-Control-Allow-Headers'] = '*'
    end
  end

  def cors_preflight_check
    if request.method == "OPTIONS"
      headers['Access-Control-Allow-Origin'] = 'http://local.trapp.io'
      headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS, PUT, DELETE'
      headers['Access-Control-Allow-Headers'] = 'Content-Type'
      render :text => '', :content_type => 'text/plain'
    end
  end

end
