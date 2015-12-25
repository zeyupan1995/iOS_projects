#ifndef Addtion_h

#define Addtion_h



#include <stdio.h>



typedef void (*Addition) (void *a, void *b, void *t);
void sumArray(int n, int elementSize, void * array, void * sum, Addition addition);
typedef int (*CompareFunction) (void *a, void *b);

typedef char* (*ToStringFunction) (void *a);
void PrintArray(int n, int elementSize, void * array, ToStringFunction toString);
void mysort( int n, int elementSize, void * array,
            int ascending, CompareFunction compFunc );

void mygrep(char* fileName, char * pattern);
#endif /* Addtion_h */
//Status API Training Shop Blog About Pricing

