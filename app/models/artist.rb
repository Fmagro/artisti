class Artist < ApplicationRecord

  has_many :bands, foreign_key: "group_id",  dependent: :destroy 


  has_many :individuals, :through => :bands, :source => :artist

  has_many :groups, :through => :bands, :source => :artist
  accepts_nested_attributes_for :bands

  validates :name, presence: true,
                    length: { maximum: 25 }	
end
