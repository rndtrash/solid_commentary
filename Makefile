OUTPUT := bin
QS_DIR := ./quakespasm/Quake
SC_DIR := ./solid_commentary
BIN_FILES := $(OUTPUT)/quakespasm \
	$(OUTPUT)/id1/pak0.pak

.PHONY: all quakespasm solid_commentary run clean

all: quakespasm solid_commentary

quakespasm:
	make -C $(QS_DIR)
	mv $(QS_DIR)/quakespasm $(OUTPUT)/

solid_commentary:
	make -C $(SC_DIR)/qc
	make -C $(SC_DIR)
	cp $(SC_DIR)/pak0.pak $(OUTPUT)/id1/pak0.pak

run: all
	$(OUTPUT)/quakespasm -basedir $(shell pwd)/$(OUTPUT)

quakespasm_clean:
	make -C $(QS_DIR) clean

solid_commentary_clean:
	make -C $(SC_DIR) clean

clean: quakespasm_clean solid_commentary_clean
	rm -f $(BIN_FILES)
