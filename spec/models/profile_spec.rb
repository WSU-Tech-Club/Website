# == Schema Information
#
# Table name: profiles
#
#  id                  :integer          not null, primary key
#  first_name          :string(255)
#  last_name           :string(255)
#  active              :boolean
#  github_profile      :string(255)
#  major               :string(255)
#  skills              :text
#  github_access_token :string(255)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'spec_helper'

describe Profile do
  pending "add some examples to (or delete) #{__FILE__}"
end
