//
//  ViewController.m
//  RegisterWebService
//
//  Created by JETS Mobile Lab on 3/11/20.
//  Copyright © 2020 ITI. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController
NSString *userName, *password;
NSMutableData *myData;
- (void)viewDidLoad {
    [super viewDidLoad];
    myData = [NSMutableData new];
}


- (IBAction)loginBtn:(UIButton *)sender {
    userName = _userNameET.text;
    password = _passwordET.text;
    [self makeRequestWithUserName: userName password: password];
}

- (IBAction)registerBtn:(UIButton *)sender {
    userName = _userNameET.text;
    password = _passwordET.text;
    [self makeRequestWithUserName: userName password: password];
}

-(void) makeRequestWithUserName:(NSString*)userName password:(NSString*)password{
    NSString *concateUrl = [NSString stringWithFormat:@"http://jets.iti.gov.eg/FriendsApp/services/user/register?name=%@&phone=%@",userName, password];
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
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Authentication Result"
                                                    message:status
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    switch (buttonIndex) {		
        case 0:
            if(![alertView.message isEqualToString:@"FAILING"]){
                SecondViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"secondVC"];
                [controller setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
                [self presentViewController:controller animated:YES completion:nil];
            }
            break;
        default:
            break;
    }
}
@end
