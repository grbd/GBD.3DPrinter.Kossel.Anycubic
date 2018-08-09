; homedelta.g
; called to home all towers on a delta printer

G91                       ; relative positioning
G1 S1 X400 Y400 Z400 F1800 ; move all towers to the high end stopping at the endstops (first pass)
G1 S2 X-5 Y-5 Z-5 F1800   ; go down a few mm
G1 S1 X10 Y10 Z10 F180    ; move all towers up once more (second pass)

G1 Z-5 F2000              ; move down a few mm so that the nozzle can be centred
G90                       ; absolute positioning
G1 X0 Y0 F2000            ; move X+Y to the centre
