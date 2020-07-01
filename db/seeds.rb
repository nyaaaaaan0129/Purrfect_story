# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
  email: 'admin@admin',
  password: 'admin0',
  password_confirmation: 'admin0'
)

Member.create!(
  [
    {
      email: 'aaa@gmail.com',
      last_name: '宝井',
      first_name: '秀人',
      last_name_kana: 'タカライ',
      first_name_kana: 'ヒデト',
      nickname: '港区猫保護センター',
      postal_code: '1111111',
      address: '東京都港区麻布４丁目',
      phone_number: '09012345678',
      password: '123456',
      introduction: "東京都港区にある猫の保護施設です。webサイトはこちら（https:.......）",
      password_confirmation: '123456',
      image: open("./db/images/neko_cafe.png")
    },
    {
      email: 'bbb@gmail.com',
      last_name: '村田',
      first_name: '花穂',
      last_name_kana: 'ムラタ',
      first_name_kana: 'ハナホ',
      nickname: '文京区猫保護センター',
      postal_code: '2222222',
      address: '東京都文京区本郷４丁目',
      phone_number: '09012345678',
      password: '123456',
      introduction: "東京都文京区にある猫の保護施設です。webサイトはこちら（https:.......）",
      password_confirmation: '123456',
      image: open("./db/images/pet_cat_omoi_sleep_woman.png")
    },
    {
      email: 'ccc@gmail.com',
      last_name: '吉田',
      first_name: '松蔭',
      last_name_kana: 'ヨシダ',
      first_name_kana: 'ショウイン',
      nickname: 'ショウ',
      postal_code: '3333333',
      address: '東京都渋谷区代々木２丁目',
      phone_number: '09012345678',
      password: '123456',
      introduction: "2018年から猫の保護活動をしています。今は６歳の茶とらの男の子と暮らしています。",
      password_confirmation: '123456',
      image: open("./db/images/pet_cat_nekosui.png")
    },
    {
      email: 'ddd@gmail.com',
      last_name: '伊藤',
      first_name: '博文',
      last_name_kana: 'イトウ',
      first_name_kana: 'ヒロブミ',
      nickname: 'アニマルガーディアン',
      postal_code: '4444444',
      address: '東京都世田谷区成城6丁目',
      phone_number: '09012345678',
      password: '123456',
      introduction: '2019年に東京猫保護センターからハチワレの女の子を引き取って一緒に暮らしています。',
      password_confirmation: '123456',
      image: open("./db/images/pet_niteru_cat.png")
    },
    {
      email: 'eee@gmail.com',
      last_name: '田中',
      first_name: 'みなみ',
      last_name_kana: 'タナカ',
      first_name_kana: 'ミナミ',
      nickname: 'みなみ',
      postal_code: '5555555',
      address: '東京都新宿区歌舞伎町３丁目',
      phone_number: '09012345678',
      password: '123456',
      introduction: '実家にいた頃はずっと猫と暮らしていましたが一人暮らしになってからは猫と暮らせていません。少しでも猫助けをしたいと思って登録しました。',
      password_confirmation: '123456',
      image: open("./db/images/camera_cat.png")
    }
  ]
)

ItemGenre.create!(
 [
  {
    name: "ごはん",
    valid_invalid_status: 0
  },
  {
    name: "おもちゃ",
    valid_invalid_status: 0
  },
  {
    name: "ベッド",
    valid_invalid_status: 0
  },
  {
    name: "トイレ用品",
    valid_invalid_status: 0
  },
  {
    name: "ケア用品",
    valid_invalid_status: 0
  },
  {
    name: "キャリー・ケージ",
    valid_invalid_status: 0
  }
 ]
)


Item.create!(
 [
  {
    item_genre_id: 1,
    item_name: "美味しいご飯マグロ味",
    explanation: "１番人気のマグロ味のご飯です。",
    unit_price_without_tax: 200,
    sale_status: 0,
    image: open("./db/images/pet_food_cat_can.png")
  },
  {
    item_genre_id: 1,
    item_name: "美味しいご飯かつお味",
    explanation: "ウェットタイプのかつお味のご飯です。",
    unit_price_without_tax: 200,
    sale_status: 0,
    image: open("./db/images/pet_food_cat_can.png")
  },
  {
    item_genre_id: 1,
    item_name: "猫用おさかなチップス",
    explanation: "マグロやかつおなど色々なおさかなの味のおやつです。たまのご褒美に。",
    unit_price_without_tax: 200,
    sale_status: 0,
    image: open("./db/images/pet_oyatsu_cat.png")
  },
  {
    item_genre_id: 2,
    item_name: "猫じゃらし（緑）",
    explanation: "カシャカシャ音がする食いつき抜群の猫じゃらしです。",
    unit_price_without_tax: 400,
    sale_status: 0,
    image: open("./db/images/pet_nekojarashi.png")
  },
  {
    item_genre_id: 2,
    item_name: "猫じゃらし（緑）",
    explanation: "カシャカシャ音がする食いつき抜群の猫じゃらしです。",
    unit_price_without_tax: 400,
    sale_status: 0,
    image: open("./db/images/pet_nekojarashi.png")
  },
  {
    item_genre_id: 3,
    item_name: "猫ちぐら",
    explanation: "夏は涼しく冬は暖かい、取り合いになること間違いなしの猫ちぐらです。",
    unit_price_without_tax: 3000,
    sale_status: 0,
    image: open("./db/images/pet_nekotsugura.png")
  },
  {
    item_genre_id: 4,
    item_name: "匂わない優秀猫砂",
    explanation: "うんちやおしっこの匂いを素早く吸収してくれる猫のトイレ砂です。",
    unit_price_without_tax: 1000,
    sale_status: 0,
    image: open("./db/images/pet_nekosuna.png")
  },
  {
    item_genre_id: 5,
    item_name: "壁に貼れる爪とぎ",
    explanation: "壁に貼れるタイプの爪とぎです。よく猫ちゃんが爪とぎしてしまう壁部分に貼りましょう。",
    unit_price_without_tax: 1000,
    sale_status: 0,
    image: open("./db/images/cat_tsumetogi.png")
  },
  {
    item_genre_id: 6,
    item_name: "キャリー　ハードタイプ（ピンク）",
    explanation: "プラスチック製の丈夫なハードタイプのキャリーです。人慣れしていない猫向きです。",
    unit_price_without_tax: 4000,
    sale_status: 0,
    image: open("./db/images/pet_carry_cage_cat.png")
  },
  {
    item_genre_id: 6,
    item_name: "キャリー　ハードタイプ（イエロー）",
    explanation: "プラスチック製の丈夫なハードタイプのキャリーです。人慣れしていない猫向きです。",
    unit_price_without_tax: 4000,
    sale_status: 0,
    image: open("./db/images/pet_cage_hakobu_woman.png")
  }
  ]
)


PostGenre.create!(
 [
  {
    name: "幸せになった話",
    valid_invalid_status: 0
  },
  {
    name: "里親募集中",
    valid_invalid_status: 0
  },
  {
    name: "驚いた話",
    valid_invalid_status: 0
  },
  {
    name: "役に立つ話",
    valid_invalid_status: 0
  },
  {
    name: "可愛いうちの子みてください！",
    valid_invalid_status: 0
  },
  {
    name: "その他",
    valid_invalid_status: 0
  }
 ]
)

