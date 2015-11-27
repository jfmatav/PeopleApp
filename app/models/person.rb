class Person < ActiveRecord::Base
  validates :first_name, presence: true, length: { maximum: 75 }
  validates :last_name, presence: true, length: { maximum: 75 }
  validates :email, presence: true, length: { maximum: 254 }, uniqueness: true
  validates :job, length: { maximum: 75 }
  #validates :bio, 
  #validates :gender, 
  validates :birthdate, presence: true
  #validates :picture, 

  validates_format_of :email, :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

  validate :birthdate_cannot_be_future

  def birthdate_cannot_be_future
    if birthdate.present? && birthdate > Date.today
      errors.add(:birthdate, "can't be in the future")
    end
  end

end