class Recipe < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy

  with_options presence: true do
    validates :title
    validates :body
  end
end
