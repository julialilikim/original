# This file should contain all the record creation needed to seed the database with its default values.
# 디폴트 값을 설정하는 곳
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: 'h@h.h', password: '123456') 
# rake db:seed 따로 회원가입안해도 이 계정으로 로긴 가능.