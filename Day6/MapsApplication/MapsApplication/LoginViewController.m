//
//  LoginViewController.m
//  MapsApplication
//
//  Created by Esraa Hassan on 3/22/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import "LoginViewController.h"
#import "ViewController.h"
#import "ProfileViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController
    NSString *password;
    NSMutableData *myData;
    UIAlertView *alert;
- (void)viewDidLoad {
    [super viewDidLoad];
    myData = [NSMutableData new];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (IBAction)loginAction:(UIButton *)sender {
    password = _passwordText.text;
    [self makeRequestWithPassword: password];
}
    -(void) makeRequestWithPassword:(NSString*)password{
        NSString *concateUrl = [NSString stringWithFormat:@"http://jets.iti.gov.eg/FriendsApp/services/user/findUser?phone=%@",password];
        NSURL *url = [[NSURL alloc] initWithString:concateUrl];
        NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
        NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
        [connection start];
    }
    
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    [myData appendData:data];
}
    
- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    NSDictionary *dect = [NSJSONSerialization JSONObjectWithData:myData options:NSJSONReadingAllowFragments error:nil];
    NSString *status = [dect objectForKey:@"status"];
    [myData setData:nil];
    if([status isEqualToString:@"FAILING"]){
        alert = [[UIAlertView alloc] initWithTitle:@"Authentication Result"
                                                        message:status
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }else{
        NSDictionary* values = [dect objectForKey:@"result"];
        User *user = [User new];
        user.phone =  [values objectForKey:@"phone"];
        user.name =  [values objectForKey:@"name"];
        user.photo =  [values objectForKey:@"imageUrl"];
        user.age =  [values objectForKey:@"age"];
        user.longitude = [values objectForKey:@"longitude"];
        user.latitude =  [values objectForKey:@"latitude"];
        ProfileViewController *profile = [self.storyboard instantiateViewControllerWithIdentifier:@"profileVC"];
        profile.user = user;
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
    
- (IBAction)registerAction:(UIButton *)sender {
    ViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"mainVC"];
    [controller setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    [self presentViewController:controller animated:YES completion:nil];
}
@end
