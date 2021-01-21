require 'rails_helper'

RSpec.describe Message, type: :model do
  before do
    @message = FactoryBot.build(:message)
  end

  describe 'messageコメント機能：正常系' do
    it "全ての欄を埋めて指定された条件を満たしている時" do
      expect(@message).to be_valid
    end
  end

  describe 'ツーリングプラン企画機能：異常系' do
    it "textが空では登録できない" do
      @message.text = 1
      @message.valid?
      expect(@plan.errors.full_messages).to include("Year must be other than 1")
    end
  end
end
