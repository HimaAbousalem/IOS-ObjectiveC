//
//  ViewController.m
//  MapsApplication
//
//  Created by Esraa Hassan on 3/22/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import "ViewController.h"
#import "CustomAnnotation.h"
#import "ImageTableViewController.h"
#import "ProfileViewController.h"
@interface ViewController ()

@end

@implementation ViewController
    NSMutableData *myData2;
    UIAlertView *alert2;
- (void)viewDidLoad {
    [super viewDidLoad];
    _user = [User new];
    myData2 = [NSMutableData new];
    _manager = [CLLocationManager new];
    [_manager setDesiredAccuracy:kCLLocationAccuracyBest];
    [_manager requestAlwaysAuthorization];
    [_manager startUpdatingLocation];
    CLLocation *userLocation = [_manager location];
    _user.latitude = [NSString stringWithFormat:@"%f",userLocation.coordinate.latitude];
    _user.longitude = [NSString stringWithFormat:@"%f",userLocation.coordinate.longitude];
    _latLabel.text = [NSString stringWithFormat:@"%f", userLocation.coordinate.latitude];
    _lngLabel.text = [NSString stringWithFormat:@"%f", userLocation.coordinate.longitude];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)pickImage:(UIButton *)sender {
    ImageTableViewController *imageController = [self.storyboard instantiateViewControllerWithIdentifier:@"tableVC"];
    [imageController setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    imageController.communication = self;
    [self presentViewController:imageController animated:YES completion:nil];
}
    
- (IBAction)registerButton:(UIButton *)sender {
    [self makeRequest];
}
    -(void) makeRequest{
        _user.name = _userName.text;
        _user.phone = _userPhone.text;
        _user.age = [_userAge.text longLongValue];
        _user.longitude = _lngLabel.text;
        _user.latitude = _latLabel.text;
        NSString *concateUrl = [NSString stringWithFormat:@"http://jets.iti.gov.eg/FriendsApp/services/user/register?name=%@&phone=%@&age=%ld&imageURL=%@&longitude=%@&latitude=%@",_user.name, _user.phone, _user.age, _user.photo, _user.longitude, _user.latitude];
        NSURL *url = [[NSURL alloc] initWithString:concateUrl];
        NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
        NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
        [connection start];
    }
    
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    [myData2 appendData:data];
}
    
- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    NSDictionary *dect = [NSJSONSerialization JSONObjectWithData:myData2 options:NSJSONReadingAllowFragments error:nil];
    NSString *status = [dect objectForKey:@"status"];
    [myData2 setData:nil];
    if([status isEqualToString:@"FAILING"]){
        alert2 = [[UIAlertView alloc] initWithTitle:@"Authentication Result"
                                           message:status
                                          delegate:self
                                 cancelButtonTitle:@"OK"
                                 otherButtonTitles:nil];
        [alert2 show];
    }else{
        ProfileViewController *profile = [self.storyboard instantiateViewControllerWithIdentifier:@"profileVC"];
        profile.user = _user;
        [self presentViewController:profile animated:YES completion:nil];
    }
    
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    switch (buttonIndex) {
        case 0:
        break;
        default:
        break;
    }
}
    
- (IBAction)send:(id)sender {
    [_mapView removeAnnotations:_mapView.annotations];
    CGPoint touchedPoint = [sender locationInView:_mapView];
    CLLocationCoordinate2D touchedLocation = [_mapView convertPoint:touchedPoint toCoordinateFromView:_mapView];
    _user.latitude = [NSString stringWithFormat:@"%f", touchedLocation.latitude];
    _user.longitude = [NSString stringWithFormat:@"%f", touchedLocation.longitude];
    _latLabel.text = [NSString stringWithFormat:@"%f", touchedLocation.latitude];
    _lngLabel.text = [NSString stringWithFormat:@"%f", touchedLocation.longitude];
    CustomAnnotation *annotation = [CustomAnnotation new];
    annotation.coordinate = touchedLocation;
    annotation.title = @"CurrentLocation";
    annotation.subtitle = @"MAD";
    [_mapView addAnnotation:annotation];
}
    
- (IBAction)backButton:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
    
-(void) returnImage:(NSString*) image{
    _user.photo = image;
    [_imageView setImage:[UIImage imageNamed:image]];
}
@end
