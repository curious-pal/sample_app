module ApplicationHelper

  # Return a title on a per-page basis.
  def title												# ����������� ������
    base_title = "Ruby on Rails Tutorial Sample App"	# ���������� ����������
    if @title.nil?										# �������� (bolean) �� nil
      base_title										# ������� return
    else
      "#{base_title} | #{@title}"						# ������������ ����������� ����������  �� (base_title + " | " + @title)
    end
  end
end
