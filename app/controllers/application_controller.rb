class ApplicationController < ActionController::Base

       include DeviseWhitelist
       include SetSource

       before_action :set_title

       def set_title
              @page_title="my Portfolio website"
       end
end