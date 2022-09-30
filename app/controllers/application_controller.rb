class ApplicationController < ActionController::Base
    include SessionsHelper
    include ApplicationHelper
    skip_before_action :verify_authenticity_token
    private
    
    private
     
  
end
