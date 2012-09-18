class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.profile_claim.subject
  #
  def profile_claim(profile_claim)
    @profile_claim = profile_claim
    mail :to => profile_claim.email, :subject => "Profile Claim"
  end
end
