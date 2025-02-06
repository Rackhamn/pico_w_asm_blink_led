# Pico W ARMv6-M Assembly Led Blink  

Rebuild of the pico-sdk led blink example using ARMv6-M (Thumb) assembly.  

Build using:  
```c
// if no pico-sdk enviroment path exists:
    export PATH="/path-to-your-pico-sdk/:$PATH"

// then:
mkdir build & cd build
cmake ..
make
```

Output:  
./build/blink_asm.uf2  
