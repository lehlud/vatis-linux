BASIC_DESKTOP_PKGS = "gdm\nxfce4"

all:
	mkarchiso -v -w /tmp/vatis_work_dir -o vatis_out vatis

run:
	run_archiso -i vatis_out/$(shell ls -t vatis_out | head -n1)

clean:
	rm -rf /tmp/vatis_*_work_dir
