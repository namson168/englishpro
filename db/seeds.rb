# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(name:  "admin",
             email: "admin@test.com",
             password:              "12345678",
             password_confirmation: "12345678",
             admin: true)
             

User.create!(name: "Le Hien",
            email: "hienlv@gmail.com",
            password: "12345678",
            password_confirmation: "12345678",
            admin: false)

User.create!(name: "Bui Quoc Dat",
            email: "datbq@gmail.com",
            password: "12345678",
            password_confirmation: "12345678",
            admin: false)
            
User.create!(name: "Bui Van Quang",
            email: "quangbv@gmail.com",
            password: "12345678",
            password_confirmation: "12345678",
            admin: false)
            
# seed lessions

5.times do |n|
    name = "Lesson #{n+1}"
    description = "Day #{n+1}"
    Lesson.create name: name, description: description
end

#seed words

# word_list = [
#     ["call", 1],
#     ["text", 1],
#     ["forget", 1],
#     ["message", 1],
#     ["chat", 1],
#     ["sleep", 2],
#     ["dream", 2],
#     ["sleepwalking", 2],
#     ["nightmare", 2],
#     ["fun", 2],
#     ["bored", 3],
#     ["relaxing", 3],
#     ["tired", 3],
#     ["feeling", 3],
#     ["company", 3],
#     ["building", 4],
#     ["boss", 4],
#     ["employee", 4],
#     ["warehouse", 4],
#     ["walking", 4],
#     ["write", 4],
#     ["sport", 5],
#     ["shopping", 5],
#     ["swimming", 5],
#     ["comfort", 5]
#     ]
    
# word_list.each do |content, lesson_id|
#   Word.create( content: content, lesson_id: lesson_id )
# end    

Word.create content: "call", lesson_id: 1
Word.create content: "text", lesson_id: 1
Word.create content: "forget", lesson_id: 1 
Word.create content: "message", lesson_id: 1
Word.create content: "chat", lesson_id: 1
Word.create content: "sleep", lesson_id: 2
Word.create content: "dream", lesson_id: 2
Word.create content: "sleepwalking", lesson_id: 2
Word.create content: "nightmare", lesson_id: 2
Word.create content: "fun", lesson_id: 2
Word.create content: "bored", lesson_id: 3
Word.create content: "rest", lesson_id: 3
Word.create content: "tired", lesson_id: 3
Word.create content: "feeling", lesson_id: 3
Word.create content: "company", lesson_id: 3
Word.create content: "building", lesson_id: 4
Word.create content: "boss", lesson_id: 4
Word.create content: "employee", lesson_id: 4
Word.create content: "warehouse", lesson_id: 4
Word.create content: "walking", lesson_id: 4
Word.create content: "write", lesson_id: 5
Word.create content: "sport", lesson_id: 5
Word.create content: "shopping", lesson_id: 5
Word.create content: "swimming", lesson_id: 5
Word.create content: "comfort", lesson_id: 5
# Word.create content: "angry"
# Word.create content: "encourage "
# Word.create content: "congratulate "
# Word.create content: "help "
# Word.create content: "computer "
# Word.create content: "keyboard "
# Word.create content: "laptop "
# Word.create content: "mouse "
# Word.create content: "speaker "
# Word.create content: "bicycle "
# Word.create content: "motorbike "
# Word.create content: "car"
# Word.create content: "curb"
# Word.create content: "street"
# Word.create content: "bus"
# Word.create content: "driver"
# Word.create content: "change"
# Word.create content: "stress"
# Word.create content: "send"
# Word.create content: "buy"
# Word.create content: "pay"
# Word.create content: "check"
# Word.create content: "stop"
# Word.create content: "jump"
# Word.create content: "turn"
# Word.create content: "cross"
# Word.create content: "find"
# Word.create content: "park"
# Word.create content: "crash"
# Word.create content: "put"
# Word.create content: "wait"
# Word.create content: "love"
# Word.create content: "brake"
# Word.create content: "smoke"
# Word.create content: "blow"
# Word.create content: "load"
# Word.create content: "surf"
# Word.create content: "sit"
# Word.create content: "pack"
# Word.create content: "barge"
# Word.create content: "pack"
# Word.create content: "pick"
# Word.create content: "shout"
# Word.create content: "cheat"
# Word.create content: "open"
# Word.create content: "rice"
# Word.create content: "noodle"
# Word.create content: "porridge"
# Word.create content: "chicken"
# Word.create content: "meat"
# Word.create content: "soup"
# Word.create content: "drink"
# Word.create content: "bite"
# Word.create content: "eat"
# Word.create content: "chew"
# Word.create content: "swallow"
# Word.create content: "pork"
# Word.create content: "fish"
# Word.create content: "taste"
# Word.create content: "boil"
# Word.create content: "stir"
# Word.create content: "pour"
# Word.create content: "fry"
# Word.create content: "paper"
# Word.create content: "secretary"
# Word.create content: "accountant"
# Word.create content: "superior"
# Word.create content: "teacher"
# Word.create content: "student"
# Word.create content: "class"
# Word.create content: "computer"
# Word.create content: "library"
# Word.create content: "book"
# Word.create content: "university"
# Word.create content: "lecturer"
# Word.create content: "project"

# seed answers

Answer.create content: "電話をかける", correct: true, word_id: 1
Answer.create content: "メッセージ", correct: false, word_id: 1
Answer.create content: "送る", correct: false, word_id: 1
Answer.create content: "打つ", correct: false, word_id: 1

Answer.create content: "テキスト", correct: true, word_id: 2
Answer.create content: "文字", correct: false, word_id: 2
Answer.create content: "字", correct: false, word_id: 2
Answer.create content: "メール", correct: false, word_id: 2

