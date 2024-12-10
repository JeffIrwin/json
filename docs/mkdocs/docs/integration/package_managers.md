# Package Managers

Throughout this page, we will describe how to compile the example file `example.cpp` below.

```cpp
--8<-- "integration/example.cpp"
```

When executed, this program should create output similar to

```json
--8<-- "examples/meta.output"
```

## Homebrew

!!! abstract "Summary"

    formula: [**`nlohmann-json`**](https://formulae.brew.sh/formula/nlohmann-json)

    - :octicons-tag-24: Availalbe versions: current version and development version (with `--HEAD` parameter)
    - :octicons-rocket-24: The formula is updated with every release.
    - :octicons-person-24: Maintainer: Niels Lohmann
    - :octicons-file-24: File issues at the [Homebrew issue tracker](https://github.com/Homebrew/homebrew-core/issues)
    - :octicons-question-24: [Homebrew website](https://brew.sh)

If you are using OS X and [Homebrew](http://brew.sh), you can install the library with

```sh
brew install nlohmann-json
```

The header can be used directly in your code or via CMake.

??? example "Example: Raw compilation"

    1. Create the following file:

        ```cpp title="example.cpp"
        --8<-- "integration/homebrew/example.cpp"
        ```

    2. Install the package:

        ```sh
        brew install nlohmann-json
        ```

    3. Compile the code and pass the Homebrew prefix to the include path such that the library can be found:

        ```sh
        c++ example.cpp -I$(brew --prefix nlohmann-json)/include -std=c++11 -o example
        ```

??? example "Example: CMake"

    1. Create the following files:

        ```cpp title="example.cpp"
        --8<-- "integration/homebrew/example.cpp"
        ```

        ```cmake title="CMakeLists.txt"
        --8<-- "integration/homebrew/CMakeLists.txt"
        ```

    2. Install the package:

        ```sh
        brew install nlohmann-json
        ```

    3. Compile the code and pass the Homebrew prefix to CMake to find installed packages via `#!cmake find_package`:

        ```sh
        CMAKE_PREFIX_PATH=$(brew --prefix) cmake -S . -B build
        cmake --build build
        ```

## Meson

!!! abstract "Summary"

    wrap: **`nlohmann_json`**

    - :octicons-tag-24: Availalbe versions: current version and select older versions (see
      [WrapDB](https://mesonbuild.com/Wrapdb-projects.html))
    - :octicons-rocket-24: The package is update automatically from file
      [`meson.build`](https://github.com/nlohmann/json/blob/develop/meson.build).
    - :octicons-file-24: File issues at the [library issue tracker](https://github.com/nlohmann/json/issues)
    - :octicons-question-24: [Meson website](https://mesonbuild.com/index.html)

If you are using the [Meson Build System](http://mesonbuild.com), add this source tree as a [meson subproject](https://mesonbuild.com/Subprojects.html#using-a-subproject). You may also use the
`include.zip` published in this project's [Releases](https://github.com/nlohmann/json/releases) to reduce the size of the vendored source tree. Alternatively,
you can get a wrap file by downloading it from [Meson WrapDB](https://mesonbuild.com/Wrapdb-projects.html), or simply
use

```shell
meson wrap install nlohmann_json
```

Please see the Meson project for any issues regarding the packaging.

The provided `meson.build` can also be used as an alternative to CMake for installing `nlohmann_json` system-wide in
which case a pkg-config file is installed. To use it, simply have your build system require the `nlohmann_json`
pkg-config dependency. In Meson, it is preferred to use the
[`dependency()`](https://mesonbuild.com/Reference-manual.html#dependency) object with a subproject fallback, rather than
using the subproject directly.

??? example "Example: Wrap"

    1. Create the following files:

        ```ini title="meson.build"
        --8<-- "integration/meson/meson.build"
        ```

        ```cpp title="example.cpp"
        --8<-- "integration/meson/example.cpp"
        ```

    2. Use the Meson WrapDB to fetch the nlohmann/json wrap:

        ```shell
        mkdir subprojects
        meson wrap install nlohmann_json
        ```

    3. Build:

        ```shell
        meson setup build
        meson compile -C build
        ```

## Bazel

!!! abstract "Summary"

    use `http_archive`, `git_repository`, or `local_repository`

    - :octicons-tag-24: Any version, as version is specified in `WORKSPACE` file
    - :octicons-file-24: File issues at the [library issue tracker](https://github.com/nlohmann/json/issues)
    - :octicons-question-24: [Bazel website](https://bazel.build)

This repository provides a [Bazel](https://bazel.build/) `WORKSPACE.bazel` and a corresponding `BUILD.bazel` file. Therefore, this
repository can be referenced by workspace rules such as `http_archive`, `git_repository`, or `local_repository` from
other Bazel workspaces. To use the library you only need to depend on the target `@nlohmann_json//:json` (e.g., via
`deps` attribute).

??? example

    1. Create the following files:

        ```ini title="BUILD"
        --8<-- "integration/bazel/BUILD"
        ```

        ```ini title="WORKSPACE"
        --8<-- "integration/bazel/WORKSPACE"
        ```

        ```cpp title="example.cpp"
        --8<-- "integration/bazel/example.cpp"
        ```

    2. Build and run:

        ```shell
        bazel build //:main
        bazel run //:main
        ```

## Conan

!!! abstract "Summary"

    recipe: [**`nlohmann_json`**](https://conan.io/center/recipes/nlohmann_json)

    - :octicons-tag-24: Availalbe versions: current version and older versions (see
      [Conan Center](https://conan.io/center/recipes/nlohmann_json))
    - :octicons-rocket-24: The package is update automatically via
      [this recipe](https://github.com/conan-io/conan-center-index/tree/master/recipes/nlohmann_json).
    - :octicons-file-24: File issues at the [Conan Center issue tracker](https://github.com/conan-io/conan-center-index/issues)
    - :octicons-question-24: [Conan website](https://conan.io)

If you are using [Conan](https://www.conan.io/) to manage your dependencies, merely add `nlohmann_json/x.y.z` to your `conanfile`'s
requires, where `x.y.z` is the release version you want to use.

??? example

    1. Create the following files:

        ```ini title="Conanfile.txt"
        --8<-- "integration/conan/Conanfile.txt"
        ```

        ```cmake title="CMakeLists.txt"
        --8<-- "integration/conan/CMakeLists.txt"
        ```

        ```cpp title="example.cpp"
        --8<-- "integration/conan/example.cpp"
        ```

    2. Call Conan:

        ```sh
        conan install . --output-folder=build --build=missing
        ```

    3. Build:

        ```sh
        cmake -S . -B build -DCMAKE_TOOLCHAIN_FILE="conan_toolchain.cmake" -DCMAKE_BUILD_TYPE=Release
        cmake --build build
        ```

## Spack

!!! abstract "Summary"

    package: [**`nlohmann-json`**](https://packages.spack.io/package.html?name=nlohmann-json)

    - :octicons-tag-24: Availalbe versions: current version and older versions (see
      [Spack package](https://packages.spack.io/package.html?name=nlohmann-json))
    - :octicons-rocket-24: The formula is updated with every release.
    - :octicons-person-24: Maintainer: [Axel Huebl](https://github.com/ax3l)
    - :octicons-file-24: File issues at the [Spack issue tracker](https://github.com/spack/spack/issues)
    - :octicons-question-24: [Spack website](https://spack.io)

If you are using [Spack](https://www.spack.io/) to manage your dependencies, you can use the
[`nlohmann-json` package](https://packages.spack.io/package.html?name=nlohmann-json) via

```shell
spack install nlohmann-json
```

Please see the [Spack project](https://github.com/spack/spack) for any issues regarding the packaging.

??? example

    1. Create the following files:

        ```cmake title="CMakeLists.txt"
        --8<-- "integration/spack/CMakeLists.txt"
        ```

        ```cpp title="example.cpp"
        --8<-- "integration/spack/example.cpp"
        ```

    2. Install the library:

        ```sh
        spack install nlohmann-json
        ```

    3. Load the environment for your Spack-installed packages:

        ```sh
        spack load nlohmann-json
        ```

    4. Build the project with CMake:

        ```sh
        cmake -S . -B build -DCMAKE_PREFIX_PATH=$(spack location -i nlohmann-json)
        cmake --build build
        ```

## Hunter

!!! abstract "Summary"

    package: [**`nlohmann_json`**](https://hunter.readthedocs.io/en/latest/packages/pkg/nlohmann_json.html)

    - :octicons-tag-24: Availalbe versions: current version and older versions (see
      [Hunter package](https://hunter.readthedocs.io/en/latest/packages/pkg/nlohmann_json.html))
    - :octicons-rocket-24: The formula is updated with every release.
    - :octicons-file-24: File issues at the [Hunter issue tracker](https://github.com/cpp-pm/hunter/issues)
    - :octicons-question-24: [Hunter website](https://hunter.readthedocs.io/en/latest/)

If you are using [Hunter](https://github.com/cpp-pm/hunter) on your project for external dependencies, then you can use
the [nlohmann_json package](https://hunter.readthedocs.io/en/latest/packages/pkg/nlohmann_json.html) via

```cmake
hunter_add_package(nlohmann_json)
```

Please see the  Hunter project for any issues regarding the packaging.

??? example

    1. Create the following files:

        ```cmake title="CMakeLists.txt"
        --8<-- "integration/hunter/CMakeLists.txt"
        ```

        ```cpp title="example.cpp"
        --8<-- "integration/hunter/example.cpp"
        ```

    2. Download required files

        ```shell
        mkdir cmake
        wget https://raw.githubusercontent.com/cpp-pm/gate/master/cmake/HunterGate.cmake -O cmake/HunterGate.cmake
        ```

    3. Build the project with CMake:

        ```shell
        cmake -S . -B build
        cmake --build build
        ```

## Buckaroo

If you are using [Buckaroo](https://buckaroo.pm), you can install this library's module with `buckaroo add github.com/buckaroo-pm/nlohmann-json`. There is a demo repo [here](https://github.com/njlr/buckaroo-nholmann-json-example).

!!! warning

    The module is outdated as the respective [repository](https://github.com/buckaroo-pm/nlohmann-json) has not been
    updated in years.

## vcpkg

!!! abstract "Summary"

    package: [**`nlohmann-json`**](https://github.com/Microsoft/vcpkg/tree/master/ports/nlohmann-json)

    - :octicons-tag-24: Availalbe versions: current version
    - :octicons-rocket-24: The formula is updated with every release.
    - :octicons-file-24: File issues at the [vcpkg issue tracker](https://github.com/microsoft/vcpkg/issues)
    - :octicons-question-24: [vcpkg website](https://vcpkg.io/)

If you are using [vcpkg](https://github.com/Microsoft/vcpkg/) on your project for external dependencies, then you can
install the [nlohmann-json package](https://github.com/Microsoft/vcpkg/tree/master/ports/nlohmann-json) with

```shell
vcpkg install nlohmann-json
```

and follow the then displayed descriptions. Please see the vcpkg project for any issues regarding the packaging.

??? example

    1. Create the following files:

        ```cmake title="CMakeLists.txt"
        --8<-- "integration/vcpkg/CMakeLists.txt"
        ```
    
        ```cpp title="example.cpp"
        --8<-- "integration/vcpkg/example.cpp"
        ```

    2. Install package:

        ```sh
        vcpkg install nlohmann-json
        ```

    3. Build:

        ```sh
        cmake -S . -B build -DCMAKE_TOOLCHAIN_FILE=$VCPKG_ROOT/scripts/buildsystems/vcpkg.cmake
        cmake --build build
        ```

## cget

!!! abstract "Summary"

    package: [**`nlohmann/json`**](https://github.com/pfultz2/cget-recipes/blob/master/recipes/nlohmann/json/package.txt)

    - :octicons-tag-24: Availalbe versions: current version and older versions
    - :octicons-rocket-24: The formula is updated with every release.
    - :octicons-file-24: File issues at the [cget issue tracker](https://github.com/pfultz2/cget-recipes/issues)
    - :octicons-question-24: [cget website](https://cget.readthedocs.io/)

If you are using [cget](http://cget.readthedocs.io/en/latest/), you can install the latest `master` version with

```shell
cget install nlohmann/json
```

A specific version can be installed with `cget install nlohmann/json@v3.11.3`. Also, the multiple header version can be
installed by adding the `-DJSON_MultipleHeaders=ON` flag (i.e., `cget install nlohmann/json -DJSON_MultipleHeaders=ON`).

??? example

    1. Create the following files:

        ```cmake title="CMakeLists.txt"
        --8<-- "integration/vcpkg/CMakeLists.txt"
        ```
    
        ```cpp title="example.cpp"
        --8<-- "integration/vcpkg/example.cpp"
        ```

    2. Initialize cget

        ```shell
        cget init
        ```
 
    3. Install the library

        ```shell
        cget install nlohmann/json
        ```

    4. Build

        ```shell
        cmake -S . -B build -DCMAKE_TOOLCHAIN_FILE=cget/cget/cget.cmake
        cmake --build build
        ```

## CocoaPods

If you are using [CocoaPods](https://cocoapods.org), you can use the library by adding pod `"nlohmann_json", '~>3.1.2'` to your podfile (see [an example](https://bitbucket.org/benman/nlohmann_json-cocoapod/src/master/)). Please file issues [here](https://bitbucket.org/benman/nlohmann_json-cocoapod/issues?status=new&status=open).

## NuGet

If you are using [NuGet](https://www.nuget.org), you can use the package [nlohmann.json](https://www.nuget.org/packages/nlohmann.json/). Please check [this extensive description](https://github.com/nlohmann/json/issues/1132#issuecomment-452250255) on how to use the package. Please file issues [here](https://github.com/hnkb/nlohmann-json-nuget/issues).

## Conda

If you are using [conda](https://conda.io/), you can use the package [nlohmann_json](https://github.com/conda-forge/nlohmann_json-feedstock) from [conda-forge](https://conda-forge.org) executing `conda install -c conda-forge nlohmann_json`. Please file issues [here](https://github.com/conda-forge/nlohmann_json-feedstock/issues).

## MSYS2

If you are using [MSYS2](http://www.msys2.org/), you can use the [mingw-w64-nlohmann-json](https://packages.msys2.org/base/mingw-w64-nlohmann-json) package, just type `pacman -S mingw-w64-i686-nlohmann-json` or `pacman -S mingw-w64-x86_64-nlohmann-json` for installation. Please file issues [here](https://github.com/msys2/MINGW-packages/issues/new?title=%5Bnlohmann-json%5D) if you experience problems with the packages.

:material-update: The [package](https://packages.msys2.org/base/mingw-w64-nlohmann-json) is updated automatically.

## MacPorts

If you are using [MacPorts](https://ports.macports.org), execute `sudo port install nlohmann-json` to install the [nlohmann-json](https://ports.macports.org/port/nlohmann-json/) package.

:material-update: The [package](https://ports.macports.org/port/nlohmann-json/) is updated automatically.

## build2

If you are using [`build2`](https://build2.org), you can use the [`nlohmann-json`](https://cppget.org/nlohmann-json) package from the public repository <http://cppget.org> or directly from the [package's sources repository](https://github.com/build2-packaging/nlohmann-json). In your project's `manifest` file, just add `depends: nlohmann-json` (probably with some [version constraints](https://build2.org/build2-toolchain/doc/build2-toolchain-intro.xhtml#guide-add-remove-deps)). If you are not familiar with using dependencies in `build2`, [please read this introduction](https://build2.org/build2-toolchain/doc/build2-toolchain-intro.xhtml).
Please file issues [here](https://github.com/build2-packaging/nlohmann-json) if you experience problems with the packages.

:material-update: The [package](https://cppget.org/nlohmann-json) is updated automatically.

## wsjcpp

If you are using [`wsjcpp`](http://wsjcpp.org), you can use the command `wsjcpp install "https://github.com/nlohmann/json:develop"` to get the latest version. Note you can change the branch ":develop" to an existing tag or another branch.

:material-update: wsjcpp reads directly from the [GitHub repository](https://github.com/nlohmann/json) and is always up-to-date.

## CPM.cmake

If you are using [`CPM.cmake`](https://github.com/TheLartians/CPM.cmake), you can check this [`example`](https://github.com/TheLartians/CPM.cmake/tree/master/examples/json). After [adding CPM script](https://github.com/TheLartians/CPM.cmake#adding-cpm) to your project, implement the following snippet to your CMake:

```cmake
CPMAddPackage("gh:nlohmann/json@3.11.3")
```

??? example

    1. Download CPM.cmake

    ```shell
    mkdir -p cmake
    wget -O cmake/CPM.cmake https://github.com/cpm-cmake/CPM.cmake/releases/latest/download/get_cpm.cmake
    ```

    2. Build

    ```shell
    cmake -S . -B build
    cmake --build build
    ```
