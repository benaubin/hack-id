# Preview all emails at http://localhost:3000/rails/mailers/member_mailer
class MemberMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/member_mailer/confirm_email
  def confirm_email
    MemberMailer.confirm_email
  end

  # Preview this email at http://localhost:3000/rails/mailers/member_mailer/reset_password
  def reset_password
    MemberMailer.reset_password
  end

end
