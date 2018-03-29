class Bug < ApplicationRecord
    belongs_to :user

    validates :title, presence: true
    validates :description, presence: true

    enum issue_type: [ :issue, :enhancement, :feature ]
    enum priority: [ :low, :medium, :high ]
    enum status: [ :open, :closed, :monitor ]

    attribute :issue_type, default: 2
    attribute :priority, default: 1
    attribute :status, default: 0
end
