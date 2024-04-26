

#ifndef _STRING_H_
#define _STRING_H_

#include <types.h>


char *strchr(const char *p, int c);
char *strncpy(char *dst, const char *src, size_t n);
int strcmp(const char *s1, const char *s2);
int atob(u_int32_t *vp, char *p, int base);
char *btoa(char *dst, u_int value, int base);
int gethex(int32_t *vp, char *p, int n);
void str_fmt(char *p, int size, int fmt);
char *strcpy (char *dstp, const char *srcp);
size_t strlcpy(char *d, const char *s, size_t l);
void strtoupper(char *p);
int toupper(int c);
unsigned int strlen(const char *p);
char *strstr(const char *p, const char *q);
char *strcat(char *dst, const char *src);
char *strichr(char *p, int c);
void *memcpy(void *s1, const void *s2, unsigned int n);
void * memset(void * s,int c, size_t count);
int ffs(int mask);
inline int fls(int x);
int strcspn(const char *p, const char *s);





/* definitions for fmt parameter of str_fmt(p,width,fmt) */
#define FMT_RJUST 0
#define FMT_LJUST 1
#define FMT_RJUST0 2
#define FMT_CENTER 3



#endif /* _STRING_H_ */


