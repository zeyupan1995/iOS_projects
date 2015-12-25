//
//  main.c
//  p2
//
//  Created by Apple on 12/17/15.
//  Copyright © 2015 Pan. All rights reserved.
//

#include <stdio.h>

#include <assert.h>

#include <string.h>

#include <stdlib.h>

#include "Addtion.h"

int a[] = {45, 23, 78, 12, 100, 1, 100, 34, 90, 78 };

void addInt( void * a, void * b , void *sum)
{
    
    //printf("%d\n", *(int*)a);
    
    //printf("%d\n", *(int*)b);
    
    int *abc = (int *) sum;
    
    *abc = *(int*)a + *(int*)b;
    
}

int compareInt( void * a, void * b )
{
    return *(int*)a - *(int*) b;
}

char * inttoString(void* a)
{
//    char * m = malloc(sizeof(int));
//    sprintf(m, "%d",*(int*)a);
//    return m;
    char * m = malloc(sizeof(int));
    sprintf(m, "%d",*(int*)a);
    return m;
}

//char * line[1024];
//void mygrep(char* fileName, char * pattern)
//{
//    FILE * fd = fopen(fileName,"r");
//    if(fd == NULL)
//        return;
//    while (fgets(line, 1023, fd)) {
//        if(strstr(line,pattern) != NULL)
//            printf("%s",line);
//    }
//    fclose(fd);
//}
//char * line2[1024];
//void diff(char * fileA, char * fileB)
//{
//    FILE *fd = fopen(fileA,"r");
//    FILE *fd2= fopen(fileB,"r");
//    if (fd == NULL || fd2 == NULL) {
//        return;
//    }
//    while (fgets(line,1023,fd) && fgets(line2,1023,fd2)) {
//        if(strcmp(line, line2))
//            printf("%s,%s",line,line2);
//    }
//    if (fgets(line,1023,fd)) {
//        printf("%s",line);
//    }else if(fgets(line2,1023,fd2))
//    {
//        printf("%s",line2);
//    }
//        fclose(fd);
//        fclose(fd2);
//}
int main(int argc, const char * argv[]) {
    
    // insert code here...
    
    int i;
    
    int nelements = sizeof(a)/sizeof(int);
    printf("--- Numbers ----\n");
    for ( i = 0; i < nelements; i++ ) {
        
        //printf("a[%d]=%d\n", i, a[i] );
        
    }
    int *t = malloc(sizeof(int));
    
    *t = 0;
    sumArray( nelements, sizeof(int), a, t, addInt );
    
    printf("%p\n", t);
    
    printf("%d\n", *(int*)t);
    printf( "testWithint OK\n");

    nelements = sizeof(a)/sizeof(int);
    printf("--- Numbers ----\n");
    
    for ( i = 0; i < nelements; i++ ) {
        
        //printf("a[%d]=%d\n", i, a[i] );
        
    }
    PrintArray(nelements, sizeof(int), a, inttoString);
    mysort( nelements, sizeof(int), a, 1, compareInt );
    printf("---- Numbers after Sorting ----\n");
    
    for ( i = 0; i < nelements; i++ ) {
        
        printf("a[%d]=%d\n", i, a[i] );
        
    }
    // Test that numbers are ordered
    
    for ( i = 0; i < nelements -1 ; i++ ) {
        
        assert( a[i] <= a[i+1] );

    }
    printf( "testWithint OK\n");
    return 0;

}
