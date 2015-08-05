class StaticPagesController < ApplicationController
  def home
    @search = Lesson.search(params[:q])
    @lessons = @search.result
  end
end
