class ProfileClaim < ActiveRecord::Base
  belongs_to :profile

  attr_accessible :email, :profile_id, :token
  
  def send_profile_claim
    generate_token(:token)
    save!
    UserMailer.profile_claim(self).deliver
  end

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64

    end while ProfileClaim.exists?(column => self[column])

  end

end

