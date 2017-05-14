default['java']['install_flavor'] = "oracle"
default['java']['jdk_version'] = '8'
default['java']['arch'] = kernel['machine'] =~ /x86_64/ ? "x86_64" : "i586"

case platform
when "centos","redhat","fedora"
  default['java']['java_home'] = "/usr/lib/jvm/java"
when "freebsd"
  default['java']['java_home'] = "/usr/local/openjdk#{java['jdk_version']}"
when "arch"
  default['java']['java_home'] = "//usr/lib/jvm/java-#{java['jdk_version']}-openjdk"
else
  default['java']['java_home'] = "/usr/lib/jvm/default-java"
end

default['java']['oracle']['accept_oracle_download_terms'] = true

# jdk6 attributes
# x86_64
default['java']['jdk']['6']['x86_64']['url'] = 'http://download.oracle.com/otn-pub/java/jdk/6u45-b06/jdk-6u45-linux-x64.bin'
default['java']['jdk']['6']['x86_64']['checksum'] = '6b493aeab16c940cae9e3d07ad2a5c5684fb49cf06c5d44c400c7993db0d12e8'

# i586
default['java']['jdk']['6']['i586']['url'] = 'http://download.oracle.com/otn-pub/java/jdk/6u45-b06/jdk-6u45-linux-i586.bin'
default['java']['jdk']['6']['i586']['checksum'] = 'd53b5a2518d80e1d95565f0adda54eee229dc5f4a1d1a3c2f7bf5045b168a357'

# jdk7 attributes
# x86_64
default['java']['jdk']['7']['x86_64']['url'] = 'http://download.oracle.com/otn-pub/java/jdk/7u75-b13/jdk-7u75-linux-x64.tar.gz'
default['java']['jdk']['7']['x86_64']['checksum'] = '6f1f81030a34f7a9c987f8b68a24d139'

# i586
default['java']['jdk']['7']['i586']['url'] = 'http://download.oracle.com/otn-pub/java/jdk/7u75-b13/jdk-7u75-linux-i586.tar.gz'
default['java']['jdk']['7']['i586']['checksum'] = 'e4371a4fddc049eca3bfef293d812b8e'

#jdk8 attributes
# x86_64
default['java']['jdk']['8']['x86_64']['url'] = 'http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz'
default['java']['jdk']['8']['x86_64']['checksum'] = '62b215bdfb48bace523723cdbb2157c665e6a25429c73828a32f00e587301236'

# i586
default['java']['jdk']['8']['i586']['url'] = 'http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-i586.tar.gz'
default['java']['jdk']['8']['i586']['checksum'] = '2012d1c82f74bf830a80dfb5462f555b22271f74e4fc4a5779c7f459dcd0cabf'