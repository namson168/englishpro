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
Word.create content: "relaxing", lesson_id: 3
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

Answer.create content: "gọi điện", correct: true, word_id: 1
Answer.create content: "nhắn tin", correct: false, word_id: 1
Answer.create content: "gửi", correct: false, word_id: 1
Answer.create content: "gõ", correct: false, word_id: 1

Answer.create content: "văn bản", correct: true, word_id: 2
Answer.create content: "chữ cái", correct: false, word_id: 2
Answer.create content: "kí tự", correct: false, word_id: 2
Answer.create content: "thư", correct: false, word_id: 2

Answer.create content: "nhớ", correct: false, word_id: 3
Answer.create content: "yêu", correct: false, word_id: 3
Answer.create content: "ghét", correct: false, word_id: 3
Answer.create content: "quên", correct: true, word_id: 3

Answer.create content: "cuộc gọi", correct: false, word_id: 4
Answer.create content: "tin nhắn", correct: true, word_id: 4
Answer.create content: "thư điện tử", correct: false, word_id: 4
Answer.create content: "lời chào", correct: false, word_id: 4

Answer.create content: "tán gẫu", correct: true, word_id: 5
Answer.create content: "an ủi", correct: false, word_id: 5
Answer.create content: "đuổi bắt", correct: false, word_id: 5
Answer.create content: "ngủ", correct: false, word_id: 5

Answer.create content: "ăn", correct: false, word_id: 6
Answer.create content: "ngủ", correct: true, word_id: 6
Answer.create content: "uống", correct: false, word_id: 6
Answer.create content: "chạy", correct: false, word_id: 6

Answer.create content: "hy vọng", correct: false, word_id: 7
Answer.create content: "kỉ niệm", correct: false, word_id: 7
Answer.create content: "giấc mơ", correct: true, word_id: 7
Answer.create content: "tình yêu", correct: false, word_id: 7

Answer.create content: "đi dạo", correct: false, word_id: 8
Answer.create content: "ngủ nướng", correct: false, word_id: 8
Answer.create content: "mơ mộng", correct: false, word_id: 8
Answer.create content: "mộng du", correct: true, word_id: 8

Answer.create content: "ác mộng", correct: true, word_id: 9
Answer.create content: "giấc mơ", correct: false, word_id: 9
Answer.create content: "bữa ăn", correct: false, word_id: 9
Answer.create content: "bữa tối", correct: false, word_id: 9

Answer.create content: "đẹp", correct: false, word_id: 10
Answer.create content: "có ích", correct: false, word_id: 10
Answer.create content: "khoẻ", correct: false, word_id: 10
Answer.create content: "vui", correct: true, word_id: 10

Answer.create content: "vui vẻ", correct: false, word_id: 11
Answer.create content: "nhàm chán", correct: true, word_id: 1
Answer.create content: "yên tĩnh", correct: false, word_id: 11
Answer.create content: "phấn khích", correct: false, word_id: 11

Answer.create content: "thư giãn", correct: true, word_id: 12
Answer.create content: "làm việc", correct: false, word_id: 12
Answer.create content: "học", correct: false, word_id: 12
Answer.create content: "nấu nướng", correct: false, word_id: 12

Answer.create content: "hài hước", correct: false, word_id: 13
Answer.create content: "khoẻ mạnh", correct: false, word_id: 13
Answer.create content: "mệt mỏi", correct: true, word_id: 13
Answer.create content: "chăm chỉ", correct: false, word_id: 13

Answer.create content: "tình cảm", correct: false, word_id: 14
Answer.create content: "hành động", correct: false, word_id: 14
Answer.create content: "ý thức", correct: false, word_id: 14
Answer.create content: "cảm giác", correct: true, word_id: 14

Answer.create content: "công ty", correct: true, word_id: 15
Answer.create content: "nhà hàng", correct: false, word_id: 15
Answer.create content: "khách sạn", correct: false, word_id: 15
Answer.create content: "vũ trường", correct: false, word_id: 15

Answer.create content: "máy móc", correct: false, word_id: 16
Answer.create content: "thợ xây", correct: false, word_id: 16
Answer.create content: "xe đạp", correct: false, word_id: 16
Answer.create content: "toà nhà", correct: true, word_id: 16

Answer.create content: "ông chủ", correct: true, word_id: 17
Answer.create content: "nhân viên", correct: false, word_id: 17
Answer.create content: "kế toán", correct: false, word_id: 17
Answer.create content: "thư kí", correct: false, word_id: 17

Answer.create content: "nhân viên", correct: true, word_id: 18
Answer.create content: "ông chủ", correct: false, word_id: 18
Answer.create content: "khách hàng", correct: false, word_id: 18
Answer.create content: "đối tác", correct: false, word_id: 18

Answer.create content: "tiệc cuối năm", correct: false, word_id: 19
Answer.create content: "tiệc chia tay", correct: false, word_id: 19
Answer.create content: "tiệc cưới", correct: false, word_id: 19
Answer.create content: "tiệc nhà mới", correct: true, word_id: 19

Answer.create content: "đạp xe", correct: false, word_id: 20
Answer.create content: "chạy bộ", correct: false, word_id: 20
Answer.create content: "đi bộ", correct: true, word_id: 20
Answer.create content: "nâng tạ", correct: false, word_id: 20

Answer.create content: "viết", correct: true, word_id: 21
Answer.create content: "đánh máy", correct: false, word_id: 21
Answer.create content: "đi bộ", correct: false, word_id: 21
Answer.create content: "đọc", correct: false, word_id: 21

Answer.create content: "giảng dạy", correct: false, word_id: 22
Answer.create content: "nội trợ", correct: true, word_id: 22
Answer.create content: "thể thao", correct: false, word_id: 22
Answer.create content: "học tập", correct: false, word_id: 22

Answer.create content: "đạp xe", correct: false, word_id: 23
Answer.create content: "bơi lội", correct: false, word_id: 23
Answer.create content: "du lịch", correct: false, word_id: 23
Answer.create content: "mua sắm", correct: true, word_id: 23

Answer.create content: "bơi lội", correct: true, word_id: 24
Answer.create content: "đá bóng", correct: false, word_id: 24
Answer.create content: "mua sắm", correct: false, word_id: 24
Answer.create content: "học tập", correct: false, word_id: 24

Answer.create content: "nóng bức", correct: false, word_id: 25
Answer.create content: "no", correct: false, word_id: 25
Answer.create content: "ốm", correct: false, word_id: 25
Answer.create content: "dễ chịu", correct: true, word_id: 25

#seed Tests

