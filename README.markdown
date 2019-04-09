# Dockerized FPGA toolchain experiments

## Lattice Diamond

Basic dockerization scripts for Lattice Diamond 3.10 SP3 can be found in
`lattice-diamond/`.

Special thanks to the author of the [Dockerized FPGA
toolchains](https://section5.ch/index.php/2017/01/20/669/) blog post.

### Initial setup

1. `docker build -t diamond .`
2. Download and copy `diamond_3_10-base_x64-111-2-x86_64-linux.rpm` and
   `diamond_3_10-sp3_x64-144-3-x86_64-linux.rpm` to the work folder
3. Copy your license.dat to the work folder
4. `./install.sh`

This should build a docker image containing a working Lattice Diamond 3.10 SP3
installation set up for *your current user*.

### Usage

Run `./run.sh` to start Lattice Diamond. The script sets up X11 forwarding and
mounts your home directory as a volume.

### Debugging Lattice Diamond problems

Run `./root.sh` to start a root bash shell. Note: any changes you do to the
image are *not retained*.

## License

These scripts are released into the public domain according to [The
Unlicense](http://unlicense.org).

Note: Lattice Diamond itself is proprietary licensed software, and you as the
user are responsible for following its license agreement.
