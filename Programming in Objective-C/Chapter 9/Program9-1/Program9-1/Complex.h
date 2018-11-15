//
//  Complex.h
//  Program9-1
//
//  Created by Aegis Liang on 6/2/18.
//  Copyright © 2018 Aegis Liang. All rights reserved.
//

// Interface file for Complex class

#import <Foundation/Foundation.h> 

@interface Complex: NSObject
@property double real, imaginary;
-(void) print;
-(void) setReal: (double) a andImaginary: (double) b;
-(Complex *) add: (Complex *) f;
@end
