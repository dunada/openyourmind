$template={}
Dir.foreach(File.expand_path('../../app/views/template/', File.dirname(__FILE__)) ) do |file|
	next if file == '.' or file == '..'
	#puts "-"*100
	#puts "Load template #{file}"
	template = YAML.load(File.read(File.expand_path("../../app/views/template/#{file}", File.dirname(__FILE__))))
	$template[file.gsub(".yml","")]=template
end
