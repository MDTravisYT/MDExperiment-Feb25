echo %date% %time% > time.txt

IF NOT EXIST OUT MKDIR OUT
asm68k /k /m /o ws+ /o op+ /o os+ /o ow+ /o oz+ /o oaq+ /o osq+ /o omq+ /o ae- /o v+ /o c+ /p /e __DEBUG__=1 SRC/MAIN.S, OUT/MD0225.BIN >OUT/MD0225.LOG, OUT/MD0225.SYM, OUT/MD0225.LST
convsym OUT/MD0225.SYM OUT/MD0225.BIN -a

del time.txt