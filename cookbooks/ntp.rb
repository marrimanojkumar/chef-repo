tckage 'ntp' do
  action :install
end

 template "/etc/ntp.conf" do
   source "ntp.conf.erb"
     owner "root"
       group "root"
         mode 00644
           action :create
           end

            Start and enable
           service 'ntpd' do
             action [:enable, :restart]
             end
