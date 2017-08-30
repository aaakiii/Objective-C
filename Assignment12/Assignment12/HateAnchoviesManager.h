//
//  HateAnchoviesManager.h
//  Assignment11
//
//  Created by 岡田暁 on 2017-08-28.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "DeliveryService.h"

@interface HateAnchoviesManager : NSObject <KitchenDelegate>

@property (nonatomic, weak) DeliveryService *deliveryService;

@end
