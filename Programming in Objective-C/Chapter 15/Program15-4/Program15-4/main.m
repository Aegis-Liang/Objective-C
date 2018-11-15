//
//  main.m
//  Program15-4
//
//  Created by Aegis Liang on 6/5/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

//  This program introduces NSString

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str1 = @"This is string A";
        NSString *str2 = @"This is string B";
        NSString *res;
        NSComparisonResult compareResult;
        // Count the number of characters
        NSLog (@"Length of str1: %lu", [str1 length]);
        // Copy one string to another
        res = [NSString stringWithString: str1];
        NSLog (@"copy: %@", res);
        // Copy one string to the end of another
        str2 = [str1 stringByAppendingString: str2];
        NSLog (@"Concatenation: %@", str2);
        // Test if two strings are equal
        if ([str1 isEqualToString: res] == YES)
            NSLog (@"str1 == res");
        else
            NSLog (@"str1 != res");
        // Test if one string is <, == or > than another
        compareResult = [str1 compare: str2];
        if (compareResult == NSOrderedAscending)
            NSLog (@"str1 < str2");
        else if (compareResult == NSOrderedSame)
            NSLog (@"str1 == str2");
        else // must be NSOrderedDescending NSLog (@"str1 > str2");
            // Convert a string to uppercase
            res = [str1 uppercaseString];
        NSLog (@"Uppercase conversion: %s", [res UTF8String]);
        // Convert a string to lowercase res = [str1 lowercaseString];
        NSLog (@"Lowercase conversion: %@", res);
        NSLog (@"Original string: %@", str1);
        
        // Below code is from Program15-5
//        NSString *str1 = @"This is string A";
//        NSString *res;
        NSRange subRange;
        
        
        // Extract first 3 chars from string
        res = [str1 substringToIndex: 3];
        NSLog (@"First 3 chars of str1: %@", res);
        // Extract chars to end of string starting at index 5
        res = [str1 substringFromIndex: 5];
        NSLog (@"Chars from index 5 of str1: %@", res);
        // Extract chars from index 8 through 13 (6 chars)
        res = [[str1 substringFromIndex: 8] substringToIndex: 6];
        NSLog (@"Chars from index 8 through 13: %@", res);
        // An easier way to do the same thing
        res = [str1 substringWithRange: NSMakeRange (8, 6)];
        NSLog (@"Chars from index 8 through 13: %@", res);
        // Locate one string inside another
        subRange = [str1 rangeOfString: @"string A"];
        NSLog (@"String is at index %lu, length is %lu", subRange.location, subRange.length);
        subRange = [str1 rangeOfString: @"string B"];
        if (subRange.location == NSNotFound)
            NSLog (@"String not found");
        else
            NSLog (@"String is at index %lu, length is %lu",subRange.location, subRange.length);
        
        
        // Below code is from Program15-6
        //NSString *str1 = @"This is string A";
        NSString *search, *replace;
        NSMutableString *mstr;
        NSRange substr;
        
        // Create mutable string from nonmutable
        mstr = [NSMutableString stringWithString: str1];
        NSLog (@"%@", mstr);
        // Insert characters
        [mstr insertString: @" mutable" atIndex: 7];
        NSLog (@"%@", mstr);
        // Effective concatenation if insert at end
        [mstr insertString: @" and string B" atIndex: [mstr length]];
        NSLog (@"%@", mstr);
        // Or can use appendString directly
        [mstr appendString: @" and string C"];
        NSLog (@"%@", mstr);
        // Delete substring based on range
        [mstr deleteCharactersInRange: NSMakeRange (16, 13)];
        NSLog (@"%@", mstr);
        // Find range first and then use it for deletion
        substr = [mstr rangeOfString: @"string B and "];
        if (substr.location != NSNotFound) {
            [mstr deleteCharactersInRange: substr];
            NSLog (@"%@", mstr);
        }
        // Set the mutable string directly
        [mstr setString: @"This is string A"];
        NSLog (@"%@", mstr);
        // Now let’s replace a range of chars with another
        [mstr replaceCharactersInRange: NSMakeRange(8, 8) withString: @"a mutable string"];
        NSLog (@"%@", mstr); // Search and replace
        search = @"This is";
        replace = @"An example of";
        substr = [mstr rangeOfString: search];
        if (substr.location != NSNotFound) {
            [mstr replaceCharactersInRange: substr withString: replace];
            NSLog (@"%@", mstr);
        }
        // Search and replace all occurrences
        search = @"a"; replace = @"X";
        substr = [mstr rangeOfString: search];
        while (substr.location != NSNotFound) {
            [mstr replaceCharactersInRange: substr withString: replace];
            substr = [mstr rangeOfString: search];
        }
        NSLog (@"%@", mstr);
    }
    return 0;
}
