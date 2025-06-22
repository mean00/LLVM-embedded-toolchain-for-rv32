# Define which library variants to build and which flags to use.
# For most variants, the "flash" memory is placed in address range, where
# simulated boards have RAM. This is because code for some tests does not fit
# the real flash.
add_library_variants_for_cpu(
    aarch64a
    COMPILE_FLAGS "-march=armv8-a"
    MULTILIB_FLAGS "--target=aarch64-unknown-none-elf"
    PICOLIBC_BUILD_TYPE "release"
    QEMU_MACHINE "virt"
    QEMU_CPU "cortex-a57"
    BOOT_FLASH_ADDRESS 0x40000000
    BOOT_FLASH_SIZE 0x1000
    FLASH_ADDRESS 0x40001000
    FLASH_SIZE 0xfff000
    RAM_ADDRESS 0x41000000
    RAM_SIZE 0x1000000
    STACK_SIZE 8K
)
# For AArch32, clang uses different defaults for FPU selection than GCC, both
# when "+fp" or "+fp.dp" are used and when no FPU specifier is provided in
# "-march=". Using "-mfpu=" explicitly.
add_library_variants_for_cpu(
    armv4t
    COMPILE_FLAGS "-march=armv4t -mfpu=none"
    MULTILIB_FLAGS "--target=armv4t-unknown-none-eabi -mfpu=none"
    PICOLIBC_BUILD_TYPE "minsize"
    QEMU_MACHINE "none"
    QEMU_CPU "ti925t"
    QEMU_PARAMS "-m 1G"
    BOOT_FLASH_ADDRESS 0x00000000
    BOOT_FLASH_SIZE 0x1000
    FLASH_ADDRESS 0x20000000
    FLASH_SIZE 0x1000000
    RAM_ADDRESS 0x21000000
    RAM_SIZE 0x1000000
    STACK_SIZE 4K
)
add_library_variants_for_cpu(
    armv5te
    COMPILE_FLAGS "-march=armv5te -mfpu=none"
    MULTILIB_FLAGS "--target=armv5e-unknown-none-eabi -mfpu=none"
    PICOLIBC_BUILD_TYPE "minsize"
    QEMU_MACHINE "none"
    QEMU_CPU "arm926"
    QEMU_PARAMS "-m 1G"
    BOOT_FLASH_ADDRESS 0x00000000
    BOOT_FLASH_SIZE 0x1000
    FLASH_ADDRESS 0x20000000
    FLASH_SIZE 0x1000000
    RAM_ADDRESS 0x21000000
    RAM_SIZE 0x1000000
    STACK_SIZE 4K
)
add_library_variants_for_cpu(
    armv6m
    SUFFIX soft_nofp
    COMPILE_FLAGS "-mfloat-abi=soft -march=armv6m -mfpu=none"
    MULTILIB_FLAGS "--target=thumbv6m-unknown-none-eabi -mfpu=none"
    PICOLIBC_BUILD_TYPE "minsize"
    QEMU_MACHINE "mps2-an385"
    BOOT_FLASH_ADDRESS 0x00000000
    BOOT_FLASH_SIZE 0x1000
    FLASH_ADDRESS 0x21000000
    FLASH_SIZE 0x600000
    RAM_ADDRESS 0x21600000
    RAM_SIZE 0xa00000
    STACK_SIZE 4K
)
add_library_variants_for_cpu(
    armv7a
    SUFFIX soft_nofp
    COMPILE_FLAGS "-mfloat-abi=soft -march=armv7a -mfpu=none"
    MULTILIB_FLAGS "--target=armv7-unknown-none-eabi -mfpu=none"
    PICOLIBC_BUILD_TYPE "release"
    QEMU_MACHINE "none"
    QEMU_CPU "cortex-a7"
    QEMU_PARAMS "-m 1G"
    BOOT_FLASH_ADDRESS 0x00000000
    BOOT_FLASH_SIZE 0x1000
    FLASH_ADDRESS 0x20000000
    FLASH_SIZE 0x1000000
    RAM_ADDRESS 0x21000000
    RAM_SIZE 0x1000000
    STACK_SIZE 4K
)
add_library_variants_for_cpu(
    armv7a
    SUFFIX hard_vfpv3_d16
    COMPILE_FLAGS "-mfloat-abi=hard -march=armv7a -mfpu=vfpv3-d16"
    MULTILIB_FLAGS "--target=armv7-unknown-none-eabihf -mfpu=vfpv3-d16"
    PICOLIBC_BUILD_TYPE "release"
    QEMU_MACHINE "none"
    QEMU_CPU "cortex-a8"
    QEMU_PARAMS "-m 1G"
    BOOT_FLASH_ADDRESS 0x00000000
    BOOT_FLASH_SIZE 0x1000
    FLASH_ADDRESS 0x20000000
    FLASH_SIZE 0x1000000
    RAM_ADDRESS 0x21000000
    RAM_SIZE 0x1000000
    STACK_SIZE 4K
)
add_library_variants_for_cpu(
    armv7a
    SUFFIX soft_vfpv3_d16
    COMPILE_FLAGS "-mfloat-abi=softfp -march=armv7a -mfpu=vfpv3-d16"
    MULTILIB_FLAGS "--target=armv7-unknown-none-eabi -mfpu=vfpv3-d16"
    PICOLIBC_BUILD_TYPE "release"
    QEMU_MACHINE "none"
    QEMU_CPU "cortex-a8"
    QEMU_PARAMS "-m 1G"
    BOOT_FLASH_ADDRESS 0x00000000
    BOOT_FLASH_SIZE 0x1000
    FLASH_ADDRESS 0x20000000
    FLASH_SIZE 0x1000000
    RAM_ADDRESS 0x21000000
    RAM_SIZE 0x1000000
    STACK_SIZE 4K
)
add_library_variants_for_cpu(
    armv7r
    SUFFIX soft_nofp
    COMPILE_FLAGS "-mfloat-abi=soft -march=armv7r -mfpu=none"
    MULTILIB_FLAGS "--target=armv7r-unknown-none-eabi -mfpu=none"
    PICOLIBC_BUILD_TYPE "release"
    QEMU_MACHINE "none"
    QEMU_CPU "cortex-r5f"
    QEMU_PARAMS "-m 1G"
    BOOT_FLASH_ADDRESS 0x00000000
    BOOT_FLASH_SIZE 0x1000
    FLASH_ADDRESS 0x20000000
    FLASH_SIZE 0x1000000
    RAM_ADDRESS 0x21000000
    RAM_SIZE 0x1000000
    STACK_SIZE 4K
)
add_library_variants_for_cpu(
    armv7r
    SUFFIX hard_vfpv3xd
    COMPILE_FLAGS "-mfloat-abi=hard -march=armv7r -mfpu=vfpv3xd"
    MULTILIB_FLAGS "--target=armv7r-unknown-none-eabihf -mfpu=vfpv3xd"
    PICOLIBC_BUILD_TYPE "release"
    QEMU_MACHINE "none"
    QEMU_CPU "cortex-r5f"
    QEMU_PARAMS "-m 1G"
    BOOT_FLASH_ADDRESS 0x00000000
    BOOT_FLASH_SIZE 0x1000
    FLASH_ADDRESS 0x20000000
    FLASH_SIZE 0x1000000
    RAM_ADDRESS 0x21000000
    RAM_SIZE 0x1000000
    STACK_SIZE 4K
)
add_library_variants_for_cpu(
    armv7r
    SUFFIX hard_vfpv3_d16
    COMPILE_FLAGS "-mfloat-abi=hard -march=armv7r -mfpu=vfpv3-d16"
    MULTILIB_FLAGS "--target=armv7r-unknown-none-eabihf -mfpu=vfpv3-d16"
    PICOLIBC_BUILD_TYPE "release"
    QEMU_MACHINE "none"
    QEMU_CPU "cortex-r5f"
    QEMU_PARAMS "-m 1G"
    BOOT_FLASH_ADDRESS 0x00000000
    BOOT_FLASH_SIZE 0x1000
    FLASH_ADDRESS 0x20000000
    FLASH_SIZE 0x1000000
    RAM_ADDRESS 0x21000000
    RAM_SIZE 0x1000000
    STACK_SIZE 4K
)
add_library_variants_for_cpu(
    armv7r
    SUFFIX soft_vfpv3_d16
    COMPILE_FLAGS "-mfloat-abi=softfp -march=armv7r -mfpu=vfpv3-d16"
    MULTILIB_FLAGS "--target=armv7r-unknown-none-eabi -mfpu=vfpv3-d16"
    PICOLIBC_BUILD_TYPE "release"
    QEMU_MACHINE "none"
    QEMU_CPU "cortex-r5f"
    QEMU_PARAMS "-m 1G"
    BOOT_FLASH_ADDRESS 0x00000000
    BOOT_FLASH_SIZE 0x1000
    FLASH_ADDRESS 0x20000000
    FLASH_SIZE 0x1000000
    RAM_ADDRESS 0x21000000
    RAM_SIZE 0x1000000
    STACK_SIZE 4K
)
add_library_variants_for_cpu(
    armv7m
    SUFFIX soft_fpv4_sp_d16
    COMPILE_FLAGS "-mfloat-abi=softfp -march=armv7m -mfpu=fpv4-sp-d16"
    MULTILIB_FLAGS "--target=thumbv7m-unknown-none-eabi -mfpu=fpv4-sp-d16"
    PICOLIBC_BUILD_TYPE "minsize"
    QEMU_MACHINE "mps2-an386"
    QEMU_CPU "cortex-m4"
    BOOT_FLASH_ADDRESS 0x00000000
    BOOT_FLASH_SIZE 0x1000
    FLASH_ADDRESS 0x21000000
    FLASH_SIZE 0x600000
    RAM_ADDRESS 0x21600000
    RAM_SIZE 0xa00000
    STACK_SIZE 4K
)
add_library_variants_for_cpu(
    armv7m
    SUFFIX hard_fpv4_sp_d16
    COMPILE_FLAGS "-mfloat-abi=hard -march=armv7m -mfpu=fpv4-sp-d16"
    MULTILIB_FLAGS "--target=thumbv7m-unknown-none-eabihf -mfpu=fpv4-sp-d16"
    PICOLIBC_BUILD_TYPE "minsize"
    QEMU_MACHINE "mps2-an386"
    QEMU_CPU "cortex-m4"
    BOOT_FLASH_ADDRESS 0x00000000
    BOOT_FLASH_SIZE 0x1000
    FLASH_ADDRESS 0x21000000
    FLASH_SIZE 0x600000
    RAM_ADDRESS 0x21600000
    RAM_SIZE 0xa00000
    STACK_SIZE 4K
)
add_library_variants_for_cpu(
    armv7m
    SUFFIX hard_fpv5_d16
    COMPILE_FLAGS "-mfloat-abi=hard -march=armv7m -mfpu=fpv5-d16"
    MULTILIB_FLAGS "--target=thumbv7m-unknown-none-eabihf -mfpu=fpv5-d16"
    PICOLIBC_BUILD_TYPE "minsize"
    QEMU_MACHINE "mps2-an500"
    QEMU_CPU "cortex-m7"
    BOOT_FLASH_ADDRESS 0x00000000
    BOOT_FLASH_SIZE 0x1000
    FLASH_ADDRESS 0x60000000
    FLASH_SIZE 0x600000
    RAM_ADDRESS 0x60600000
    RAM_SIZE 0xa00000
    STACK_SIZE 4K
)
# When no -mfpu=none is specified, the compiler internally adds all other
# possible fpu settings before searching for matching variants. So for the
# no-fpu variant to win, it has to be in multilab.yaml after all other
# fpu variants. The order of variants in multilab.yaml depends on the order
# of the add_library_variant calls. So the add_library_variant that adds
# the soft_nofp for armv7m is placed after all other armv7m variants.
add_library_variants_for_cpu(
    armv7m
    SUFFIX soft_nofp
    COMPILE_FLAGS "-mfloat-abi=soft -march=armv7m -mfpu=none"
    MULTILIB_FLAGS "--target=thumbv7m-unknown-none-eabi -mfpu=none"
    PICOLIBC_BUILD_TYPE "minsize"
    QEMU_MACHINE "mps2-an386"
    QEMU_CPU "cortex-m4"
    BOOT_FLASH_ADDRESS 0x00000000
    BOOT_FLASH_SIZE 0x1000
    FLASH_ADDRESS 0x21000000
    FLASH_SIZE 0x600000
    RAM_ADDRESS 0x21600000
    RAM_SIZE 0xa00000
    STACK_SIZE 4K
)
add_library_variants_for_cpu(
    armv8m.main
    SUFFIX soft_nofp
    COMPILE_FLAGS "-mfloat-abi=soft -march=armv8m.main -mfpu=none"
    MULTILIB_FLAGS "--target=thumbv8m.main-unknown-none-eabi -mfpu=none"
    PICOLIBC_BUILD_TYPE "release"
    QEMU_MACHINE "mps2-an505"
    QEMU_CPU "cortex-m33"
    BOOT_FLASH_ADDRESS 0x10000000
    BOOT_FLASH_SIZE 0x1000
    FLASH_ADDRESS 0x80000000
    FLASH_SIZE 0x600000
    RAM_ADDRESS 0x80600000
    RAM_SIZE 0xa00000
    STACK_SIZE 4K
)
add_library_variants_for_cpu(
    armv8m.main
    SUFFIX hard_fp
    COMPILE_FLAGS "-mfloat-abi=hard -march=armv8m.main -mfpu=fpv5-sp-d16"
    MULTILIB_FLAGS "--target=thumbv8m.main-unknown-none-eabihf -mfpu=fpv5-sp-d16"
    PICOLIBC_BUILD_TYPE "release"
    QEMU_MACHINE "mps2-an505"
    QEMU_CPU "cortex-m33"
    BOOT_FLASH_ADDRESS 0x10000000
    BOOT_FLASH_SIZE 0x1000
    FLASH_ADDRESS 0x80000000
    FLASH_SIZE 0x600000
    RAM_ADDRESS 0x80600000
    RAM_SIZE 0xa00000
    STACK_SIZE 4K
)
add_library_variants_for_cpu(
    armv8.1m.main
    SUFFIX soft_nofp_nomve
    COMPILE_FLAGS "-mfloat-abi=soft -march=armv8.1m.main+nomve -mfpu=none"
    MULTILIB_FLAGS "--target=thumbv8.1m.main-unknown-none-eabi -mfpu=none"
    PICOLIBC_BUILD_TYPE "release"
    QEMU_MACHINE "mps3-an547"
    QEMU_CPU "cortex-m55"
    BOOT_FLASH_ADDRESS 0x00000000
    BOOT_FLASH_SIZE 512K
    FLASH_ADDRESS 0x60000000
    FLASH_SIZE 0x1000000
    RAM_ADDRESS 0x61000000
    RAM_SIZE 0x1000000
    STACK_SIZE 4K
)
add_library_variants_for_cpu(
    armv8.1m.main
    SUFFIX hard_fp_nomve
    COMPILE_FLAGS "-mfloat-abi=hard -march=armv8.1m.main+nomve -mfpu=fp-armv8-fullfp16-sp-d16"
    MULTILIB_FLAGS "--target=thumbv8.1m.main-unknown-none-eabihf -march=thumbv8.1m.main+fp16 -mfpu=fp-armv8-fullfp16-sp-d16"
    PICOLIBC_BUILD_TYPE "release"
    QEMU_MACHINE "mps3-an547"
    QEMU_CPU "cortex-m55"
    BOOT_FLASH_ADDRESS 0x00000000
    BOOT_FLASH_SIZE 512K
    FLASH_ADDRESS 0x60000000
    FLASH_SIZE 0x1000000
    RAM_ADDRESS 0x61000000
    RAM_SIZE 0x1000000
    STACK_SIZE 4K
)
add_library_variants_for_cpu(
    armv8.1m.main
    SUFFIX hard_fpdp_nomve
    COMPILE_FLAGS "-mfloat-abi=hard -march=armv8.1m.main+nomve -mfpu=fp-armv8-fullfp16-d16"
    MULTILIB_FLAGS "--target=thumbv8.1m.main-unknown-none-eabihf -march=thumbv8.1m.main+fp16 -mfpu=fp-armv8-fullfp16-d16"
    PICOLIBC_BUILD_TYPE "release"
    QEMU_MACHINE "mps3-an547"
    QEMU_CPU "cortex-m55"
    BOOT_FLASH_ADDRESS 0x00000000
    BOOT_FLASH_SIZE 512K
    FLASH_ADDRESS 0x60000000
    FLASH_SIZE 0x1000000
    RAM_ADDRESS 0x61000000
    RAM_SIZE 0x1000000
    STACK_SIZE 4K
)
add_library_variants_for_cpu(
    armv8.1m.main
    SUFFIX hard_nofp_mve
    COMPILE_FLAGS "-mfloat-abi=hard -march=armv8.1m.main+mve -mfpu=none"
    MULTILIB_FLAGS "--target=thumbv8.1m.main-unknown-none-eabihf -march=thumbv8.1m.main+mve -mfpu=none"
    PICOLIBC_BUILD_TYPE "release"
    QEMU_MACHINE "mps3-an547"
    QEMU_CPU "cortex-m55"
    BOOT_FLASH_ADDRESS 0x00000000
    BOOT_FLASH_SIZE 512K
    FLASH_ADDRESS 0x60000000
    FLASH_SIZE 0x1000000
    RAM_ADDRESS 0x61000000
    RAM_SIZE 0x1000000
    STACK_SIZE 4K
)


