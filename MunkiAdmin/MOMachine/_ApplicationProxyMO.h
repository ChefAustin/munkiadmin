// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ApplicationProxyMO.h instead.

#import <CoreData/CoreData.h>

extern const struct ApplicationProxyMOAttributes {
	__unsafe_unretained NSString *isEnabled;
} ApplicationProxyMOAttributes;

extern const struct ApplicationProxyMORelationships {
	__unsafe_unretained NSString *parentApplication;
} ApplicationProxyMORelationships;

@class ApplicationMO;

@interface ApplicationProxyMOID : NSManagedObjectID {}
@end

@interface _ApplicationProxyMO : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) ApplicationProxyMOID* objectID;

@property (nonatomic, strong) NSNumber* isEnabled;

@property (atomic) BOOL isEnabledValue;
- (BOOL)isEnabledValue;
- (void)setIsEnabledValue:(BOOL)value_;

//- (BOOL)validateIsEnabled:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) ApplicationMO *parentApplication;

//- (BOOL)validateParentApplication:(id*)value_ error:(NSError**)error_;

@end

@interface _ApplicationProxyMO (CoreDataGeneratedPrimitiveAccessors)

- (NSNumber*)primitiveIsEnabled;
- (void)setPrimitiveIsEnabled:(NSNumber*)value;

- (BOOL)primitiveIsEnabledValue;
- (void)setPrimitiveIsEnabledValue:(BOOL)value_;

- (ApplicationMO*)primitiveParentApplication;
- (void)setPrimitiveParentApplication:(ApplicationMO*)value;

@end
