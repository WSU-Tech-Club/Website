# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  author_id  :integer
#  title      :string(255)
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

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
