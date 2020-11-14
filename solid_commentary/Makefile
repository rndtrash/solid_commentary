# TODO: add more files
INPUT := default.cfg \
	quake.rc \
	gfx.wad \
	progs.dat \
	gfx/palette.lmp \
	gfx/colormap.lmp \
	gfx/conback.lmp

OUTPUT := pak0.pak

$(OUTPUT): $(INPUT)
	./mkpak.sh $(INPUT) > $(OUTPUT)

.PHONY: clean
clean:
	make -C qc/ clean
	rm -f $(OUTPUT)

