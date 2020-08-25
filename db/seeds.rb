# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cook = Category.create(:name => "料理")

cook_japan = cook.children.create(:name => "和食")
cook_us = cook.children.create(:name => "洋食")
cook_chaina = cook.children.create(:name => "中華")


movie = Category.create(:name => "映画")

movie_action = movie.children.create(:name => "アクション")
movie_comedy = movie.children.create(:name => "コメディ")
movie_holler = movie.children.create(:name => "ホラー")


gym = Category.create(:name => "ジム・トレーニング")

gym_upbody = gym.children.create(:name => "上半身")
gym_lowbody = gym.children.create(:name => "上半身")
gym_stretch = gym.children.create(:name => "ストレッチ")


music = Category.create(:name => "音楽")

music_hiphop = music.children.create(:name => "ヒップホップ")
music_lofi = music.children.create(:name => "LO-FI")
music_rock = music.children.create(:name => "ロック")
