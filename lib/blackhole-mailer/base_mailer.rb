# Offers subclasses a hook to abort deliver of a mail message.
class BaseMailer < ActionMailer::Base

  class AbortDeliveryError < StandardError;end;
  
  def abort_delivery
    raise AbortDeliveryError
  end

  def process(*args)
    begin
      super *args
    rescue AbortDeliveryError
      self.message = BlackholeMailMessage
    end
  end  
end