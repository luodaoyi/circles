class User < ApplicationRecord

  validates :username, presence: {message: '用户名不能为空'}
  validates :username, length: {minimum: 5, maximum: 20, message: '用户名长度必须在5到20之间'}
  validates :username, uniqueness: {message: '用户名已存在'}
  validates :password, presence: {message: '密码不能为空'}
  validates :password, length: {minimum: 6, maximum: 20, message: '密码长度必须在6到20之间'}
end
