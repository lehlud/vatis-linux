iso:
	mkarchiso -v -w /tmp/vatis_work_dir/ -o vatis_out/ vatis/

run:
	run_archiso -i vatis_out/$(shell ls -t vatis_out | head -n1)

clean:
	rm -rf /tmp/vatis_work_dir/

# TRY TO NOT USE THIS
clean-build-and-run:
	sudo make clean; sudo make iso
	make run