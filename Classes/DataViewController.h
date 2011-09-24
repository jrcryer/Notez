//
//  DataViewController.h
//  Notez
//
//  Created by Charlotte Pitchford on 23/09/2011.
//  Copyright 2011 Home. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface DataViewController : UITableViewController <NSFetchedResultsControllerDelegate> {
	NSEntityDescription *entity;
	NSFetchedResultsController *fetchController;
	NSManagedObjectContext *managedContext;
}

@property (nonatomic, retain) NSEntityDescription *entity;
@property (nonatomic, retain) NSFetchResultsController *fetchController;
@property (nonatomic, retain) NSManagedObjectContext *managedContext;

@end
