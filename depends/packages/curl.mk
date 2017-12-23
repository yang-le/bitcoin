package=curl
$(package)_version=7.57.0
$(package)_download_path=https://curl.haxx.se/download
$(package)_file_name=$(package)-$($(package)_version).tar.gz
$(package)_sha256_hash=7ce35f207562674e71dbada6891b37e3f043c1e7a82915cb9c2a17ad3a9d659b

define $(package)_config_cmds
  $($(package)_autoconf)
endef

define $(package)_build_cmds
  $(MAKE)
endef

define $(package)_stage_cmds
  $(MAKE) DESTDIR=$($(package)_staging_dir) install
endef
