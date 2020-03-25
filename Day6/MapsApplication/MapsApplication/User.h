//
//  User.h
//  MapsApplication
//
//  Created by Esraa Hassan on 3/22/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
@interface User : NSObject
    @property NSString *name;
    @property NSString *phone;
    @property long age;
    @property NSString* latitude;
    @property NSString* longitude;
    @property NSString* photo;
@end
