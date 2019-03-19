class Entry < ApplicationRecord
  belongs_to :user
  belongs_to :job
  has_many :entries, dependent: :destroy
end
