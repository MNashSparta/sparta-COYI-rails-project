class CircleController < ApplicationController
  def global
  end

  def chapter
    @chapter = Chapter.find(current_user.chapter_id).name
  end

  def advocate
  end

  def news
  end

  def rules
  end
end
