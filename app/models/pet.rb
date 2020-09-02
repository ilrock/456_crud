class Pet < ApplicationRecord
  validates :name, presence: true
  validates :found_on, presence: true
  validates :species, inclusion: { in: %w(dog cat seal hamster) }

  def found_on_days_ago_in_words
    days_ago = (Date.today - found_on).to_i

    if days_ago == 0
      'Today'
    else
      "#{days_ago} days ago"
    end
  end
end
