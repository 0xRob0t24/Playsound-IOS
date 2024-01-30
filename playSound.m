// playSound.m
#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

// ประกาศฟังก์ชัน Objective-C
void playSound(const char *soundFileName) {
    @autoreleasepool {
        NSString *soundFileNameObjC = [NSString stringWithUTF8String:soundFileName];
        NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:soundFileNameObjC ofType:@"wav"];
        
        if (soundFilePath) {
            NSURL *soundFileURL = [NSURL fileURLWithPath:soundFilePath];
            
            NSError *error = nil;
            AVAudioPlayer *audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundFileURL error:&error];
            
            if (audioPlayer) {
                [audioPlayer play];
                while (audioPlayer.isPlaying) {
                    // รอเล็กน้อย
                }
            } else {
                NSLog(@"Failed to create AVAudioPlayer: %@", error.localizedDescription);
            }
        } else {
            NSLog(@"Sound file not found");
        }
    }
}

