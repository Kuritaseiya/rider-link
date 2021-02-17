require 'rails_helper'

RSpec.describe Plan, type: :model do
  before do
    @plan = FactoryBot.build(:plan)
  end

  describe 'ツーリングプラン企画機能：正常系' do
    it "全ての欄を埋めて指定された条件を満たしている時" do
      expect(@plan).to be_valid
    end

    it "power_idが１でもプラン登録できる" do
      @plan.power_id = 1
      expect(@plan).to be_valid
    end

    it "maker_idが１でもプラン登録できる" do
      @plan.maker_id = 1
      expect(@plan).to be_valid
    end

    it "highway_idが１でもプラン登録できる" do
      @plan.highway_id = 1
      expect(@plan).to be_valid
    end

    it "age_min_idが１でもプラン登録できる" do
      @plan.age_min_id = 1
      expect(@plan).to be_valid
    end

    it "age_max_idが１でもプラン登録できる" do
      @plan.age_max_id = 1
      expect(@plan).to be_valid
    end
  end

  describe 'ツーリングプラン企画機能：異常系' do
    it "year_idが1の場合では登録できない" do
      @plan.year_id = 1
      @plan.valid?
      expect(@plan.errors.full_messages).to include("Year must be other than 1")
    end

    it "moon_idが1の場合では登録できない" do
      @plan.moon_id = 1
      @plan.valid?
      expect(@plan.errors.full_messages).to include("Moon must be other than 1")
    end

    it "day_idが1の場合では登録できない" do
      @plan.day_id = 1
      @plan.valid?
      expect(@plan.errors.full_messages).to include("Day must be other than 1")
    end

    it "prefecture_idが1の場合では登録できない" do
      @plan.prefecture_id = 1
      @plan.valid?
      expect(@plan.errors.full_messages).to include("Prefecture must be other than 1")
    end

    it "conditionsが空の場合では登録できない" do
      @plan.conditions = ""
      @plan.valid?
      expect(@plan.errors.full_messages).to include("Conditions can't be blank")
    end
  end
end