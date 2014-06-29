class ArchivesController < ApplicationController


  def index
    @arcticles = Article.all.group_by(:select => "title, id, created_at", :order = "created_at DESC")
    @articles_month = @arcticles.group_by { |t| t.due_at.month}
  end
end
