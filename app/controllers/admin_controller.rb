class AdminController < ApplicationController
  before_action :authenticate

  protected

  def authenticate
    unless authenticate_with_http_basic {|u, p| u == 'kito' && p == 'kid' }
      request_http_basic_authentication
    end
  end
end
