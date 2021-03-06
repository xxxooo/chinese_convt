# encoding: utf-8
require 'test/unit'
require 'chinese_convt'

class TestChineseConvt < Test::Unit::TestCase
    Str_tra = { 0 => "幹部一干人等幹事不乾不淨", 1 => "線上辭典查詢達文西密碼", 2 => "嘴裡吃著鮪魚三明治", 3 => "觸摸屏取代鼠標對互聯網的影響", 4 => "舊金山檯球冠軍是諧星"}
    Str_sim = { 0 => "干部一干人等干事不干不净", 1 => "线上辞典查询达文西密码", 2 => "嘴里吃着鲔鱼三明治", 3 => "触摸屏取代鼠标对互联网的影响", 4 => "旧金山台球冠军是谐星"}
    Str_tw = { 0 => "幹部一干人等幹事不乾不淨", 1 => "線上辭典查詢達文西密碼", 2 => "嘴裡吃著鮪魚三明治", 3 => "觸控螢幕取代滑鼠對網際網路的影響", 4 => "舊金山撞球冠軍是諧星"}
    Str_hk = { 0 => "幹部一干人等幹事不乾不淨", 1 => "線上辭典查詢達文西密碼", 2 => "嘴裏吃着吞拿魚三文治", 3 => "觸控螢幕取代滑鼠對互聯網的影響", 4 => "三藩市桌球冠軍是諧星"}
    Str_cn = { 0 => "干部一干人等干事不干不净", 1 => "在线词典查找达芬奇密码", 2 => "嘴里吃着金枪鱼三明治", 3 => "触摸屏取代鼠标对互联网的影响", 4 => "旧金山台球冠军是笑星"}

  def test_zh2tra
    Str_sim.each{ |i , w| assert_equal( Str_tra[i] , Chinese.zh2tra( w ) ) }
  end

  def test_zh2sim
    Str_tra.each{ |i , w| assert_equal( Str_sim[i] , Chinese.zh2sim( w ) ) }
  end

  def test_zh2tw
    Str_sim.each{ |i , w| assert_equal( Str_tw[i] , Chinese.zh2tw( w ) ) }
    Str_cn.each{ |i , w| assert_equal( Str_tw[i] , Chinese.zh2tw( w ) ) }
  end

  def test_zh2hk
    Str_sim.each{ |i , w| assert_equal( Str_hk[i] , Chinese.zh2hk( w ) ) }
    Str_tw.each{ |i , w| assert_equal( Str_hk[i] , Chinese.zh2hk( w ) ) }
  end
  
  def test_zh2cn
    Str_tra.each{ |i , w| assert_equal( Str_cn[i] , Chinese.zh2cn( w ) ) }
    Str_tw.each{ |i , w| assert_equal( Str_cn[i] , Chinese.zh2cn( w ) ) }
  end
end