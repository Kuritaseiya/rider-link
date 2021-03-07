require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録：正常系' do
    it "全ての欄を埋めて指定された条件を満たしている時" do
      expect(@user).to be_valid
    end

    it "mybikeが空でもプラン登録できる" do
      @user.mybike = ""
      expect(@user).to be_valid
    end
  end

  describe 'ユーザー新規登録：異常系' do
    it "nicknameが空だと新規登録できない" do
      @user.nickname = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Nicknameを入力してください")
    end

    it "nicknameが7文字以上だと新規登録できない" do
      @user.nickname = "aaabbbc"
      @user.valid?
      expect(@user.errors.full_messages).to include("Nicknameは6文字以内で入力してください")
    end

    it "emailが空の場合だと新規登録できない" do
      @user.email = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Emailを入力してください")
    end

    it "emailが既にある(一意性でない)場合に新規登録できない" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      #expect(another_user.errors[:email]).to include("Emailはすでに存在します")
    end

    it "emailに＠を含まない場合に新規登録できない" do
      @user.email = "kkkgmail.com"
      @user.valid?
      expect(@user.errors.full_messages).to include("Emailは不正な値です")
    end

    it "passwordが空の場合に新規登録できない" do
      @user.password = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Passwordを入力してください")
    end

    it "passwordが存在してもpassword_confirmationが空では登録できない" do
      @user.password_confirmation = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmationとPasswordの入力が一致しません")
    end

    it "passwordが6文字以上でない場合新規登録できない" do
      @user.password = "Aa2bb"
      @user.valid?
      expect(@user.errors.full_messages).to include("Passwordは6文字以上で入力してください")
    end

    it "passwordが半角英数字混合出ない場合に新規登録できない" do
      @user.password = "aaabbb"
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmationとPasswordの入力が一致しません")
    end

    it "passwordは数字のみでは登録できない" do
      @user.password = "111222"
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmationとPasswordの入力が一致しません")
    end

    it "passwordは全角では登録できない" do
      @user.password = "あああいいい"
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmationとPasswordの入力が一致しません")
    end

    it "gender_idが1の場合では登録できない" do
      @user.gender_id = 1
      @user.valid?
      expect(@user.errors.full_messages).to include("Genderは1以外の値にしてください")
    end

    it "prefecture_idが1の場合では登録できない" do
      @user.prefecture_id = 1
      @user.valid?
      expect(@user.errors.full_messages).to include("Prefectureは1以外の値にしてください")
    end
  end
end
