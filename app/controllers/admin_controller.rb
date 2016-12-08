class AdminController < ApplicationController
  before_action :authenticate

  protected

  def authenticate
    data = AuthData.first

    authenticated = authenticate_with_http_basic do |u, p|
      50.times { p = Digest::SHA256.hexdigest(p) }
      u == data.name && p == data.password
    end

    request_http_basic_authentication unless authenticated
  end
end