Answer.create content: "懐かしい", correct: false, word_id: 3
Answer.create content: "愛する", correct: false, word_id: 3
Answer.create content: "嫌がる", correct: false, word_id: 3
Answer.create content: "忘れる", correct: true, word_id: 3

Answer.create content: "電話", correct: false, word_id: 4
Answer.create content: "メッセージ", correct: true, word_id: 4
Answer.create content: "Eメール", correct: false, word_id: 4
Answer.create content: "挨拶", correct: false, word_id: 4

Answer.create content: "しゃべる", correct: true, word_id: 5
Answer.create content: "励ます", correct: false, word_id: 5
Answer.create content: "追う", correct: false, word_id: 5
Answer.create content: "寝る", correct: false, word_id: 5

Answer.create content: "食べる", correct: false, word_id: 6
Answer.create content: "寝る", correct: true, word_id: 6
Answer.create content: "飲む", correct: false, word_id: 6
Answer.create content: "走る", correct: false, word_id: 6

Answer.create content: "希望", correct: false, word_id: 7
Answer.create content: "記憶", correct: false, word_id: 7
Answer.create content: "夢", correct: true, word_id: 7
Answer.create content: "愛", correct: false, word_id: 7

Answer.create content: "うろうろする", correct: false, word_id: 8
Answer.create content: "寝過ごす", correct: false, word_id: 8
Answer.create content: "夢幻的", correct: false, word_id: 8
Answer.create content: "夢中遊行症", correct: true, word_id: 8

Answer.create content: "悪魔", correct: true, word_id: 9
Answer.create content: "夢", correct: false, word_id: 9
Answer.create content: "食事", correct: false, word_id: 9
Answer.create content: "夕食", correct: false, word_id: 9

Answer.create content: "綺麗", correct: false, word_id: 10
Answer.create content: "役に立つ", correct: false, word_id: 10
Answer.create content: "健康", correct: false, word_id: 10
Answer.create content: "嬉しい", correct: true, word_id: 10

Answer.create content: "嬉しい", correct: false, word_id: 11
Answer.create content: "つまらない", correct: true, word_id: 1
Answer.create content: "静か", correct: false, word_id: 11
Answer.create content: "わくわくする", correct: false, word_id: 11

Answer.create content: "リラックス", correct: true, word_id: 12
Answer.create content: "働く", correct: false, word_id: 12
Answer.create content: "勉強", correct: false, word_id: 12
Answer.create content: "料理", correct: false, word_id: 12

Answer.create content: "可笑しい", correct: false, word_id: 13
Answer.create content: "健康", correct: false, word_id: 13
Answer.create content: "疲れる", correct: true, word_id: 13
Answer.create content: "真面目", correct: false, word_id: 13

Answer.create content: "感じ", correct: false, word_id: 14
Answer.create content: "行為", correct: false, word_id: 14
Answer.create content: "意思", correct: false, word_id: 14
Answer.create content: "気持ち", correct: true, word_id: 14

Answer.create content: "会社", correct: true, word_id: 15
Answer.create content: "レストラン", correct: false, word_id: 15
Answer.create content: "ホテル", correct: false, word_id: 15
Answer.create content: "港", correct: false, word_id: 15

Answer.create content: "機関", correct: false, word_id: 16
Answer.create content: "鍵", correct: false, word_id: 16
Answer.create content: "自転車", correct: false, word_id: 16
Answer.create content: "建物", correct: true, word_id: 16

Answer.create content: "ボス", correct: true, word_id: 17
Answer.create content: "社員", correct: false, word_id: 17
Answer.create content: "子供", correct: false, word_id: 17
Answer.create content: "会計士", correct: false, word_id: 17

Answer.create content: "社員", correct: true, word_id: 18
Answer.create content: "ボス", correct: false, word_id: 18
Answer.create content: "人間", correct: false, word_id: 18
Answer.create content: "会計士", correct: false, word_id: 18

Answer.create content: "ホテル", correct: false, word_id: 19
Answer.create content: "別れ", correct: false, word_id: 19
Answer.create content: "結婚式", correct: false, word_id: 19
Answer.create content: "倉庫", correct: true, word_id: 19

Answer.create content: "サイクル", correct: false, word_id: 20
Answer.create content: "走る", correct: false, word_id: 20
Answer.create content: "歩行", correct: true, word_id: 20
Answer.create content: "釣り", correct: false, word_id: 20

Answer.create content: "書く", correct: true, word_id: 21
Answer.create content: "タイピング", correct: false, word_id: 21
Answer.create content: "ジョギング", correct: false, word_id: 21
Answer.create content: "読む", correct: false, word_id: 21

Answer.create content: "教える", correct: false, word_id: 22
Answer.create content: "料理", correct: true, word_id: 22
Answer.create content: "スポーツ", correct: false, word_id: 22
Answer.create content: "勉強", correct: false, word_id: 22

Answer.create content: "サイクル", correct: false, word_id: 23
Answer.create content: "泳ぐ", correct: false, word_id: 23
Answer.create content: "旅行", correct: false, word_id: 23
Answer.create content: "買う", correct: true, word_id: 23

Answer.create content: "泳ぐ", correct: true, word_id: 24
Answer.create content: "サッカー", correct: false, word_id: 24
Answer.create content: "買う", correct: false, word_id: 24
Answer.create content: "勉強", correct: false, word_id: 24

Answer.create content: "熱い", correct: false, word_id: 25
Answer.create content: "お腹いっぱい", correct: false, word_id: 25
Answer.create content: "病気", correct: false, word_id: 25
Answer.create content: "快適", correct: true, word_id: 25

#seed Tests

