#import <UIKit/UIKit.h>

@interface UINavigationItem (Notes)
@property UIBarButtonItem *customRightItem;
@end

@interface ICNoteEditorViewController
@property UINavigationItem *navigationItem;
- (void)beginTextFinding;
- (void)notesFind_addGestureRecognizer;
@end