class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :kokkyos, dependent: :destroy

  validates :name, presence: true
  validates :profile, length: { maximum: 200 }
  has_many :likes, dependent: :destroy
  has_many :liked_kokkyos, through: :likes, source: :kokkyo

  mount_uploader :image, ImageUploader
  mount_uploader :bimage, ImageUploader

  def already_liked?(kokkyo)
    self.likes.exists?(kokkyo_id: kokkyo.id)
  end

  has_many :comments, dependent: :destroy
  
end
