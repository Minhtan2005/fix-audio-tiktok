#import <AVFoundation/AVFoundation.h>

%hook AVAudioSession
// Ép TikTok không được ngắt âm thanh khi bấm Live
- (BOOL)setActive:(BOOL)active withOptions:(unsigned int)options error:(id *)outError {
    return %orig(active, 0x1, outError); // 0x1 là mã lệnh "Trộn âm thanh"
}

// Giữ chế độ vừa thu âm vừa phát tiếng
- (NSString *)category {
    return @"AVAudioSessionCategoryPlayAndRecord";
}
%end