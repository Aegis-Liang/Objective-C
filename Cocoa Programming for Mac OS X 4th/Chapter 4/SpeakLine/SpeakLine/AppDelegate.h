//
//  AppDelegate.h
//  SpeakLine
//
//  Created by Aegis Liang on 4/5/19.
//  Copyright © 2019 X. All rights reserved.
//

// move everything from SpeakLIneAppDelegate.h to here and create an object in Main.storyboard could make connection between Button and AppDelegate object
#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
{
    NSSpeechSynthesizer *_speechSynth;
    NSArray *_voices;
}


@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *textField;


// These 2 lines could be added by control-drag from buttom to AppDelegate.h which is in Assitant Editor
- (IBAction)stopIt:(id)sender;
- (IBAction)sayIt:(id)sender;


@end
