class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
  validate :is_clickbaity?

  def is_clickbaity?
    unless title =~ /Won't Believe|Secret|Top \d|Guess/i
      errors.add(:title, "title is not clickbait-y!")
    end
    # if the title doesnt contain anything from the array above
    #  add a new error to the errors object
    # i.e self.errors.add(:clickbaity, "title does not contain a clickbait keyword")
  end
end
