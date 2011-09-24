//
//  PasswordViewController.h
//  Notez
//
//  Created by Charlotte Pitchford on 24/09/2011.
//  Copyright 2011 Home. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@class PasswordListViewController;

@interface PasswordViewController : UIViewController {
	UITextField *name;
	UITextField *userId;
	UITextField *password;
	PasswordListViewController *parentController;
	NSManagedObject *system;
}

@property (nonatomic, retain) IBOutlet UITextField *name;
@property (nonatomic, retain) IBOutlet UITextField *userId;
@property (nonatomic, retain) IBOutlet UITextField *password;
@property (nonatomic, retain) PasswordListViewController *parentController;
@property (nonatomic, retain) NSManagedObject *system;

- (id)initWithParentController:(PasswordListViewController *)aParentController system:(NSManagedObject *)aSystem;

- (IBAction)save:(id)sender;
- (IBAction)cancel:(id)sender;

@end
