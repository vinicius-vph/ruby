class FileParser
    def to_binary_file(string)
        data_file = File.new("data/data.txt", "w+")

        splitted_content = string.split(';')
        
        converted_content = splitted_content.map {|n| n.to_i.to_s(2)}
        
        data_file.puts converted_content
        
        data_file.close 
    end
end
