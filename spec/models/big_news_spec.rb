require 'rails_helper'

RSpec.describe BigNews, type: :model do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:content) }

  describe 'Image validations' do
    context 'with image' do
      subject(:big_news) { build(:big_news, :with_image) }

      it 'is valid with an image of valid size and type' do
        expect(big_news).to be_valid
      end

      it 'is invalid with an image over 2MB' do
        big_news = build(:big_news_with_image)
        big_news.image = Rack::Test::UploadedFile.new(Rails.root.join('spec/fixtures/files/large_image.jpg'), 'image/jpeg')
        big_news.valid?
        expect(big_news.errors[:image]).to include("should be less than 2MB")
      end

      it 'is invalid with a non-image file type' do
        big_news = build(:big_news_with_image)
        big_news.image = Rack::Test::UploadedFile.new(Rails.root.join('spec/fixtures/files/test_image.gif'), 'image/gif')
        big_news.valid?
        expect(big_news.errors[:image]).to include("You are not allowed to upload \"gif\" files, allowed types: jpg, jpeg, png")
      end
    end
  end
end
