
void printb(char _ch) {
	asm mov ah, 2h;
	asm mov dl, _ch;
	asm int 0x21;
}

void print(char *_str) {
	asm mov ah, 9h;
	asm mov dx, _str;
	asm int 0x21;
}
