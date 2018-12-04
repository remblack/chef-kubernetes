default['kubernetes']['container_runtime']                  = 'docker'
default['kubernetes']['roles']['master']                    = 'kubernetes_master'
default['kubernetes']['roles']['node']                      = 'kubernetes_node'
default['kubernetes']['install_via']                        = 'systemd' # other possible values are: static_pods
default['kubernetes']['databag']                            = 'kubernetes'
default['kubernetes']['version']                            = 'v1.13.0'
default['kubernetes']['keep_versions']                      = 3
default['kubernetes']['image']                              = 'gcr.io/google_containers/hyperkube'
default['kubernetes']['interface']                          = 'eth1'
default['kubernetes']['enable_firewall']                    = true
default['kubernetes']['register_as']                        = 'ip'
default['kubernetes']['proxy_mode']                         = 'iptables' # other possible values are: ipvs
default['kubernetes']['use_sdn']                            = true
default['kubernetes']['sdn']                                = 'weave'
default['kubernetes']['master']                             = '127.0.0.1'
default['kubernetes']['cluster_name']                       = 'kubernetes'
default['kubernetes']['cluster_dns']                        = ['10.222.222.222']
default['kubernetes']['cluster_domain']                     = 'kubernetes.local'
default['kubernetes']['cluster_cidr']                       = '192.168.0.0/16'
default['kubernetes']['node_cidr_mask_size']                = 24
default['kubernetes']['use_cluster_dns_systemwide']         = false
default['kubernetes']['ssl']['keypairs']                    = %w(apiserver ca)
default['kubernetes']['ssl']['ca']['public_key']            = '/etc/kubernetes/ssl/ca.pem'
default['kubernetes']['ssl']['ca']['private_key']           = '/etc/kubernetes/ssl/ca-key.pem'
default['kubernetes']['ssl']['apiserver']['public_key']     = '/etc/kubernetes/ssl/apiserver.pem'
default['kubernetes']['ssl']['apiserver']['private_key']    = '/etc/kubernetes/ssl/apiserver-key.pem'
default['kubernetes']['kubeconfig']                         = '/etc/kubernetes/kubeconfig.yaml'
default['kubernetes']['tls_cert_file']                      = '/etc/kubernetes/ssl/apiserver.pem'
default['kubernetes']['tls_private_key_file']               = '/etc/kubernetes/ssl/apiserver-key.pem'
default['kubernetes']['client_ca_file']                     = '/etc/kubernetes/ssl/ca.pem'
default['kubernetes']['requestheader_client_ca_file']       = '/etc/kubernetes/ssl/ca.pem'
default['kubernetes']['service_account_key_file']           = '/etc/kubernetes/ssl/ca-key.pem'
default['kubernetes']['cluster_signing_cert_file']          = '/etc/kubernetes/ssl/ca.pem'
default['kubernetes']['cluster_signing_key_file']           = '/etc/kubernetes/ssl/ca-key.pem'
default['kubernetes']['token_auth']                         = false
default['kubernetes']['token_auth_file']                    = '/etc/kubernetes/known_tokens.csv'
default['kubernetes']['docker']['endpoint']                 = 'unix:///var/run/docker.sock'
default['kubernetes']['cgroupdriver']                       = 'cgroupfs'
default['kubernetes']['audit']['enabled']                   = true
default['kubernetes']['audit']['log_path']                  = '/var/log/kubernetes/audit.log'
default['kubernetes']['audit']['log_format']                = 'json' # Known formats are legacy,json.
default['kubernetes']['audit']['log_mode']                  = 'blocking' # Known modes are batch,blocking.
default['kubernetes']['audit']['log_maxbackup']             = 3
default['kubernetes']['audit']['log_maxsize']               = 10
default['kubernetes']['audit']['policy_file']               = '/etc/kubernetes/audit-policy.yaml'
default['kubernetes']['feature_gates']                      = {
  'VolumeSubpathEnvExpansion' => true,
}
default['kubernetes']['packages']['storage_url']            = "https://storage.googleapis.com/kubernetes-release/release/#{node['kubernetes']['version']}/bin/linux/amd64/"
default['kubernetes']['checksums']['apiserver']             = '35435acba70dcd08c932da7bff1ae7496271408d9f0b9185d40b8778e4cf5316'
default['kubernetes']['checksums']['controller-manager']    = '9c5a00dfb076b70cca07a6e707556cbef2644b043d1bbdaaebceb342675c5cef'
default['kubernetes']['checksums']['proxy']                 = '9cc411626db178c0736b9d22c335c4a34a3d63a9f95b99c20f668bf14aacf1d6'
default['kubernetes']['checksums']['scheduler']             = '0b4cd468291a8d534928a63fb8eb7369fca095d8b7ac4a1138c96b9e8d4df493'
default['kubernetes']['checksums']['kubectl']               = '4314fb34e46be9b5558eea014060d8283a82074b33366e4163e5afaa69ddae23'
default['kubernetes']['checksums']['kubelet']               = '62d1e7e1017a0a3491a719e5693cd86b4b7f9b7312ca0e06638f4a73c3c062a0'
default['kubernetes']['addon_manager']['version']           = 'v8.6'
default['kubernetes']['multimaster']['access_via']          = 'haproxy' # other possible values are: direct, dns
default['kubernetes']['multimaster']['haproxy_url']         = '127.0.0.1'
default['kubernetes']['multimaster']['haproxy_port']        = 6443
default['kubernetes']['multimaster']['dns_name']            = ''
default['kubernetes']['encryption']                         = 'aescbc'
default['kubernetes']['cni']['version']                     = '0.6.0'
default['kubernetes']['cni']['plugins_version']             = '0.7.1'
default['kubernetes']['cni']['plugins'] = {
  'bridge'	=>true,
  'dhcp'	=>true,
  'flannel'	=>true,
  'host-device'	=>true,
  'host-local'	=>true,
  'ipvlan'	=>true,
  'loopback'	=>true,
  'macvlan'	=>true,
  'portmap'	=>true,
  'ptp'	        =>true,
  'sample'	=>true,
  'tuning'	=>true,
  'vlan'	=>true,
}
default['kubernetes']['node']['packages'] = {
  'iptables'            => true,
  'ebtables'            => true,
  'socat'               => true,
  'ethtool'             => true,
  'kmod'                => true,
  'tcpd'                => true,
  'dbus'                => true,
  'apt-transport-https' => true,
  'conntrack'           => true,
}
