class Production < ApplicationRecord
    validates :title, presence: true
    validates :budget, numericality: {greater_than: 0}

    # give us readers and writers for associated data
    has_many :cast_members
    has_many :tickets
    has_many :users, through: :tickets
end
