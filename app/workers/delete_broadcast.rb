class DeleteBroadcast
  @queue = :delete_queue

  def self.perform(deleted_id)
    person = Person.find(deleted_id)
    UserMailer.delete_broadcast(person)
  end
end