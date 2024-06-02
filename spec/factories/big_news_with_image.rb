FactoryBot.define do
  factory :big_news_with_image, class: 'BigNews' do
    title { "Sample News Title" }
    content { "Sample News Content" }
    visible { true }
    image { Rack::Test::UploadedFile.new(Rails.root.join('spec/fixtures/files/test_image.jpg'), 'image/jpeg') }
  end
end
