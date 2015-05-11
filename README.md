# Motion::IconGenerator

Are you tired of spending hours creating all of the different icon versions you need for your app?

**Well, dry your eyes little-one**.

motion-icon_generator effortlessly generates all of the iOS icon versions you'll ever need.

## Installation

You'll need to install imagemagick first:

``` bash
brew install imagemagick
```

Then add this line to your application's Gemfile:

```ruby
gem 'motion-icon_generator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install motion-icon_generator
    
and add it to your `Rakefile`:
   
    require 'motion/icon_generator'

## Usage

Usage is super-easy:

1. Create a template icon image and save it as resources/icon-template.png. This should be about 1024x1024 pixels.
2. run this rake task to create your icons `rake icons:generate`. After a few glorious seconds you should see a new directory filled with icons called simply "icons/"

## Configuration

You can also set the following environment variables to change the default behaviour:

### Template image name/path

    rake icons:generate TEMPLATE="~/Desktop/my_template.png"

### Target directory name

    rake icons:generate TARGET="resources" # we do this, but it's naughty!
    
### Adding extra icon types.

Icons are defined in [icons.yaml](lib/motion/icon_generator/icons.yaml). If you'd like to add your own custom icons on a per-app basis, create a file named `config/icons.yaml` and stick some YAML in there.

If you see an icon type that we're missing, please create a pull request or an issue.  

## Contributing

We would really appreciate if someone could contribute the default icon sizes for Android.

1. Fork it ( https://github.com/KatanaCode/motion-icon_generator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Acknowledgements

This was based partly on [https://github.com/spren9er/s9icongen](https://github.com/spren9er/s9icongen) by [@spren9er](https://github.com/spren9er) 

By [Katana Code: web developers, mobile app developers, nice guys](http://katanacode.com/tools?utm_source=GitHub&utm_medium=README&utm_campaign=motion-icon_generator
)
