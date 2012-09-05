module ApplicationHelper

def link_to_github (profile, project = nil)
    unless project
      link_to "#{profile.gsub(/[-_]/,' ')}", "https://github.com/#{profile}"
    else
      link_to "#{profile.gsub(/[-_]/,' ')} - #{project.gsub(/[-_]/,' ')}", "https://github.com/#{profile}/#{project}"
    end 
end

end
