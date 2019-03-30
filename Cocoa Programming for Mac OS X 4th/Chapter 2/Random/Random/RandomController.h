//
//  RandomController.h
//  Random
//
//  Created by Aegis Liang on 3/27/19.
//  Copyright © 2019 X. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface RandomController : NSObject
{
    IBOutlet NSTextField *textField; // NSTextField needs import Cocoa.h
}
- (IBAction)seed:(id)sender;
- (IBAction)generate:(id)sender;
@end
