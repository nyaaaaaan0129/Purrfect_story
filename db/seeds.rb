# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Admin.create!(
	email:"admin@admin",
	password: "admin0",
	password_confirmation: "admin0")


Member.create!(
 [
  {
	email: "aaa@gmail.com",
	last_name: "宝井",
	first_name: "秀人",
	last_name_kana: "タカライ",
	first_name_kana: "ヒデト",
	nickname: "ハイド",
	postal_code: "1111111",
	address: "東京都港区麻布４丁目",
	phone_number: "09012345678",
	password: "123456",
	password_confirmation: "123456"
    },
  {
	email: "bbb@gmail.com",
	last_name: "村田",
	first_name: "花穂",
	last_name_kana: "ムラタ",
	first_name_kana: "ハナホ",
	nickname: "はな",
	postal_code: "2222222",
	address: "東京都文京区本郷４丁目",
	phone_number: "09012345678",
	password: "123456",
	password_confirmation: "123456"
    },
    {
	email: "ccc@gmail.com",
	last_name: "吉田",
	first_name: "松蔭",
	last_name_kana: "ヨシダ",
	first_name_kana: "ショウイン",
	nickname: "ショウ",
	postal_code: "3333333",
	address: "東京都渋谷区代々木２丁目",
	phone_number: "09012345678",
	password: "123456",
	password_confirmation: "123456"
    },
    {
	email: "ddd@gmail.com",
	last_name: "伊藤",
	first_name: "博文",
	last_name_kana: "イトウ",
	first_name_kana: "ヒロブミ",
	nickname: "ひろ",
	postal_code: "4444444",
	address: "東京都世田谷区成城6丁目",
	phone_number: "09012345678",
	password: "123456",
	password_confirmation: "123456"
    },
    {
	email: "eee@gmail.com",
	last_name: "田中",
	first_name: "みなみ",
	last_name_kana: "タナカ",
	first_name_kana: "ミナミ",
	nickname: "みなみ",
	postal_code: "5555555",
	address: "東京都新宿区歌舞伎町３丁目",
	phone_number: "09012345678",
	password: "123456",
	password_confirmation: "123456"
    }
]
	)