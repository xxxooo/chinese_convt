module Chinese
  class Convert
    def self.zh_convt( arr , str )
      convt_table = File.open(File.dirname(__FILE__) + "/zh_convt").read.split("\n&\n").map{ |group|
        group.split("\n").map{ |type|
          Hash[ type.split(',').map{ |term| term.split(':') } ]
        }
      }
      begin
        str0 = String.new( str )
        str1 = String.new( str )
        n = (str.size < 6)? str.size : 6
        convt_table.last(n).each do |group|
          arr.each do |t|
            group[t].each do |key , value|
              while !! q = str0.index( key )
                str0[q...(q + key.size)] = "#" * value.size
                str1[q...(q + key.size)] = value
              end
            end
          end
        end
        return str1
      rescue
        return "[#{$!}]"
      end
    end
  end
end