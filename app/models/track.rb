class Track < ActiveRecord::Base
belongs_to :album
has_one :band, through: :album, source: :band

validates :album, :lyrics, :name, :ord, presence: true

end
