require "./spec_helper"

describe Shard::Me do
  describe "#Palindrome" do
    context "when given a string that is a palindrome" do
      it "returns true" do
        str = "abba"
        subject = Shard::Me::Palindrome.new
        subject.palindrome?(str).should eq(true)
      end

      it "returns true" do
        str = "abbbba"
        subject = Shard::Me::Palindrome.new
        subject.palindrome?(str).should eq(true)
      end

      it "returns true" do
        str = "saippuakivikauppias"
        subject = Shard::Me::Palindrome.new
        subject.palindrome?(str).should eq(true)
      end
    end

    context "when given a string that is not a palindrome" do
      it "returns false" do
        str = "abbaa"
        subject = Shard::Me::Palindrome.new
        subject.palindrome?(str).should eq(false)
      end
    end
  end
end
