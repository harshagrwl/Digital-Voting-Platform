require 'navigation_helper.rb'

module ApplicationHelper
  include NavigationHelper

  def date_format(datetime)
    datetime.strftime("%H:%M %F")
  end
end
