
# This badass motherfucking function is a clone of the one found in our StaticPages helper.
# Lets use this bitch for testing aight

def full_title(page_title)
    base_title = "Achievements: Unlocked"
    if page_title.empty?
      base_title
    else
      "#{base_title.split(":")[0] } | #{page_title}"
    end
end