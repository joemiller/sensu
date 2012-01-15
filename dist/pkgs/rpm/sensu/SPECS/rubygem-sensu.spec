Name: rubygem-sensu
Version: 0.9.2
Release: 1
Summary: A monitoring framework that aims to be simple, malleable, and scalable. Uses the publish/subscribe model.
BuildArch: noarch
AutoReqProv: no

Group: Languages/Development/Ruby
License: MIT
URL: https://github.com/sonian/sensu
Source0:  %{_sourcedir}/%{name}-%{version}.tar.gz
BuildRoot: %(mktemp -ud %{_tmppath}/%{name}-%{version}-%{release}-XXXXXX)
Requires: rubygem-eventmachine >= 1.0.0.beta.4, rubygem-eventmachine < 1.0.0.1.0, rubygem-amqp = 0.7.4, rubygem-json >= 0, rubygem-hashie >= 0, rubygem-cabin = 0.1.7, rubygem-ruby-redis-portertech >= 0, rubygem-rack >= 1.3.4, rubygem-rack < 1.4.0, rubygem-async_sinatra >= 0, rubygem-thin >= 0

%description
A monitoring framework that aims to be simple, malleable, and scalable. Uses the publish/subscribe model.

%prep
# noop

%build
# noop

%pre
# Install package - add user accounts
if [ $1 -eq 1 ]; then
  # create sensu group
  if ! getent group sensu >/dev/null; then
          /usr/sbin/groupadd -r sensu
  fi

  # create sensu user
  if ! getent passwd sensu >/dev/null; then
        /usr/sbin/useradd -r -g sensu -d /home/sensu \
            -s /bin/bash -c "Sensu" sensu
  fi
fi

%preun
# Delete package - stop the server
if [ $1 -eq 0 ]; then
  /usr/sbin/userdel sensu
fi

%install
# some rpm implementations delete the build dir and then recreate it by
# default, for some reason. Whatever, let's work around it.
mkdir -p $RPM_BUILD_ROOT
cd $RPM_BUILD_ROOT
tar -zxf %SOURCE0

%clean
rm -rf $RPM_BUILD_ROOT

%files
%defattr(-,root,root,-)
/usr/lib/ruby/gems/1.8
/usr/bin
/etc/init.d/sensu-server
/etc/init.d/sensu-client
/etc/init.d/sensu-api
%defattr(-,sensu,sensu,-)
/etc/sensu
/var/log/sensu
/var/run/sensu
%changelog
