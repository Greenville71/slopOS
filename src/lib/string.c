#include "string.h"

void* memset(void* ptr, int value, size_t num) {
    unsigned char* p = (unsigned char*)ptr;
    while (num--) {
        *p++ = (unsigned char)value;
    }
    return ptr;
}

void* memcpy(void* destination, const void* source, size_t num) {
    unsigned char* d = (unsigned char*)destination;
    const unsigned char* s = (const unsigned char*)source;
    while (num--) {
        *d++ = *s++;
    }
    return destination;
}

void* memmove(void* destination, const void* source, size_t num) {
    unsigned char* d = (unsigned char*)destination;
    const unsigned char* s = (const unsigned char*)source;
    if (d < s) {
        while (num--) {
            *d++ = *s++;
        }
    } else {
        d += num;
        s += num;
        while (num--) {
            *--d = *--s;
        }
    }
    return destination;
}

int memcmp(const void* ptr1, const void* ptr2, size_t num) {
    const unsigned char* p1 = (const unsigned char*)ptr1;
    const unsigned char* p2 = (const unsigned char*)ptr2;
    while (num--) {
        if (*p1 != *p2) {
            return *p1 - *p2;
        }
        p1++;
        p2++;
    }
    return 0;
}

size_t strlen(const char* str) {
    size_t len = 0;
    while (str[len]) {
        len++;
    }
    return len;
}

char* strcpy(char* destination, const char* source) {
    char* d = destination;
    while ((*d++ = *source++));
    return destination;
}

char* strncpy(char* destination, const char* source, size_t num) {
    char* d = destination;
    const char* s = source;
    while (num > 0 && *s != '\0') {
        *d++ = *s++;
        num--;
    }
    while (num > 0) {
        *d++ = '\0';
        num--;
    }
    return destination;
}

int strcmp(const char* str1, const char* str2) {
    while (*str1 && (*str1 == *str2)) {
        str1++;
        str2++;
    }
    return *(const unsigned char*)str1 - *(const unsigned char*)str2;
}

int strncmp(const char* str1, const char* str2, size_t num) {
    while (num && *str1 && (*str1 == *str2)) {
        str1++;
        str2++;
        num--;
    }
    if (num == 0) return 0;
    return *(const unsigned char*)str1 - *(const unsigned char*)str2;
}

char* strcat(char* destination, const char* source) {
    char* d = destination;
    while (*d) d++;
    while ((*d++ = *source++));
    return destination;
}

void itoa(int num, char* str, int base) {
    int i = 0;
    bool isNegative = false;

    if (num == 0) {
        str[i++] = '0';
        str[i] = '\0';
        return;
    }

    if (num < 0 && base == 10) {
        isNegative = true;
        num = -num;
    }

    while (num != 0) {
        int rem = num % base;
        str[i++] = (rem > 9) ? (rem - 10) + 'a' : rem + '0';
        num = num / base;
    }

    if (isNegative) {
        str[i++] = '-';
    }

    str[i] = '\0';

    // Reverse the string
    int start = 0;
    int end = i - 1;
    while (start < end) {
        char temp = str[start];
        str[start] = str[end];
        str[end] = temp;
        start++;
        end--;
    }
}
