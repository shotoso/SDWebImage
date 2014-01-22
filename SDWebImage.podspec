Pod::Spec.new do |s|
  s.name = 'SDWebImage'
  s.version = '4.0'
  s.platform = :ios, '6.0'
  s.license = 'MIT'
  s.summary = 'Asynchronous image downloader with cache support with an UIImageView category.'
  s.homepage = 'https://github.com/rs/SDWebImage'
  s.author = { 'Olivier Poitrey' => 'rs@dailymotion.com' }
  s.source = { :git => 'https://github.com/shotoso/SDWebImage.git', :branch => 'current' }

  s.description = 'This library provides a category for UIImageView with support for remote '      \
                  'images coming from the web. It provides an UIImageView category adding web '    \
                  'image and cache management to the Cocoa Touch framework, an asynchronous '      \
                  'image downloader, an asynchronous memory + disk image caching with automatic '  \
                  'cache expiration handling, a guarantee that the same URL won\'t be downloaded ' \
                  'several times, a guarantee that bogus URLs won\'t be retried again and again, ' \
                  'and performances!'

  s.requires_arc = true
  s.framework = 'ImageIO'
  
  s.default_subspec = 'Core'

  s.subspec 'Core' do |core|
    core.source_files = 'SDWebImage/{NS,SD,UI}*.{h,m}'
  end
end
