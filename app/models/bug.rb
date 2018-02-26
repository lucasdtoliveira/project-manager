class Bug < ApplicationRecord
  belongs_to :project
  default_scope -> { order(created_at: :desc) }
  validates :project_id, presence: true
  validates :content, presence: true, length: { maximum: 800 }
  validates :estado, presence: true, length: { maximum: 100 }
end
