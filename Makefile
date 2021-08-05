BASIC_DESKTOP_PKGS = "gdm\nxfce4"

all:
	mkarchiso -v -w /tmp/vatis_work_dir -o vatis_out vatis

xfce4:
	rm -rf vatis_$@
	cp -rf vatis vatis_$@
	mkdir -p vatis_$@/airootfs/etc/skel/.config
	cp -r configs/$@ vatis_$@/airootfs/etc/skel/.config/
	printf "\n#specific packages\n$@\n" >> vatis_$@/packages.x86_64
	mkarchiso -v -w /tmp/vatis_$@_work_dir -o vatis_out vatis_$@

run:
	run_archiso -i vatis_out/$(shell ls -t vatis_out | head -n1)

clean:
	rm -rf vatis_*
	rm -rf /tmp/vatis_*_work_dir
