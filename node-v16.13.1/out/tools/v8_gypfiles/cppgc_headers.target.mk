# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := cppgc_headers
### Rules for final target.
$(obj).target/tools/v8_gypfiles/cppgc_headers.stamp: TOOLSET := $(TOOLSET)
$(obj).target/tools/v8_gypfiles/cppgc_headers.stamp:  FORCE_DO_CMD
	$(call do_cmd,touch)

all_deps += $(obj).target/tools/v8_gypfiles/cppgc_headers.stamp
# Add target alias
.PHONY: cppgc_headers
cppgc_headers: $(obj).target/tools/v8_gypfiles/cppgc_headers.stamp

# Add target alias to "all" target.
.PHONY: all
all: cppgc_headers
