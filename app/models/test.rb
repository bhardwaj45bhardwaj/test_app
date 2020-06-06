class Test < ApplicationRecord
	belongs_to :teacher, primary_key: :id, foreign_key: :created_by
	has_many :questions

	accepts_nested_attributes_for :questions
end
