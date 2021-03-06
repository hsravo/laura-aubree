class Project < ApplicationRecord

  belongs_to :user
  has_one_attached :cover
  has_many_attached :images

  validates :title, presence: true
  validates :slug, uniqueness: true
  validate :images_presence_format

  has_rich_text :body_fr
  has_rich_text :body_en

  extend FriendlyId
  friendly_id :title, use: :slugged

  def cover_thumbnail
    return self.cover.variant(resize: '300x300!').processed
  end

  def images_thumbnail input
    return self.images[input].variant(resize: '150x150!')
  end

  private

  def images_presence_format
    if !images.attached?
      errors.add(:images, "manquantes !")
    elsif images.attached?
      images.each do |image|
        if !image.blob.content_type.in?(%w(image/jpeg image/jpg image/png))
          errors.add(:images, "doivent être au format JPG ou PNG !")
        end
      end
    end
  end
  
end
