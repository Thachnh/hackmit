require "spec_helper"

describe MailerRobot do
  describe "book_notification" do
    let(:mail) { MailerRobot.book_notification }

    it "renders the headers" do
      mail.subject.should eq("Book notification")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
