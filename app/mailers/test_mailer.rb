class TestMailer < ApplicationMailer
  def test
    mail(to: ENV.fetch("MY_EMAIL"), subject: "THIS IS A TEST")
  end

  def deliver_test
    test.deliver_now
  end
end
