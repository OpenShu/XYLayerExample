//
//  XYNetWorkViewController.h
//  XYGouWu
//
//  Created by shubochao on 2016/11/14.
//  Copyright © 2016年 shubochao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XYCommonNavigationController.h"
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
@interface XYNetWorkViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIView *headView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end
