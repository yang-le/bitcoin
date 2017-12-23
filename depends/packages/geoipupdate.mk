package=geoipupdate
$(package)_version=2.5.0
$(package)_download_path=https://github.com/maxmind/geoipupdate/releases/download/v$($(package)_version)
$(package)_file_name=$(package)-$($(package)_version).tar.gz
$(package)_sha256_hash=5119fd0e338cd083e886228b26679c64bcbaade8a815be092aecf865a610ab26
$(package)_dependencies=zlib curl

define $(package)_preprocess_cmds
  ./bootstrap
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
