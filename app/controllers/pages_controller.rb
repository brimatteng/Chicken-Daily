class PagesController < ApplicationController
  def main
    TestMailer.test
  end

  # we got a user with an email
  # ask user how they feel every day
  # - they need to be able to see their past answers
  # users cannot change their past answers
end
