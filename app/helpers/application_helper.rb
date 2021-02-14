module ApplicationHelper
  # adapted from: https://stackoverflow.com/questions/23630949/undefined-method-full-title
  def full_title(page_title)
    base_title = "FPL Creator"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
