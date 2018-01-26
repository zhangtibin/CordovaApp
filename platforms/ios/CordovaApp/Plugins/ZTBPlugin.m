//
//  ZTBPlugin.m
//  CordovaApp
//
//  Created by 张体宾 on 2018/1/26.
//

#import "ZTBPlugin.h"

@implementation ZTBPlugin

#pragma mark - 交互行为
- (void)hybridAction:(CDVInvokedUrlCommand *)command{
    if (command.arguments.count>0) {
        //customize argument
        NSLog(@"===== %@", command.arguments);
    }else{
        //callback
        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"没有参数"];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }
}

@end
