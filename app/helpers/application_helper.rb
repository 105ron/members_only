module ApplicationHelper

	# Titles of pages on html
  def full_title(page_title = '')                     
    base_title = "Members Only Secrets Sharing Site"  
    if page_title.empty?                              
      base_title                                      
    else
      page_title + " | " + base_title                 
    end
  end

end
