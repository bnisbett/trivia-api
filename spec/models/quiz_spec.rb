require "rails_helper"

RSpec.describe Quiz, type: :model do
  it { is_expected.to have_many(:questions) }

  it "has a valid factory" do
    expect(build(:quiz)).to be_valid
  end

  describe "ActiveModel validations" do
    let(:invalid_quiz) { FactoryGirl.build(:quiz, end_at: "2017-03-10 17:37:56") }

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:start_at) }
    it { is_expected.to validate_presence_of(:end_at) }
    it { expect(invalid_quiz).to_not be_valid }
  end
end
