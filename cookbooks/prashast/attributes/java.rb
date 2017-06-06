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


default['java']['mirror_url'] = 'http://download.oracle.com/otn/java/jdk/7u80-b15/jdk-7u80-linux-x64.tar.gz'
default['java']['local_url'] = 'http://10.0.2.2:8081/artifactory/list/libs-release-local/jdk-7u80-linux-x64.tar.gz'

default['java']['jdk_keytool'] = File.join(node['java']['java_home'],'/bin/keytool')
default['java']['jre_truststore'] = File.join(node['java']['java_home'],'/jre/lib/security/cacerts')

