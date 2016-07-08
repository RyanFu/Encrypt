//
//  NSString+MD5.h
//  
//
//  Created by iMac on 16/5/9.
//  Copyright © 2016年 Sinfotek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>



@interface NSString (MD5)

+ (NSString *)MD5Encrypt:(NSString*)input;

@end
