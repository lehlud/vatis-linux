all:
	mkarchiso -v -w ~/.vatis_work_dir/ -o vatis_out/ vatis/

run:
	run_archiso -i vatis_out/$(shell ls -t vatis_out | head -n1)

clean:
	rm -rf vatis_* ~/.vatis_work_dir/
