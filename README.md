<p align=center>
<img src="https://github.com/misaraty/juliaplus/blob/master/logo.jpg" width=300px height=auto/>
</p>

**Julia+** is a distribution of the Julia programming language for scientific computingin in an offline environment.

Julia v1.8.2 with [CarrierCapture.jl](https://github.com/WMD-group/CarrierCapture.jl), [PyCall.jl](https://github.com/JuliaPy/PyCall.jl) packages, and will be continuously updated.

Runtime environment: Centos 7+, Windows 7/8/10/11.

## Usage

> Centos 7+

* Download JuliaPP from [cloud.189.cn](https://cloud.189.cn/web/share?code=Ab6N3aQFJry2) (access code: byy8), then install openmpi4.1.2 (needed by MPI.jl), 

```bash
tar -zxvf openmpi-4.1.2.tar.gz
./configure --prefix=/home/misaraty/soft/openmpi --enable-static
#./configure --prefix=/home/misaraty/soft/openmpi --enable-static CC=gcc CXX=g++ F77=gfortran FC=gfortran F90=gfortran
make
make install
```

or use the included compiled openmpi in JuliaPP.

* Modify `.bashrc` or `.bash_profile`.

```bash
## julia
##export JULIA_PKG_SERVER=https://mirrors.tuna.tsinghua.edu.cn/julia
export PATH=$PATH:/home/misaraty/soft/julia-1.6.4/bin
export JULIA_DEPOT_PATH="/home/misaraty/soft/julia-1.6.4/.julia"
```

> Windows 7/8/10

* Download [Julia 64-bit (portable)](https://julialang.org/downloads/) and [scripts](https://github.com/misaraty/juliaplus/tree/master/windows).

* Put the scripts into the Julia decompression path, and run `add_path.bat` or `delete_path.bat` as an administrator to add or delete environment variables, respectively.

Warning: The scripts are not suitable for Windows11, because they will report an error `The data being saved is truncated to 1024 characters`.

> Windows 11

* Download [Julia 64-bit (installer)](https://julialang.org/downloads/).

Modify `C:\Users\lenovo\AppData\Local\Programs\Julia-1.8.2\etc\julia\startup.jl`, 

```bash
ENV["HTTP_PROXY"] = "socks5://127.0.0.1:7890"
ENV["HTTPS_PROXY"] = "socks5://127.0.0.1:7890"
```

# Packages

* [CarrierCapture.jl](https://github.com/WMD-group/CarrierCapture.jl)

```bash
using Pkg; Pkg.add(PackageSpec(url="https://github.com/WMD-group/CarrierCapture.jl.git#v0.1.0"))
using Pkg; Pkg.add(PackageSpec(url="https://github.com/WMD-group/CarrierCapture.jl"))
using CarrierCapture
import Pkg; Pkg.add("Plots"); Pkg.add("LaTeXStrings");Pkg.add("DataFrames")
```

* [PyCall.jl](https://github.com/JuliaPy/PyCall.jl)

```bash
using Pkg; Pkg.add("PyCall")
ENV["PYTHON"]="C:/Users/lenovo/anaconda3/python.exe"
using Pkg; Pkg.build("PyCall")
using PyCall
```

## Contact

website: https://www.misaraty.com

email: misaraty@163.com

## Acknowledgement

Thanks to Julia and the third-party packages developers.

