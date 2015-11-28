class SignupBroadcast
  @queue = :signup_queue

  def self.perform(newbie_id)
    person = Person.find(newbie_id)
    UserMailer.signup_broadcast(person)
  end
end