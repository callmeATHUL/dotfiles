#!/bin/bash

# Simple animated ASCII for "firefly" like a screensaver effect

frames=(
"FIREFLY"
"F I R E F L Y"
"F  I  R  E  F  L  Y"
"F   I   R   E   F   L   Y"
"F    I    R    E    F    L    Y"
"F     I     R     E     F     L     Y"
"F      I      R      E      F      L      Y"
"F       I       R       E       F       L       Y"
"F        I        R        E        F        L        Y"
"F         I         R         E         F         L         Y"
"F          I          R          E          F          L          Y"
"F           I           R           E           F           L           Y"
"F            I            R            E            F            L            Y"
"F             I             R             E             F             L             Y"
"F              I              R              E              F              L              Y"
"F               I               R               E               F               L               Y"
"F                I                R                E                F                L                Y"
"F                 I                 R                 E                 F                 L                 Y"
"F                  I                  R                  E                  F                  L                  Y"
"F                   I                   R                   E                   F                   L                   Y"
)

# Get current second for animation
sec=$(date +%S)
index=$(( sec % ${#frames[@]} ))

echo "${frames[$index]}"