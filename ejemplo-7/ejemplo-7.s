

.text
.global suma_float


# Para los flotantes se utilizan los registros xmm (son de 128 bits)
# Segun system V:
# xmm0  funcion (xmm0, xmm1, xmm2, ...)  En ensamblador
# float funcion (float1, float2, float3, ...) En lenguaje c
suma_float:
    addss  %xmm1, %xmm0
    ret


# addss: Add scalar single precision (sumar un escalar de precision simple, es decir float)

