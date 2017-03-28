package 'tomcat' do
  action :install
end

package 'tomcat-webapps' do
  action :install
end

package 'tomcat-admin-webapps' do
  action :install
end

service 'tomcat' do
  action [ :enable, :start ]
  only_if do File.exist?('/usr/share/tomcat/webapps/ROOT/index.jsp') 
end

service 'tomcat' do
  action [ :stop]
end
