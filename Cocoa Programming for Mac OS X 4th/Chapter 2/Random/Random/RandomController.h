//
//  RandomController.h
//  Random
//
//  Created by Aegis Liang on 11/16/18.
//  Copyright © 2018 X. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface RandomController : NSObject {
    IBOutlet NSTextField *textField;
}
- (IBAction)seed:(id)sender;
- (IBAction)generate:(id)sender;
@end
