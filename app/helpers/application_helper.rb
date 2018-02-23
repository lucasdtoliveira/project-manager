module ApplicationHelper

  # Returns the full title on a per-page basis.
  def title(page_title = '')
    base_title = "Project Manager"
    if page_title.empty?
      base_title
    else
       page_title + " | " + base_title
    end
  end
end
