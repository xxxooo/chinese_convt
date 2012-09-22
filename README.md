#Chinese_Convt

[RubyGems](http://rubygems.org/gems/chinese_convt)

	Chinese is not a simple one kind langurage.
	This gem provide conversion between Traditional and Simplified Chinese.
	Further, adjusting phrases to conform in Taiwan or Hong Kong or China.

	中文字並不是單純的一種語言。
	將簡體中文轉換為繁體中文，或反之將繁體中文轉為簡體中文，亦可考慮中港台三地不同用詞習慣而作轉換。

	例：
  	(简体)干部一干人等干事不干不净 <=> (繁體)幹部一干人等幹事不乾不淨
  	(中国)触摸屏取代鼠标对互联网的影响 => (台灣)觸控螢幕取代滑鼠對網際網路的影響
  	(台灣)線上辭典查詢達文西密碼 => (中国)在线词典查找达芬奇密码
  	(中国)嘴里吃着金鎗鱼三明治 => (香港)嘴裏吃着吞拿魚三文治


## Installation

	gem install chinese_convt
	

## Usage
####convert string to Traditional Chinese - 轉換至繁體中文
	Chinese.zh2tra( str )

####convert string to Simplified Chinese - 轉換至简体中文
	Chinese.zh2sim( str )
	
####convert string to Traditional Chinese of Taiwan - 轉換至台灣繁體中文
	Chinese.zh2tw( str )

####convert string to Traditional Chinese of Hong Kong - 轉換至香港繁體中文
	Chinese.zh2hk( str )

####convert string to Simplified Chinese of China - 轉換至中国简体中文
	Chinese.zh2cn( str )
