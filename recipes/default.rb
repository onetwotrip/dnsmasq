package 'dnsmasq'

if(node[:dnsmasq][:enable_dns])
  include_recipe 'dnsmasq::dns'
end

if(node[:dnsmasq][:enable_dhcp])
  include_recipe 'dnsmasq::dhcp'
end

service 'dnsmasq' do
  action [:enable, :start]
end
