require 'safe_yaml/load'

POSTS_DIR = '_posts/*.md'
OUTPUT_YAML = '_data/tags.yml'

def has_yaml_header?(file)
  !!(File.open(file, 'rb') { |f| f.read(5) } =~ /\A---\r?\n/) rescue false
end

alltags = Hash.new(0)
Dir.glob(POSTS_DIR) do |item|
  next if not has_yaml_header?(item)
  hash = SafeYAML.load_file((item))
  hash['tags'].each { |tag| alltags[tag] += 1 }
end

alltags = alltags.to_a #convert to array
alltags.sort!{|a,b| b[1]<=>a[1]} #sort by highest frequency
alltags.collect!{ |i| i[0] } #get only the tag name

puts "all tags: #{alltags}"
File.open(OUTPUT_YAML, 'w') {|f| f.write(alltags.to_yaml) }
puts "wrote yaml to #{OUTPUT_YAML}"
