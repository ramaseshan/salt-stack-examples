demopackages:
  pkgrepo.managed:
    - humanname: Demo Packages
    - baseurl: http://192.168.0.104/packages
    - dist: demopackages

python.packages:
  pkg.installed:
    - fromrepo: demopackages
    - pkgs:
      - python-devel
      - python-pip
      - python-virtualenv

vim.packages:
  pkg.installed:
    - fromrepo: demopackages
    - pkgs:
      - vim-common
      - vim-enhanced

utilities:
  pkg.installed:
    - fromrepo: demopackages
    - pkgs:
      - wget

/opt/example.com:
  virtualenv.managed:
    - system_site_packages: False

commands:
  cmd.script:
    - source: salt://shell/demo_commands.sh
