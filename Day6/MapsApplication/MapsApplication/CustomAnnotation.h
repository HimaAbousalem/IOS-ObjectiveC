//
//  CustomAnnotation.h
//  MapsApplication
//
//  Created by Esraa Hassan on 3/22/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
@interface CustomAnnotation : NSObject <MKAnnotation>
    @property (nonatomic) CLLocationCoordinate2D coordinate;
    @property (nonatomic, copy) NSString *title;
    @property (nonatomic, copy) NSString *subtitle;
@end
