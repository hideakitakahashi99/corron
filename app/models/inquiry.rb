class Inquiry < ApplicationRecord
    
    attr_accessor :name, :email, :message, :phone, :kana
    
    validates :name, :presence => {:message => '名前を入力してください'}
    validates :kana, :presence => {:message => 'よみがなを入力してください'}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, format: { with: VALID_EMAIL_REGEX ,:message => 'メールアドレスを入力してください'}
    validates :phone,   :presence => {:message => '電話番号を数字で入力してください'},
    :numericality => true,
    :length => { :minimum => 10, :maximum => 15 }
    
    
end
