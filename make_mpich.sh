export NWCHEM_TARGET=LINUX64
export NWCHEM_MODULES=all
export NWCHEM_TOP=$(pwd)

export USE_MPI=y
export ARMCI_NETWORK=ARMCI
export EXTERNAL_ARMCI_PATH=$HOME/local/lib

# required for NWPW but not otherwise
export USE_MPIF=y
export USE_MPIF4=y


MPI_DIR=/home/kaiming/ANL/installed/stdmpich-ch4
export MPI_LIB="${MPI_DIR}/lib"
export MPI_INCLUDE="${MPI_DIR}/include"

# the following are not necessary if you use CC=mpicc, but that isn't not recommended
MPICH_LIBS="-lmpifort -lmpi"
SYS_LIBS="-ldl -lrt -lpthread"
export LIBMPI="-L${MPI_DIR}/lib -Wl,-rpath -Wl,${MPI_DIR}/lib ${MPICH_LIBS} ${SYS_LIBS}"


export CC=gcc
export FC=gfortran
export F77=gfortran
export BLASOPT="-lopenblas"
#export ENABLE_TPI_PROFILE=1

export NWBINNAME=nwchem_mpich

cd $NWCHEM_TOP/src
make nwchem_config 2>&1|tee $NWCHEM_TOP/nwchem_config.log

rm $NWCHEM_TOP/make.log
touch $NWCHEM_TOP/make.log

#cd $NWCHEM_TOP/src/ddscf && make -j8 2>&1|tee -a $NWCHEM_TOP/make.log
#cd $NWCHEM_TOP/src/nwdft && make -j8 2>&1|tee -a $NWCHEM_TOP/make.log
#cd $NWCHEM_TOP/src/util/profile && make clean && make CDEBUG="-g -O0" FDEBUG="-g -O0" |tee -a $NWCHEM_TOP/make.log
#cd $NWCHEM_TOP/src/util && gmake -j8 2>&1|tee -a $NWCHEM_TOP/make.log
#make clean
echo `pwd`
(make -j 2 64_to_32 && make USE_64TO32=y BLAS_SIZE=4 LDOPTIONS="-pie -rdynamic -pthread" -j 2) 2>&1|tee -a $NWCHEM_TOP/make.log
#make CFLAGS="-g -O0" -j 2 2>&1|tee -a $NWCHEM_TOP/make.log
#cd $NWCHEM_TOP/src && gmake link 2>&1|tee $NWCHEM_TOP/link.log

