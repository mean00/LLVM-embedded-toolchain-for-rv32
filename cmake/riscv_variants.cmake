
#
#
#
add_library_variants_for_cpu(
    rv32imc-zicsr-zifencei
    SUFFIX soft_nofp
    COMPILE_FLAGS "-march=rv32imc_zicsr_zifencei -mabi=ilp32"
    MULTILIB_FLAGS "--target=riscv32imc-unknown-elf -march=rv32imc_zicsr_zifencei -mabi=ilp32 "
    PICOLIBC_BUILD_TYPE "minsize"
    QEMU_MACHINE "riscv32"
    QEMU_CPU "rv32"
)

#
#
#


add_library_variants_for_cpu(
    rv32imac-zicsr-zifencei
    SUFFIX soft_nofp
    COMPILE_FLAGS "-march=rv32imac_zicsr_zifencei -mabi=ilp32"
    MULTILIB_FLAGS "--target=riscv32imac-unknown-elf -march=rv32imac_zicsr_zifencei -mabi=ilp32 "
    PICOLIBC_BUILD_TYPE "minsize"
    QEMU_MACHINE "riscv32"
    QEMU_CPU "rv32"
)


#
#
#

add_library_variants_for_cpu(
    rv32imafc-zicsr-zifencei
    SUFFIX hard_fp
    COMPILE_FLAGS "-march=rv32imafc_zicsr_zifencei -mabi=ilp32f"
    MULTILIB_FLAGS "--target=riscv32imafc-unknown-elf -march=rv32imafc_zicsr_zifencei -mabi=ilp32f "
    PICOLIBC_BUILD_TYPE "minsize"
    QEMU_MACHINE "riscv32"
    QEMU_CPU "rv32"
)











