# Dockerized FPGA toolchain experiments

## Lattice Diamond

Basic dockerization scripts for Lattice Diamond 3.13 can be found in
`lattice-diamond/`.

Special thanks to the author of the [Dockerized FPGA
toolchains](https://section5.ch/index.php/2017/01/20/669/) blog post.

### Initial setup

1. Run `docker build -t diamond .`
2. Download and copy these files into the `work` folder:
   - `diamond_3_13-base-56-2-x86_64-linux.rpm`
3. Copy your license.dat to the `work` folder
4. Run `./install.sh`

This should build a docker image containing a working Lattice Diamond
installation set up for *your current user*.

### Usage

Run `./run.sh` to start Lattice Diamond. The script sets up X11 forwarding,
mounts a persistent volume at `/home/youruser`, mounts your host-side home
directory as a writable volume at `/home/youruser/home`.

### Debugging Lattice Diamond problems

Run `./root.sh` to start a root bash shell.

## License

These scripts are released into the public domain according to [The
Unlicense](http://unlicense.org).

Note: Lattice Diamond itself is proprietary licensed software, and you as the
user are responsible for following its license agreement.
