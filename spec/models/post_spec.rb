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

require 'spec_helper'

describe Post do
  pending "add some examples to (or delete) #{__FILE__}"
end
