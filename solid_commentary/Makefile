# TODO: add more files
INPUT := default.cfg \
	quake.rc \
	gfx.wad \
	progs.dat \
	gfx/*.lmp
#	gfx/palette.lmp \
#	gfx/colormap.lmp \
#	gfx/conback.lmp \
#	gfx/qplaque.lmp \
#	gfx/ttl_main.lmp \
#	gfx/ttl_cstm.lmp \
#	gfx/ttl_sgl.lmp \
#	gfx/mainmenu.lmp \
#	gfx/menudot1.lmp \
#	gfx/menudot2.lmp \
#	gfx/menudot3.lmp \
#	gfx/menudot4.lmp \
#	gfx/menudot5.lmp \
#	gfx/menudot6.lmp \
#	gfx/p_load.lmp \
#	gfx/p_save.lmp \
#	gfx/p_multi.lmp \
#	gfx/p_option.lmp \
#	gfx/box_bl.lmp \
#	gfx/box_bm.lmp \
#	gfx/box_br.lmp \
#	gfx/box_ml.lmp \
#	gfx/box_mm.lmp \
#	gfx/box_mm2.lmp \
#	gfx/box_mr.lmp \
#	gfx/box_tl.lmp \
#	gfx/box_tm.lmp \
#	gfx/box_tr.lmp \
#	gfx/sp_menu.lmp \
#	gfx/loading.lmp

OUTPUT := pak0.pak

$(OUTPUT): $(INPUT)
	./mkpak.sh $(INPUT) > $(OUTPUT)

.PHONY: clean
clean:
	make -C qc/ clean
	rm -f $(OUTPUT)

