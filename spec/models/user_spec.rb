require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録：正常系' do
    it "全ての欄を埋めて指定された条件を満たしている時" do
      expect(@user).to be_valid
    end
  end

  describe 'ユーザー新規登録：異常系' do
    it "nicknameが空だと新規登録できない" do
      @user.nickname = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Nickname can't be blank")
    end

    it "emailが空の場合だと新規登録できない" do
      @user.email = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end

    it "emailが既にある(一意性でない)場合に新規登録できない" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("has already been taken")
    end

    it "emailに＠を含まない場合に新規登録できない" do
      @user.email = "kkkgmail.com"
      @user.valid?
      expect(@user.errors.full_messages).to include("Email is invalid")
    end

    it "passwordが空の場合に新規登録できない" do
      @user.password = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end

    it "passwordが存在してもpassword_confirmationが空では登録できない" do
      @user.password_confirmation = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

    it "passwordが6文字以上でない場合新規登録できない" do
      @user.password = "Aa2bb"
      @user.valid?
      expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
    end

    it "passwordが半角英数字混合出ない場合に新規登録できない" do
      @user.password = "aaabbb"
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

    it "passwordは数字のみでは登録できない" do
      @user.password = "111222"
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

    it "passwordは全角では登録できない" do
      @user.password = "あああいいい"
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

    it "gender_idが1の場合では登録できない" do
      @user.gender_id = 1
      @user.valid?
      expect(@user.errors.full_messages).to include("Gender must be other than 1")
    end

    it "prefecture_idが1の場合では登録できない" do
      @user.prefecture_id = 1
      @user.valid?
      expect(@user.errors.full_messages).to include("Prefecture must be other than 1")
    end

    it "mybikeが空の場合では登録できない" do
      @user.mybike = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Mybike can't be blank")
    end
  end
end
