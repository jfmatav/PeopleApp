class UserMailer < ApplicationMailer
	default from: "noreply.gaptest@gmail.com"

  def self.signup_broadcast(newbie)
    @people = Person.all
    @people.each do |person|
      signup_single(person, newbie).deliver_now
    end
  end

  def signup_single(recipient, newbie)
    @newbie = newbie
    @person = recipient
    mail(to: @person.email, subject: "People App - New person added")
  end

  def self.delete_broadcast(deleted)
    @people = Person.all
    @people.each do |person|
      delete_single(person, deleted).deliver_now
    end
  end

  def delete_single(recipient, deleted)
    @deleted = deleted
    @person = recipient
    mail(to: @person.email, subject: "People App - Person deleted")
  end

end
