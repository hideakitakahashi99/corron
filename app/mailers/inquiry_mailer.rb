class InquiryMailer < ApplicationMailer
    
    def receive_email(inquiry)
        @inquiry = inquiry
        mail to: "info@salon-de-corron.com", subject: "salon de Corron お問い合わせがありました"
        end
end
