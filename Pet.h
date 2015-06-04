//
//  Pet.h
//  PetFind
//
//  Created by Daniel Kwiatkowski on 2015-06-03.
//  Copyright (c) 2015 Daniel Kwiatkowski. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pet : NSObject

@property(nonatomic,copy) NSString *image;
@property(nonatomic,copy) NSString *title;
@property(nonatomic,copy) NSString *attribution;

+(id)petWithImage:(NSString*)image title:(NSString*)title attribution:(NSString*)attribution;

@end
