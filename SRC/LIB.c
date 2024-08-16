
void printb(char ch_) {
	asm mov ah, 2h;
	asm mov dl, ch_;
	asm int 0x21;
}

void print(char *str_) {
	asm mov ah, 9h;
	asm mov dx, str_;
	asm int 0x21;
}
