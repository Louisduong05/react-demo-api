class Answer < ApplicationRecord
  belongs_to :question
  has_and_belongs_to_many :users, dependent: :destroy
end
