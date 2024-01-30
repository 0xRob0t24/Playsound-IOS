// main.c
#include <stdio.h>
#include <objc/message.h>

// ประกาศฟังก์ชัน Objective-C ที่จะให้ C เรียกใช้
extern void playSound(const char *soundFileName);

int main(int argc, const char *argv[]) {
    if (argc != 2) {
        printf("Usage: %s <soundFileName>\n", argv[0]);
        return 1;  // คืนค่าไม่สำเร็จถ้าไม่มีพารามิเตอร์เสียง
    }

    // เรียกใช้งานฟังก์ชัน Objective-C จาก C โดยส่งชื่อไฟล์เสียงที่รับมาจาก command line
    playSound(argv[1]);

    // เพิ่มโค้ด C ต่อทีหลังได้

    return 0;
}

