demopackages:
  pkgrepo.managed:
    - humanname: Demo Packages
    - baseurl: http://172.16.10.192/packages
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
