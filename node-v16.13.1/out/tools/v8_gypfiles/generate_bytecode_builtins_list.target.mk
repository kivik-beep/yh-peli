# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := generate_bytecode_builtins_list
### Rules for action "generate_bytecode_builtins_list_action":
quiet_cmd__home_kxkivi_yh_peli_node_v16_13_1_tools_v8_gypfiles_v8_gyp_generate_bytecode_builtins_list_target_generate_bytecode_builtins_list_action = ACTION _home_kxkivi_yh_peli_node_v16_13_1_tools_v8_gypfiles_v8_gyp_generate_bytecode_builtins_list_target_generate_bytecode_builtins_list_action $@
cmd__home_kxkivi_yh_peli_node_v16_13_1_tools_v8_gypfiles_v8_gyp_generate_bytecode_builtins_list_target_generate_bytecode_builtins_list_action = LD_LIBRARY_PATH=$(builddir)/lib.host:$(builddir)/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd $(srcdir)/tools/v8_gypfiles; mkdir -p $(obj)/gen/generate-bytecode-output-root/builtins-generated; /usr/bin/python3.10 ../../deps/v8/tools/run.py "$(builddir)/bytecode_builtins_list_generator" "$(obj)/gen/generate-bytecode-output-root/builtins-generated/bytecodes-builtins-list.h"

$(obj)/gen/generate-bytecode-output-root/builtins-generated/bytecodes-builtins-list.h: obj := $(abs_obj)
$(obj)/gen/generate-bytecode-output-root/builtins-generated/bytecodes-builtins-list.h: builddir := $(abs_builddir)
$(obj)/gen/generate-bytecode-output-root/builtins-generated/bytecodes-builtins-list.h: TOOLSET := $(TOOLSET)
$(obj)/gen/generate-bytecode-output-root/builtins-generated/bytecodes-builtins-list.h: $(builddir)/bytecode_builtins_list_generator FORCE_DO_CMD
	$(call do_cmd,_home_kxkivi_yh_peli_node_v16_13_1_tools_v8_gypfiles_v8_gyp_generate_bytecode_builtins_list_target_generate_bytecode_builtins_list_action)

all_deps += $(obj)/gen/generate-bytecode-output-root/builtins-generated/bytecodes-builtins-list.h
action__home_kxkivi_yh_peli_node_v16_13_1_tools_v8_gypfiles_v8_gyp_generate_bytecode_builtins_list_target_generate_bytecode_builtins_list_action_outputs := $(obj)/gen/generate-bytecode-output-root/builtins-generated/bytecodes-builtins-list.h


### Rules for final target.
# Build our special outputs first.
$(obj).target/tools/v8_gypfiles/generate_bytecode_builtins_list.stamp: | $(action__home_kxkivi_yh_peli_node_v16_13_1_tools_v8_gypfiles_v8_gyp_generate_bytecode_builtins_list_target_generate_bytecode_builtins_list_action_outputs)

# Preserve order dependency of special output on deps.
$(action__home_kxkivi_yh_peli_node_v16_13_1_tools_v8_gypfiles_v8_gyp_generate_bytecode_builtins_list_target_generate_bytecode_builtins_list_action_outputs): | $(builddir)/bytecode_builtins_list_generator

$(obj).target/tools/v8_gypfiles/generate_bytecode_builtins_list.stamp: TOOLSET := $(TOOLSET)
$(obj).target/tools/v8_gypfiles/generate_bytecode_builtins_list.stamp: $(builddir)/bytecode_builtins_list_generator FORCE_DO_CMD
	$(call do_cmd,touch)

all_deps += $(obj).target/tools/v8_gypfiles/generate_bytecode_builtins_list.stamp
# Add target alias
.PHONY: generate_bytecode_builtins_list
generate_bytecode_builtins_list: $(obj).target/tools/v8_gypfiles/generate_bytecode_builtins_list.stamp

# Add target alias to "all" target.
.PHONY: all
all: generate_bytecode_builtins_list

