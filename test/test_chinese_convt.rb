# encoding: utf-8
require 'test/unit'
require 'chinese_convt'

class TestChineseConvt < Test::Unit::TestCase
    Str_tra = { 0 => "幹部一干人不乾不淨", 1 => "後天來去后里天后宮", 2 => "這是從前面茶棚里留聲機上放出來的", 3 => "觸摸屏取代鼠標對互聯網的影響", 4 => "舊金山檯球冠軍是諧星"}
    Str_sim = { 0 => "干部一干人不干不净", 1 => "后天来去后里天后宫", 2 => "这是从前面茶棚里留声机上放出来的", 3 => "触摸屏取代鼠标对互联网的影响", 4 => "旧金山台球冠军是谐星"}
    Str_tw = { 0 => "幹部一干人不乾不淨", 1 => "後天來去后里天后宮", 2 => "這是從前面茶棚里留聲機上放出來的", 3 => "觸控螢幕取代滑鼠對網際網路的影響", 4 => "舊金山撞球冠軍是諧星"}
    Str_hk = { 0 => "幹部一干人不乾不淨", 1 => "後天來去后里天后宮", 2 => "這是從前面茶棚里留聲機上放出來的", 3 => "觸摸屏取代鼠標對互聯網的影響", 4 => "三藩市桌球冠軍是諧星"}
    Str_cn = { 0 => "干部一干人不干不净", 1 => "后天来去后里天后宫", 2 => "这是从前面茶棚里留声机上放出来的", 3 => "触摸屏取代鼠标对互联网的影响", 4 => "旧金山台球冠军是笑星"}

  def test_zh2tra
    Str_sim.each{ |i , w| assert_equal( Str_tra[i] , Chinese.zh2tra( w ) ) }
  end

  def test_zh2sim
    Str_tra.each{ |i , w| assert_equal( Str_sim[i] , Chinese.zh2sim( w ) ) }
  end

  def test_zh2tw
    Str_sim.each{ |i , w| assert_equal( Str_tw[i] , Chinese.zh2tw( w ) ) }
  end

  def test_zh2hk
    Str_sim.each{ |i , w| assert_equal( Str_hk[i] , Chinese.zh2hk( w ) ) }
  end
  
  def test_zh2cn
    Str_tra.each{ |i , w| assert_equal( Str_cn[i] , Chinese.zh2cn( w ) ) }
    Str_tw.each{ |i , w| assert_equal( Str_cn[i] , Chinese.zh2cn( w ) ) }
  end
end