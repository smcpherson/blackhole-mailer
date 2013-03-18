# A mail message that self destructs.
class BlackholeMailMessage < Mail::Message
  def self.deliver
    false
  end
end