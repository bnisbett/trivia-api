require "rails_helper"

RSpec.describe Question, type: :model do
  it { is_expected.to belong_to(:quiz) }
  it { is_expected.to have_many(:answers) }

  it "has correct question_type enum" do
    is_expected.to define_enum_for(:question_type).with(%i(multiple_choice))
  end
end
