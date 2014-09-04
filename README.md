# RmDigest

Simple gem to provide MD5, SHA1, and SHA256 digest functionality. It uses ObjC library, included in ```vendor``` directory. Use instead of the 

## Installation

Add this line to your application's Gemfile:

    gem 'rm-digest'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rm-digest

## Usage

```
digestSHA1String = RmDigest::SHA1.hexdigest('some string')
digestSHA256String = RmDigest::SHA256.hexdigest('some string')
digestMD51String = RmDigest::MD5.hexdigest('some string')
```

Gem provides byte based digests

```
digestSHA1Bytes = RmDigest::SHA1.digest('some string')
digestSHA256Bytes = RmDigest::SHA256.digest('some string')
digestMD51Bytes = RmDigest::MD5.digest('some string')
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
