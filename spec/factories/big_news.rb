# FactoryBot.define do
#   factory :big_news do
#     title { "Sample News Title" }
#     content { "Sample News Content" }
#     visible { true }
#   end
# end

FactoryBot.define do
  factory :big_news do
    title { "Sample News Title" }
    content { "Sample News Content" }
    visible { true }

    trait :with_image do
      image { Rack::Test::UploadedFile.new(Rails.root.join('spec/fixtures/files/test_image.jpg'), 'image/jpeg') }
    end
  end
end
