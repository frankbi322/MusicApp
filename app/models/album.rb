class Album < ActiveRecord::Base

  belongs_to :band
  has_many :tracks, dependent: :destroy

  validates :band, :name, :year, presence: true
  validates :live, inclusion: {in: [true,false]}
  validates :name, uniqueness: {scope: :band_id}
end
