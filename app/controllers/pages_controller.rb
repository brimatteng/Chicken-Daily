class PagesController < ApplicationController
  def main
    TestMailer.test
  end
end
