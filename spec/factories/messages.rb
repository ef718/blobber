FactoryGirl.define do
  factory :message do |f|
    f.association :user
    f.content "message here"
  end
end