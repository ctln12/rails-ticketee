# frozen_string_literal: true

class Project < ApplicationRecord
  has_many :tickets

  validates :name, presence: true
end
