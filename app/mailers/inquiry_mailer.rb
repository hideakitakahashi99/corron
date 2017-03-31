class InquiryMailer < ApplicationMailer
    
    def receive_email(inquiry)
        @inquiry = inquiry
        mail to: "hideakitakahashi99@gmail.com", subject: "salon de Corron お問い合わせがありました"
        end
end
