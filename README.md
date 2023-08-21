# Algencan C/C++/CMake setup

#### Beforehand settings

Make sure to have the environment variable `ALGENCAN_LIB` properly configured, such as below.

```sh
export ALGENCAN_LIB=/opt/algencan/lib/
```

## _C_

```sh
cd c/
gcc -O3 main.c -L${ALGENCAN_LIB} -lalgencan -lgfortran -lm -o algencan
./algencan
```

## _C++_

```sh
cd cpp/
g++ -O3 main.cpp -L${ALGENCAN_LIB} -std=c++20 -lalgencan -lgfortran -lm -o algencanpp
./algencan
```
## _CMake_

When using CMake, there is no need for setting the environment variable `ALGENCAN_LIB`,
since the `FindALGENCAN` will load it automatically.

```sh
cd cmake/
mkdir build
cd build
cmake ..
make
./main
```

