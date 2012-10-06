# == Schema Information
#
# Table name: profile_claims
#
#  id         :integer          not null, primary key
#  email      :string(255)
#  profile_id :integer
#  token      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe ProfileClaim do
  pending "add some examples to (or delete) #{__FILE__}"
end
