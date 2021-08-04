all:
	mkarchiso -v -w work_dir -o vatis_out vatis

clean:
	rm -rf work_dir