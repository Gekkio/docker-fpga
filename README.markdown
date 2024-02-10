# Dockerized FPGA toolchain experiments

Special thanks to the author of the [Dockerized FPGA toolchains](https://section5.ch/index.php/2017/01/20/669/) blog post.

## Lattice Diamond

Basic dockerization scripts for Lattice Diamond 3.13 can be found in `lattice-diamond/`.

### Initial setup

1. Run `docker build -t diamond .`
2. Download and copy these files into the `work` folder:
   - `diamond_3_13-base-56-2-x86_64-linux.rpm`
3. Copy your license.dat to the `work` folder
4. Run `./install.sh`

This should build a docker image containing a working Lattice Diamond installation set up for *your current user*.

### Usage

Run `./run.sh` to start Lattice Diamond. The script sets up X11 forwarding, mounts a persistent volume at `/home/youruser`, mounts your host-side home directory as a writable volume at `/home/youruser/home`.

### Debugging Lattice Diamond problems

Run `./root.sh` to start a root bash shell.

## Lattice iCEcube2

Basic dockerization scripts for Lattice iCEcube2 2020.12 can be found in `lattice-icecube2/`.

### Initial setup

1. Run `docker build -t icecube2 .`
2. Download and copy these files into the `work` folder:
   - `iCEcube2setup_Dec_10_2020_2012` (not the zip file you can download but the installer file inside it!)
3. Copy your license.dat to the `work` folder
4. Run `./install.sh`
5. **Install iCEcube2 to `/opt/docker-fpga/icecube2` when prompted**. Ignore the warning about the directory already existing, skip the license file selection, and uncheck the box "Launch iCEcube2 now".

This should build a docker image containing a working Lattice iCEcube2 installation set up for *your current user*.

### Usage

Run `./run.sh` to start Lattice iCEcube2. The script sets up X11 forwarding, mounts a persistent volume at `/home/youruser`, mounts your host-side home directory as a writable volume at `/home/youruser/home`.

### Debugging Lattice iCEcube2 problems

Run `./root.sh` to start a root bash shell.

## License

These scripts are released into the public domain according to [The Unlicense](http://unlicense.org).

Note: Lattice Diamond and iCEcube2 themselves are proprietary licensed software, and you as the user are responsible for following their license agreements.
