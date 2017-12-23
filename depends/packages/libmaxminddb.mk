package=libmaxminddb
$(package)_version=1.3.1
$(package)_download_path=https://github.com/maxmind/$(package)/releases/download/$($(package)_version)
$(package)_file_name=$(package)-$($(package)_version).tar.gz
$(package)_sha256_hash=5d55a1327dcca5c819a6a7a260afc0d1bd9626824e40073c7564fdb8d91ca186

define $(package)_set_vars
  $(package)_config_opts=--disable-tests
endef

define $(package)_config_cmds
  $($(package)_autoconf)
endef

define $(package)_build_cmds
  $(MAKE)
endef

define $(package)_stage_cmds
  $(MAKE) DESTDIR=$($(package)_staging_dir) install
endef
