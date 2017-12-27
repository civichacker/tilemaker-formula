Install build dependencies:
  pkg.installed:
    - refresh: True
    - fromrepo: stable
    - pkgs:
      - build-essential
      - liblua5.1-0
      - liblua5.1-0-dev
      - libprotobuf-dev
      - libsqlite3-dev
      - protobuf-compiler
      - shapelib
      - libshp-dev
      - libboost-all-dev
      - awscli

Clone tilemaker repo:
  git.latest:
    - name: https://github.com/systemed/tilemaker.git
    - target: /tmp/tilemaker
    - rev: 514a0a078ed0c0045a48e620de145610a58b1736

Build and install tilemaker:
  cmd.run:
    - cwd: /tmp/tilemaker
    - name: make install
