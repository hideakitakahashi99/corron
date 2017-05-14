class InquiryController < ApplicationController

  def index
      @inquiry = Inquiry.new
      render :action => 'index'
  end
  
  def confirm
      @inquiry = Inquiry.new(inquiry_params)
      if @inquiry.valid?
          render :action => 'confirm'
          else
          render :action => 'index'
      end
  end
  
  def thanks
      inquiry = Inquiry.new(inquiry_params)
      InquiryMailer.receive_email(inquiry).deliver
      
      render :action => 'thanks'
  end
  
  private
  def inquiry_params
      params.require(:inquiry).permit(:name, :email, :message, :phone, :kana)
  end
  
end
