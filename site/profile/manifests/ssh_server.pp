class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC43MoFISyFHxrE9oMfwvuQPiy9x3G9xFzzI8CPCkHccQ6adhSRdTGL9XTDBZ8/KuUGjPCA1MYY0x+4ji97ZPyHf57WU3sgiUboMIKE26nFRAQKaZr8OwSbW/KaiolDNe0os21TYvBXvOK2+rOBjCUOt4wjMKFkM+77TbOTUDCb0G7U/m5iUBGeibAfv9xm3KlrhsLOQmfUGEqbjJ4yEQVlkVjdXPWqWKRP7BWABQEWCDIQdbsu6BDFDxjt7y0Re5ZljbdYLUsme2lsBRztioDX/WC7Bd28cOaet/hToqqSxOm+O0iHp8yvJGEkjgPEV6saznqjNVEVYw8MKHALns6r',
  }  
}
