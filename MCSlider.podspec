Pod::Spec.new do |s|
  s.name             = "MCSlider"
  s.version          = "0.1.0"
  s.summary          = "MCSlider"
  s.homepage         = "https://github.com/mateuscampos/MCSlider"
  s.license          = 'MIT'
  s.author           = {"Mateus De Campos" => "mateus.campos@yahoo.com.br" }
  s.source           = { :git => "https://github.com/mateuscampos/MCSlider.git", :tag => s.version.to_s }
  s.platform         = :ios, '7.0'
  s.requires_arc     = true

  s.subspec "MCSlider" do |core|
    core.source_files = 'MCSlider/MCSlider/MCSlider/**/*'
    core.public_header_files = 'MCSlider/MCSlider/MCSlider/*.h'
  end

end
