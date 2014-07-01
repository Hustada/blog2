class FeedsController < ApplicationController
  
  layout false
  
  def index
    @events = TimelineEvent.for_feed
    @title = "Rails Plugins Feed"
    @updated = @events.first.created_at unless @events.empty?
  end
end