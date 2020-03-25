//
//  SendDataProtocol.h
//  Calculator
//
//  Created by JETS Mobile Lab on 3/7/20.
//  Copyright © 2020 ITI. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol SendDataProtocol <NSObject>
-(void) sendDataProtocol:(NSString*)data;
@end

NS_ASSUME_NONNULL_END
