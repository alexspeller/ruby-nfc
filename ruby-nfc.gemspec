Gem::Specification.new do |s|
  s.name        = 'ruby-nfc'
  s.version     = '1.1.0'
  s.date        = '2014-10-01'
  s.summary     = "Provides NFC functionality for Ruby"
  s.description = <<-EOF
  	This gem is built on top of libnfc and libfreefare using ffi and supports:
		 * Reading and writing Mifare Classic and Ultralight tags
		 * Android HCE / Blackberry VTE emulated tags
		 * Dual-interface smart cards like MasterCard PayPass or Visa payWave
	EOF

  s.authors     = ["Maxim Chechel"]
  s.email       = 'maximchick@gmail.com'
  s.files       = [
		"./lib/ruby-nfc.rb",
		"./lib/ruby-nfc/nfc.rb",
		"./lib/ruby-nfc/tags/mifare/classic.rb",
		"./lib/ruby-nfc/tags/mifare/tag.rb",
		"./lib/ruby-nfc/tags/mifare/ultralight.rb",
		"./lib/ruby-nfc/tags/isodep.rb",
		"./lib/ruby-nfc/tags/tag.rb",
		"./lib/ruby-nfc/reader.rb",
		"./lib/ruby-nfc/libnfc.rb",
		"./lib/ruby-nfc/apdu/apdu.rb",
		"./lib/ruby-nfc/apdu/request.rb",
		"./lib/ruby-nfc/apdu/response.rb",
		"./LICENSE"
  ]

  s.homepage    = 'https://github.com/maximchick/ruby-nfc'
  s.license       = 'MIT'
  s.requirements << 'libnfc, v1.7.x'
  s.requirements << 'libfreefare'

  s.add_runtime_dependency 'ffi'
  s.add_development_dependency 'minitest'

  s.post_install_message = <<-EOS
  	Don't forget to install libnfc and libfreefare
  	see installation instructions here: 
  	https://github.com/maximchick/ruby-nfc
	EOS
end
