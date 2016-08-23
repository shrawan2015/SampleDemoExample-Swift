//
//  MYTwitterLookupViewModel.swift
//  MVVMProject
//
//  Created by ShrawanKumar Sharma on 25/07/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import Foundation
import UIKit

class MYTwitterLookupViewModel  {
//    @property (nonatomic, assign, readonly, getter=isUsernameValid) BOOL usernameValid;
//    @property (nonatomic, strong, readonly) NSString *userFullName;
//    @property (nonatomic, strong, readonly) UIImage *userAvatarImage;
//    @property (nonatomic, strong, readonly) NSArray *tweets;
//    @property (nonatomic, assign, readonly) BOOL allTweetsLoaded;
//    
//    @property (nonatomic, strong, readwrite) NSString *username;
//    
//    - (void) getTweetsForCurrentUsername;
//    - (void) loadMoreTweets;
    
    
    var userNameValid:Bool?
    var fulluserName:NSString?
    var userNameAvatarImage:UIImage?
    var tweets:NSArray?
    var allTweetsLoaded:Bool?
    var userName:NSString?
   

    func getTweetsforCurretUser()  {
        //API CALLING
    }
    
    func loadMoreTweets()  {
        //Call more Tweets  
    }
    
    
}