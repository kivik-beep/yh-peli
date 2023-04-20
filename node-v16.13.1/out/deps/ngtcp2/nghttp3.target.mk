# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := nghttp3
DEFS_Debug := \
	'-D_U_=' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_GLIBCXX_USE_CXX11_ABI=1' \
	'-D__STDC_FORMAT_MACROS' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DBUILDING_NGHTTP3' \
	'-DNGHTTP3_STATICLIB' \
	'-DHAVE_ARPA_INET_H' \
	'-DHAVE_NETINET_IN_H' \
	'-DNGTCP2_STATICLIB' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++14

INCS_Debug := \
	-I$(srcdir)/deps/ngtcp2/nghttp3/lib/includes \
	-I$(srcdir)/deps/ngtcp2/nghttp3/lib \
	-I$(srcdir)/deps/ngtcp2 \
	-I$(srcdir)/deps/ngtcp2/ngtcp2/lib/includes \
	-I$(srcdir)/deps/ngtcp2/ngtcp2/crypto/includes

DEFS_Release := \
	'-D_U_=' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_GLIBCXX_USE_CXX11_ABI=1' \
	'-D__STDC_FORMAT_MACROS' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DBUILDING_NGHTTP3' \
	'-DNGHTTP3_STATICLIB' \
	'-DHAVE_ARPA_INET_H' \
	'-DHAVE_NETINET_IN_H' \
	'-DNGTCP2_STATICLIB'

# Flags passed to all source files.
CFLAGS_Release := \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-O3 \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++14

INCS_Release := \
	-I$(srcdir)/deps/ngtcp2/nghttp3/lib/includes \
	-I$(srcdir)/deps/ngtcp2/nghttp3/lib \
	-I$(srcdir)/deps/ngtcp2 \
	-I$(srcdir)/deps/ngtcp2/ngtcp2/lib/includes \
	-I$(srcdir)/deps/ngtcp2/ngtcp2/crypto/includes

OBJS := \
	$(obj).target/$(TARGET)/deps/ngtcp2/nghttp3/lib/nghttp3_buf.o \
	$(obj).target/$(TARGET)/deps/ngtcp2/nghttp3/lib/nghttp3_conn.o \
	$(obj).target/$(TARGET)/deps/ngtcp2/nghttp3/lib/nghttp3_conv.o \
	$(obj).target/$(TARGET)/deps/ngtcp2/nghttp3/lib/nghttp3_debug.o \
	$(obj).target/$(TARGET)/deps/ngtcp2/nghttp3/lib/nghttp3_err.o \
	$(obj).target/$(TARGET)/deps/ngtcp2/nghttp3/lib/nghttp3_frame.o \
	$(obj).target/$(TARGET)/deps/ngtcp2/nghttp3/lib/nghttp3_gaptr.o \
	$(obj).target/$(TARGET)/deps/ngtcp2/nghttp3/lib/nghttp3_http.o \
	$(obj).target/$(TARGET)/deps/ngtcp2/nghttp3/lib/nghttp3_idtr.o \
	$(obj).target/$(TARGET)/deps/ngtcp2/nghttp3/lib/nghttp3_ksl.o \
	$(obj).target/$(TARGET)/deps/ngtcp2/nghttp3/lib/nghttp3_map.o \
	$(obj).target/$(TARGET)/deps/ngtcp2/nghttp3/lib/nghttp3_mem.o \
	$(obj).target/$(TARGET)/deps/ngtcp2/nghttp3/lib/nghttp3_pq.o \
	$(obj).target/$(TARGET)/deps/ngtcp2/nghttp3/lib/nghttp3_qpack.o \
	$(obj).target/$(TARGET)/deps/ngtcp2/nghttp3/lib/nghttp3_qpack_huffman.o \
	$(obj).target/$(TARGET)/deps/ngtcp2/nghttp3/lib/nghttp3_qpack_huffman_data.o \
	$(obj).target/$(TARGET)/deps/ngtcp2/nghttp3/lib/nghttp3_range.o \
	$(obj).target/$(TARGET)/deps/ngtcp2/nghttp3/lib/nghttp3_rcbuf.o \
	$(obj).target/$(TARGET)/deps/ngtcp2/nghttp3/lib/nghttp3_ringbuf.o \
	$(obj).target/$(TARGET)/deps/ngtcp2/nghttp3/lib/nghttp3_str.o \
	$(obj).target/$(TARGET)/deps/ngtcp2/nghttp3/lib/nghttp3_stream.o \
	$(obj).target/$(TARGET)/deps/ngtcp2/nghttp3/lib/nghttp3_tnode.o \
	$(obj).target/$(TARGET)/deps/ngtcp2/nghttp3/lib/nghttp3_vec.o \
	$(obj).target/$(TARGET)/deps/ngtcp2/nghttp3/lib/nghttp3_version.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64

LIBS :=

$(obj).target/deps/ngtcp2/libnghttp3.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/deps/ngtcp2/libnghttp3.a: LIBS := $(LIBS)
$(obj).target/deps/ngtcp2/libnghttp3.a: TOOLSET := $(TOOLSET)
$(obj).target/deps/ngtcp2/libnghttp3.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink_thin)

all_deps += $(obj).target/deps/ngtcp2/libnghttp3.a
# Add target alias
.PHONY: nghttp3
nghttp3: $(obj).target/deps/ngtcp2/libnghttp3.a

# Add target alias to "all" target.
.PHONY: all
all: nghttp3

