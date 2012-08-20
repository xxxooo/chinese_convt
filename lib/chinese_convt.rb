# encoding: UTF-8
require "chinese_convert/zh_convt"

module Chinese
  def self.zh2tra( str )
    Convert.zh_convt( [0] , str )
  end

  def self.zh2sim( str )
    Convert.zh_convt( [1] , str )
  end

  def self.zh2tw( str )
    Convert.zh_convt( [2,0] , str )
  end

  def self.zh2hk( str )
    Convert.zh_convt( [3,0] , str )
  end

  def self.zh2cn( str )
    Convert.zh_convt( [4,1] , str )
  end
end
