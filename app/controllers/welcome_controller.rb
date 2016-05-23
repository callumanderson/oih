# WelcomeController
class WelcomeController < ApplicationController
  def index
    render 'welcome/index', status: 200, formats: [:html]
  end
end
