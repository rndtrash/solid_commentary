OUTPUT := bin
ES_DIR := ./enterospasm/Quake
SC_DIR := ./solid_commentary
BIN_FILES := $(OUTPUT)/enterospasm \
	$(OUTPUT)/id1/pak0.pak

.PHONY: all enterospasm solid_commentary run clean

all: enterospasm solid_commentary

enterospasm:
	make -C $(ES_DIR)
	mv $(ES_DIR)/enterospasm $(OUTPUT)/

solid_commentary:
	make -C $(SC_DIR)/qc
	make -C $(SC_DIR)
	cp $(SC_DIR)/pak0.pak $(OUTPUT)/id1/pak0.pak

run: all
	$(OUTPUT)/enterospasm -basedir $(shell pwd)/$(OUTPUT)

enterospasm_clean:
	make -C $(ES_DIR) clean

solid_commentary_clean:
	make -C $(SC_DIR) clean

clean: enterospasm_clean solid_commentary_clean
	rm -f $(BIN_FILES)
