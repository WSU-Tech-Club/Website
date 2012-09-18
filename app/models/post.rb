class Post < ActiveRecord::Base
  belongs_to :author, :class_name => "Profile", :foreign_key => "author_id"

  attr_accessible :author_id, :content, :title

  def html
    RDiscount.new(content).to_html
  end
 
  def formated_date
    created_at.strftime("%B %e, %Y")
  end
  
end
