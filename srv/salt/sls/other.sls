

zfs_conf:
  file.managed:
    - name: /etc/modprobe.d/zfs.conf
    - source: salt://conf_files_grid/conf_files/zfs.conf
    - force: True

start_ttys:
  file.managed:
    - name: /etc/init/start-ttys.conf
    - source: salt://conf_files_grid/conf_files/start-ttys.conf
    - force: True

fractalmenu:
  file.managed:
    - name: /etc/init/fractalmenu.conf
    - source: salt://conf_files_grid/conf_files/fractalmenu.conf
    - force: True

libgfapi:
  cmd.run:
    - cwd: /tmp
    - name: |
        cd /tmp
        wget -c http://192.168.1.151/fr_software/libgfapi-python.tar.gz
        tar xzf libgfapi-python.tar.gz
        cd libgfapi-python
        python setup.py install
    - shell: /bin/bash
    - timeout: 300

commands:
  cmd.script:
    - source: salt://conf_files/gridcell_commands.sh
