default['kubernetes']['crio']['version']                     = '1.11.2'
default['kubernetes']['crio']['endpoint']                    = '/var/run/crio/crio.sock'
default['kubernetes']['crio']['endpoint_proto']              = 'unix://'
default['kubernetes']['buildah']['version']                  = '1.3'
default['kubernetes']['libpod']['version']                   = '0.8.3'
default['kubernetes']['skopeo']['version']                   = '0.1.30'

default['kubernetes']['checksums']['skopeo']['bionic']       = 'ab58c0bba0db5aebb0a51554d8c56d394fcb947ace652095335d1ae3f2905764'
default['kubernetes']['checksums']['podman']['bionic']       = '805fb2a44642442962aa0ea7dbb06e49e1577ca635377f2b87591ac6d7fcf0cd'
default['kubernetes']['checksums']['conmon']['bionic']       = '8e8bcfa5e7599cba169598fcdb62c05353ddc8a8cca369556bbde590b4593a05'
default['kubernetes']['checksums']['crio']['bionic']         = 'bc3890032f23ae2c897d4f3d434dd2cd8415ca72f0b85126d7b16fd7f279d9ca'
default['kubernetes']['checksums']['buildah']['bionic']      = 'bbd16dee74e1eac148144e33c2880d4321de0a6732456f795255663e9581cbb7'

default['kubernetes']['checksums']['skopeo']['xenial']       = '9170c1128e0e20e1f39f440f8dc38a4b30ca6ca2131661f97ca50f0a0e7ca709'
default['kubernetes']['checksums']['podman']['xenial']       = '9dad3dbef3f60ddda0a0250f0f05671a3dae7da6442de9bb71ba2cbd3bfe348c'
default['kubernetes']['checksums']['conmon']['xenial']       = '115a630ec16d8901244c46ef503403ef4512318ce3c4596e3efa1d949b654df9'
default['kubernetes']['checksums']['crio']['xenial']         = 'a2131217dca4f010046434b06e9ff4a9bef175e48405fc81b8629b3dc7c0e634'
default['kubernetes']['checksums']['buildah']['xenial']      = 'f3fe005b3386b4c2f11270425c96f6841f52dbbeb75582ac4b78ce5fb3943ad0'

default['kubernetes']['crio']['config']['runtime']           = '/usr/local/bin/runc'
default['kubernetes']['crio']['config']['untrusted_runtime'] = '/usr/local/bin/runsc'
default['kubernetes']['crio']['config']['conmon']            = '/usr/local/bin/conmon'
default['kubernetes']['crio']['config']['storage_driver']    = 'aufs'
default['kubernetes']['crio']['config']['stream_port']       = 10010
default['kubernetes']['crio']['config']['runroot']           = '/var/run/containers/storage'
default['kubernetes']['crio']['config']['root']              = '/var/lib/containers/storage'

default['kubernetes']['crio']['config']['runtime']           = '/usr/local/bin/runc'
default['kubernetes']['crio']['config']['untrusted_runtime'] = '/usr/local/bin/runsc'
default['kubernetes']['crio']['config']['conmon']            = '/usr/local/bin/conmon'
default['kubernetes']['crio']['config']['storage_driver']    = 'aufs'
default['kubernetes']['crio']['config']['stream_port']       = 10010
default['kubernetes']['crio']['config']['runroot']           = '/var/run/containers/storage'
default['kubernetes']['crio']['config']['root']              = '/var/lib/containers/storage'
default['kubernetes']['crio']['config']['log_level']         = 'info'

default['kubernetes']['crio']['daemon_flags']['log_format']     = 'text'
default['kubernetes']['crio']['daemon_flags']['profile']        = false
default['kubernetes']['crio']['daemon_flags']['enable_metrics'] = true
default['kubernetes']['crio']['daemon_flags']['metrics_port']   = 9090

default['kubernetes']['crio']['policies']['default'] = [{"type"=>"insecureAcceptAnything"}]
default['kubernetes']['crio']['policies']['transports']['docker-daemon'][''] = [{"type"=>"insecureAcceptAnything"}]

default['kubernetes']['crio']['crictl']['version'] = '1.11.0'
default['kubernetes']['crio']['crictl']['timeout'] = 10
default['kubernetes']['crio']['crictl']['debug']   = false

default['kubernetes']['limits']['nofile']['crio'] = 1048576
default['kubernetes']['limits']['nproc']['crio']  = 1048576
default['kubernetes']['limits']['core']['crio']   = 'infinity'
