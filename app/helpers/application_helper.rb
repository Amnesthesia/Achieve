module ApplicationHelper
  
  # This badass motherfucker returns the page title
  # and it aint gonna return no customized motherfucking title
  # for any of your pansy ass static pages IS THAT CLEAR
  def full_title(page_title)
    base_title = "Achievements: Unlocked"
    if page_title.empty?
      base_title
    else
      "#{base_title.split(":")[0] } | #{page_title}"
    end
  end
end
