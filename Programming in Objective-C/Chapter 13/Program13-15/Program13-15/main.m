//
//  main.m
//  Program13-15
//
//  Created by Aegis Liang on 6/5/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

//  This program introduces array and pointer
#import <Foundation/Foundation.h>

void copyString (char *to, char *from) {
    for( ; *from != '\0'; ++from, ++to )
        *to = *from;
    *to= '\0';
}

void copyString2 (char *to, char *from) {
    while ( *from )
        *to++ = *from++;
    *to = '\0';
}



int arraySum (int array[], int n) {
    int sum = 0, *ptr;
    int *arrayEnd = array + n;
    for ( ptr = array; ptr < arrayEnd; ++ptr )
        sum += *ptr;
    return (sum);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Below code is from Program13-15
        int arraySum (int array[], int n);
        int values[10] = { 3, 7, -9, 3, 6, -1, 7, 9, 1, -5 } ;
        NSLog (@"The sum is %i", arraySum (values, 10));
        
        // Below code is from Program13-16
        void copyString (char *to, char *from);
        char string1[] = "A string to be copied.";
        char string2[50];
        copyString (string2, string1);
        NSLog (@"%s", string2);
        copyString (string2, "So is this.");
        NSLog (@"%s", string2);
        
        // Addition
        char *textPtr;
        textPtr = "A character string.";    // the "A character string." returns a pointer
        
        // char text[80];
        // text = "This is not valid.";     // you could not write a statement such as this
        
        // char text1[80] = "This is okay.";   // initializing is the only chance to do assignment with this way
        // char *text2 = "This is okay.";
        
        // Below code is from Program13-17
        void copyString (char *to, char *from);
        char string3[] = "A string to be copied.";
        char string4[50];
        copyString2 (string4, string3);
        NSLog (@"%s", string4);
        copyString2 (string4, "So is this.");
        NSLog (@"%s", string4);
        
        // Addition
        // int (*fnPtr) (void);     // () is required, otherwise compiler treats it as (int *) fnPtr (void);
        
    }
    return 0;
}
