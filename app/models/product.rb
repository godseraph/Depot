# encoding:utf-8
class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title
  validates :title, :description, :image_url, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :title, :uniqueness => true
  validates :image_url, :format => {
    :with 	=> %r{\.(gif|jpg|png)$}i,
    :message	=> '必须是 Gif, JPG或者PNG图片'
  }
end
