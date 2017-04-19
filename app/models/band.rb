class Band < ApplicationRecord
  belongs_to :individual, class_name: "Artist", inverse_of: :bands
  belongs_to :group, class_name: "Artist", inverse_of: :bands
  validates :creation, presence: true
end
