# frozen_string_literal: true

class Project < ApplicationRecord
  has_many :tickets, dependent: :delete_all
  # Other possible options :destroy, :nullify, :restrict_with_error, :restrict_with_exception

  validates :name, presence: true
end
