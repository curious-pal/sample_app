module ApplicationHelper

  # Return a title on a per-page basis.
  def title												# Определение метода
    base_title = "Ruby on Rails Tutorial Sample App"	# Назначение переменной
    if @title.nil?										# проверка (bolean) на nil
      base_title										# неявный return
    else
      "#{base_title} | #{@title}"						# интерполяция попробовать переделать  на (base_title + " | " + @title)
    end
  end
end
