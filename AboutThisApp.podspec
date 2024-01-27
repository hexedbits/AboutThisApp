Pod::Spec.new do |s|
   s.name = 'AboutThisApp'
   s.version = '2.0.0'
   s.license = 'MIT'

   s.summary = 'A standard, customizable "About This App" panel for any Mac app'
   s.homepage = 'https://github.com/hexedbits/AboutThisApp'
   s.documentation_url = 'https://hexedbits.github.io/AboutThisApp'
   s.social_media_url = 'https://www.jessesquires.com'
   s.author = 'Jesse Squires'

   s.source = { :git => 'https://github.com/hexedbits/AboutThisApp.git', :tag => s.version }
   s.source_files = 'Sources/*.swift'

   s.swift_version = '5.9'
   s.osx.deployment_target = '11.0'
   s.requires_arc = true
end
