Pod::Spec.new do |s|
  s.name                    = "TQNavigationBarUnderLine"
  s.version                 = "0.1.1"
  s.summary                 = "Easy way to set under line Color for iOS UINavigationBar."

  s.description             = <<-DESC
  A UINavigationBar category, set a under line in NavigationBar UI.
                            DESC

  s.homepage                = "https://github.com/TinyQ/TQNavigationBarUnderLine"
  s.license                 = { :type => "MIT", :file => "LICENSE" }
  s.author                  = { "qfu" => "tinyqf@gmial.com" }
  s.ios.deployment_target   = "7.0"
  s.source                  = { :git => "https://github.com/TinyQ/TQNavigationBarUnderLine.git", :tag => "#{s.version}" }
  s.source_files            = "TQNavigationBarUnderLine/Classes/**/*"
end
