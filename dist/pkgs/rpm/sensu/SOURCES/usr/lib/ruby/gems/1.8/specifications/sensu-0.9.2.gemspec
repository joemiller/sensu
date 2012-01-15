# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sensu}
  s.version = "0.9.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sean Porter", "Justin Kolberg"]
  s.date = %q{2012-01-05}
  s.description = %q{A monitoring framework that aims to be simple, malleable, and scalable. Uses the publish/subscribe model.}
  s.email = ["sean.porter@sonian.net", "justin.kolberg@sonian.net"]
  s.executables = ["sensu-api", "sensu-client", "sensu-server"]
  s.files = ["bin/sensu-api", "bin/sensu-client", "bin/sensu-server", "lib/sensu/api.rb", "lib/sensu/client.rb", "lib/sensu/config.rb", "lib/sensu/patches/redis.rb", "lib/sensu/patches/ruby.rb", "lib/sensu/server.rb", "lib/sensu.rb", "sensu.gemspec", "README.org", "MIT-LICENSE.txt"]
  s.homepage = %q{https://github.com/sonian/sensu}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A monitoring framework}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<bundler>, [">= 0"])
      s.add_runtime_dependency(%q<eventmachine>, ["~> 1.0.0.beta.4"])
      s.add_runtime_dependency(%q<amqp>, ["= 0.7.4"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_runtime_dependency(%q<hashie>, [">= 0"])
      s.add_runtime_dependency(%q<cabin>, ["= 0.1.7"])
      s.add_runtime_dependency(%q<ruby-redis>, [">= 0"])
      s.add_runtime_dependency(%q<rack>, ["~> 1.3.4"])
      s.add_runtime_dependency(%q<async_sinatra>, [">= 0"])
      s.add_runtime_dependency(%q<thin>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<em-spec>, [">= 0"])
      s.add_development_dependency(%q<em-http-request>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<eventmachine>, ["~> 1.0.0.beta.4"])
      s.add_dependency(%q<amqp>, ["= 0.7.4"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<hashie>, [">= 0"])
      s.add_dependency(%q<cabin>, ["= 0.1.7"])
      s.add_dependency(%q<ruby-redis>, [">= 0"])
      s.add_dependency(%q<rack>, ["~> 1.3.4"])
      s.add_dependency(%q<async_sinatra>, [">= 0"])
      s.add_dependency(%q<thin>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<em-spec>, [">= 0"])
      s.add_dependency(%q<em-http-request>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<eventmachine>, ["~> 1.0.0.beta.4"])
    s.add_dependency(%q<amqp>, ["= 0.7.4"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<hashie>, [">= 0"])
    s.add_dependency(%q<cabin>, ["= 0.1.7"])
    s.add_dependency(%q<ruby-redis>, [">= 0"])
    s.add_dependency(%q<rack>, ["~> 1.3.4"])
    s.add_dependency(%q<async_sinatra>, [">= 0"])
    s.add_dependency(%q<thin>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<em-spec>, [">= 0"])
    s.add_dependency(%q<em-http-request>, [">= 0"])
  end
end
