#/usr/bin/bash

# NATIVE RPMS
fpm -p rubygem-thin-1.3.1-1.x86_64.rpm -n rubygem-thin --iteration 1 -a x86_64 -t rpm -s gem thin
fpm -p rubygem-json-1.6.4-1.x86_64.rpm -n rubygem-json --iteration 1 -a x86_64 -t rpm -s gem json
wget 'http://rubygems.org/downloads/eventmachine-1.0.0.beta.4.gem'
fpm -p rubygem-eventmachine-1.0.0.beta.4-1.x86_64.rpm -n rubygem-eventmachine --iteration 1 -a x86_64 -t rpm -s gem ./eventmachine-1.0.0.beta.4.gem 
wget 'http://rubygems.org/downloads/em-http-request-0.3.0.gem'
fpm -p rubygem-em-http-request-0.3.0-1.x86_64.rpm -n rubygem-em-http-request --iteration 1 -a x86_64 -t rpm -s gem em-http-request-0.3.0.gem
fpm -p rubygem-escape_utils-0.2.4-1.x86_64.rpm -n rubygem-escape_utils --iteration 1 -a x86_64 -t rpm -s gem escape_utils

# NOARCH RPMS
fpm -p rubygem-em-websocket-0.3.6-1.noarch.rpm -n rubygem-em-websocket --iteration 1 -a noarch -t rpm -s gem em-websocket
fpm -p rubygem-addressable-2.2.6-1.noarch.rpm -n rubygem-addressable --iteration 1 -a noarch -t rpm -s gem addressable
fpm -p rubygem-sass-3.1.12-1.noarch.rpm -n rubygem-sass --iteration 1 -a noarch -t rpm -s gem sass
wget 'http://rubygems.org/downloads/amqp-0.7.4.gem'
fpm -p rubygem-amqp-0.7.4-1.noarch.rpm -n rubygem-amqp --iteration 1 -a noarch -t rpm -s gem amqp-0.7.4.gem
fpm -p rubygem-sinatra-1.3.2-1.noarch.rpm -n rubygem-sinatra --iteration 1 -a noarch -t rpm -s gem sinatra
wget 'http://rubygems.org/downloads/rack-1.3.6.gem'
fpm -p rubygem-rack-1.3.6-1.noarch.rpm -n rubygem-rack --iteration 1 -a noarch -t rpm -s gem rack-1.3.6.gem
fpm -p rubygem-rack-protection-1.2.0-1.noarch.rpm -n rubygem-rack-protection --iteration 1 -a noarch -t rpm -s gem rack-protection
fpm -p rubygem-hashie-1.2.0-1.noarch.rpm -n rubygem-hashie --iteration 1 -a noarch -t rpm -s gem hashie
wget 'http://rubygems.org/downloads/cabin-0.1.7.gem'
fpm -p rubygem-cabin-0.1.7-1.noarch.rpm -n rubygem-cabin --iteration 1 -a noarch -t rpm -s gem cabin-0.1.7.gem
fpm -p rubygem-ruby-redis-0.0.2-1.noarch.rpm -n rubygem-ruby-redis --iteration 1 -a noarch -t rpm -s gem ruby-redis
fpm -p rubygem-async_sinatra-0.5.0-1.noarch.rpm -n rubygem-async_sinatra --iteration 1 -a noarch -t rpm -s gem async_sinatra
fpm -p rubygem-tilt-1.3.3-1.noarch.rpm -n rubygem-tilt --iteration 1 -a noarch -t rpm -s gem tilt
fpm -p rubygem-bundler-1.0.21-1.noarch.rpm -n rubygem-bundler --iteration 1 -a noarch -t rpm -s gem bundler
fpm -p rubygem-daemons-1.1.5-1.noarch.rpm -n rubygem-daemons --iteration 1 -a noarch -t rpm -s gem daemons
