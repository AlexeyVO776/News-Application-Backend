class BigNews < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates :title, presence: true
  validates :content, presence: true
  validate :image_size_validation, if: -> { image.present? }
  validate :image_content_type_validation, if: -> { image.present? }

  private

  def image_size_validation
    errors.add(:image, "should be less than 2MB") if image.size > 2.megabytes
  end

  def image_content_type_validation
    allowed_types = %w[image/jpeg image/png image/jpg]
    errors.add(:image) unless allowed_types.include?(image.content_type)
  end
end
