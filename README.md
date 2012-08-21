#chinese_convt

[RubyGems](http://rubygems.org/gems/chinese_convt)

	Chinese is not a simple one kind langurage.
	This gem provide conversion between Traditional and Simplified Chinese.
	Further, adjusting phrases to conform in Taiwan or Hong Kong or China.

	中文字並不是單純的一種語言。
	將簡體中文轉換為繁體中文，或反之將繁體中文轉為簡體中文，亦可考慮中港台三地不同用詞習慣而作轉換。

	例：
  	(簡體)干部一干人等干事不干不净 <=> (繁體)幹部一干人等幹事不乾不淨
  	(中國)触摸屏取代鼠标对互联网的影响 => (台灣)觸控螢幕取代滑鼠對網際網路的影響
  	(台灣)舊金山撞球冠軍是諧星 => (中國)旧金山台球冠军是笑星
  	(中國)夏天里吹着冷气吃方便面 => (香港)夏天裏吹着冷氣吃即食麵


## Installation

	gem install chinese_convt
	

## Usage
	convert string to Traditional Chinese
	將字串轉換至繁體中文

		Chinese.zh2tra( str )


	convert string to Simplified Chinese
	將字串轉換至簡體中文

		Chinese.zh2sim( str )


	convert string to Traditional Chinese of Taiwan
	將字串轉換至台灣繁體中文

		Chinese.zh2tw( str )


	convert string to Traditional Chinese of Hong Kong
	將字串轉換至香港繁體中文

		Chinese.zh2hk( str )


	convert string to Simplified Chinese of China
	將字串轉換至中國簡體中文

		Chinese.zh2cn( str )

