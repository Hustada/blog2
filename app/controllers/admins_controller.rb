class AdminsController < ApplicationController
  before_action :authenticate

  def authenticate
    authenticate_or_request_http_basic('Administration') do |email, password|
      email == 'hustada80@gmail.com' && password == '18schrodinger87'
    end
  end
end
