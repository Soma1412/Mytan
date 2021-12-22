class Word < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :speech 
  
  validates :word_name,     presence: true
  validates :meaning,       presence: true
  
  belongs_to :user
end
