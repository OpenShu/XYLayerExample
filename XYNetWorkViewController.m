//
//  XYNetWorkViewController.m
//  XYGouWu
//
//  Created by shubochao on 2016/11/14.
//  Copyright © 2016年 shubochao. All rights reserved.
//

#import "XYNetWorkViewController.h"
#import "AFHTTPSessionManager.h"

@interface XYNetWorkViewController ()
@property (nonatomic, copy) NSString *appendStr;
@property (nonatomic, assign) CLLocationCoordinate2D coordinate;
@end

@implementation XYNetWorkViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        self.tabBarItem.image = [UIImage imageNamed:@"预约选座"];
        self.tabBarItem.title = @"网络";
       
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated {
    self.view.backgroundColor  = [UIColor blueColor];
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
    AFHTTPSessionManager *manger =  [AFHTTPSessionManager manager];
    
    NSString *endStr = [self createAppendStr:@"30.64054,122.12934"];
 //@{@"o":@"json",@"key":@"Arzdiw4nlOJzRwOz__qailc8NiR31Tt51dN2D7cm57NrnceZnCpgOkmJhNpGoppU"}
    [ manger GET:@"https://maps.google.cn/maps/api/geocode/json"
      parameters:@{@"latlng":@"19.7963644055,-155.4938731743",@"language":@"cn"} success:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
          
          
          NSLog(@"%@",responseObject);
   
          
          
          
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
      
        
        NSLog(@"%@",error.description);
        
        
    }];
    
}

// 添加大头针

                                     
- (NSString *)createAppendStr:(NSString *) str {
    
    NSString *baseStr = @"https://dev.virtualearth.net/REST/v1/Locations/";
    return [NSString stringWithFormat:@"%@%@",baseStr,str];
                                     
}

                                     
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (UIView *)headView {
    if (!_headView) {
        [[NSBundle mainBundle] loadNibNamed:@"shadow" owner:self options:nil];
    }
    return _headView;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
