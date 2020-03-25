//
//  ViewController.h
//  MapsApplication
//
//  Created by Esraa Hassan on 3/22/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import "CommunicationProtocol.h"
#import "User.h"

@interface ViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate, CommunicationProtocol>

    @property (weak, nonatomic) IBOutlet UIImageView *imageView;
    @property (weak, nonatomic) IBOutlet UITextField *userName;
    @property (weak, nonatomic) IBOutlet UITextField *userPhone;
    @property (weak, nonatomic) IBOutlet UITextField *userAge;
    @property (weak, nonatomic) IBOutlet UILabel *latLabel;
    @property (weak, nonatomic) IBOutlet UILabel *lngLabel;
    @property (weak, nonatomic) IBOutlet MKMapView *mapView;
    @property CLLocationManager *manager;
    @property User *user;
   
    - (IBAction)pickImage:(UIButton *)sender;
    - (IBAction)registerButton:(UIButton *)sender;
    - (IBAction)send:(id)sender;
    - (IBAction)backButton:(UIButton *)sender;
    -(void) returnedImage:(NSString*) image;
    @end

