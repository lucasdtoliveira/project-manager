class Project < ApplicationRecord
  has_many :bugs, dependent: :destroy
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 800 }
  validates :titulo, presence: true, length: { maximum: 140 }

end
