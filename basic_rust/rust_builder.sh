export PATH="$coreutils/bin:$gcc/bin:$rustc/bin"
mkdir $out
rustc -o $out/main $src
