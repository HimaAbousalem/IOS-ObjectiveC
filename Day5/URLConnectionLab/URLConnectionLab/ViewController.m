//
//  ViewController.m
//  URLConnectionLab
//
//  Created by JETS Mobile Lab on 3/11/20.
//  Copyright © 2020 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

NSMutableData *myData;

- (void)viewDidLoad {
    [super viewDidLoad];
    myData = [NSMutableData new];
}


- (IBAction)syncButton:(UIButton *)sender {
    NSURL *url = [[NSURL alloc] initWithString:@"http://www.yahoo.com"];
    NSString *syncData = [[NSString alloc] initWithContentsOfURL: url encoding:NSUTF8StringEncoding error:nil];
    [_webView loadHTMLString:syncData baseURL:nil];
}

- (IBAction)asyncButton:(UIButton *)sender {
    NSURL *url = [[NSURL alloc] initWithString:@"http://www.yahoo.com"];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
   // [_webView loadRequest:request];
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    [connection start];
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    [myData appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    NSString *res = [[NSString alloc] initWithData:myData encoding:NSUTF8StringEncoding];
    [_webView loadHTMLString:res baseURL:nil];
    
}

@end
