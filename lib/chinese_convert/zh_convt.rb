module Chinese
  class Convert
    def self.zh_convt( arr , str )
      convt_table = Array.new
      File.open( File.dirname(__FILE__) + "/zh_convt").read.scan(/\[(.*?)\]/).each do |group|
        convt_table << Array.new
        group.first.scan(/\{(.*?)\}/).each do |type|
          convt_table.last << Hash.new
          type.first.split(',').each{ |term| convt_table.last.last[ term.split(':').first ] = term.split(':').last }
        end
      end
      begin
        str0 = String.new( str )
        str1 = String.new( str )
        convt_table.each do |group|
          arr.each do |t|
            group[t].each do |key , value|
              while ( q = str0.index( key ) ) != nil
                str0[q...(q + key.size)] = "#" * value.size
                str1[q...(q + key.size)] = value
              end
            end
          end
        end
        return str1
      rescue
        return $!
      end
    end
  end
end