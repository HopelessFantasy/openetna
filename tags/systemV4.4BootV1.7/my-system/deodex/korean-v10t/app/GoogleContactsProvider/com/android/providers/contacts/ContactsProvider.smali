.class public Lcom/android/providers/contacts/ContactsProvider;
.super Landroid/content/AbstractSyncableContentProvider;
.source "ContactsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/ContactsProvider$1;,
        Lcom/android/providers/contacts/ContactsProvider$PeoplePhotosInserter;,
        Lcom/android/providers/contacts/ContactsProvider$GroupPhotosInserter;,
        Lcom/android/providers/contacts/ContactsProvider$PhotoMerger;,
        Lcom/android/providers/contacts/ContactsProvider$GroupMerger;,
        Lcom/android/providers/contacts/ContactsProvider$PersonMerger;,
        Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;
    }
.end annotation


# static fields
.field private static final CALLS:I = 0xfa0

.field private static final CALLS_BASE:I = 0xfa0

.field private static final CALLS_FILTER:I = 0xfa2

.field private static final CALLS_ID:I = 0xfa1

.field protected static final CALL_LOG_AUTHORITY:Ljava/lang/String; = "call_log"

.field private static final CONTACTMETHODS:I = 0xbb8

.field private static final CONTACTMETHODS_BASE:I = 0xbb8

.field private static final CONTACTMETHODS_EMAIL:I = 0xbba

.field private static final CONTACTMETHODS_EMAIL_FILTER:I = 0xbbb

.field private static final CONTACTMETHODS_ID:I = 0xbb9

.field private static final CONTACTMETHODS_WITH_PRESENCE:I = 0xbbc

.field protected static final CONTACTS_AUTHORITY:Ljava/lang/String; = "contacts"

.field static final DATABASE_NAME:Ljava/lang/String; = "contacts.db"

.field static final DATABASE_VERSION:I = 0x8d

.field private static final DELETED_BASE:I = 0x3e8

.field private static final DELETED_GROUPS:I = 0x3e9

.field private static final DELETED_PEOPLE:I = 0x3e8

.field protected static final DISPLAY_DATA_SQL:Ljava/lang/String; = "(CASE WHEN (name IS NOT NULL AND name != \'\') THEN null ELSE (CASE WHEN primary_organization is NOT NULL THEN (SELECT company FROM organizations WHERE organizations._id = primary_organization) ELSE (CASE WHEN primary_phone IS NOT NULL THEN (SELECT number FROM phones WHERE phones._id = primary_phone) ELSE (CASE WHEN primary_email IS NOT NULL THEN (SELECT data FROM contact_methods WHERE contact_methods._id = primary_email) ELSE null END) END) END) END)"

.field protected static final DISPLAY_NAME_SQL:Ljava/lang/String; = "(CASE WHEN (name IS NOT NULL AND name != \'\') THEN name ELSE (CASE WHEN primary_organization is NOT NULL THEN (SELECT company FROM organizations WHERE organizations._id = primary_organization) ELSE (CASE WHEN primary_phone IS NOT NULL THEN (SELECT number FROM phones WHERE phones._id = primary_phone) ELSE (CASE WHEN primary_email IS NOT NULL THEN (SELECT data FROM contact_methods WHERE contact_methods._id = primary_email) ELSE null END) END) END) END)"

.field private static final EXTENSIONS:I = 0x2af8

.field private static final EXTENSIONS_BASE:I = 0x2af8

.field private static final EXTENSIONS_ID:I = 0x2afa

.field private static final GROUPMEMBERSHIP:I = 0x2328

.field protected static final GROUPMEMBERSHIP_BASE:I = 0x2328

.field private static final GROUPMEMBERSHIP_ID:I = 0x232a

.field private static final GROUPMEMBERSHIP_RAW:I = 0x232b

.field protected static final GROUPS:I = 0x1f40

.field protected static final GROUPS_BASE:I = 0x1f40

.field private static final GROUPS_ID:I = 0x1f42

.field private static final GROUP_NAME_MEMBERS:I = 0x1f43

.field private static final GROUP_NAME_MEMBERS_FILTER:I = 0x1f44

.field private static final GROUP_SYSTEM_ID_MEMBERS:I = 0x1f45

.field private static final GROUP_SYSTEM_ID_MEMBERS_FILTER:I = 0x1f46

.field private static final GTALK_PROTOCOL_STRING:Ljava/lang/String; = null

.field private static final LIVE_FOLDERS_BASE:I = 0x32c8

.field private static final LIVE_FOLDERS_PEOPLE:I = 0x32c9

.field private static final LIVE_FOLDERS_PEOPLE_FAVORITES:I = 0x32cc

.field private static final LIVE_FOLDERS_PEOPLE_GROUP_NAME:I = 0x32ca

.field private static final LIVE_FOLDERS_PEOPLE_WITH_PHONES:I = 0x32cb

.field private static final ORGANIZATIONS:I = 0x1770

.field private static final ORGANIZATIONS_BASE:I = 0x1770

.field private static final ORGANIZATIONS_ID:I = 0x1771

.field protected static final OTHERS_BASE:I = 0x1b58

.field private static final PEOPLE:I = 0x0

.field protected static final PEOPLE_BASE:I = 0x0

.field private static final PEOPLE_CONTACTMETHODS:I = 0x5

.field private static final PEOPLE_CONTACTMETHODS_ID:I = 0x6

.field private static final PEOPLE_CONTACTMETHODS_WITH_PRESENCE:I = 0x12

.field private static final PEOPLE_EXTENSIONS:I = 0x10

.field private static final PEOPLE_EXTENSIONS_ID:I = 0x11

.field private static final PEOPLE_FILTER:I = 0x1

.field protected static final PEOPLE_GROUPMEMBERSHIP:I = 0xd

.field protected static final PEOPLE_GROUPMEMBERSHIP_ID:I = 0xe

.field private static final PEOPLE_ID:I = 0x2

.field private static final PEOPLE_ORGANIZATIONS:I = 0xb

.field private static final PEOPLE_ORGANIZATIONS_ID:I = 0xc

.field private static final PEOPLE_OWNER:I = 0x13

.field private static final PEOPLE_PHONES:I = 0x3

.field private static final PEOPLE_PHONES_DRMPHOTOS_EMAILS_JOIN:Ljava/lang/String; = "people LEFT OUTER JOIN phones ON people.primary_phone=phones._id LEFT OUTER JOIN presence ON (presence.person=people._id) LEFT OUTER JOIN contact_methods ON people.primary_email=contact_methods._id LEFT OUTER JOIN drmphotos ON (drmphotos.person=people._id) LEFT OUTER JOIN photos ON (photos.person=people._id)"

.field private static final PEOPLE_PHONES_DRMPHOTOS_JOIN:Ljava/lang/String; = "people LEFT OUTER JOIN phones ON people.primary_phone=phones._id LEFT OUTER JOIN presence ON (presence.person=people._id) LEFT OUTER JOIN drmphotos ON (drmphotos.person=people._id) LEFT OUTER JOIN photos ON (photos.person=people._id)"

.field private static final PEOPLE_PHONES_EMAILS_JOIN:Ljava/lang/String; = "people LEFT OUTER JOIN phones ON people.primary_phone=phones._id LEFT OUTER JOIN presence ON (presence.person=people._id) LEFT OUTER JOIN contact_methods ON people.primary_email=contact_methods._id"

.field private static final PEOPLE_PHONES_ID:I = 0x4

.field private static final PEOPLE_PHONES_JOIN:Ljava/lang/String; = "people LEFT OUTER JOIN phones ON people.primary_phone=phones._id LEFT OUTER JOIN presence ON (presence.person=people._id)"

.field private static final PEOPLE_PHONES_PHOTOS_EMAILS_JOIN:Ljava/lang/String; = "people LEFT OUTER JOIN phones ON people.primary_phone=phones._id LEFT OUTER JOIN presence ON (presence.person=people._id) LEFT OUTER JOIN contact_methods ON people.primary_email=contact_methods._id LEFT OUTER JOIN photos ON (photos.person=people._id)"

.field private static final PEOPLE_PHONES_PHOTOS_JOIN:Ljava/lang/String; = "people LEFT OUTER JOIN phones ON people.primary_phone=phones._id LEFT OUTER JOIN presence ON (presence.person=people._id) LEFT OUTER JOIN photos ON (photos.person=people._id)"

.field private static final PEOPLE_PHONES_WITH_PRESENCE:I = 0x15

.field private static final PEOPLE_PHOTO:I = 0xf

.field private static final PEOPLE_PHOTOS_JOIN:Ljava/lang/String; = "people LEFT OUTER JOIN photos ON (photos.person=people._id)"

.field private static final PEOPLE_RAW:I = 0x7

.field private static final PEOPLE_STREQUENT:I = 0x9

.field private static final PEOPLE_STREQUENT_FILTER:I = 0xa

.field private static final PEOPLE_UPDATE_CONTACT_TIME:I = 0x14

.field private static final PEOPLE_WITH_EMAIL_OR_IM_FILTER:I = 0x16

.field private static final PEOPLE_WITH_PHONES_FILTER:I = 0x8

.field private static final PHONES:I = 0x7d0

.field protected static final PHONES_BASE:I = 0x7d0

.field private static final PHONES_FILTER:I = 0x7d2

.field private static final PHONES_FILTER_NAME:I = 0x7d3

.field private static final PHONES_ID:I = 0x7d1

.field private static final PHONES_MOBILE_FILTER_NAME:I = 0x7d4

.field private static final PHONES_WITH_PRESENCE:I = 0x7d5

.field protected static final PHONETICALLY_SORTABLE_STRING_SQL:Ljava/lang/String; = "GET_PHONETICALLY_SORTABLE_STRING(CASE WHEN (phonetic_name IS NOT NULL AND phonetic_name != \'\') THEN phonetic_name ELSE (CASE WHEN (name is NOT NULL AND name != \'\')THEN name ELSE (CASE WHEN primary_email IS NOT NULL THEN (SELECT data FROM contact_methods WHERE contact_methods._id = primary_email) ELSE (CASE WHEN primary_phone IS NOT NULL THEN (SELECT number FROM phones WHERE phones._id = primary_phone) ELSE null END) END) END) END)"

.field private static final PHOTOS:I = 0x2710

.field private static final PHOTOS_BASE:I = 0x2710

.field private static final PHOTOS_ID:I = 0x2711

.field private static final PREFS_NAME_OWNER:Ljava/lang/String; = "owner-info"

.field private static final PREF_OWNER_ID:Ljava/lang/String; = "owner-id"

.field private static final PRESENCE:I = 0x1388

.field private static final PRESENCE_BASE:I = 0x1388

.field private static final PRESENCE_ID:I = 0x1389

.field private static final SEARCH_SUGGESTIONS:I = 0x1b5a

.field private static final SETTINGS:I = 0x2ee0

.field private static final STREQUENT_LIMIT:Ljava/lang/String; = "(SELECT COUNT(*) FROM people WHERE starred = 1) + 25"

.field private static final STREQUENT_ORDER_BY:Ljava/lang/String; = "times_contacted DESC, display_name ASC"

.field public static final SUPPORT_GROUPS_DRMPHOTO:Z = true

.field public static final SUPPORT_GROUPS_PHOTO:Z = true

.field public static final SUPPORT_PEOPLE_DRMPHOTO:Z = true

.field public static final SUPPORT_SYNCML:Z = false

.field private static final TAG:Ljava/lang/String; = "ContactsProvider"

.field private static final VOICE_DIALER_TIMESTAMP:I = 0x1b59

.field protected static final drmPhotoColumn:Ljava/lang/String; = "drmphoto_data"

.field protected static final emailColumn:Ljava/lang/String; = "email_data"

.field protected static final photoColumn:Ljava/lang/String; = "photo_data"

.field private static final sCallsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static sCallsTable:Ljava/lang/String;

.field private static final sContactMethodsKeyColumns:[Ljava/lang/String;

.field private static final sContactMethodsKeyOrderBy:Ljava/lang/String;

.field private static final sContactMethodsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static sContactMethodsTable:Ljava/lang/String;

.field private static final sContactMethodsWithPresenceProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static sDeletedGroupsTable:Ljava/lang/String;

.field protected static sDeletedGroupsURL:Landroid/net/Uri;

.field protected static sDeletedPeopleTable:Ljava/lang/String;

.field protected static sDeletedPeopleURL:Landroid/net/Uri;

.field private static final sEmailSearchProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExtensionsKeyColumns:[Ljava/lang/String;

.field private static final sExtensionsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static sExtensionsTable:Ljava/lang/String;

.field protected static final sGroupMembershipProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sGroupmembershipKeyColumns:[Ljava/lang/String;

.field private static final sGroupmembershipKeyOrderBy:Ljava/lang/String;

.field protected static sGroupmembershipTable:Ljava/lang/String;

.field protected static final sGroupsJoinString:Ljava/lang/String;

.field protected static final sGroupsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static sGroupsTable:Ljava/lang/String;

.field protected static sGroupsURL:Landroid/net/Uri;

.field protected static final sIdProjection:[Ljava/lang/String;

.field protected static final sIdTypeProjection:[Ljava/lang/String;

.field protected static final sIsPrimaryProjectionWithKind:[Ljava/lang/String;

.field protected static final sIsPrimaryProjectionWithoutKind:[Ljava/lang/String;

.field protected static final sKindProjection:[Ljava/lang/String;

.field private static final sLiveFoldersProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sOrganizationsKeyColumns:[Ljava/lang/String;

.field private static final sOrganizationsKeyOrderBy:Ljava/lang/String;

.field private static final sOrganizationsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static sOrganizationsTable:Ljava/lang/String;

.field protected static final sPeopleProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static sPeopleRawURL:Landroid/net/Uri;

.field protected static sPeopleTable:Ljava/lang/String;

.field protected static final sPeopleWithDrmPhotoEmailProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sPeopleWithDrmPhotoProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPeopleWithEmailOrImProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sPeopleWithEmailProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sPeopleWithPhotoEmailProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sPeopleWithPhotoProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPhonesKeyColumns:[Ljava/lang/String;

.field private static final sPhonesKeyOrderBy:Ljava/lang/String;

.field private static final sPhonesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static sPhonesTable:Ljava/lang/String;

.field private static final sPhonesWithPresenceProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPhotosProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static sPhotosTable:Ljava/lang/String;

.field protected static sPhotosURL:Landroid/net/Uri;

.field private static final sPresenceProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSearchSuggestionsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static sSettingsTable:Ljava/lang/String;

.field private static final sStrequentStarredProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mAccounts:[Ljava/lang/String;

.field private final mAccountsLock:Ljava/lang/Object;

.field private mCallsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mContactMethodsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mDeletedPeopleInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mExtensionsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mGroupMembershipInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mGroupPhotosInserter:Lcom/android/providers/contacts/ContactsProvider$GroupPhotosInserter;

.field private mGroupsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mIndexContactMethodsAuxData:I

.field private mIndexContactMethodsData:I

.field private mIndexContactMethodsIsPrimary:I

.field private mIndexContactMethodsKind:I

.field private mIndexContactMethodsLabel:I

.field private mIndexContactMethodsPersonId:I

.field private mIndexContactMethodsType:I

.field private mIndexExtensionsName:I

.field private mIndexExtensionsPersonId:I

.field private mIndexExtensionsValue:I

.field private mIndexGroupMembershipGroupSyncAccount:I

.field private mIndexGroupMembershipGroupSyncId:I

.field private mIndexGroupMembershipPersonId:I

.field private mIndexOrganizationsCompany:I

.field private mIndexOrganizationsIsPrimary:I

.field private mIndexOrganizationsLabel:I

.field private mIndexOrganizationsPersonId:I

.field private mIndexOrganizationsTitle:I

.field private mIndexOrganizationsType:I

.field private mIndexPeopleName:I

.field private mIndexPeopleNotes:I

.field private mIndexPeoplePhoneticName:I

.field private mIndexPeopleSyncAccount:I

.field private mIndexPeopleSyncDirty:I

.field private mIndexPeopleSyncId:I

.field private mIndexPeopleSyncTime:I

.field private mIndexPeopleSyncVersion:I

.field private mIndexPhonesIsPrimary:I

.field private mIndexPhonesLabel:I

.field private mIndexPhonesNumber:I

.field private mIndexPhonesNumberKey:I

.field private mIndexPhonesPersonId:I

.field private mIndexPhonesType:I

.field private mIndexPhotosExistsOnServer:I

.field private mIndexPhotosPersonId:I

.field private mIndexPhotosSyncAccount:I

.field private mIndexPhotosSyncDirty:I

.field private mIndexPhotosSyncError:I

.field private mIndexPhotosSyncId:I

.field private mIndexPhotosSyncTime:I

.field private mIndexPhotosSyncVersion:I

.field private mOrganizationsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mPeopleInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mPeoplePhotosInserter:Lcom/android/providers/contacts/ContactsProvider$PeoplePhotosInserter;

.field private mPhonesInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private final mValues:Landroid/content/ContentValues;

.field private final mValuesLocal:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    .line 153
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/provider/Contacts$ContactMethods;->encodePredefinedImProtocol(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->GTALK_PROTOCOL_STRING:Ljava/lang/String;

    .line 156
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sIdProjection:[Ljava/lang/String;

    .line 158
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sIdTypeProjection:[Ljava/lang/String;

    .line 160
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "isprimary"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "person"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sIsPrimaryProjectionWithoutKind:[Ljava/lang/String;

    .line 162
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "isprimary"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "person"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "kind"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sIsPrimaryProjectionWithKind:[Ljava/lang/String;

    .line 164
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "kind"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sKindProjection:[Ljava/lang/String;

    .line 3503
    const-string v0, "people"

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sPeopleTable:Ljava/lang/String;

    .line 3504
    const-string v0, "content://contacts/people/raw/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sPeopleRawURL:Landroid/net/Uri;

    .line 3505
    const-string v0, "_deleted_people"

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sDeletedPeopleTable:Ljava/lang/String;

    .line 3506
    const-string v0, "content://contacts/deleted_people/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sDeletedPeopleURL:Landroid/net/Uri;

    .line 3507
    const-string v0, "groups"

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sGroupsTable:Ljava/lang/String;

    .line 3508
    const-string v0, "settings"

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sSettingsTable:Ljava/lang/String;

    .line 3509
    const-string v0, "content://contacts/groups/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sGroupsURL:Landroid/net/Uri;

    .line 3510
    const-string v0, "_deleted_groups"

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sDeletedGroupsTable:Ljava/lang/String;

    .line 3511
    const-string v0, "content://contacts/deleted_groups/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sDeletedGroupsURL:Landroid/net/Uri;

    .line 3513
    const-string v0, "phones"

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sPhonesTable:Ljava/lang/String;

    .line 3514
    const-string v0, "organizations"

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sOrganizationsTable:Ljava/lang/String;

    .line 3515
    const-string v0, "contact_methods"

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsTable:Ljava/lang/String;

    .line 3516
    const-string v0, "groupmembership"

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sGroupmembershipTable:Ljava/lang/String;

    .line 3517
    const-string v0, "photos"

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sPhotosTable:Ljava/lang/String;

    .line 3518
    const-string v0, "content://contacts/photos/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sPhotosURL:Landroid/net/Uri;

    .line 3519
    const-string v0, "extensions"

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sExtensionsTable:Ljava/lang/String;

    .line 3520
    const-string v0, "calls"

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sCallsTable:Ljava/lang/String;

    .line 4530
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 4649
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 4650
    .local v0, matcher:Landroid/content/UriMatcher;
    const-string v1, "contacts"

    const-string v2, "extensions"

    const/16 v3, 0x2af8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4651
    const-string v1, "contacts"

    const-string v2, "extensions/#"

    const/16 v3, 0x2afa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4652
    const-string v1, "contacts"

    const-string v2, "groups"

    const/16 v3, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4653
    const-string v1, "contacts"

    const-string v2, "groups/#"

    const/16 v3, 0x1f42

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4654
    const-string v1, "contacts"

    const-string v2, "groups/name/*/members"

    const/16 v3, 0x1f43

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4655
    const-string v1, "contacts"

    const-string v2, "groups/name/*/members/filter/*"

    const/16 v3, 0x1f44

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4657
    const-string v1, "contacts"

    const-string v2, "groups/system_id/*/members"

    const/16 v3, 0x1f45

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4658
    const-string v1, "contacts"

    const-string v2, "groups/system_id/*/members/filter/*"

    const/16 v3, 0x1f46

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4660
    const-string v1, "contacts"

    const-string v2, "groupmembership"

    const/16 v3, 0x2328

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4661
    const-string v1, "contacts"

    const-string v2, "groupmembership/#"

    const/16 v3, 0x232a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4662
    const-string v1, "contacts"

    const-string v2, "groupmembershipraw"

    const/16 v3, 0x232b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4663
    const-string v1, "contacts"

    const-string v2, "people"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4664
    const-string v1, "contacts"

    const-string v2, "people/strequent"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4665
    const-string v1, "contacts"

    const-string v2, "people/strequent/filter/*"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4666
    const-string v1, "contacts"

    const-string v2, "people/filter/*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4667
    const-string v1, "contacts"

    const-string v2, "people/with_phones_filter/*"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4669
    const-string v1, "contacts"

    const-string v2, "people/with_email_or_im_filter/*"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4679
    const-string v1, "contacts"

    const-string v2, "people/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4680
    const-string v1, "contacts"

    const-string v2, "people/#/extensions"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4681
    const-string v1, "contacts"

    const-string v2, "people/#/extensions/#"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4682
    const-string v1, "contacts"

    const-string v2, "people/#/phones"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4683
    const-string v1, "contacts"

    const-string v2, "people/#/phones_with_presence"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4685
    const-string v1, "contacts"

    const-string v2, "people/#/photo"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4692
    const-string v1, "contacts"

    const-string v2, "people/#/phones/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4693
    const-string v1, "contacts"

    const-string v2, "people/#/contact_methods"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4694
    const-string v1, "contacts"

    const-string v2, "people/#/contact_methods_with_presence"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4696
    const-string v1, "contacts"

    const-string v2, "people/#/contact_methods/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4697
    const-string v1, "contacts"

    const-string v2, "people/#/organizations"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4698
    const-string v1, "contacts"

    const-string v2, "people/#/organizations/#"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4699
    const-string v1, "contacts"

    const-string v2, "people/#/groupmembership"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4700
    const-string v1, "contacts"

    const-string v2, "people/#/groupmembership/#"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4701
    const-string v1, "contacts"

    const-string v2, "people/raw"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4702
    const-string v1, "contacts"

    const-string v2, "people/owner"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4703
    const-string v1, "contacts"

    const-string v2, "people/#/update_contact_time"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4705
    const-string v1, "contacts"

    const-string v2, "deleted_people"

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4706
    const-string v1, "contacts"

    const-string v2, "deleted_groups"

    const/16 v3, 0x3e9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4707
    const-string v1, "contacts"

    const-string v2, "phones"

    const/16 v3, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4708
    const-string v1, "contacts"

    const-string v2, "phones_with_presence"

    const/16 v3, 0x7d5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4709
    const-string v1, "contacts"

    const-string v2, "phones/filter/*"

    const/16 v3, 0x7d2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4710
    const-string v1, "contacts"

    const-string v2, "phones/filter_name/*"

    const/16 v3, 0x7d3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4711
    const-string v1, "contacts"

    const-string v2, "phones/mobile_filter_name/*"

    const/16 v3, 0x7d4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4713
    const-string v1, "contacts"

    const-string v2, "phones/#"

    const/16 v3, 0x7d1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4714
    const-string v1, "contacts"

    const-string v2, "photos"

    const/16 v3, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4715
    const-string v1, "contacts"

    const-string v2, "photos/#"

    const/16 v3, 0x2711

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4716
    const-string v1, "contacts"

    const-string v2, "contact_methods"

    const/16 v3, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4717
    const-string v1, "contacts"

    const-string v2, "contact_methods/email"

    const/16 v3, 0xbba

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4718
    const-string v1, "contacts"

    const-string v2, "contact_methods/email/*"

    const/16 v3, 0xbbb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4719
    const-string v1, "contacts"

    const-string v2, "contact_methods/#"

    const/16 v3, 0xbb9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4720
    const-string v1, "contacts"

    const-string v2, "contact_methods/with_presence"

    const/16 v3, 0xbbc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4722
    const-string v1, "contacts"

    const-string v2, "presence"

    const/16 v3, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4723
    const-string v1, "contacts"

    const-string v2, "presence/#"

    const/16 v3, 0x1389

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4724
    const-string v1, "contacts"

    const-string v2, "organizations"

    const/16 v3, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4725
    const-string v1, "contacts"

    const-string v2, "organizations/#"

    const/16 v3, 0x1771

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4726
    const-string v1, "contacts"

    const-string v2, "voice_dialer_timestamp"

    const/16 v3, 0x1b59

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4727
    const-string v1, "contacts"

    const-string v2, "search_suggest_query"

    const/16 v3, 0x1b5a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4729
    const-string v1, "contacts"

    const-string v2, "search_suggest_query/*"

    const/16 v3, 0x1b5a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4731
    const-string v1, "contacts"

    const-string v2, "settings"

    const/16 v3, 0x2ee0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4733
    const-string v1, "contacts"

    const-string v2, "live_folders/people"

    const/16 v3, 0x32c9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4734
    const-string v1, "contacts"

    const-string v2, "live_folders/people/*"

    const/16 v3, 0x32ca

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4736
    const-string v1, "contacts"

    const-string v2, "live_folders/people_with_phones"

    const/16 v3, 0x32cb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4738
    const-string v1, "contacts"

    const-string v2, "live_folders/favorites"

    const/16 v3, 0x32cc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4742
    const-string v1, "call_log"

    const-string v2, "calls"

    const/16 v3, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4743
    const-string v1, "call_log"

    const-string v2, "calls/filter/*"

    const/16 v3, 0xfa2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4744
    const-string v1, "call_log"

    const-string v2, "calls/#"

    const/16 v3, 0xfa1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4749
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4750
    .local v2, peopleColumns:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "name"

    .end local v0           #matcher:Landroid/content/UriMatcher;
    const-string v1, "name"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4751
    const-string v0, "notes"

    const-string v1, "notes"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4752
    const-string v0, "times_contacted"

    const-string v1, "times_contacted"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4753
    const-string v0, "last_time_contacted"

    const-string v1, "last_time_contacted"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4754
    const-string v0, "starred"

    const-string v1, "starred"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4755
    const-string v0, "custom_ringtone"

    const-string v1, "custom_ringtone"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4756
    const-string v0, "send_to_voicemail"

    const-string v1, "send_to_voicemail"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4757
    const-string v0, "phonetic_name"

    const-string v1, "phonetic_name"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4758
    const-string v0, "display_name"

    const-string v1, "(CASE WHEN (name IS NOT NULL AND name != \'\') THEN name ELSE (CASE WHEN primary_organization is NOT NULL THEN (SELECT company FROM organizations WHERE organizations._id = primary_organization) ELSE (CASE WHEN primary_phone IS NOT NULL THEN (SELECT number FROM phones WHERE phones._id = primary_phone) ELSE (CASE WHEN primary_email IS NOT NULL THEN (SELECT data FROM contact_methods WHERE contact_methods._id = primary_email) ELSE null END) END) END) END) AS display_name"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4760
    const-string v0, "sort_string"

    const-string v1, "GET_PHONETICALLY_SORTABLE_STRING(CASE WHEN (phonetic_name IS NOT NULL AND phonetic_name != \'\') THEN phonetic_name ELSE (CASE WHEN (name is NOT NULL AND name != \'\')THEN name ELSE (CASE WHEN primary_email IS NOT NULL THEN (SELECT data FROM contact_methods WHERE contact_methods._id = primary_email) ELSE (CASE WHEN primary_phone IS NOT NULL THEN (SELECT number FROM phones WHERE phones._id = primary_phone) ELSE null END) END) END) END) AS sort_string"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4762
    const-string v0, "system_id"

    const-string v1, "system_id"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4765
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4766
    .local v0, groupsColumns:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "name"

    const-string v3, "name"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4767
    const-string v1, "notes"

    const-string v3, "notes"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4768
    const-string v1, "system_id"

    const-string v3, "system_id"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4769
    const-string v1, "should_sync"

    const-string v3, "should_sync"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4770
    const-string v1, "custom_ringtone"

    const-string v3, "custom_ringtone"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4771
    const-string v1, "starred"

    const-string v3, "starred"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4774
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 4775
    .local v4, presenceColumns:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "im_protocol"

    const-string v3, "im_protocol"

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4776
    const-string v1, "im_handle"

    const-string v3, "im_handle"

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4777
    const-string v1, "im_account"

    const-string v3, "im_account"

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4778
    const-string v1, "mode"

    const-string v3, "mode"

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4779
    const-string v1, "status"

    const-string v3, "status"

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4783
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 4784
    .local v5, syncColumns:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "_sync_id"

    const-string v3, "_sync_id"

    invoke-virtual {v5, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4785
    const-string v1, "_sync_time"

    const-string v3, "_sync_time"

    invoke-virtual {v5, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4786
    const-string v1, "_sync_version"

    const-string v3, "_sync_version"

    invoke-virtual {v5, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4787
    const-string v1, "_sync_local_id"

    const-string v3, "_sync_local_id"

    invoke-virtual {v5, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4788
    const-string v1, "_sync_dirty"

    const-string v3, "_sync_dirty"

    invoke-virtual {v5, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4789
    const-string v1, "_sync_account"

    const-string v3, "_sync_account"

    invoke-virtual {v5, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4792
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 4793
    .local v3, phonesColumns:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "number"

    const-string v6, "number"

    invoke-virtual {v3, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4794
    const-string v1, "number_key"

    const-string v6, "number_key"

    invoke-virtual {v3, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4795
    const-string v1, "type"

    const-string v6, "phones.type AS type"

    invoke-virtual {v3, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4796
    const-string v1, "label"

    const-string v6, "phones.label AS label"

    invoke-virtual {v3, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4799
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4800
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "_id"

    const-string v7, "people._id AS _id"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4801
    const-string v6, "primary_phone"

    const-string v7, "primary_phone"

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4802
    const-string v6, "primary_email"

    const-string v7, "primary_email"

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4803
    const-string v6, "primary_organization"

    const-string v7, "primary_organization"

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4804
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 4805
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 4806
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 4809
    const-string v6, "_sync_id"

    const-string v7, "people._sync_id AS _sync_id"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4810
    const-string v6, "_sync_time"

    const-string v7, "people._sync_time AS _sync_time"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4811
    const-string v6, "_sync_version"

    const-string v7, "people._sync_version AS _sync_version"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4812
    const-string v6, "_sync_local_id"

    const-string v7, "people._sync_local_id AS _sync_local_id"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4813
    const-string v6, "_sync_dirty"

    const-string v7, "people._sync_dirty AS _sync_dirty"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4814
    const-string v6, "_sync_account"

    const-string v7, "people._sync_account AS _sync_account"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4816
    sput-object v1, Lcom/android/providers/contacts/ContactsProvider;->sPeopleProjectionMap:Ljava/util/HashMap;

    .line 4819
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v6, Lcom/android/providers/contacts/ContactsProvider;->sPeopleProjectionMap:Ljava/util/HashMap;

    invoke-direct {v1, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 4820
    .restart local v1       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "photo_data"

    const-string v7, "photos.data AS photo_data"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4821
    sput-object v1, Lcom/android/providers/contacts/ContactsProvider;->sPeopleWithPhotoProjectionMap:Ljava/util/HashMap;

    .line 4824
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4825
    .restart local v1       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "_id"

    const-string v7, "people._id AS _id"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4826
    const-string v6, "data"

    const-string v7, "contact_methods.data AS data"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4827
    const-string v6, "kind"

    const-string v7, "contact_methods.kind AS kind"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4828
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 4829
    sput-object v1, Lcom/android/providers/contacts/ContactsProvider;->sPeopleWithEmailOrImProjectionMap:Ljava/util/HashMap;

    .line 4833
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v6, Lcom/android/providers/contacts/ContactsProvider;->sPeopleProjectionMap:Ljava/util/HashMap;

    invoke-direct {v1, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 4834
    .restart local v1       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "email_data"

    const-string v7, "contact_methods.data AS email_data"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4835
    sput-object v1, Lcom/android/providers/contacts/ContactsProvider;->sPeopleWithEmailProjectionMap:Ljava/util/HashMap;

    .line 4838
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v6, Lcom/android/providers/contacts/ContactsProvider;->sPeopleProjectionMap:Ljava/util/HashMap;

    invoke-direct {v1, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 4839
    .restart local v1       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "photo_data"

    const-string v7, "photos.data AS photo_data"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4840
    const-string v6, "drmphoto_data"

    const-string v7, "drmphotos.data AS drmphoto_data"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4841
    sput-object v1, Lcom/android/providers/contacts/ContactsProvider;->sPeopleWithDrmPhotoProjectionMap:Ljava/util/HashMap;

    .line 4844
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v6, Lcom/android/providers/contacts/ContactsProvider;->sPeopleProjectionMap:Ljava/util/HashMap;

    invoke-direct {v1, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 4845
    .restart local v1       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "photo_data"

    const-string v7, "photos.data AS photo_data"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4846
    const-string v6, "email_data"

    const-string v7, "contact_methods.data AS email_data"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4847
    sput-object v1, Lcom/android/providers/contacts/ContactsProvider;->sPeopleWithPhotoEmailProjectionMap:Ljava/util/HashMap;

    .line 4850
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v6, Lcom/android/providers/contacts/ContactsProvider;->sPeopleProjectionMap:Ljava/util/HashMap;

    invoke-direct {v1, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 4851
    .restart local v1       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "photo_data"

    const-string v7, "photos.data AS photo_data"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4852
    const-string v6, "drmphoto_data"

    const-string v7, "drmphotos.data AS drmphoto_data"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4853
    const-string v6, "email_data"

    const-string v7, "contact_methods.data AS email_data"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4854
    sput-object v1, Lcom/android/providers/contacts/ContactsProvider;->sPeopleWithDrmPhotoEmailProjectionMap:Ljava/util/HashMap;

    .line 4858
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4859
    .restart local v1       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "_id"

    const-string v7, "groups._id AS _id"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4860
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 4861
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 4862
    sput-object v1, Lcom/android/providers/contacts/ContactsProvider;->sGroupsProjectionMap:Ljava/util/HashMap;

    .line 4865
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4866
    .restart local v1       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "_id"

    const-string v7, "groupmembership._id AS _id"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4867
    const-string v6, "person"

    const-string v7, "groupmembership.person AS person"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4868
    const-string v6, "group_id"

    const-string v7, "groups._id AS group_id"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4869
    const-string v6, "group_sync_account"

    const-string v7, "group_sync_account"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4870
    const-string v6, "group_sync_id"

    const-string v7, "group_sync_id"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4871
    const-string v6, "member_position"

    const-string v7, "member_position"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4872
    const-string v6, "isprimary"

    const-string v7, "isprimary"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4873
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 4874
    sput-object v1, Lcom/android/providers/contacts/ContactsProvider;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    .line 4877
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #groupsColumns:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider;->sPeopleProjectionMap:Ljava/util/HashMap;

    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 4878
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "times_contacted"

    const-string v6, "9223372036854775807 AS times_contacted"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4879
    const-string v1, "photo_data"

    const-string v6, "photos.data AS photo_data"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4880
    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sStrequentStarredProjectionMap:Ljava/util/HashMap;

    .line 4883
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4884
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "_id"

    const-string v6, "_id"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4885
    const-string v1, "number"

    const-string v6, "number"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4886
    const-string v1, "date"

    const-string v6, "date"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4887
    const-string v1, "duration"

    const-string v6, "duration"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4888
    const-string v1, "type"

    const-string v6, "type"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4889
    const-string v1, "new"

    const-string v6, "new"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4890
    const-string v1, "name"

    const-string v6, "name"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4891
    const-string v1, "numbertype"

    const-string v6, "numbertype"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4892
    const-string v1, "numberlabel"

    const-string v6, "numberlabel"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4893
    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    .line 4896
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4897
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "_id"

    const-string v6, "phones._id AS _id"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4898
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 4899
    const-string v1, "person"

    const-string v3, "phones.person AS person"

    .end local v3           #phonesColumns:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4900
    const-string v1, "isprimary"

    const-string v3, "isprimary"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4901
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 4902
    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sPhonesProjectionMap:Ljava/util/HashMap;

    .line 4905
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider;->sPhonesProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 4906
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 4907
    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sPhonesWithPresenceProjectionMap:Ljava/util/HashMap;

    .line 4910
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4911
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "_id"

    const-string v3, "organizations._id AS _id"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4912
    const-string v1, "label"

    const-string v3, "label"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4913
    const-string v1, "type"

    const-string v3, "type"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4914
    const-string v1, "person"

    const-string v3, "person"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4915
    const-string v1, "company"

    const-string v3, "company"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4916
    const-string v1, "title"

    const-string v3, "title"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4917
    const-string v1, "isprimary"

    const-string v3, "isprimary"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4918
    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sOrganizationsProjectionMap:Ljava/util/HashMap;

    .line 4921
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4922
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "_id"

    const-string v3, "_id"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4923
    const-string v1, "name"

    const-string v3, "name"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4924
    const-string v1, "value"

    const-string v3, "value"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4925
    const-string v1, "person"

    const-string v3, "person"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4926
    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sExtensionsProjectionMap:Ljava/util/HashMap;

    .line 4929
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4930
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "_id"

    const-string v3, "contact_methods._id AS _id"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4931
    const-string v1, "kind"

    const-string v3, "kind"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4932
    const-string v1, "type"

    const-string v3, "type"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4933
    const-string v1, "label"

    const-string v3, "label"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4934
    const-string v1, "data"

    const-string v3, "data"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4935
    const-string v1, "aux_data"

    const-string v3, "aux_data"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4936
    const-string v1, "person"

    const-string v3, "contact_methods.person AS person"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4937
    const-string v1, "isprimary"

    const-string v3, "isprimary"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4938
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 4939
    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsProjectionMap:Ljava/util/HashMap;

    .line 4942
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 4943
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 4944
    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsWithPresenceProjectionMap:Ljava/util/HashMap;

    .line 4947
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4948
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "name"

    const-string v3, "name"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4949
    const-string v1, "data"

    const-string v3, "data"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4950
    const-string v1, "_id"

    const-string v3, "contact_methods._id AS _id"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4951
    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sEmailSearchProjectionMap:Ljava/util/HashMap;

    .line 4954
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4955
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "_id"

    const-string v3, "presence._id AS _id"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4956
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 4957
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 4958
    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sPresenceProjectionMap:Ljava/util/HashMap;

    .line 4961
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4962
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "suggest_text_1"

    const-string v2, "(CASE WHEN (name IS NOT NULL AND name != \'\') THEN name ELSE (CASE WHEN primary_organization is NOT NULL THEN (SELECT company FROM organizations WHERE organizations._id = primary_organization) ELSE (CASE WHEN primary_phone IS NOT NULL THEN (SELECT number FROM phones WHERE phones._id = primary_phone) ELSE (CASE WHEN primary_email IS NOT NULL THEN (SELECT data FROM contact_methods WHERE contact_methods._id = primary_email) ELSE null END) END) END) END) AS suggest_text_1"

    .end local v2           #peopleColumns:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4964
    const-string v1, "suggest_intent_data_id"

    const-string v2, "_id AS suggest_intent_data_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4966
    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4967
    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sSearchSuggestionsProjectionMap:Ljava/util/HashMap;

    .line 4970
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4971
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "_id"

    const-string v2, "photos._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4972
    const-string v1, "local_version"

    const-string v2, "local_version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4973
    const-string v1, "exists_on_server"

    const-string v2, "exists_on_server"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4974
    const-string v1, "sync_error"

    const-string v2, "sync_error"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4975
    const-string v1, "person"

    const-string v2, "person"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4976
    const-string v1, "data"

    const-string v2, "data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4977
    const-string v1, "download_required"

    const-string v2, "(exists_on_server!=0  AND sync_error IS NULL  AND (local_version IS NULL OR _sync_version != local_version)) AS download_required"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4982
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 4983
    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sPhotosProjectionMap:Ljava/util/HashMap;

    .line 4986
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4987
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "_id"

    const-string v2, "people._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4988
    const-string v1, "name"

    const-string v2, "(CASE WHEN (name IS NOT NULL AND name != \'\') THEN name ELSE (CASE WHEN primary_organization is NOT NULL THEN (SELECT company FROM organizations WHERE organizations._id = primary_organization) ELSE (CASE WHEN primary_phone IS NOT NULL THEN (SELECT number FROM phones WHERE phones._id = primary_phone) ELSE (CASE WHEN primary_email IS NOT NULL THEN (SELECT data FROM contact_methods WHERE contact_methods._id = primary_email) ELSE null END) END) END) END) AS name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4992
    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sLiveFoldersProjectionMap:Ljava/util/HashMap;

    .line 4995
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sPhonesTable:Ljava/lang/String;

    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "number"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/providers/contacts/ContactsProvider;->buildOrderBy(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sPhonesKeyOrderBy:Ljava/lang/String;

    .line 4996
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsTable:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "data"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "kind"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/providers/contacts/ContactsProvider;->buildOrderBy(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsKeyOrderBy:Ljava/lang/String;

    .line 4998
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sOrganizationsTable:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "company"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/providers/contacts/ContactsProvider;->buildOrderBy(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sOrganizationsKeyOrderBy:Ljava/lang/String;

    .line 4999
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sGroupmembershipTable:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "group_sync_account"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/providers/contacts/ContactsProvider;->buildOrderBy(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sGroupmembershipKeyOrderBy:Ljava/lang/String;

    .line 5002
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sPhonesKeyColumns:[Ljava/lang/String;

    .line 5003
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "kind"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsKeyColumns:[Ljava/lang/String;

    .line 5004
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "company"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sOrganizationsKeyColumns:[Ljava/lang/String;

    .line 5005
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "group_sync_account"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sGroupmembershipKeyColumns:[Ljava/lang/String;

    .line 5006
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sExtensionsKeyColumns:[Ljava/lang/String;

    .line 5008
    const-string v0, "groups._id=groupmembership.group_id"

    .line 5009
    .local v0, groupJoinByLocalId:Ljava/lang/String;
    const-string v1, "(groups._sync_account=groupmembership.group_sync_account AND groups._sync_id=groupmembership.group_sync_id)"

    .line 5014
    .local v1, groupJoinByServerId:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #groupJoinByLocalId:Ljava/lang/String;
    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    .end local v1           #groupJoinByServerId:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider;->sGroupsJoinString:Ljava/lang/String;

    .line 5015
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 248
    const-string v0, "contacts.db"

    const/16 v1, 0x8d

    sget-object v2, Landroid/provider/Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v1, v2}, Landroid/content/AbstractSyncableContentProvider;-><init>(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 178
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    .line 182
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mValuesLocal:Landroid/content/ContentValues;

    .line 184
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mAccounts:[Ljava/lang/String;

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mAccountsLock:Ljava/lang/Object;

    .line 249
    const-string v0, "ContactsProvider"

    const-string v1, "> ContactsProvider()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mPeopleInserter:Landroid/database/DatabaseUtils$InsertHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPeopleSyncId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPhotosSyncId:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPhotosSyncTime:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPhotosSyncVersion:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPhotosSyncAccount:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPhotosExistsOnServer:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPhotosSyncError:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPhotosSyncDirty:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPhotosPersonId:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mPhonesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPhonesPersonId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPeopleSyncTime:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPhonesLabel:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPhonesType:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPhonesNumber:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPhonesNumberKey:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPhonesIsPrimary:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/providers/contacts/ContactsProvider;Ljava/lang/String;I)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider;->getRankOfType(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mContactMethodsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexContactMethodsPersonId:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexContactMethodsLabel:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexContactMethodsKind:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPeopleSyncVersion:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexContactMethodsType:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexContactMethodsData:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexContactMethodsAuxData:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexContactMethodsIsPrimary:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mOrganizationsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexOrganizationsPersonId:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexOrganizationsLabel:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexOrganizationsType:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexOrganizationsCompany:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexOrganizationsTitle:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPeopleSyncDirty:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexOrganizationsIsPrimary:I

    return v0
.end method

.method static synthetic access$4100(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mGroupMembershipInserter:Landroid/database/DatabaseUtils$InsertHelper;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexGroupMembershipPersonId:I

    return v0
.end method

.method static synthetic access$4300(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexGroupMembershipGroupSyncAccount:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexGroupMembershipGroupSyncId:I

    return v0
.end method

.method static synthetic access$4500(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mExtensionsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexExtensionsPersonId:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexExtensionsName:I

    return v0
.end method

.method static synthetic access$4800(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexExtensionsValue:I

    return v0
.end method

.method static synthetic access$4900(Lcom/android/providers/contacts/ContactsProvider;J)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider;->queryGroupMembershipContainsStarred(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPeopleSyncAccount:I

    return v0
.end method

.method static synthetic access$5000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sPhonesKeyOrderBy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5100()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sPhonesKeyColumns:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsKeyOrderBy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5300()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsKeyColumns:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sOrganizationsKeyOrderBy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5500()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sOrganizationsKeyColumns:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sGroupmembershipKeyOrderBy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5700()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sGroupmembershipKeyColumns:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5800()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sExtensionsKeyColumns:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/providers/contacts/ContactsProvider;ILjava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsProvider;->findNewPrimary(ILjava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPeopleName:I

    return v0
.end method

.method static synthetic access$6000(Lcom/android/providers/contacts/ContactsProvider;ILjava/lang/Long;Ljava/lang/Long;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsProvider;->clearOtherIsPrimary(ILjava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mGroupsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPeoplePhoneticName:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/providers/contacts/ContactsProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPeopleNotes:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

    return-object v0
.end method

.method protected static addIdToWhereClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "id"
    .parameter "where"

    .prologue
    .line 3442
    if-eqz p0, :cond_24

    .line 3443
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3444
    .local v0, whereSb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3445
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 3446
    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3447
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3448
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3450
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3452
    .end local v0           #whereSb:Ljava/lang/StringBuilder;
    :goto_23
    return-object v1

    :cond_24
    move-object v1, p1

    goto :goto_23
.end method

.method private addPersonIdToWhereClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "personId"
    .parameter "where"

    .prologue
    .line 2644
    if-eqz p1, :cond_26

    .line 2645
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "person="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2646
    .local v0, whereSb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2647
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 2648
    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2652
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2654
    .end local v0           #whereSb:Ljava/lang/StringBuilder;
    :goto_25
    return-object v1

    :cond_26
    move-object v1, p2

    goto :goto_25
.end method

.method private appendSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .parameter "selectionArgs"
    .parameter "newArg"

    .prologue
    const/4 v3, 0x0

    .line 1766
    if-eqz p1, :cond_6

    array-length v2, p1

    if-nez v2, :cond_c

    .line 1767
    :cond_6
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v3

    .line 1773
    :goto_b
    return-object v2

    .line 1769
    :cond_c
    array-length v0, p1

    .line 1770
    .local v0, length:I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 1771
    .local v1, newArgs:[Ljava/lang/String;
    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1772
    aput-object p2, v1, v0

    move-object v2, v1

    .line 1773
    goto :goto_b
.end method

.method private buildGroupNameMatchWhereClause(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "groupName"

    .prologue
    .line 1735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "people._id IN (SELECT person FROM groupmembership JOIN groups ON (group_id=groups._id OR (group_sync_id = groups._sync_id AND group_sync_account = groups._sync_account)) WHERE name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildGroupSystemIdMatchWhereClause(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "groupSystemId"

    .prologue
    .line 1718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "people._id IN (SELECT person FROM groupmembership JOIN groups ON (group_id=groups._id OR (group_sync_id = groups._sync_id AND group_sync_account = groups._sync_account)) WHERE system_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static varargs buildOrderBy(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "table"
    .parameter "columns"

    .prologue
    .line 4633
    const/4 v4, 0x0

    .line 4634
    .local v4, sb:Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_23

    aget-object v1, v0, v2

    .line 4635
    .local v1, column:Ljava/lang/String;
    if-nez v4, :cond_1d

    .line 4636
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #sb:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 4640
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    :goto_f
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4641
    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4642
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4634
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 4638
    :cond_1d
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 4644
    .end local v1           #column:Ljava/lang/String;
    :cond_23
    if-nez v4, :cond_28

    const-string v5, ""

    :goto_27
    return-object v5

    :cond_28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_27
.end method

.method private clearOtherIsPrimary(ILjava/lang/Long;Ljava/lang/Long;)V
    .registers 10
    .parameter "kind"
    .parameter "personId"
    .parameter "itemId"

    .prologue
    .line 3406
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsProvider;->kindToTable(I)Ljava/lang/String;

    move-result-object v1

    .line 3407
    .local v1, table:Ljava/lang/String;
    if-nez p2, :cond_e

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "personId must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3408
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3409
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v2, "person="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3410
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3411
    if-eqz p3, :cond_25

    .line 3412
    const-string v2, " and _id!="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3413
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3415
    :cond_25
    sget-object v2, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsTable:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 3416
    const-string v2, " and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3417
    const-string v2, "kind"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3418
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3419
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3422
    :cond_3f
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider;->mValuesLocal:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 3423
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider;->mValuesLocal:Landroid/content/ContentValues;

    const-string v3, "isprimary"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3424
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider;->mValuesLocal:Landroid/content/ContentValues;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3425
    return-void
.end method

.method private createTypeLabelTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "db"
    .parameter "table"
    .parameter "operation"

    .prologue
    .line 1019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_typeAndLabel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1020
    .local v0, name:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TRIGGER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AFTER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ON "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   WHEN (NEW.type != 0 AND NEW.label IS NOT NULL) OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "        (NEW.type = 0 AND NEW.label IS NULL)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   BEGIN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "     SELECT RAISE (ABORT, \'exactly one of type or label must be set\'); "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   END"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1026
    return-void
.end method

.method private deleteFromGroups(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 33
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 2745
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v24

    .line 2746
    .local v24, modifiedAccounts:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    sget-object v6, Lcom/android/providers/contacts/ContactsProvider;->sGroupsTable:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 2749
    .local v15, cursor:Landroid/database/Cursor;
    :try_start_16
    const-string v5, "name"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 2750
    .local v20, indexName:I
    const-string v5, "_sync_account"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 2751
    .local v22, indexSyncAccount:I
    const-string v5, "_sync_id"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 2752
    .local v23, indexSyncId:I
    const-string v5, "_id"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 2753
    .local v19, indexId:I
    const-string v5, "should_sync"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 2754
    .local v21, indexShouldSync:I
    :cond_34
    :goto_34
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 2755
    move-object v0, v15

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 2756
    .local v26, oldName:Ljava/lang/String;
    move-object v0, v15

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 2757
    .local v28, syncAccount:Ljava/lang/String;
    move-object v0, v15

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 2758
    .local v29, syncId:Ljava/lang/String;
    move-object v0, v15

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_9f

    const/4 v5, 0x1

    move/from16 v27, v5

    .line 2759
    .local v27, shouldSync:Z
    :goto_5f
    move-object v0, v15

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 2760
    .local v17, id:J
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v5

    move-wide/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider;->fixupPeopleStarredOnGroupRename(Ljava/lang/String;Ljava/lang/String;J)V

    .line 2761
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8a

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8a

    .line 2762
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v5

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider;->fixupPeopleStarredOnGroupRename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2764
    :cond_8a
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_34

    if-eqz v27, :cond_34

    .line 2765
    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_99
    .catchall {:try_start_16 .. :try_end_99} :catchall_9a

    goto :goto_34

    .line 2769
    .end local v17           #id:J
    .end local v19           #indexId:I
    .end local v20           #indexName:I
    .end local v21           #indexShouldSync:I
    .end local v22           #indexSyncAccount:I
    .end local v23           #indexSyncId:I
    .end local v26           #oldName:Ljava/lang/String;
    .end local v27           #shouldSync:Z
    .end local v28           #syncAccount:Ljava/lang/String;
    .end local v29           #syncId:Ljava/lang/String;
    :catchall_9a
    move-exception v5

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v5

    .line 2758
    .restart local v19       #indexId:I
    .restart local v20       #indexName:I
    .restart local v21       #indexShouldSync:I
    .restart local v22       #indexSyncAccount:I
    .restart local v23       #indexSyncId:I
    .restart local v26       #oldName:Ljava/lang/String;
    .restart local v28       #syncAccount:Ljava/lang/String;
    .restart local v29       #syncId:Ljava/lang/String;
    :cond_9f
    const/4 v5, 0x0

    move/from16 v27, v5

    goto :goto_5f

    .line 2769
    .end local v26           #oldName:Ljava/lang/String;
    .end local v28           #syncAccount:Ljava/lang/String;
    .end local v29           #syncId:Ljava/lang/String;
    :cond_a3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    sget-object v6, Lcom/android/providers/contacts/ContactsProvider;->sGroupsTable:Ljava/lang/String;

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    .line 2773
    .local v25, numRows:I
    if-lez v25, :cond_e1

    .line 2774
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider;->isTemporary()Z

    move-result v5

    if-nez v5, :cond_e1

    .line 2775
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 2776
    .local v14, cr:Landroid/content/ContentResolver;
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_cb
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2777
    .local v13, account:Ljava/lang/String;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v13

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider;->onLocalChangesForAccount(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_cb

    .line 2781
    .end local v13           #account:Ljava/lang/String;
    .end local v14           #cr:Landroid/content/ContentResolver;
    .end local v16           #i$:Ljava/util/Iterator;
    :cond_e1
    return v25
.end method

.method private deleteFromPeople(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 24
    .parameter "rowId"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 2692
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 2693
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static/range {p1 .. p2}, Lcom/android/providers/contacts/ContactsProvider;->addIdToWhereClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2694
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider;->sPeopleTable:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2696
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_16
    const-string v5, "_sync_id"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 2697
    .local v17, idxSyncId:I
    const-string v5, "_sync_account"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 2698
    .local v16, idxSyncAccount:I
    const-string v5, "_sync_version"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 2699
    .local v18, idxSyncVersion:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mDeletedPeopleInserter:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v5, v0

    const-string v6, "_sync_id"

    invoke-virtual {v5, v6}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 2700
    .local v14, dstIdxSyncId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mDeletedPeopleInserter:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v5, v0

    const-string v6, "_sync_account"

    invoke-virtual {v5, v6}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 2702
    .local v13, dstIdxSyncAccount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mDeletedPeopleInserter:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v5, v0

    const-string v6, "_sync_version"

    invoke-virtual {v5, v6}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 2704
    .local v15, dstIdxSyncVersion:I
    :cond_49
    :goto_49
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 2705
    move-object v0, v12

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 2706
    .local v19, syncId:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 2708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mDeletedPeopleInserter:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    .line 2709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mDeletedPeopleInserter:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v5, v0

    move-object v0, v5

    move v1, v14

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 2710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mDeletedPeopleInserter:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v5, v0

    move-object v0, v12

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v13, v6}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 2711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mDeletedPeopleInserter:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v5, v0

    move-object v0, v12

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v15, v6}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 2712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mDeletedPeopleInserter:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J
    :try_end_96
    .catchall {:try_start_16 .. :try_end_96} :catchall_97

    goto :goto_49

    .line 2715
    .end local v13           #dstIdxSyncAccount:I
    .end local v14           #dstIdxSyncId:I
    .end local v15           #dstIdxSyncVersion:I
    .end local v16           #idxSyncAccount:I
    .end local v17           #idxSyncId:I
    .end local v18           #idxSyncVersion:I
    .end local v19           #syncId:Ljava/lang/String;
    :catchall_97
    move-exception v5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v5

    .restart local v13       #dstIdxSyncAccount:I
    .restart local v14       #dstIdxSyncId:I
    .restart local v15       #dstIdxSyncVersion:I
    .restart local v16       #idxSyncAccount:I
    .restart local v17       #idxSyncId:I
    .restart local v18       #idxSyncVersion:I
    :cond_9c
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2719
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider;->notifyContactsDBOnChange()V

    .line 2723
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider;->sPeopleTable:Ljava/lang/String;

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    return v5
.end method

.method private ensureSyncAccountIsSet(Landroid/content/ContentValues;)V
    .registers 7
    .parameter "values"

    .prologue
    const-string v1, "_sync_account"

    .line 2293
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider;->mAccountsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2294
    :try_start_5
    const-string v2, "_sync_account"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2295
    .local v0, account:Ljava/lang/String;
    if-nez v0, :cond_1c

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider;->mAccounts:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1c

    .line 2296
    const-string v2, "_sync_account"

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider;->mAccounts:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2298
    :cond_1c
    monitor-exit v1

    .line 2299
    return-void

    .line 2298
    .end local v0           #account:Ljava/lang/String;
    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method private findNewPrimary(ILjava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 19
    .parameter "kind"
    .parameter "personId"
    .parameter "itemId"

    .prologue
    .line 3347
    invoke-virtual/range {p0 .. p1}, Lcom/android/providers/contacts/ContactsProvider;->kindToTable(I)Ljava/lang/String;

    move-result-object v3

    .line 3348
    .local v3, table:Ljava/lang/String;
    if-nez p2, :cond_e

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "personId must not be null"

    .end local v3           #table:Ljava/lang/String;
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3349
    .restart local v3       #table:Ljava/lang/String;
    :cond_e
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 3350
    .local v14, sb:Ljava/lang/StringBuilder;
    const-string v2, "person="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3351
    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3352
    if-eqz p3, :cond_2b

    .line 3353
    const-string v2, " and _id!="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3354
    move-object v0, v14

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3356
    :cond_2b
    sget-object v2, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 3357
    const-string v2, " and "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3358
    const-string v2, "kind"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3359
    const-string v2, "="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3360
    move-object v0, v14

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3363
    :cond_48
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v4, Lcom/android/providers/contacts/ContactsProvider;->sIdTypeProjection:[Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 3366
    .local v11, cursor:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 3367
    .local v12, newPrimaryId:Ljava/lang/Long;
    const/4 v10, -0x1

    .line 3368
    .local v10, bestRank:I
    :cond_5c
    :goto_5c
    :try_start_5c
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 3369
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {p0, v3, v2}, Lcom/android/providers/contacts/ContactsProvider;->getRankOfType(Ljava/lang/String;I)I

    move-result v13

    .line 3370
    .local v13, rank:I
    const/4 v2, -0x1

    if-eq v10, v2, :cond_70

    if-ge v13, v10, :cond_5c

    .line 3371
    :cond_70
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_78
    .catchall {:try_start_5c .. :try_end_78} :catchall_7f

    move-result-object v12

    .line 3372
    move v10, v13

    goto :goto_5c

    .line 3377
    .end local v13           #rank:I
    :cond_7b
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    return-object v12

    :catchall_7f
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private fixupGroupMembershipAfterPeopleUpdate(Ljava/lang/String;JZ)V
    .registers 19
    .parameter "account"
    .parameter "personId"
    .parameter "makeStarred"

    .prologue
    .line 2377
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider;->queryAndroidStarredGroupId(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    .line 2378
    .local v4, starredGroupInfo:Landroid/content/ContentValues;
    if-eqz p4, :cond_b2

    .line 2379
    if-nez v4, :cond_44

    .line 2381
    iget-object v7, p0, Lcom/android/providers/contacts/ContactsProvider;->mValuesLocal:Landroid/content/ContentValues;

    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 2382
    iget-object v7, p0, Lcom/android/providers/contacts/ContactsProvider;->mValuesLocal:Landroid/content/ContentValues;

    const-string v8, "name"

    const-string v9, "Starred in Android"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2383
    iget-object v7, p0, Lcom/android/providers/contacts/ContactsProvider;->mValuesLocal:Landroid/content/ContentValues;

    const-string v8, "_sync_dirty"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2384
    iget-object v7, p0, Lcom/android/providers/contacts/ContactsProvider;->mValuesLocal:Landroid/content/ContentValues;

    const-string v8, "_sync_account"

    invoke-virtual {v7, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2385
    iget-object v7, p0, Lcom/android/providers/contacts/ContactsProvider;->mGroupsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    iget-object v8, p0, Lcom/android/providers/contacts/ContactsProvider;->mValuesLocal:Landroid/content/ContentValues;

    invoke-virtual {v7, v8}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2386
    .local v0, groupId:J
    new-instance v4, Landroid/content/ContentValues;

    .end local v4           #starredGroupInfo:Landroid/content/ContentValues;
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2387
    .restart local v4       #starredGroupInfo:Landroid/content/ContentValues;
    const-string v7, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2388
    const-string v7, "_sync_account"

    invoke-virtual {v4, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2392
    .end local v0           #groupId:J
    :cond_44
    const-string v7, "_id"

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 2393
    .local v0, groupId:Ljava/lang/Long;
    const-string v7, "_sync_id"

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2394
    .local v6, syncId:Ljava/lang/String;
    const-string v7, "_sync_account"

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2397
    .local v5, syncAccount:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7f

    const/4 v7, 0x1

    move v3, v7

    .line 2398
    .local v3, hasSyncId:Z
    :goto_5e
    if-eqz v0, :cond_82

    const/4 v7, 0x1

    move v2, v7

    .line 2399
    .local v2, hasGroupId:Z
    :goto_62
    if-nez v2, :cond_85

    if-nez v3, :cond_85

    .line 2400
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "at least one of the groupId or the syncId must be set, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2397
    .end local v2           #hasGroupId:Z
    .end local v3           #hasSyncId:Z
    :cond_7f
    const/4 v7, 0x0

    move v3, v7

    goto :goto_5e

    .line 2398
    .restart local v3       #hasSyncId:Z
    :cond_82
    const/4 v7, 0x0

    move v2, v7

    goto :goto_62

    .line 2405
    .restart local v2       #hasGroupId:Z
    :cond_85
    iget-object v7, p0, Lcom/android/providers/contacts/ContactsProvider;->mValuesLocal:Landroid/content/ContentValues;

    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 2406
    iget-object v7, p0, Lcom/android/providers/contacts/ContactsProvider;->mValuesLocal:Landroid/content/ContentValues;

    const-string v8, "person"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2407
    iget-object v7, p0, Lcom/android/providers/contacts/ContactsProvider;->mValuesLocal:Landroid/content/ContentValues;

    const-string v8, "group_id"

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2408
    iget-object v7, p0, Lcom/android/providers/contacts/ContactsProvider;->mValuesLocal:Landroid/content/ContentValues;

    const-string v8, "group_sync_id"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    iget-object v7, p0, Lcom/android/providers/contacts/ContactsProvider;->mValuesLocal:Landroid/content/ContentValues;

    const-string v8, "group_sync_account"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    iget-object v7, p0, Lcom/android/providers/contacts/ContactsProvider;->mGroupMembershipInserter:Landroid/database/DatabaseUtils$InsertHelper;

    iget-object v8, p0, Lcom/android/providers/contacts/ContactsProvider;->mValuesLocal:Landroid/content/ContentValues;

    invoke-virtual {v7, v8}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    .line 2428
    .end local v0           #groupId:Ljava/lang/Long;
    .end local v2           #hasGroupId:Z
    .end local v3           #hasSyncId:Z
    .end local v5           #syncAccount:Ljava/lang/String;
    .end local v6           #syncId:Ljava/lang/String;
    :cond_b1
    :goto_b1
    return-void

    .line 2412
    :cond_b2
    if-eqz v4, :cond_b1

    .line 2414
    const-string v7, "_sync_account"

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2415
    .restart local v5       #syncAccount:Ljava/lang/String;
    const-string v7, "_sync_id"

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2416
    .restart local v6       #syncId:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e0

    .line 2417
    iget-object v7, p0, Lcom/android/providers/contacts/ContactsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v8, Lcom/android/providers/contacts/ContactsProvider;->sGroupmembershipTable:Ljava/lang/String;

    const-string v9, "person=? AND group_sync_id=? AND group_sync_account=?"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    const/4 v11, 0x2

    aput-object v5, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_b1

    .line 2421
    :cond_e0
    iget-object v7, p0, Lcom/android/providers/contacts/ContactsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v8, Lcom/android/providers/contacts/ContactsProvider;->sGroupmembershipTable:Ljava/lang/String;

    const-string v9, "person=? AND group_id=?"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "_id"

    invoke-virtual {v4, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_b1
.end method

.method private fixupPrimaryAfterUpdate(ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V
    .registers 11
    .parameter "kind"
    .parameter "personId"
    .parameter "changedItemId"
    .parameter "isPrimaryValue"

    .prologue
    const/4 v5, 0x1

    .line 3202
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsProvider;->kindToTable(I)Ljava/lang/String;

    move-result-object v2

    .line 3208
    .local v2, table:Ljava/lang/String;
    if-eqz p4, :cond_2e

    .line 3209
    if-nez p2, :cond_15

    .line 3210
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider;->lookupPerson(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 3213
    :cond_15
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_2f

    move v0, v5

    .line 3214
    .local v0, isPrimary:Z
    :goto_1c
    move-object v1, p3

    .line 3215
    .local v1, newPrimary:Ljava/lang/Long;
    if-nez v0, :cond_23

    .line 3216
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsProvider;->findNewPrimary(ILjava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    .line 3218
    :cond_23
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsProvider;->clearOtherIsPrimary(ILjava/lang/Long;Ljava/lang/Long;)V

    .line 3220
    const/4 v3, 0x5

    if-ne p1, v3, :cond_32

    .line 3221
    const-string v3, "primary_phone"

    invoke-direct {p0, p2, v3, v1}, Lcom/android/providers/contacts/ContactsProvider;->updatePeoplePrimary(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V

    .line 3228
    .end local v0           #isPrimary:Z
    .end local v1           #newPrimary:Ljava/lang/Long;
    :cond_2e
    :goto_2e
    return-void

    .line 3213
    :cond_2f
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1c

    .line 3222
    .restart local v0       #isPrimary:Z
    .restart local v1       #newPrimary:Ljava/lang/Long;
    :cond_32
    if-ne p1, v5, :cond_3a

    .line 3223
    const-string v3, "primary_email"

    invoke-direct {p0, p2, v3, v1}, Lcom/android/providers/contacts/ContactsProvider;->updatePeoplePrimary(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2e

    .line 3224
    :cond_3a
    const/4 v3, 0x4

    if-ne p1, v3, :cond_2e

    .line 3225
    const-string v3, "primary_organization"

    invoke-direct {p0, p2, v3, v1}, Lcom/android/providers/contacts/ContactsProvider;->updatePeoplePrimary(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2e
.end method

.method private getContactMethodType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 11
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 1908
    const/4 v8, 0x0

    .line 1910
    .local v8, mime:Ljava/lang/String;
    sget-object v2, Lcom/android/providers/contacts/ContactsProvider;->sKindProjection:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1911
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1f

    .line 1913
    :try_start_e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1914
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_2c

    move-result v7

    .line 1915
    .local v7, kind:I
    packed-switch v7, :pswitch_data_32

    .line 1934
    .end local v7           #kind:I
    :cond_1c
    :goto_1c
    :pswitch_1c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1937
    :cond_1f
    return-object v8

    .line 1917
    .restart local v7       #kind:I
    :pswitch_20
    :try_start_20
    const-string v8, "vnd.android.cursor.item/email"

    .line 1918
    goto :goto_1c

    .line 1921
    :pswitch_23
    const-string v8, "vnd.android.cursor.item/jabber-im"

    .line 1922
    goto :goto_1c

    .line 1925
    :pswitch_26
    const-string v8, "vnd.android.cursor.item/postal-address"

    .line 1926
    goto :goto_1c

    .line 1929
    :pswitch_29
    const-string v8, "vnd.android.cursor.item/website"
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_2c

    goto :goto_1c

    .line 1934
    .end local v7           #kind:I
    :catchall_2c
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1915
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_20
        :pswitch_26
        :pswitch_23
        :pswitch_1c
        :pswitch_1c
        :pswitch_29
    .end packed-switch
.end method

.method private getLimit(Landroid/net/Uri;)Ljava/lang/String;
    .registers 11
    .parameter "url"

    .prologue
    const/4 v6, 0x0

    const-string v8, "Invalid limit parameter: "

    const-string v7, "ContactsProvider"

    .line 1692
    const-string v3, "limit"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1693
    .local v2, limit:Ljava/lang/String;
    if-nez v2, :cond_f

    move-object v3, v6

    .line 1706
    :goto_e
    return-object v3

    .line 1698
    :cond_f
    :try_start_f
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1699
    .local v1, l:I
    if-gez v1, :cond_2f

    .line 1700
    const-string v3, "ContactsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid limit parameter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    .line 1701
    goto :goto_e

    .line 1703
    :cond_2f
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_32} :catch_34

    move-result-object v3

    goto :goto_e

    .line 1704
    .end local v1           #l:I
    :catch_34
    move-exception v3

    move-object v0, v3

    .line 1705
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v3, "ContactsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid limit parameter: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    .line 1706
    goto :goto_e
.end method

.method private getRankOfType(Ljava/lang/String;I)I
    .registers 9
    .parameter "table"
    .parameter "type"

    .prologue
    const/4 v5, 0x3

    const/16 v4, 0x3e8

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3301
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sPhonesTable:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3302
    packed-switch p2, :pswitch_data_64

    move v0, v4

    .line 3330
    :goto_12
    return v0

    :pswitch_13
    move v0, v1

    .line 3303
    goto :goto_12

    :pswitch_15
    move v0, v2

    .line 3304
    goto :goto_12

    :pswitch_17
    move v0, v3

    .line 3305
    goto :goto_12

    :pswitch_19
    move v0, v5

    .line 3306
    goto :goto_12

    .line 3307
    :pswitch_1b
    const/4 v0, 0x4

    goto :goto_12

    .line 3308
    :pswitch_1d
    const/4 v0, 0x5

    goto :goto_12

    .line 3309
    :pswitch_1f
    const/4 v0, 0x6

    goto :goto_12

    .line 3310
    :pswitch_21
    const/4 v0, 0x7

    goto :goto_12

    .line 3315
    :cond_23
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsTable:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 3316
    packed-switch p2, :pswitch_data_78

    move v0, v4

    .line 3321
    goto :goto_12

    :pswitch_30
    move v0, v1

    .line 3317
    goto :goto_12

    :pswitch_32
    move v0, v2

    .line 3318
    goto :goto_12

    :pswitch_34
    move v0, v3

    .line 3319
    goto :goto_12

    :pswitch_36
    move v0, v5

    .line 3320
    goto :goto_12

    .line 3325
    :cond_38
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sOrganizationsTable:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 3326
    packed-switch p2, :pswitch_data_84

    move v0, v4

    .line 3330
    goto :goto_12

    :pswitch_45
    move v0, v1

    .line 3327
    goto :goto_12

    :pswitch_47
    move v0, v2

    .line 3328
    goto :goto_12

    :pswitch_49
    move v0, v3

    .line 3329
    goto :goto_12

    .line 3334
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected table, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3302
    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_15
        :pswitch_1f
        :pswitch_21
        :pswitch_19
        :pswitch_1d
    .end packed-switch

    .line 3316
    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_34
        :pswitch_30
        :pswitch_32
        :pswitch_36
    .end packed-switch

    .line 3326
    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_47
        :pswitch_45
        :pswitch_49
    .end packed-switch
.end method

.method private handleSearchSuggestionsQuery(Landroid/net/Uri;Landroid/database/sqlite/SQLiteQueryBuilder;)Landroid/database/Cursor;
    .registers 6
    .parameter "url"
    .parameter "qb"

    .prologue
    .line 1786
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider;->sPeopleTable:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1787
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider;->sSearchSuggestionsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1789
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_41

    .line 1791
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 1795
    .local v0, searchClause:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "people._id IN (SELECT person FROM view_people_data WHERE data LIKE \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1796
    const-string v1, " OR "

    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1798
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider;->buildPeopleLookupWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1846
    .end local v0           #searchClause:Ljava/lang/String;
    :cond_41
    const/4 v1, 0x0

    return-object v1
.end method

.method private insertIntoGroupmembership(Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 21
    .parameter "values"

    .prologue
    .line 2319
    const-string v12, "group_sync_account"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2320
    .local v7, groupSyncAccount:Ljava/lang/String;
    const-string v12, "group_sync_id"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2321
    .local v8, groupSyncId:Ljava/lang/String;
    const-string v12, "person"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 2322
    .local v9, personId:Ljava/lang/Long;
    const-string v12, "group_id"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8f

    .line 2323
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_32

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4e

    .line 2324
    :cond_32
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "insertIntoGroupmembership: no GROUP_ID wasn\'t specified and non-empty GROUP_SYNC_ID and GROUP_SYNC_ACCOUNT fields weren\'t specifid, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2329
    :cond_4e
    const-wide/16 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    const-string v15, "SELECT COUNT(*) FROM groupmembership WHERE group_sync_id=? AND person=?"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v8, v16, v17

    const/16 v17, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-eqz v12, :cond_109

    .line 2334
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insertIntoGroupmembership: a row with this server key already exists, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2337
    .local v4, errorMessage:Ljava/lang/String;
    const-string v12, "ContactsProvider"

    invoke-static {v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    const/4 v12, 0x0

    .line 2372
    .end local v4           #errorMessage:Ljava/lang/String;
    :goto_8e
    return-object v12

    .line 2341
    :cond_8f
    const-string v12, "group_id"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 2342
    .local v5, groupId:J
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_a8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c4

    .line 2343
    :cond_a8
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "insertIntoGroupmembership: GROUP_ID was specified but GROUP_SYNC_ID and GROUP_SYNC_ACCOUNT fields were also specifid, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2348
    :cond_c4
    const-wide/16 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    const-string v15, "SELECT COUNT(*) FROM groupmembership where group_id=? AND person=?"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-eqz v12, :cond_109

    .line 2351
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insertIntoGroupmembership: a row with this local key already exists, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2354
    .restart local v4       #errorMessage:Ljava/lang/String;
    const-string v12, "ContactsProvider"

    invoke-static {v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    const/4 v12, 0x0

    goto :goto_8e

    .line 2359
    .end local v4           #errorMessage:Ljava/lang/String;
    .end local v5           #groupId:J
    :cond_109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mGroupMembershipInserter:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v12, v0

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v10

    .line 2360
    .local v10, rowId:J
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-gtz v12, :cond_139

    .line 2361
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insertIntoGroupmembership: the insert failed, values are "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2363
    .restart local v4       #errorMessage:Ljava/lang/String;
    const-string v12, "ContactsProvider"

    invoke-static {v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    const/4 v12, 0x0

    goto/16 :goto_8e

    .line 2368
    .end local v4           #errorMessage:Ljava/lang/String;
    :cond_139
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider;->isTemporary()Z

    move-result v12

    if-nez v12, :cond_158

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v0, p0

    move-wide v1, v12

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider;->queryGroupMembershipContainsStarred(J)Z

    move-result v12

    if-eqz v12, :cond_158

    .line 2369
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-wide v1, v12

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider;->fixupPeopleStarred(JZ)I

    .line 2372
    :cond_158
    sget-object v12, Landroid/provider/Contacts$GroupMembership;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_8e
.end method

.method private insertOwner(Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 9
    .parameter "values"

    .prologue
    .line 2303
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.WRITE_OWNER_DATA"

    const-string v6, "No permission to set owner info"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    sget-object v4, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v4, p1}, Lcom/android/providers/contacts/ContactsProvider;->insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 2310
    .local v3, uri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 2311
    .local v0, id:J
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "owner-info"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2313
    .local v2, prefs:Landroid/content/SharedPreferences$Editor;
    const-string v4, "owner-id"

    invoke-interface {v2, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2314
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2315
    return-object v3
.end method

.method private maybeCreatePresenceTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 10
    .parameter "db"

    .prologue
    const-string v7, "im_handle"

    const-string v6, "im_account"

    const-string v5, ", "

    const-string v4, ");"

    const-string v3, " TEXT,"

    .line 1032
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider;->isTemporary()Z

    move-result v1

    if-nez v1, :cond_e0

    .line 1033
    const-string v1, "ATTACH DATABASE \':memory:\' AS presence_db;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1034
    const-string v0, "presence_db."

    .line 1038
    .local v0, cpDbName:Ljava/lang/String;
    :goto_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "presence ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER PRIMARY KEY,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "person"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER REFERENCES people(_id),"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "im_protocol"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "im_handle"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "im_account"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UNIQUE("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "im_protocol"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "im_handle"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "im_account"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1050
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE INDEX IF NOT EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "presenceIndex ON presence ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "person"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1052
    return-void

    .line 1036
    .end local v0           #cpDbName:Ljava/lang/String;
    :cond_e0
    const-string v0, ""

    .restart local v0       #cpDbName:Ljava/lang/String;
    goto/16 :goto_17
.end method

.method private notifyContactsDBOnChange()V
    .registers 1

    .prologue
    .line 2729
    return-void
.end method

.method private queryAndroidStarredGroupId(Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 14
    .parameter "account"

    .prologue
    const/4 v11, 0x2

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    const-string v1, "Starred in Android"

    .line 1943
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 1944
    const-string v3, "_sync_account=? AND name=?"

    .line 1945
    .local v3, whereString:Ljava/lang/String;
    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v7

    const-string v0, "Starred in Android"

    aput-object v1, v4, v10

    .line 1950
    .local v4, whereArgs:[Ljava/lang/String;
    :goto_16
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider;->sGroupsTable:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v6, "_id"

    aput-object v6, v2, v7

    const-string v6, "_sync_id"

    aput-object v6, v2, v10

    const-string v6, "_sync_account"

    aput-object v6, v2, v11

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1954
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_31
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1955
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1956
    .local v9, result:Landroid/content/ContentValues;
    const-string v0, "_id"

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1957
    const-string v0, "_sync_id"

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1958
    const-string v0, "_sync_account"

    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_31 .. :try_end_5e} :catchall_71

    .line 1963
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v0, v9

    .end local v9           #result:Landroid/content/ContentValues;
    :goto_62
    return-object v0

    .line 1947
    .end local v3           #whereString:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_63
    const-string v3, "_sync_account is null AND name=?"

    .line 1948
    .restart local v3       #whereString:Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    const-string v0, "Starred in Android"

    aput-object v1, v4, v7

    .restart local v4       #whereArgs:[Ljava/lang/String;
    goto :goto_16

    .line 1963
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_6c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    goto :goto_62

    :catchall_71
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private queryGroupMembershipContainsStarred(J)Z
    .registers 11
    .parameter "personId"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3458
    const/4 v0, 0x0

    .line 3460
    .local v0, mGroupsMembershipQuery:Landroid/database/sqlite/SQLiteStatement;
    if-nez v0, :cond_28

    .line 3461
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT COUNT(*) FROM groups, groupmembership WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/providers/contacts/ContactsProvider;->sGroupsJoinString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND person=? AND groups.name=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3464
    .local v1, query:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 3466
    .end local v1           #query:Ljava/lang/String;
    :cond_28
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, "Starred in Android"

    aput-object v5, v4, v7

    invoke-static {v0, v4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)J

    move-result-wide v2

    .line 3470
    .local v2, result:J
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 3472
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_44

    move v4, v7

    :goto_43
    return v4

    :cond_44
    move v4, v6

    goto :goto_43
.end method

.method private queryOwner([Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .parameter "projection"

    .prologue
    const/4 v3, 0x0

    .line 1745
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_OWNER_DATA"

    const-string v2, "No permission to access owner info"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "owner-info"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1751
    .local v8, prefs:Landroid/content/SharedPreferences;
    const-string v0, "owner-id"

    const-wide/16 v1, 0x0

    invoke-interface {v8, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1754
    .local v6, ownerId:J
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider;->queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private setIsPrimary(IJJ)V
    .registers 12
    .parameter "kind"
    .parameter "personId"
    .parameter "itemId"

    .prologue
    .line 3382
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsProvider;->kindToTable(I)Ljava/lang/String;

    move-result-object v1

    .line 3383
    .local v1, table:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3384
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v3, "person="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3385
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3387
    sget-object v3, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsTable:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 3388
    const-string v3, " and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3389
    const-string v3, "kind"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3390
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3391
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3394
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3395
    .local v2, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SET isprimary=(_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3397
    return-void
.end method

.method private updateGroups(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 35
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 3116
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_63

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 3117
    .local v17, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 3118
    .local v14, column:Ljava/lang/String;
    const-string v6, "name"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "notes"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "starred"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "custom_ringtone"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "system_id"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "should_sync"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 3121
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "you are not allowed to change column "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3126
    .end local v14           #column:Ljava/lang/String;
    .end local v17           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_63
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v25

    .line 3127
    .local v25, modifiedAccounts:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 3128
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "name"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_81

    const-string v6, "should_sync"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_132

    .line 3129
    :cond_81
    const-string v6, "name"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 3130
    .local v26, newName:Ljava/lang/String;
    sget-object v6, Lcom/android/providers/contacts/ContactsProvider;->sGroupsTable:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 3132
    .local v16, cursor:Landroid/database/Cursor;
    :try_start_98
    const-string v6, "name"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 3133
    .local v22, indexName:I
    const-string v6, "_sync_account"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 3134
    .local v23, indexSyncAccount:I
    const-string v6, "_sync_id"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 3135
    .local v24, indexSyncId:I
    const-string v6, "_id"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 3136
    .local v21, indexId:I
    :cond_bc
    :goto_bc
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_12f

    .line 3137
    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 3138
    .local v29, syncAccount:Ljava/lang/String;
    const-string v6, "name"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_111

    .line 3139
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 3140
    .local v28, oldName:Ljava/lang/String;
    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 3141
    .local v30, syncId:Ljava/lang/String;
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 3142
    .local v19, id:J
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    move-wide/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider;->fixupPeopleStarredOnGroupRename(Ljava/lang/String;Ljava/lang/String;J)V

    .line 3143
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_111

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_111

    .line 3144
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider;->fixupPeopleStarredOnGroupRename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3147
    .end local v19           #id:J
    .end local v28           #oldName:Ljava/lang/String;
    .end local v30           #syncId:Ljava/lang/String;
    :cond_111
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_bc

    const-string v6, "should_sync"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_bc

    .line 3148
    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_129
    .catchall {:try_start_98 .. :try_end_129} :catchall_12a

    goto :goto_bc

    .line 3152
    .end local v21           #indexId:I
    .end local v22           #indexName:I
    .end local v23           #indexSyncAccount:I
    .end local v24           #indexSyncId:I
    .end local v29           #syncAccount:Ljava/lang/String;
    :catchall_12a
    move-exception v6

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v6

    .restart local v21       #indexId:I
    .restart local v22       #indexName:I
    .restart local v23       #indexSyncAccount:I
    .restart local v24       #indexSyncId:I
    :cond_12f
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 3156
    .end local v16           #cursor:Landroid/database/Cursor;
    .end local v21           #indexId:I
    .end local v22           #indexName:I
    .end local v23           #indexSyncAccount:I
    .end local v24           #indexSyncId:I
    .end local v26           #newName:Ljava/lang/String;
    :cond_132
    const-string v6, "_sync_dirty"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3157
    sget-object v6, Lcom/android/providers/contacts/ContactsProvider;->sGroupsTable:Ljava/lang/String;

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v27

    .line 3158
    .local v27, numRows:I
    if-lez v27, :cond_178

    .line 3159
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider;->isTemporary()Z

    move-result v6

    if-nez v6, :cond_178

    .line 3160
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 3161
    .local v15, cr:Landroid/content/ContentResolver;
    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_162
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_178

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 3162
    .local v13, account:Ljava/lang/String;
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v13

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider;->onLocalChangesForAccount(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_162

    .line 3166
    .end local v13           #account:Ljava/lang/String;
    .end local v15           #cr:Landroid/content/ContentResolver;
    :cond_178
    return v27
.end method

.method private updatePeoplePrimary(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 9
    .parameter "personId"
    .parameter "column"
    .parameter "primaryId"

    .prologue
    .line 3436
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mValuesLocal:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 3437
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mValuesLocal:Landroid/content/ContentValues;

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3438
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider;->sPeopleTable:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider;->mValuesLocal:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3439
    return-void
.end method

.method private updateSettings(Landroid/content/ContentValues;)I
    .registers 13
    .parameter "values"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v10, "key"

    .line 3094
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3095
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "_sync_account"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3096
    .local v0, account:Ljava/lang/String;
    const-string v5, "key"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3097
    .local v2, key:Ljava/lang/String;
    if-nez v2, :cond_1e

    .line 3098
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "you must specify the key when updating settings"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3100
    :cond_1e
    if-nez v0, :cond_52

    .line 3101
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider;->sSettingsTable:Ljava/lang/String;

    const-string v6, "_sync_account IS NULL AND key=?"

    new-array v7, v8, [Ljava/lang/String;

    aput-object v2, v7, v9

    invoke-virtual {v1, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3108
    :goto_2b
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider;->sSettingsTable:Ljava/lang/String;

    const-string v6, "key"

    invoke-virtual {v1, v5, v10, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 3109
    .local v3, rowId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_80

    .line 3110
    new-instance v5, Landroid/database/SQLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error updating settings with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3103
    .end local v3           #rowId:J
    :cond_52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 3104
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account cannot be the empty string, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3106
    :cond_71
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider;->sSettingsTable:Ljava/lang/String;

    const-string v6, "_sync_account=? AND key=?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    aput-object v0, v7, v9

    aput-object v2, v7, v8

    invoke-virtual {v1, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2b

    .line 3112
    .restart local v3       #rowId:J
    :cond_80
    return v8
.end method


# virtual methods
.method protected bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 9
    .parameter "db"

    .prologue
    const-string v6, "_sync_account TEXT,"

    const-string v5, "ContactsProvider"

    const-string v4, ""

    const-string v3, "UPDATE"

    const-string v2, "INSERT"

    .line 391
    const-string v0, "ContactsProvider"

    const-string v0, "> bootstrapDatabase()"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-super {p0, p1}, Landroid/content/AbstractSyncableContentProvider;->bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 394
    const-string v0, "CREATE TABLE people (_id INTEGER PRIMARY KEY AUTOINCREMENT,_sync_account TEXT,_sync_id TEXT,_sync_time TEXT,_sync_version TEXT,_sync_local_id INTEGER,_sync_dirty INTEGER NOT NULL DEFAULT 0,_sync_mark INTEGER,name TEXT COLLATE LOCALIZED,notes TEXT COLLATE LOCALIZED,times_contacted INTEGER NOT NULL DEFAULT 0,last_time_contacted INTEGER,starred INTEGER NOT NULL DEFAULT 0,primary_phone INTEGER REFERENCES phones(_id),primary_organization INTEGER REFERENCES organizations(_id),primary_email INTEGER REFERENCES contact_methods(_id),photo_version TEXT,custom_ringtone TEXT,send_to_voicemail INTEGER,phonetic_name TEXT COLLATE LOCALIZED,system_id TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 450
    const-string v0, "CREATE INDEX peopleNameIndex ON people (name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 451
    const-string v0, "CREATE INDEX peopleSyncDirtyIndex ON people (_sync_dirty);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 452
    const-string v0, "CREATE INDEX peopleSyncIdIndex ON people (_sync_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 454
    const-string v0, "CREATE TRIGGER people_timesContacted UPDATE OF last_time_contacted ON people BEGIN UPDATE people SET times_contacted = (new.times_contacted + 1) WHERE _id = new._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 462
    const-string v0, "CREATE TABLE groups (_id INTEGER PRIMARY KEY AUTOINCREMENT,_sync_account TEXT,_sync_id TEXT,_sync_time TEXT,_sync_version TEXT,_sync_local_id INTEGER,_sync_dirty INTEGER NOT NULL DEFAULT 0,_sync_mark INTEGER,name TEXT NOT NULL,notes TEXT,should_sync INTEGER NOT NULL DEFAULT 0,system_id TEXT,custom_ringtone TEXT,starred INTEGER NOT NULL DEFAULT 0,UNIQUE(name,system_id,_sync_account));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 486
    const-string v0, "CREATE INDEX groupsSyncDirtyIndex ON groups (_sync_dirty);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 496
    const-string v0, "CREATE TABLE peopleLookup (token TEXT,source INTEGER REFERENCES people(_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 500
    const-string v0, "CREATE INDEX peopleLookupIndex ON peopleLookup (token,source);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 506
    const-string v0, "CREATE TABLE peopleLookup_ko (token TEXT,source INTEGER REFERENCES people(_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 510
    const-string v0, "CREATE INDEX peopleLookupIndex_ko ON peopleLookup_ko (token,source);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 516
    const-string v0, "CREATE TABLE photos (_id INTEGER PRIMARY KEY AUTOINCREMENT,exists_on_server INTEGER NOT NULL DEFAULT 0,person INTEGER REFERENCES people(_id), local_version TEXT,data BLOB,sync_error TEXT,_sync_account TEXT,_sync_id TEXT,_sync_time TEXT,_sync_version TEXT,_sync_local_id INTEGER,_sync_dirty INTEGER NOT NULL DEFAULT 0,_sync_mark INTEGER,UNIQUE(person) )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 533
    const-string v0, "CREATE INDEX photosSyncDirtyIndex ON photos (_sync_dirty);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 534
    const-string v0, "CREATE INDEX photoPersonIndex ON photos (person);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 537
    const-string v0, " CREATE TRIGGER peopleDeleteAndPhotos DELETE ON people  BEGIN   DELETE FROM photos WHERE person=OLD._id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE _deleted_people (_sync_version TEXT,_sync_id TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider;->isTemporary()Z

    move-result v1

    if-eqz v1, :cond_1d7

    const-string v1, "_sync_local_id INTEGER,"

    :goto_72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sync_account TEXT,"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sync_mark INTEGER)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE _deleted_groups (_sync_version TEXT,_sync_id TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider;->isTemporary()Z

    move-result v1

    if-eqz v1, :cond_1dc

    const-string v1, "_sync_local_id INTEGER,"

    :goto_9c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sync_account TEXT,"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sync_mark INTEGER)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 557
    const-string v0, "CREATE TABLE phones (_id INTEGER PRIMARY KEY AUTOINCREMENT,person INTEGER REFERENCES people(_id),type INTEGER NOT NULL,number TEXT,number_key TEXT,label TEXT,isprimary INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 567
    const-string v0, "CREATE INDEX phonesIndex1 ON phones (person);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 568
    const-string v0, "CREATE INDEX phonesIndex2 ON phones (number_key);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 570
    const-string v0, "CREATE TABLE contact_methods (_id INTEGER PRIMARY KEY AUTOINCREMENT,person INTEGER REFERENCES people(_id),kind INTEGER NOT NULL,data TEXT,aux_data TEXT,type INTEGER NOT NULL,label TEXT,isprimary INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 581
    const-string v0, "CREATE INDEX contactMethodsPeopleIndex ON contact_methods (person);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 586
    const-string v0, "CREATE TABLE calls (_id INTEGER PRIMARY KEY AUTOINCREMENT,number TEXT,date INTEGER,duration INTEGER,type INTEGER,new INTEGER,name TEXT,numbertype INTEGER,numberlabel TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 600
    const-string v0, "CREATE TABLE settings (_id INTEGER PRIMARY KEY,_sync_account TEXT,key STRING NOT NULL,value STRING );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 608
    const-string v0, "CREATE TABLE organizations (_id INTEGER PRIMARY KEY AUTOINCREMENT,company TEXT,title TEXT,isprimary INTEGER NOT NULL DEFAULT 0,type INTEGER NOT NULL,label TEXT,person INTEGER REFERENCES people(_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 618
    const-string v0, "CREATE INDEX organizationsIndex1 ON organizations (person);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 621
    const-string v0, "CREATE TABLE extensions (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT NOT NULL,value TEXT NOT NULL,person INTEGER REFERENCES people(_id),UNIQUE(person, name));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 632
    const-string v0, "CREATE INDEX extensionsIndex1 ON extensions (person, name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 635
    const-string v0, "CREATE TABLE groupmembership (_id INTEGER PRIMARY KEY,person INTEGER REFERENCES people(_id),group_id INTEGER REFERENCES groups(_id),group_sync_account STRING,group_sync_id STRING,member_position INTEGER NOT NULL DEFAULT 0,isprimary INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 645
    const-string v0, "CREATE INDEX groupmembershipIndex1 ON groupmembership (person, group_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 646
    const-string v0, "CREATE INDEX groupmembershipIndex2 ON groupmembership (group_id, person);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 647
    const-string v0, "CREATE INDEX groupmembershipIndex3 ON groupmembership (group_sync_account, group_sync_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 651
    const-string v0, "CREATE TRIGGER contact_cleanup DELETE ON people BEGIN DELETE FROM peopleLookup WHERE source = old._id;DELETE FROM peopleLookup_ko WHERE source = old._id;DELETE FROM phones WHERE person = old._id;DELETE FROM contact_methods WHERE person = old._id;DELETE FROM organizations WHERE person = old._id;DELETE FROM groupmembership WHERE person = old._id;DELETE FROM extensions WHERE person = old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 666
    const-string v0, "CREATE TRIGGER groups_cleanup DELETE ON groups BEGIN DELETE FROM groupmembership WHERE (group_id = old._id OR (group_sync_id = old._sync_id AND group_sync_account = old._sync_account));END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 677
    const-string v0, "CREATE TRIGGER groups_to_deleted DELETE ON groups WHEN old._sync_id is not null BEGIN INSERT INTO _deleted_groups (_sync_id, _sync_account, _sync_version) VALUES (old._sync_id, old._sync_account, old._sync_version);END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 687
    const-string v0, "CREATE TRIGGER peopleLookup_update UPDATE OF name ON people BEGIN DELETE FROM peopleLookup WHERE source = new._id;SELECT _TOKENIZE(\'peopleLookup\', new._id, new.name, \' \');DELETE FROM peopleLookup_ko WHERE source = new._id;SELECT _TOKENIZE_KO(\'peopleLookup_ko\', new._id, new.name, \' \');END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 696
    const-string v0, "CREATE TRIGGER peopleLookup_insert AFTER INSERT ON people BEGIN SELECT _TOKENIZE(\'peopleLookup\', new._id, new.name, \' \');SELECT _TOKENIZE_KO(\'peopleLookup_ko\', new._id, new.name, \' \');END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 706
    const-string v0, "CREATE TRIGGER phones_update UPDATE ON phones BEGIN UPDATE people SET _sync_dirty=1 WHERE people._id=old.person;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 710
    const-string v0, "CREATE TRIGGER phones_insert INSERT ON phones BEGIN UPDATE people SET _sync_dirty=1 WHERE people._id=new.person;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 714
    const-string v0, "CREATE TRIGGER phones_delete DELETE ON phones BEGIN UPDATE people SET _sync_dirty=1 WHERE people._id=old.person;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 731
    const-string v0, "CREATE TRIGGER contact_methods_update UPDATE ON contact_methods BEGIN UPDATE people SET _sync_dirty=1 WHERE people._id=old.person;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 735
    const-string v0, "CREATE TRIGGER contact_methods_insert INSERT ON contact_methods BEGIN UPDATE people SET _sync_dirty=1 WHERE people._id=new.person;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 739
    const-string v0, "CREATE TRIGGER contact_methods_delete DELETE ON contact_methods BEGIN UPDATE people SET _sync_dirty=1 WHERE people._id=old.person;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 756
    const-string v0, "CREATE TRIGGER organizations_update AFTER UPDATE ON organizations BEGIN UPDATE people SET _sync_dirty=1 WHERE people._id=old.person; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 760
    const-string v0, "CREATE TRIGGER organizations_insert INSERT ON organizations BEGIN UPDATE people SET _sync_dirty=1 WHERE people._id=new.person; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 764
    const-string v0, "CREATE TRIGGER organizations_delete DELETE ON organizations BEGIN UPDATE people SET _sync_dirty=1 WHERE people._id=old.person;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 781
    const-string v0, "CREATE TRIGGER groupmembership_update AFTER UPDATE ON groupmembership BEGIN UPDATE people SET _sync_dirty=1 WHERE people._id=old.person; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 785
    const-string v0, "CREATE TRIGGER groupmembership_insert INSERT ON groupmembership BEGIN UPDATE people SET _sync_dirty=1 WHERE people._id=new.person; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 789
    const-string v0, "CREATE TRIGGER groupmembership_delete DELETE ON groupmembership BEGIN UPDATE people SET _sync_dirty=1 WHERE people._id=old.person;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 806
    const-string v0, "CREATE TRIGGER extensions_update AFTER UPDATE ON extensions BEGIN UPDATE people SET _sync_dirty=1 WHERE people._id=old.person; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 810
    const-string v0, "CREATE TRIGGER extensions_insert INSERT ON extensions BEGIN UPDATE people SET _sync_dirty=1 WHERE people._id=new.person; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 814
    const-string v0, "CREATE TRIGGER extensions_delete DELETE ON extensions BEGIN UPDATE people SET _sync_dirty=1 WHERE people._id=old.person;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 830
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sPhonesTable:Ljava/lang/String;

    const-string v1, "INSERT"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/providers/contacts/ContactsProvider;->createTypeLabelTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sPhonesTable:Ljava/lang/String;

    const-string v1, "UPDATE"

    invoke-direct {p0, p1, v0, v3}, Lcom/android/providers/contacts/ContactsProvider;->createTypeLabelTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sOrganizationsTable:Ljava/lang/String;

    const-string v1, "INSERT"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/providers/contacts/ContactsProvider;->createTypeLabelTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sOrganizationsTable:Ljava/lang/String;

    const-string v1, "UPDATE"

    invoke-direct {p0, p1, v0, v3}, Lcom/android/providers/contacts/ContactsProvider;->createTypeLabelTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsTable:Ljava/lang/String;

    const-string v1, "INSERT"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/providers/contacts/ContactsProvider;->createTypeLabelTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsTable:Ljava/lang/String;

    const-string v1, "UPDATE"

    invoke-direct {p0, p1, v0, v3}, Lcom/android/providers/contacts/ContactsProvider;->createTypeLabelTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const-string v0, "CREATE TABLE voice_dialer_timestamp (_id INTEGER PRIMARY KEY,timestamp INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 844
    const-string v0, "INSERT INTO voice_dialer_timestamp (_id, timestamp) VALUES (1, strftime(\'%s\', \'now\'));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 846
    const-string v0, "CREATE TRIGGER timestamp_trigger1 AFTER UPDATE ON phones BEGIN UPDATE voice_dialer_timestamp SET timestamp=strftime(\'%s\', \'now\') WHERE _id=1;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 851
    const-string v0, "CREATE TRIGGER timestamp_trigger2 AFTER UPDATE OF name ON people BEGIN UPDATE voice_dialer_timestamp SET timestamp=strftime(\'%s\', \'now\') WHERE _id=1;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 860
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider;->isTemporary()Z

    move-result v0

    if-nez v0, :cond_1cc

    .line 861
    const-string v0, "ContactsProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>>> isTemporary() + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider;->isTemporary()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const-string v0, "INSERT INTO groups (name, system_id) VALUES (\'Contacts\', \'Contacts\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 870
    const-string v0, "INSERT INTO groups (name, _sync_dirty) VALUES (\'Starred in Android\', 1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 880
    :cond_1cc
    const-string v0, "CREATE VIEW view_people_data AS SELECT _id AS person, (CASE WHEN (name IS NOT NULL AND name != \'\') THEN null ELSE (CASE WHEN primary_organization is NOT NULL THEN (SELECT company FROM organizations WHERE organizations._id = primary_organization) ELSE (CASE WHEN primary_phone IS NOT NULL THEN (SELECT number FROM phones WHERE phones._id = primary_phone) ELSE (CASE WHEN primary_email IS NOT NULL THEN (SELECT data FROM contact_methods WHERE contact_methods._id = primary_email) ELSE null END) END) END) END) AS data FROM people"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 885
    const-string v0, "CREATE VIEW view_people_name AS SELECT _id AS person, (CASE WHEN (name IS NOT NULL AND name != \'\') THEN name ELSE (CASE WHEN primary_organization is NOT NULL THEN (SELECT company FROM organizations WHERE organizations._id = primary_organization) ELSE (CASE WHEN primary_phone IS NOT NULL THEN (SELECT number FROM phones WHERE phones._id = primary_phone) ELSE (CASE WHEN primary_email IS NOT NULL THEN (SELECT data FROM contact_methods WHERE contact_methods._id = primary_email) ELSE null END) END) END) END) AS name FROM people"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 888
    return-void

    .line 543
    :cond_1d7
    const-string v1, ""

    move-object v1, v4

    goto/16 :goto_72

    .line 550
    :cond_1dc
    const-string v1, ""

    move-object v1, v4

    goto/16 :goto_9c
.end method

.method protected buildPeopleLookupWhereClause(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "filterParam"

    .prologue
    const-string v3, "*"

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "((people._id IN (SELECT source FROM peopleLookup WHERE token GLOB "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1067
    .local v0, filter:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/database/DatabaseUtils;->getHexCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1069
    const-string v1, ")) OR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    const-string v1, "(people._id IN (SELECT source FROM peopleLookup_ko WHERE token GLOB "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/database/DatabaseUtils;->getHexCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1073
    const-string v1, ")))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public changeRequiresLocalSync(Landroid/net/Uri;)Z
    .registers 4
    .parameter "uri"

    .prologue
    .line 3477
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 3478
    .local v0, match:I
    sparse-switch v0, :sswitch_data_e

    .line 3490
    const/4 v1, 0x1

    :goto_a
    return v1

    .line 3487
    :sswitch_b
    const/4 v1, 0x0

    goto :goto_a

    .line 3478
    nop

    :sswitch_data_e
    .sparse-switch
        0x14 -> :sswitch_b
        0xfa0 -> :sswitch_b
        0xfa1 -> :sswitch_b
        0xfa2 -> :sswitch_b
        0x1388 -> :sswitch_b
        0x1389 -> :sswitch_b
    .end sparse-switch
.end method

.method protected deleteFromGroupMembership(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 15
    .parameter "rowId"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const/4 v2, 0x0

    .line 2668
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2669
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "groups, groupmembership"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2670
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2671
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider;->sGroupsJoinString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND groupmembership._id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2673
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2675
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_38
    const-string v1, "person"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 2676
    .local v10, indexPersonId:I
    const-string v1, "name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 2677
    .local v9, indexName:I
    :cond_44
    :goto_44
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 2678
    const-string v1, "Starred in Android"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 2679
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider;->fixupPeopleStarred(JZ)I
    :try_end_5e
    .catchall {:try_start_38 .. :try_end_5e} :catchall_5f

    goto :goto_44

    .line 2683
    .end local v9           #indexName:I
    .end local v10           #indexPersonId:I
    :catchall_5f
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .restart local v9       #indexName:I
    .restart local v10       #indexPersonId:I
    :cond_64
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2686
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/android/providers/contacts/ContactsProvider;->sGroupmembershipTable:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/providers/contacts/ContactsProvider;->addIdToWhereClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public deleteInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 16
    .parameter "url"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    .line 2517
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 2519
    .local v3, matchedUriId:I
    const-string v7, "ContactsProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "## ContactsProvider.delete: url="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    sparse-switch v3, :sswitch_data_10c

    .line 2610
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot delete that URL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2523
    :sswitch_3c
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7, p2, p3}, Lcom/android/providers/contacts/ContactsProvider;->deleteFromGroupMembership(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 2639
    :goto_4a
    return v7

    .line 2526
    :sswitch_4b
    invoke-direct {p0, p2, p3}, Lcom/android/providers/contacts/ContactsProvider;->deleteFromGroups(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    goto :goto_4a

    .line 2528
    :sswitch_50
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2529
    .local v0, changedItemId:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/providers/contacts/ContactsProvider;->addIdToWhereClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, p3}, Lcom/android/providers/contacts/ContactsProvider;->deleteFromGroups(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    goto :goto_4a

    .line 2531
    .end local v0           #changedItemId:Ljava/lang/String;
    :sswitch_63
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider;->sExtensionsTable:Ljava/lang/String;

    .line 2532
    .local v5, tableToChange:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2613
    .restart local v0       #changedItemId:Ljava/lang/String;
    :goto_66
    invoke-static {v0, p2}, Lcom/android/providers/contacts/ContactsProvider;->addIdToWhereClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2614
    .local v6, where:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2615
    .local v4, oldPrimaryInfo:Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;
    sparse-switch v3, :sswitch_data_14a

    .line 2630
    :goto_6e
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2631
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2, v5, v6, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2632
    .local v1, count:I
    if-lez v1, :cond_8b

    .line 2633
    if-eqz v4, :cond_8b

    iget-boolean v7, v4, Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;->isPrimary:Z

    if-eqz v7, :cond_8b

    .line 2634
    iget-object v7, v4, Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;->kind:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v4, Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;->id:Ljava/lang/Long;

    iget-object v9, v4, Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;->person:Ljava/lang/Long;

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/providers/contacts/ContactsProvider;->fixupPrimaryAfterDelete(ILjava/lang/Long;Ljava/lang/Long;)V

    :cond_8b
    move v7, v1

    .line 2639
    goto :goto_4a

    .line 2535
    .end local v0           #changedItemId:Ljava/lang/String;
    .end local v1           #count:I
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #oldPrimaryInfo:Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;
    .end local v5           #tableToChange:Ljava/lang/String;
    .end local v6           #where:Ljava/lang/String;
    :sswitch_8d
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider;->sExtensionsTable:Ljava/lang/String;

    .line 2536
    .restart local v5       #tableToChange:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2537
    .restart local v0       #changedItemId:Ljava/lang/String;
    goto :goto_66

    .line 2540
    .end local v0           #changedItemId:Ljava/lang/String;
    .end local v5           #tableToChange:Ljava/lang/String;
    :sswitch_9a
    const/4 v7, 0x0

    invoke-direct {p0, v7, p2, p3}, Lcom/android/providers/contacts/ContactsProvider;->deleteFromPeople(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    goto :goto_4a

    .line 2543
    :sswitch_a0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7, p2, p3}, Lcom/android/providers/contacts/ContactsProvider;->deleteFromPeople(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    goto :goto_4a

    .line 2581
    :sswitch_af
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider;->sPhonesTable:Ljava/lang/String;

    .line 2582
    .restart local v5       #tableToChange:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2583
    .restart local v0       #changedItemId:Ljava/lang/String;
    goto :goto_66

    .line 2585
    .end local v0           #changedItemId:Ljava/lang/String;
    .end local v5           #tableToChange:Ljava/lang/String;
    :sswitch_bc
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsTable:Ljava/lang/String;

    .line 2586
    .restart local v5       #tableToChange:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2587
    .restart local v0       #changedItemId:Ljava/lang/String;
    goto :goto_66

    .line 2589
    .end local v0           #changedItemId:Ljava/lang/String;
    .end local v5           #tableToChange:Ljava/lang/String;
    :sswitch_c9
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider;->sPhonesTable:Ljava/lang/String;

    .line 2590
    .restart local v5       #tableToChange:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2591
    .restart local v0       #changedItemId:Ljava/lang/String;
    goto :goto_66

    .line 2593
    .end local v0           #changedItemId:Ljava/lang/String;
    .end local v5           #tableToChange:Ljava/lang/String;
    :sswitch_d6
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider;->sOrganizationsTable:Ljava/lang/String;

    .line 2594
    .restart local v5       #tableToChange:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2595
    .restart local v0       #changedItemId:Ljava/lang/String;
    goto :goto_66

    .line 2597
    .end local v0           #changedItemId:Ljava/lang/String;
    .end local v5           #tableToChange:Ljava/lang/String;
    :sswitch_e3
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsTable:Ljava/lang/String;

    .line 2598
    .restart local v5       #tableToChange:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2599
    .restart local v0       #changedItemId:Ljava/lang/String;
    goto/16 :goto_66

    .line 2601
    .end local v0           #changedItemId:Ljava/lang/String;
    .end local v5           #tableToChange:Ljava/lang/String;
    :sswitch_f1
    const-string v5, "presence"

    .line 2602
    .restart local v5       #tableToChange:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2603
    .restart local v0       #changedItemId:Ljava/lang/String;
    goto/16 :goto_66

    .line 2605
    .end local v0           #changedItemId:Ljava/lang/String;
    .end local v5           #tableToChange:Ljava/lang/String;
    :sswitch_f6
    const-string v5, "calls"

    .line 2606
    .restart local v5       #tableToChange:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2607
    .restart local v0       #changedItemId:Ljava/lang/String;
    goto/16 :goto_66

    .line 2619
    .restart local v4       #oldPrimaryInfo:Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;
    .restart local v6       #where:Ljava/lang/String;
    :sswitch_fb
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sIsPrimaryProjectionWithoutKind:[Ljava/lang/String;

    invoke-virtual {p0, v5, v7, v6, p3}, Lcom/android/providers/contacts/ContactsProvider;->lookupIsPrimaryInfo(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;

    move-result-object v4

    .line 2621
    goto/16 :goto_6e

    .line 2625
    :sswitch_103
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sIsPrimaryProjectionWithKind:[Ljava/lang/String;

    invoke-virtual {p0, v5, v7, v6, p3}, Lcom/android/providers/contacts/ContactsProvider;->lookupIsPrimaryInfo(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;

    move-result-object v4

    goto/16 :goto_6e

    .line 2521
    nop

    :sswitch_data_10c
    .sparse-switch
        0x0 -> :sswitch_9a
        0x2 -> :sswitch_a0
        0x4 -> :sswitch_af
        0x6 -> :sswitch_bc
        0x7 -> :sswitch_9a
        0x7d1 -> :sswitch_c9
        0xbb9 -> :sswitch_e3
        0xfa0 -> :sswitch_f6
        0x1388 -> :sswitch_f1
        0x1771 -> :sswitch_d6
        0x1f40 -> :sswitch_4b
        0x1f42 -> :sswitch_50
        0x232a -> :sswitch_3c
        0x2af8 -> :sswitch_63
        0x2afa -> :sswitch_8d
    .end sparse-switch

    .line 2615
    :sswitch_data_14a
    .sparse-switch
        0x4 -> :sswitch_fb
        0x6 -> :sswitch_103
        0x7d1 -> :sswitch_fb
        0xbb9 -> :sswitch_103
        0x1771 -> :sswitch_fb
    .end sparse-switch
.end method

.method protected dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 354
    const-string v0, "ContactsProvider"

    const-string v1, "> dropTables()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string v0, "DROP TABLE IF EXISTS people"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 357
    const-string v0, "DROP TABLE IF EXISTS peopleLookup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 358
    const-string v0, "DROP TABLE IF EXISTS _deleted_people"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 369
    const-string v0, "DROP TABLE IF EXISTS phones"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 370
    const-string v0, "DROP TABLE IF EXISTS contact_methods"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 371
    const-string v0, "DROP TABLE IF EXISTS calls"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 372
    const-string v0, "DROP TABLE IF EXISTS organizations"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 373
    const-string v0, "DROP TABLE IF EXISTS voice_dialer_timestamp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 374
    const-string v0, "DROP TABLE IF EXISTS groups"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 375
    const-string v0, "DROP TABLE IF EXISTS _deleted_groups"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 376
    const-string v0, "DROP TABLE IF EXISTS groupmembership"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 377
    const-string v0, "DROP TABLE IF EXISTS photos"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 378
    const-string v0, "DROP TABLE IF EXISTS extensions"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 379
    const-string v0, "DROP TABLE IF EXISTS settings"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 381
    const-string v0, "DROP VIEW IF EXISTS view_people_data"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 382
    const-string v0, "DROP VIEW IF EXISTS view_people_name"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 385
    const-string v0, "DROP TABLE IF EXISTS peopleLookup_ko"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method protected fixupPeopleStarred(JZ)I
    .registers 11
    .parameter "personId"
    .parameter "inStarredGroup"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 2431
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mValuesLocal:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 2432
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mValuesLocal:Landroid/content/ContentValues;

    const-string v1, "starred"

    if-eqz p3, :cond_2c

    move v2, v4

    :goto_e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2433
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider;->sPeopleTable:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider;->mValuesLocal:Landroid/content/ContentValues;

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_2c
    move v2, v6

    .line 2432
    goto :goto_e
.end method

.method fixupPeopleStarredOnGroupRename(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9
    .parameter "oldName"
    .parameter "newName"
    .parameter "groupId"

    .prologue
    .line 3196
    const-string v0, "group_id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/providers/contacts/ContactsProvider;->fixupPeopleStarredOnGroupRename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3198
    return-void
.end method

.method fixupPeopleStarredOnGroupRename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "oldName"
    .parameter "newName"
    .parameter "syncAccount"
    .parameter "syncId"

    .prologue
    .line 3191
    const-string v0, "_sync_account=? AND _sync_id=?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/providers/contacts/ContactsProvider;->fixupPeopleStarredOnGroupRename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3193
    return-void
.end method

.method fixupPeopleStarredOnGroupRename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9
    .parameter "oldName"
    .parameter "newName"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const-string v2, "Starred in Android"

    .line 3171
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3187
    :cond_8
    :goto_8
    return-void

    .line 3174
    :cond_9
    const-string v1, "Starred in Android"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 3175
    const/4 v0, 0x1

    .line 3182
    .local v0, starredValue:I
    :goto_12
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE people SET starred="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE _id in ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SELECT person "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FROM groups, groupmembership "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/providers/contacts/ContactsProvider;->sGroupsJoinString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 3176
    .end local v0           #starredValue:I
    :cond_5b
    const-string v1, "Starred in Android"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3177
    const/4 v0, 0x0

    .restart local v0       #starredValue:I
    goto :goto_12
.end method

.method protected fixupPrimaryAfterDelete(ILjava/lang/Long;Ljava/lang/Long;)V
    .registers 11
    .parameter "kind"
    .parameter "itemId"
    .parameter "personId"

    .prologue
    const/4 v6, 0x1

    .line 2797
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsProvider;->kindToTable(I)Ljava/lang/String;

    move-result-object v1

    .line 2800
    .local v1, table:Ljava/lang/String;
    invoke-direct {p0, p1, p3, p2}, Lcom/android/providers/contacts/ContactsProvider;->findNewPrimary(ILjava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    .line 2803
    .local v0, newPrimaryId:Ljava/lang/Long;
    if-eqz v0, :cond_6a

    .line 2804
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider;->mValuesLocal:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 2805
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider;->mValuesLocal:Landroid/content/ContentValues;

    const-string v3, "isprimary"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2806
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider;->mValuesLocal:Landroid/content/ContentValues;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-eq v2, v6, :cond_6a

    .line 2807
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error updating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", _id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", values "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider;->mValuesLocal:Landroid/content/ContentValues;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2813
    :cond_6a
    const/4 v2, 0x5

    if-ne p1, v2, :cond_73

    .line 2814
    const-string v2, "primary_phone"

    invoke-direct {p0, p3, v2, v0}, Lcom/android/providers/contacts/ContactsProvider;->updatePeoplePrimary(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V

    .line 2820
    :cond_72
    :goto_72
    return-void

    .line 2815
    :cond_73
    if-ne p1, v6, :cond_7b

    .line 2816
    const-string v2, "primary_email"

    invoke-direct {p0, p3, v2, v0}, Lcom/android/providers/contacts/ContactsProvider;->updatePeoplePrimary(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_72

    .line 2817
    :cond_7b
    const/4 v2, 0x4

    if-ne p1, v2, :cond_72

    .line 2818
    const-string v2, "primary_organization"

    invoke-direct {p0, p3, v2, v0}, Lcom/android/providers/contacts/ContactsProvider;->updatePeoplePrimary(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_72
.end method

.method protected getMergers()Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<+",
            "Landroid/content/AbstractTableMerger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3497
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/AbstractTableMerger;>;"
    new-instance v1, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;

    invoke-direct {v1, p0}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;-><init>(Lcom/android/providers/contacts/ContactsProvider;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3498
    new-instance v1, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;

    invoke-direct {v1, p0}, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;-><init>(Lcom/android/providers/contacts/ContactsProvider;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3499
    new-instance v1, Lcom/android/providers/contacts/ContactsProvider$PhotoMerger;

    invoke-direct {v1, p0}, Lcom/android/providers/contacts/ContactsProvider$PhotoMerger;-><init>(Lcom/android/providers/contacts/ContactsProvider;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3500
    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 8
    .parameter "url"

    .prologue
    const-string v5, "vnd.android.cursor.item/phone"

    const-string v4, "vnd.android.cursor.dir/contact-methods"

    const-string v3, "vnd.android.cursor.dir/calls"

    const-string v2, "vnd.android.cursor.dir/phone"

    .line 1851
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 1852
    .local v0, match:I
    sparse-switch v0, :sswitch_data_66

    .line 1903
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown URL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1855
    :sswitch_19
    const-string v1, "vnd.android.cursor.dir/contact_extensions"

    .line 1900
    :goto_1b
    return-object v1

    .line 1858
    :sswitch_1c
    const-string v1, "vnd.android.cursor.item/contact_extensions"

    goto :goto_1b

    .line 1860
    :sswitch_1f
    const-string v1, "vnd.android.cursor.dir/person"

    goto :goto_1b

    .line 1862
    :sswitch_22
    const-string v1, "vnd.android.cursor.item/person"

    goto :goto_1b

    .line 1864
    :sswitch_25
    const-string v1, "vnd.android.cursor.dir/phone"

    move-object v1, v2

    goto :goto_1b

    .line 1866
    :sswitch_29
    const-string v1, "vnd.android.cursor.item/phone"

    move-object v1, v5

    goto :goto_1b

    .line 1868
    :sswitch_2d
    const-string v1, "vnd.android.cursor.dir/contact-methods"

    move-object v1, v4

    goto :goto_1b

    .line 1870
    :sswitch_31
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider;->getContactMethodType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    .line 1872
    :sswitch_36
    const-string v1, "vnd.android.cursor.dir/phone"

    move-object v1, v2

    goto :goto_1b

    .line 1874
    :sswitch_3a
    const-string v1, "vnd.android.cursor.item/phone"

    move-object v1, v5

    goto :goto_1b

    .line 1878
    :sswitch_3e
    const-string v1, "vnd.android.cursor.dir/phone"

    move-object v1, v2

    goto :goto_1b

    .line 1880
    :sswitch_42
    const-string v1, "vnd.android.cursor.dir/contact-methods"

    move-object v1, v4

    goto :goto_1b

    .line 1882
    :sswitch_46
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider;->getContactMethodType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    .line 1885
    :sswitch_4b
    const-string v1, "vnd.android.cursor.dir/email"

    goto :goto_1b

    .line 1887
    :sswitch_4e
    const-string v1, "vnd.android.cursor.dir/calls"

    move-object v1, v3

    goto :goto_1b

    .line 1889
    :sswitch_52
    const-string v1, "vnd.android.cursor.item/calls"

    goto :goto_1b

    .line 1891
    :sswitch_55
    const-string v1, "vnd.android.cursor.dir/organizations"

    goto :goto_1b

    .line 1893
    :sswitch_58
    const-string v1, "vnd.android.cursor.item/organizations"

    goto :goto_1b

    .line 1895
    :sswitch_5b
    const-string v1, "vnd.android.cursor.dir/calls"

    move-object v1, v3

    goto :goto_1b

    .line 1898
    :sswitch_5f
    const-string v1, "vnd.android.cursor.dir/contactsgroup"

    goto :goto_1b

    .line 1900
    :sswitch_62
    const-string v1, "vnd.android.cursor.item/contactsgroup"

    goto :goto_1b

    .line 1852
    nop

    :sswitch_data_66
    .sparse-switch
        0x0 -> :sswitch_1f
        0x2 -> :sswitch_22
        0x3 -> :sswitch_25
        0x4 -> :sswitch_29
        0x5 -> :sswitch_2d
        0x6 -> :sswitch_31
        0x10 -> :sswitch_19
        0x11 -> :sswitch_1c
        0x7d0 -> :sswitch_36
        0x7d1 -> :sswitch_3a
        0x7d2 -> :sswitch_3e
        0x7d3 -> :sswitch_3e
        0x7d4 -> :sswitch_3e
        0xbb8 -> :sswitch_42
        0xbb9 -> :sswitch_46
        0xbba -> :sswitch_4b
        0xbbb -> :sswitch_4b
        0xfa0 -> :sswitch_4e
        0xfa1 -> :sswitch_52
        0xfa2 -> :sswitch_5b
        0x1770 -> :sswitch_55
        0x1771 -> :sswitch_58
        0x1f40 -> :sswitch_5f
        0x1f42 -> :sswitch_62
        0x2af8 -> :sswitch_19
        0x2afa -> :sswitch_1c
    .end sparse-switch
.end method

.method protected insertAndFixupPrimary(ILandroid/content/ContentValues;)J
    .registers 14
    .parameter "kind"
    .parameter "values"

    .prologue
    .line 2462
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsProvider;->kindToTable(I)Ljava/lang/String;

    move-result-object v6

    .line 2463
    .local v6, table:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2464
    .local v1, isPrimary:Z
    const/4 v4, 0x0

    .line 2466
    .local v4, personId:Ljava/lang/Long;
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider;->isTemporary()Z

    move-result v7

    if-nez v7, :cond_91

    .line 2469
    const-string v7, "isprimary"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c2

    const-string v7, "isprimary"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_c2

    const/4 v7, 0x1

    move v1, v7

    .line 2471
    :goto_22
    const-string v7, "person"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 2472
    if-nez v1, :cond_85

    .line 2474
    new-instance v5, Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "person="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2475
    .local v5, sb:Ljava/lang/StringBuilder;
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsTable:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 2476
    const-string v7, " AND kind="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2477
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2479
    :cond_52
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT count(*) FROM "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " where "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_c6

    const/4 v7, 0x1

    move v0, v7

    .line 2481
    .local v0, isFirstRowOfType:Z
    :goto_84
    move v1, v0

    .line 2484
    .end local v0           #isFirstRowOfType:Z
    .end local v5           #sb:Ljava/lang/StringBuilder;
    :cond_85
    const-string v7, "isprimary"

    if-eqz v1, :cond_c9

    const/4 v8, 0x1

    :goto_8a
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2488
    :cond_91
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsProvider;->kindToInserter(I)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 2490
    .local v2, newRowId:J
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-gtz v7, :cond_cb

    .line 2491
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error while inserting into "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2469
    .end local v2           #newRowId:J
    :cond_c2
    const/4 v7, 0x0

    move v1, v7

    goto/16 :goto_22

    .line 2479
    .restart local v5       #sb:Ljava/lang/StringBuilder;
    :cond_c6
    const/4 v7, 0x0

    move v0, v7

    goto :goto_84

    .line 2484
    .end local v5           #sb:Ljava/lang/StringBuilder;
    :cond_c9
    const/4 v8, 0x0

    goto :goto_8a

    .line 2494
    .restart local v2       #newRowId:J
    :cond_cb
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider;->isTemporary()Z

    move-result v7

    if-nez v7, :cond_e6

    .line 2497
    if-eqz v1, :cond_e6

    .line 2498
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {p0, p1, v4, v7}, Lcom/android/providers/contacts/ContactsProvider;->clearOtherIsPrimary(ILjava/lang/Long;Ljava/lang/Long;)V

    .line 2499
    const/4 v7, 0x5

    if-ne p1, v7, :cond_e7

    .line 2500
    const-string v7, "primary_phone"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {p0, v4, v7, v8}, Lcom/android/providers/contacts/ContactsProvider;->updatePeoplePrimary(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V

    .line 2509
    :cond_e6
    :goto_e6
    return-wide v2

    .line 2501
    :cond_e7
    const/4 v7, 0x1

    if-ne p1, v7, :cond_f4

    .line 2502
    const-string v7, "primary_email"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {p0, v4, v7, v8}, Lcom/android/providers/contacts/ContactsProvider;->updatePeoplePrimary(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_e6

    .line 2503
    :cond_f4
    const/4 v7, 0x4

    if-ne p1, v7, :cond_e6

    .line 2504
    const-string v7, "primary_organization"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {p0, v4, v7, v8}, Lcom/android/providers/contacts/ContactsProvider;->updatePeoplePrimary(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_e6
.end method

.method public insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 32
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 1969
    const/16 v19, 0x0

    .line 1972
    .local v19, resultUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 1973
    .local v8, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v25, Lcom/android/providers/contacts/ContactsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 1975
    .local v12, match:I
    const-string v25, "ContactsProvider"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "## ContactsProvider.insert: url="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", initialValues is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    sparse-switch v12, :sswitch_data_626

    .line 2268
    new-instance v25, Ljava/lang/UnsupportedOperationException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Cannot insert into URL: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 1980
    :sswitch_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentValues;->clear()V

    .line 1981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 1982
    const/16 v25, 0xd

    move v0, v12

    move/from16 v1, v25

    if-ne v0, v1, :cond_92

    .line 1983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    const-string v26, "person"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v27

    const/16 v28, 0x1

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1986
    :cond_92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider;->insertIntoGroupmembership(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v19

    :cond_a0
    :goto_a0
    move-object/from16 v25, v19

    .line 2280
    :goto_a2
    return-object v25

    .line 1991
    .restart local p1
    :sswitch_a3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider;->insertOwner(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v25

    goto :goto_a2

    .line 1995
    :sswitch_ac
    new-instance v13, Landroid/content/ContentValues;

    move-object v0, v13

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1996
    .local v13, newMap:Landroid/content/ContentValues;
    const/16 v25, 0x10

    move v0, v12

    move/from16 v1, v25

    if-ne v0, v1, :cond_d5

    .line 1997
    const-string v25, "person"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x1

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v26

    move-object v0, v13

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2000
    :cond_d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mExtensionsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v20

    .line 2001
    .local v20, rowID:J
    const-wide/16 v25, 0x0

    cmp-long v25, v20, v25

    if-lez v25, :cond_a0

    .line 2002
    sget-object v25, Landroid/provider/Contacts$Extensions;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    goto :goto_a0

    .line 2008
    .end local v13           #newMap:Landroid/content/ContentValues;
    .end local v20           #rowID:J
    .restart local p1
    :sswitch_f3
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider;->isTemporary()Z

    move-result v25

    if-nez v25, :cond_ff

    .line 2009
    new-instance v25, Ljava/lang/UnsupportedOperationException;

    invoke-direct/range {v25 .. v25}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v25

    .line 2011
    :cond_ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v20

    .line 2012
    .restart local v20       #rowID:J
    const-wide/16 v25, 0x0

    cmp-long v25, v20, v25

    if-lez v25, :cond_a0

    .line 2013
    sget-object v25, Landroid/provider/Contacts$Photos;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    goto :goto_a0

    .line 2019
    .end local v20           #rowID:J
    :sswitch_11e
    new-instance v13, Landroid/content/ContentValues;

    move-object v0, v13

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 2020
    .restart local v13       #newMap:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider;->ensureSyncAccountIsSet(Landroid/content/ContentValues;)V

    .line 2021
    const-string v25, "_sync_dirty"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object v0, v13

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mGroupsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v20

    .line 2024
    .restart local v20       #rowID:J
    const-wide/16 v25, 0x0

    cmp-long v25, v20, v25

    if-lez v25, :cond_a0

    .line 2025
    sget-object v25, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 2026
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider;->isTemporary()Z

    move-result v25

    if-nez v25, :cond_18c

    const-string v25, "should_sync"

    move-object v0, v13

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_18c

    .line 2027
    const-string v25, "_sync_account"

    move-object v0, v13

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2028
    .local v5, account:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_18c

    .line 2029
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 2030
    .local v7, cr:Landroid/content/ContentResolver;
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v5

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider;->onLocalChangesForAccount(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 2035
    .end local v5           #account:Ljava/lang/String;
    .end local v7           #cr:Landroid/content/ContentResolver;
    :cond_18c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mGroupPhotosInserter:Lcom/android/providers/contacts/ContactsProvider$GroupPhotosInserter;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider$GroupPhotosInserter;->createPhoto(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto/16 :goto_a0

    .line 2043
    .end local v13           #newMap:Landroid/content/ContentValues;
    .end local v20           #rowID:J
    :sswitch_1a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentValues;->clear()V

    .line 2044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 2045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider;->ensureSyncAccountIsSet(Landroid/content/ContentValues;)V

    .line 2046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    const-string v26, "_sync_dirty"

    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mPeopleInserter:Landroid/database/DatabaseUtils$InsertHelper;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v20

    .line 2049
    .restart local v20       #rowID:J
    const-wide/16 v25, 0x0

    cmp-long v25, v20, v25

    if-lez v25, :cond_a0

    .line 2050
    sget-object v25, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 2051
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider;->isTemporary()Z

    move-result v25

    if-nez v25, :cond_2b7

    .line 2052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    const-string v26, "_sync_account"

    invoke-virtual/range {v25 .. v26}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2053
    .restart local v5       #account:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    const-string v26, "starred"

    invoke-virtual/range {v25 .. v26}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v23

    .line 2054
    .local v23, starredValue:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    const-string v26, "_sync_id"

    invoke-virtual/range {v25 .. v26}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 2055
    .local v24, syncId:Ljava/lang/String;
    if-eqz v23, :cond_2ce

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-eqz v25, :cond_2ce

    const/16 v25, 0x1

    move/from16 v10, v25

    .line 2056
    .local v10, isStarred:Z
    :goto_231
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v20

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider;->fixupGroupMembershipAfterPeopleUpdate(Ljava/lang/String;JZ)V

    .line 2058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v25, v0

    sget-object v26, Lcom/android/providers/contacts/ContactsProvider;->sPhotosTable:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "person="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v25 .. v28}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentValues;->clear()V

    .line 2060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    const-string v26, "person"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    const-string v26, "_sync_account"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    const-string v26, "_sync_id"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    const-string v26, "_sync_dirty"

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    .line 2105
    .end local v5           #account:Ljava/lang/String;
    .end local v10           #isStarred:Z
    .end local v23           #starredValue:Ljava/lang/Long;
    .end local v24           #syncId:Ljava/lang/String;
    :cond_2b7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mPeoplePhotosInserter:Lcom/android/providers/contacts/ContactsProvider$PeoplePhotosInserter;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider$PeoplePhotosInserter;->createPhoto(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto/16 :goto_a0

    .line 2055
    .restart local v5       #account:Ljava/lang/String;
    .restart local v23       #starredValue:Ljava/lang/Long;
    .restart local v24       #syncId:Ljava/lang/String;
    :cond_2ce
    const/16 v25, 0x0

    move/from16 v10, v25

    goto/16 :goto_231

    .line 2112
    .end local v5           #account:Ljava/lang/String;
    .end local v20           #rowID:J
    .end local v23           #starredValue:Ljava/lang/Long;
    .end local v24           #syncId:Ljava/lang/String;
    :sswitch_2d4
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider;->isTemporary()Z

    move-result v25

    if-eqz v25, :cond_30c

    .line 2114
    const-string v25, "_deleted_people"

    const-string v26, "_sync_id"

    move-object v0, v8

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v20

    .line 2115
    .restart local v20       #rowID:J
    const-wide/16 v25, 0x0

    cmp-long v25, v20, v25

    if-lez v25, :cond_a0

    .line 2116
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "content://contacts/_deleted_people/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    goto/16 :goto_a0

    .line 2119
    .end local v20           #rowID:J
    :cond_30c
    new-instance v25, Ljava/lang/UnsupportedOperationException;

    invoke-direct/range {v25 .. v25}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v25

    .line 2125
    :sswitch_312
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider;->isTemporary()Z

    move-result v25

    if-eqz v25, :cond_339

    .line 2126
    sget-object v25, Lcom/android/providers/contacts/ContactsProvider;->sDeletedGroupsTable:Ljava/lang/String;

    const-string v26, "_sync_id"

    move-object v0, v8

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v20

    .line 2128
    .restart local v20       #rowID:J
    const-wide/16 v25, 0x0

    cmp-long v25, v20, v25

    if-lez v25, :cond_a0

    .line 2129
    sget-object v25, Landroid/provider/Contacts$Groups;->DELETED_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    goto/16 :goto_a0

    .line 2133
    .end local v20           #rowID:J
    :cond_339
    new-instance v25, Ljava/lang/UnsupportedOperationException;

    invoke-direct/range {v25 .. v25}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v25

    .line 2140
    :sswitch_33f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentValues;->clear()V

    .line 2141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 2142
    const/16 v25, 0x3

    move v0, v12

    move/from16 v1, v25

    if-ne v0, v1, :cond_377

    .line 2143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    const-string v26, "person"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v27

    const/16 v28, 0x1

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2146
    :cond_377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    const-string v26, "number"

    invoke-virtual/range {v25 .. v26}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2147
    .local v14, number:Ljava/lang/String;
    if-eqz v14, :cond_394

    .line 2148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    const-string v26, "number_key"

    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    :cond_394
    const/16 v25, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider;->insertAndFixupPrimary(ILandroid/content/ContentValues;)J

    move-result-wide v20

    .line 2152
    .restart local v20       #rowID:J
    sget-object v25, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 2154
    goto/16 :goto_a0

    .line 2158
    .end local v14           #number:Ljava/lang/String;
    .end local v20           #rowID:J
    .restart local p1
    :sswitch_3b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentValues;->clear()V

    .line 2159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 2160
    const/16 v25, 0x5

    move v0, v12

    move/from16 v1, v25

    if-ne v0, v1, :cond_3ec

    .line 2161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    const-string v26, "person"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v27

    const/16 v28, 0x1

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2163
    :cond_3ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    const-string v26, "kind"

    invoke-virtual/range {v25 .. v26}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 2164
    .local v11, kind:Ljava/lang/Integer;
    if-nez v11, :cond_402

    .line 2165
    new-instance v25, Ljava/lang/IllegalArgumentException;

    const-string v26, "you must specify the ContactMethods.KIND"

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 2167
    :cond_402
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider;->insertAndFixupPrimary(ILandroid/content/ContentValues;)J

    move-result-wide v20

    .line 2168
    .restart local v20       #rowID:J
    const-wide/16 v25, 0x0

    cmp-long v25, v20, v25

    if-lez v25, :cond_a0

    .line 2169
    sget-object v25, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    goto/16 :goto_a0

    .line 2175
    .end local v11           #kind:Ljava/lang/Integer;
    .end local v20           #rowID:J
    .restart local p1
    :sswitch_428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mCallsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v20

    .line 2176
    .restart local v20       #rowID:J
    const-wide/16 v25, 0x0

    cmp-long v25, v20, v25

    if-lez v25, :cond_a0

    .line 2177
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "content://call_log/calls/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    goto/16 :goto_a0

    .line 2183
    .end local v20           #rowID:J
    :sswitch_459
    const-string v25, "im_handle"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2184
    .local v9, handle:Ljava/lang/String;
    const-string v25, "im_protocol"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2185
    .local v17, protocol:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_479

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_481

    .line 2186
    :cond_479
    new-instance v25, Ljava/lang/IllegalArgumentException;

    const-string v26, "IM_PROTOCOL and IM_HANDLE are required"

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 2190
    :cond_481
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v25, "SELECT "

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2191
    .local v18, query:Ljava/lang/StringBuilder;
    const-string v25, "person"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2192
    const-string v25, " FROM contact_methods WHERE (kind="

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2193
    const/16 v25, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2194
    const-string v25, " AND "

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2195
    const-string v25, "data"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2196
    const-string v25, "=? AND "

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2197
    const-string v25, "aux_data"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2198
    const-string v25, "=?)"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2201
    sget-object v25, Lcom/android/providers/contacts/ContactsProvider;->GTALK_PROTOCOL_STRING:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5b0

    .line 2204
    const-string v25, " OR ("

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2205
    const-string v25, "kind="

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2206
    const/16 v25, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2207
    const-string v25, " AND "

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2208
    const-string v25, "data"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2209
    const-string v25, "=?)"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2210
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v25, 0x0

    aput-object v9, v22, v25

    const/16 v25, 0x1

    aput-object v17, v22, v25

    const/16 v25, 0x2

    aput-object v9, v22, v25

    .line 2215
    .local v22, selectionArgs:[Ljava/lang/String;
    :goto_52a
    const/16 v25, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move-object v0, v8

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v22

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2217
    .local v6, c:Landroid/database/Cursor;
    const-wide/16 v15, 0x0

    .line 2219
    .local v15, personId:J
    :try_start_541
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v25

    if-eqz v25, :cond_5c2

    .line 2220
    const/16 v25, 0x0

    move-object v0, v6

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_54f
    .catchall {:try_start_541 .. :try_end_54f} :catchall_5c9

    move-result-wide v15

    .line 2226
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentValues;->clear()V

    .line 2230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 2231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    const-string v26, "person"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2234
    const-string v25, "presence"

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 v27, v0

    move-object v0, v8

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v20

    .line 2235
    .restart local v20       #rowID:J
    const-wide/16 v25, 0x0

    cmp-long v25, v20, v25

    if-lez v25, :cond_a0

    .line 2236
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "content://contacts/presence/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    goto/16 :goto_a0

    .line 2212
    .end local v6           #c:Landroid/database/Cursor;
    .end local v15           #personId:J
    .end local v20           #rowID:J
    .end local v22           #selectionArgs:[Ljava/lang/String;
    :cond_5b0
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v25, 0x0

    aput-object v9, v22, v25

    const/16 v25, 0x1

    aput-object v17, v22, v25

    .restart local v22       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_52a

    .line 2223
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v15       #personId:J
    :cond_5c2
    const/16 v25, 0x0

    .line 2226
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_a2

    :catchall_5c9
    move-exception v25

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v25

    .line 2243
    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #handle:Ljava/lang/String;
    .end local v15           #personId:J
    .end local v17           #protocol:Ljava/lang/String;
    .end local v18           #query:Ljava/lang/StringBuilder;
    .end local v22           #selectionArgs:[Ljava/lang/String;
    :sswitch_5ce
    new-instance v13, Landroid/content/ContentValues;

    move-object v0, v13

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 2244
    .restart local v13       #newMap:Landroid/content/ContentValues;
    const/16 v25, 0xb

    move v0, v12

    move/from16 v1, v25

    if-ne v0, v1, :cond_5f7

    .line 2245
    const-string v25, "person"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x1

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v26

    move-object v0, v13

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2248
    :cond_5f7
    const/16 v25, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider;->insertAndFixupPrimary(ILandroid/content/ContentValues;)J

    move-result-wide v20

    .line 2249
    .restart local v20       #rowID:J
    const-wide/16 v25, 0x0

    cmp-long v25, v20, v25

    if-lez v25, :cond_a0

    .line 2250
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "content://contacts/organizations/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    goto/16 :goto_a0

    .line 1977
    nop

    :sswitch_data_626
    .sparse-switch
        0x0 -> :sswitch_1a3
        0x3 -> :sswitch_33f
        0x5 -> :sswitch_3b2
        0x7 -> :sswitch_1a3
        0xb -> :sswitch_5ce
        0xd -> :sswitch_5a
        0x10 -> :sswitch_ac
        0x13 -> :sswitch_a3
        0x3e8 -> :sswitch_2d4
        0x3e9 -> :sswitch_312
        0x7d0 -> :sswitch_33f
        0xbb8 -> :sswitch_3b2
        0xfa0 -> :sswitch_428
        0x1388 -> :sswitch_459
        0x1770 -> :sswitch_5ce
        0x1f40 -> :sswitch_11e
        0x2328 -> :sswitch_5a
        0x2710 -> :sswitch_f3
        0x2af8 -> :sswitch_ac
    .end sparse-switch
.end method

.method protected kindToInserter(I)Landroid/database/DatabaseUtils$InsertHelper;
    .registers 5
    .parameter "kind"

    .prologue
    .line 2450
    packed-switch p1, :pswitch_data_2e

    .line 2457
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown kind, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2451
    :pswitch_1c
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mContactMethodsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 2456
    :goto_1e
    return-object v0

    .line 2452
    :pswitch_1f
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mContactMethodsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    goto :goto_1e

    .line 2453
    :pswitch_22
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mContactMethodsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    goto :goto_1e

    .line 2454
    :pswitch_25
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mPhonesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    goto :goto_1e

    .line 2455
    :pswitch_28
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mOrganizationsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    goto :goto_1e

    .line 2456
    :pswitch_2b
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mContactMethodsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    goto :goto_1e

    .line 2450
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_28
        :pswitch_25
        :pswitch_2b
    .end packed-switch
.end method

.method protected kindToTable(I)Ljava/lang/String;
    .registers 5
    .parameter "kind"

    .prologue
    .line 2438
    packed-switch p1, :pswitch_data_2e

    .line 2445
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown kind, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2439
    :pswitch_1c
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsTable:Ljava/lang/String;

    .line 2444
    :goto_1e
    return-object v0

    .line 2440
    :pswitch_1f
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsTable:Ljava/lang/String;

    goto :goto_1e

    .line 2441
    :pswitch_22
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsTable:Ljava/lang/String;

    goto :goto_1e

    .line 2442
    :pswitch_25
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sPhonesTable:Ljava/lang/String;

    goto :goto_1e

    .line 2443
    :pswitch_28
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sOrganizationsTable:Ljava/lang/String;

    goto :goto_1e

    .line 2444
    :pswitch_2b
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsTable:Ljava/lang/String;

    goto :goto_1e

    .line 2438
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_28
        :pswitch_25
        :pswitch_2b
    .end packed-switch
.end method

.method protected lookupIsPrimaryInfo(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;
    .registers 15
    .parameter "table"
    .parameter "projection"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 3265
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3267
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_f
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_38

    .line 3268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected only zero or one rows, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Landroid/database/DatabaseUtils;->dumpCursorToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_33
    .catchall {:try_start_f .. :try_end_33} :catchall_33

    .line 3289
    :catchall_33
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3271
    :cond_38
    :try_start_38
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_33

    move-result v0

    if-nez v0, :cond_43

    const/4 v0, 0x0

    .line 3289
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_42
    return-object v0

    .line 3272
    :cond_43
    :try_start_43
    new-instance v9, Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;

    invoke-direct {v9, p0}, Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;-><init>(Lcom/android/providers/contacts/ContactsProvider;)V

    .line 3273
    .local v9, info:Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_7c

    const/4 v0, 0x1

    :goto_50
    iput-boolean v0, v9, Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;->isPrimary:Z

    .line 3274
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v9, Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;->person:Ljava/lang/Long;

    .line 3275
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v9, Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;->id:Ljava/lang/Long;

    .line 3276
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sIsPrimaryProjectionWithKind:[Ljava/lang/String;

    if-ne p2, v0, :cond_7e

    .line 3277
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v9, Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;->kind:Ljava/lang/Integer;
    :try_end_77
    .catchall {:try_start_43 .. :try_end_77} :catchall_33

    .line 3289
    :goto_77
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v0, v9

    goto :goto_42

    .line 3273
    :cond_7c
    const/4 v0, 0x0

    goto :goto_50

    .line 3279
    :cond_7e
    :try_start_7e
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sPhonesTable:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 3280
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v9, Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;->kind:Ljava/lang/Integer;

    goto :goto_77

    .line 3281
    :cond_8e
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sOrganizationsTable:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 3282
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v9, Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;->kind:Ljava/lang/Integer;

    goto :goto_77

    .line 3284
    :cond_9e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected table, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b7
    .catchall {:try_start_7e .. :try_end_b7} :catchall_33
.end method

.method protected lookupPerson(Ljava/lang/String;J)J
    .registers 7
    .parameter "table"
    .parameter "id"

    .prologue
    .line 3238
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT person FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " where _id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected onAccountsChanged([Ljava/lang/String;)V
    .registers 7
    .parameter "accountsArray"

    .prologue
    .line 2285
    invoke-super {p0, p1}, Landroid/content/AbstractSyncableContentProvider;->onAccountsChanged([Ljava/lang/String;)V

    .line 2286
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mAccountsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2287
    :try_start_6
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsProvider;->mAccounts:[Ljava/lang/String;

    .line 2288
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider;->mAccounts:[Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider;->mAccounts:[Ljava/lang/String;

    array-length v4, v4

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2289
    monitor-exit v0

    .line 2290
    return-void

    .line 2289
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v1
.end method

.method protected onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 8
    .parameter "db"

    .prologue
    const-string v1, "ContactsProvider"

    const-string v5, "type"

    const-string v4, "label"

    const-string v3, "isprimary"

    const-string v2, "person"

    .line 254
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider;->maybeCreatePresenceTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 255
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider;->isTemporary()Z

    move-result v0

    if-eqz v0, :cond_258

    .line 256
    const-string v0, "ContactsProvider"

    const-string v0, "> onDatabaseOpened(), isTemporary() : true"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :goto_1a
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sPeopleTable:Ljava/lang/String;

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider;->sDeletedPeopleTable:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->markTableSyncable(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sPhonesTable:Ljava/lang/String;

    const-string v1, "person"

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider;->sPeopleTable:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsTable:Ljava/lang/String;

    const-string v1, "person"

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider;->sPeopleTable:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sOrganizationsTable:Ljava/lang/String;

    const-string v1, "person"

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider;->sPeopleTable:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sGroupmembershipTable:Ljava/lang/String;

    const-string v1, "person"

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider;->sPeopleTable:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sExtensionsTable:Ljava/lang/String;

    const-string v1, "person"

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider;->sPeopleTable:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider;->sGroupsTable:Ljava/lang/String;

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider;->sDeletedGroupsTable:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->markTableSyncable(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider;->sDeletedPeopleTable:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mDeletedPeopleInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 271
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider;->sPeopleTable:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mPeopleInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 272
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mPeopleInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "_sync_id"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPeopleSyncId:I

    .line 273
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mPeopleInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "_sync_time"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPeopleSyncTime:I

    .line 274
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mPeopleInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "_sync_version"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPeopleSyncVersion:I

    .line 275
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mPeopleInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "_sync_dirty"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPeopleSyncDirty:I

    .line 276
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mPeopleInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "_sync_account"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPeopleSyncAccount:I

    .line 277
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mPeopleInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPeopleName:I

    .line 278
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mPeopleInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "phonetic_name"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPeoplePhoneticName:I

    .line 279
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mPeopleInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "notes"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPeopleNotes:I

    .line 281
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider;->sGroupsTable:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mGroupsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 283
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider;->sPhotosTable:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 284
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "person"

    invoke-virtual {v0, v2}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPhotosPersonId:I

    .line 285
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "_sync_id"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPhotosSyncId:I

    .line 286
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "_sync_time"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPhotosSyncTime:I

    .line 287
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "_sync_version"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPhotosSyncVersion:I

    .line 288
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "_sync_dirty"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPhotosSyncDirty:I

    .line 289
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "_sync_account"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPhotosSyncAccount:I

    .line 290
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "sync_error"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPhotosSyncError:I

    .line 291
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "exists_on_server"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPhotosExistsOnServer:I

    .line 293
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsTable:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mContactMethodsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 294
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mContactMethodsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "person"

    invoke-virtual {v0, v2}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexContactMethodsPersonId:I

    .line 295
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mContactMethodsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "label"

    invoke-virtual {v0, v4}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexContactMethodsLabel:I

    .line 296
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mContactMethodsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "kind"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexContactMethodsKind:I

    .line 297
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mContactMethodsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "type"

    invoke-virtual {v0, v5}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexContactMethodsType:I

    .line 298
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mContactMethodsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexContactMethodsData:I

    .line 299
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mContactMethodsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "aux_data"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexContactMethodsAuxData:I

    .line 300
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mContactMethodsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "isprimary"

    invoke-virtual {v0, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexContactMethodsIsPrimary:I

    .line 302
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider;->sOrganizationsTable:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mOrganizationsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 303
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mOrganizationsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "person"

    invoke-virtual {v0, v2}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexOrganizationsPersonId:I

    .line 304
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mOrganizationsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "label"

    invoke-virtual {v0, v4}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexOrganizationsLabel:I

    .line 305
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mOrganizationsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "type"

    invoke-virtual {v0, v5}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexOrganizationsType:I

    .line 306
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mOrganizationsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "company"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexOrganizationsCompany:I

    .line 307
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mOrganizationsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexOrganizationsTitle:I

    .line 308
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mOrganizationsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "isprimary"

    invoke-virtual {v0, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexOrganizationsIsPrimary:I

    .line 310
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider;->sExtensionsTable:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mExtensionsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 311
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mExtensionsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "person"

    invoke-virtual {v0, v2}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexExtensionsPersonId:I

    .line 312
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mExtensionsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexExtensionsName:I

    .line 313
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mExtensionsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexExtensionsValue:I

    .line 315
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider;->sGroupmembershipTable:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mGroupMembershipInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 316
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mGroupMembershipInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "person"

    invoke-virtual {v0, v2}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexGroupMembershipPersonId:I

    .line 317
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mGroupMembershipInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "group_sync_account"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexGroupMembershipGroupSyncAccount:I

    .line 318
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mGroupMembershipInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "group_sync_id"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexGroupMembershipGroupSyncId:I

    .line 320
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider;->sCallsTable:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mCallsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 322
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider;->sPhonesTable:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mPhonesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 323
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mPhonesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "person"

    invoke-virtual {v0, v2}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPhonesPersonId:I

    .line 324
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mPhonesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "label"

    invoke-virtual {v0, v4}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPhonesLabel:I

    .line 325
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mPhonesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "type"

    invoke-virtual {v0, v5}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPhonesType:I

    .line 326
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mPhonesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPhonesNumber:I

    .line 327
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mPhonesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "number_key"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPhonesNumberKey:I

    .line 328
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mPhonesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "isprimary"

    invoke-virtual {v0, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mIndexPhonesIsPrimary:I

    .line 331
    new-instance v0, Lcom/android/providers/contacts/ContactsProvider$GroupPhotosInserter;

    invoke-direct {v0, p0, p1}, Lcom/android/providers/contacts/ContactsProvider$GroupPhotosInserter;-><init>(Lcom/android/providers/contacts/ContactsProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mGroupPhotosInserter:Lcom/android/providers/contacts/ContactsProvider$GroupPhotosInserter;

    .line 334
    new-instance v0, Lcom/android/providers/contacts/ContactsProvider$PeoplePhotosInserter;

    invoke-direct {v0, p0, p1}, Lcom/android/providers/contacts/ContactsProvider$PeoplePhotosInserter;-><init>(Lcom/android/providers/contacts/ContactsProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider;->mPeoplePhotosInserter:Lcom/android/providers/contacts/ContactsProvider$PeoplePhotosInserter;

    .line 336
    return-void

    .line 258
    :cond_258
    const-string v0, "ContactsProvider"

    const-string v0, "> onDatabaseOpened(), isTemporary() : false"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a
.end method

.method protected onLocalChangesForAccount(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .registers 4
    .parameter "resolver"
    .parameter "account"
    .parameter "groupsModified"

    .prologue
    .line 2794
    return-void
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 2660
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 2663
    .local v0, match:I
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 34
    .parameter "url"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 1130
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1131
    .local v5, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v21, Landroid/provider/Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1132
    .local v21, notificationUri:Landroid/net/Uri;
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/ContactsProvider;->getLimit(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v13

    .line 1134
    .local v13, limit:Ljava/lang/String;
    const/16 v17, 0x0

    .line 1137
    .local v17, groupBy:Ljava/lang/String;
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v19

    .line 1141
    .local v19, match:I
    const-string v7, "ContactsProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "## ContactsProvider.query: url="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    sparse-switch v19, :sswitch_data_98e

    .line 1672
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown URL "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1145
    :sswitch_51
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider;->isTemporary()Z

    move-result v7

    if-nez v7, :cond_5d

    .line 1146
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v7}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v7

    .line 1149
    :cond_5d
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sDeletedGroupsTable:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object/from16 v10, v17

    .line 1676
    .end local v17           #groupBy:Ljava/lang/String;
    .end local p1
    .local v10, groupBy:Ljava/lang/String;
    :goto_64
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 1677
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1679
    .local v14, c:Landroid/database/Cursor;
    if-eqz v14, :cond_8c

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider;->isTemporary()Z

    move-result v7

    if-nez v7, :cond_8c

    .line 1680
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object v0, v14

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_8c
    move-object v7, v14

    .line 1682
    .end local v6           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v14           #c:Landroid/database/Cursor;
    :goto_8d
    return-object v7

    .line 1153
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    .restart local p1
    :sswitch_8e
    const-string v7, "_id="

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1154
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/CharSequence;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1157
    :sswitch_a4
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sGroupsTable:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1158
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sGroupsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object/from16 v10, v17

    .line 1159
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto :goto_64

    .line 1162
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    .restart local p1
    :sswitch_b1
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sSettingsTable:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object/from16 v10, v17

    .line 1163
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto :goto_64

    .line 1166
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    :sswitch_b9
    const-string v7, "groupmembership._id="

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1167
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1168
    const-string v7, " AND "

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1171
    :sswitch_d1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/providers/contacts/ContactsProvider;->sGroupsJoinString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1172
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "groupmembership.person="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1173
    const-string v7, "groups, groupmembership"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1174
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object/from16 v10, v17

    .line 1175
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1178
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    .restart local p1
    :sswitch_11b
    const-string v7, "groupmembership._id="

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1179
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/CharSequence;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1180
    const-string v7, " AND "

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1183
    :sswitch_136
    const-string v7, "groups, groupmembership"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1184
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1185
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sGroupsJoinString:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v10, v17

    .line 1186
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1189
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    .restart local p1
    :sswitch_149
    const-string v7, "groupmembership"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object/from16 v10, v17

    .line 1190
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1193
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    :sswitch_152
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x5

    if-le v7, v8, :cond_170

    .line 1194
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsProvider;->buildPeopleLookupWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1195
    const-string v7, " AND "

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1201
    :cond_170
    :sswitch_170
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider;->setTablesAndProjectionMapForPeople(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)V

    .line 1202
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/ContactsProvider;->buildGroupNameMatchWhereClause(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v10, v17

    .line 1203
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1206
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    .restart local p1
    :sswitch_18e
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x5

    if-le v7, v8, :cond_1ac

    .line 1207
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsProvider;->buildPeopleLookupWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1208
    const-string v7, " AND "

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1214
    :cond_1ac
    :sswitch_1ac
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider;->setTablesAndProjectionMapForPeople(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)V

    .line 1215
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/ContactsProvider;->buildGroupSystemIdMatchWhereClause(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v10, v17

    .line 1216
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1221
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    .restart local p1
    :sswitch_1ca
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider;->setTablesAndProjectionMapForPeople(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)V

    move-object/from16 v10, v17

    .line 1222
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1225
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    :sswitch_1d6
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sPeopleTable:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object/from16 v10, v17

    .line 1226
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1229
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    :sswitch_1df
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider;->queryOwner([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    move-object/from16 v10, v17

    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_8d

    .line 1233
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    :sswitch_1eb
    const-string v7, "number IS NOT NULL AND "

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1240
    :sswitch_1f0
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider;->setTablesAndProjectionMapForPeople(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)V

    .line 1241
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_989

    .line 1243
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "people._id IN (SELECT person FROM view_people_data WHERE data LIKE \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%\')"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1244
    const-string v7, " OR "

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1246
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsProvider;->buildPeopleLookupWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v10, v17

    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1252
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    :sswitch_23a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1253
    .local v15, email:Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 1257
    .local v27, whereClause:Ljava/lang/StringBuilder;
    const-string v7, "data"

    move-object/from16 v0, v27

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    const-string v7, "="

    move-object/from16 v0, v27

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    move-object/from16 v0, v27

    move-object v1, v15

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1260
    const-string v7, " AND (kind = 1 OR kind = 3)"

    move-object/from16 v0, v27

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1264
    const-string v7, "people INNER JOIN contact_methods on (people._id = contact_methods.person)"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1265
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sPeopleWithEmailOrImProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1268
    const-string v10, "contact_methods.person"

    .line 1270
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    goto/16 :goto_64

    .line 1274
    .end local v10           #groupBy:Ljava/lang/String;
    .end local v15           #email:Ljava/lang/String;
    .end local v27           #whereClause:Ljava/lang/StringBuilder;
    .restart local v17       #groupBy:Ljava/lang/String;
    :sswitch_281
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1277
    :sswitch_2a5
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sPhotosTable:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1278
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sPhotosProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object/from16 v10, v17

    .line 1279
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1282
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    .restart local p1
    :sswitch_2b3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "person="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1283
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sPhotosTable:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1284
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sPhotosProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object/from16 v10, v17

    .line 1285
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1302
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    .restart local p1
    :sswitch_2e5
    if-eqz p5, :cond_2fa

    const-string v7, "name ASC"

    move-object v0, v7

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2fa

    .line 1303
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Sort ordering not allowed for this URI"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1305
    :cond_2fa
    const-string p5, "suggest_text_1 COLLATE LOCALIZED ASC"

    .line 1308
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_316

    .line 1309
    const-string v20, "system_id IS NULL"

    .line 1313
    .local v20, newSelection:Ljava/lang/String;
    :goto_304
    move-object/from16 p3, v20

    .line 1317
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider;->handleSearchSuggestionsQuery(Landroid/net/Uri;Landroid/database/sqlite/SQLiteQueryBuilder;)Landroid/database/Cursor;

    move-result-object v14

    .line 1318
    .restart local v14       #c:Landroid/database/Cursor;
    if-eqz v14, :cond_989

    move-object/from16 v10, v17

    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    move-object v7, v14

    .line 1319
    goto/16 :goto_8d

    .line 1311
    .end local v10           #groupBy:Ljava/lang/String;
    .end local v14           #c:Landroid/database/Cursor;
    .end local v20           #newSelection:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    :cond_316
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v7

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "system_id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " IS NULL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .restart local v20       #newSelection:Ljava/lang/String;
    goto :goto_304

    .line 1326
    .end local v20           #newSelection:Ljava/lang/String;
    :sswitch_339
    const-string v7, "people LEFT OUTER JOIN phones ON people.primary_phone=phones._id LEFT OUTER JOIN presence ON (presence.person=people._id) LEFT OUTER JOIN photos ON (photos.person=people._id)"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1327
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sStrequentStarredProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1328
    const-string v7, "starred = 1"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p2

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1333
    .local v25, starredQuery:Ljava/lang/String;
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    .end local v5           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1334
    .restart local v5       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v7, "people LEFT OUTER JOIN phones ON people.primary_phone=phones._id LEFT OUTER JOIN presence ON (presence.person=people._id) LEFT OUTER JOIN photos ON (photos.person=people._id)"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1335
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sPeopleWithPhotoProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1336
    const-string v7, "times_contacted > 0 AND starred = 0"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p2

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1340
    .local v16, frequentQuery:Ljava/lang/String;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v25, v7, v8

    const/4 v8, 0x1

    aput-object v16, v7, v8

    const-string v8, "times_contacted DESC, display_name ASC"

    const-string v9, "(SELECT COUNT(*) FROM people WHERE starred = 1) + 25"

    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1342
    .local v24, query:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 1343
    .restart local v6       #db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/android/providers/contacts/ContactsProvider;->sPeopleTable:Ljava/lang/String;

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v24

    move-object v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1344
    .restart local v14       #c:Landroid/database/Cursor;
    if-eqz v14, :cond_3a6

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider;->isTemporary()Z

    move-result v7

    if-nez v7, :cond_3a6

    .line 1345
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object v0, v14

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_3a6
    move-object/from16 v10, v17

    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    move-object v7, v14

    .line 1347
    goto/16 :goto_8d

    .line 1351
    .end local v6           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #groupBy:Ljava/lang/String;
    .end local v14           #c:Landroid/database/Cursor;
    .end local v16           #frequentQuery:Ljava/lang/String;
    .end local v24           #query:Ljava/lang/String;
    .end local v25           #starredQuery:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    :sswitch_3ab
    const-string v7, "people LEFT OUTER JOIN phones ON people.primary_phone=phones._id LEFT OUTER JOIN presence ON (presence.person=people._id) LEFT OUTER JOIN photos ON (photos.person=people._id)"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1352
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sStrequentStarredProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1353
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x3

    if-le v7, v8, :cond_3ce

    .line 1354
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsProvider;->buildPeopleLookupWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1356
    :cond_3ce
    const-string v7, "starred = 1"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p2

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1361
    .restart local v25       #starredQuery:Ljava/lang/String;
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    .end local v5           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1362
    .restart local v5       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v7, "people LEFT OUTER JOIN phones ON people.primary_phone=phones._id LEFT OUTER JOIN presence ON (presence.person=people._id) LEFT OUTER JOIN photos ON (photos.person=people._id)"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1363
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sPeopleWithPhotoProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1364
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x3

    if-le v7, v8, :cond_403

    .line 1365
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsProvider;->buildPeopleLookupWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1367
    :cond_403
    const-string v7, "times_contacted > 0 AND starred = 0"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p2

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1371
    .restart local v16       #frequentQuery:Ljava/lang/String;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v25, v7, v8

    const/4 v8, 0x1

    aput-object v16, v7, v8

    const-string v8, "times_contacted DESC, display_name ASC"

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1373
    .restart local v24       #query:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 1374
    .restart local v6       #db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/android/providers/contacts/ContactsProvider;->sPeopleTable:Ljava/lang/String;

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v24

    move-object v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1375
    .restart local v14       #c:Landroid/database/Cursor;
    if-eqz v14, :cond_449

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider;->isTemporary()Z

    move-result v7

    if-nez v7, :cond_449

    .line 1376
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object v0, v14

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_449
    move-object/from16 v10, v17

    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    move-object v7, v14

    .line 1378
    goto/16 :goto_8d

    .line 1381
    .end local v6           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #groupBy:Ljava/lang/String;
    .end local v14           #c:Landroid/database/Cursor;
    .end local v16           #frequentQuery:Ljava/lang/String;
    .end local v24           #query:Ljava/lang/String;
    .end local v25           #starredQuery:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    :sswitch_44e
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider;->isTemporary()Z

    move-result v7

    if-eqz v7, :cond_45d

    .line 1382
    const-string v7, "_deleted_people"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object/from16 v10, v17

    .line 1383
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1385
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    :cond_45d
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v7}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v7

    .line 1409
    :sswitch_463
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider;->setTablesAndProjectionMapForPeople(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)V

    .line 1410
    const-string v7, "people._id="

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1411
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/CharSequence;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v10, v17

    .line 1412
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1414
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    .restart local p1
    :sswitch_485
    const-string v7, "phones, people"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1415
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sPhonesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1416
    const-string v7, "people._id = phones.person AND person="

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1417
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/CharSequence;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v10, v17

    .line 1418
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1420
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    .restart local p1
    :sswitch_4a9
    const-string v7, "phones, people"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1421
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sPhonesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1422
    const-string v7, "people._id = phones.person AND person="

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1423
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1424
    const-string v7, " AND phones._id="

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1425
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/CharSequence;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v10, v17

    .line 1426
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1429
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    .restart local p1
    :sswitch_4e0
    const-string v7, "people._id=?"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1430
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider;->appendSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 1434
    :sswitch_4fa
    const-string v7, "phones JOIN people ON (phones.person = people._id) LEFT OUTER JOIN presence ON (presence.person = people._id)"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1436
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sPhonesWithPresenceProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object/from16 v10, v17

    .line 1437
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1440
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    .restart local p1
    :sswitch_508
    const-string v7, "contact_methods, people"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1441
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1442
    const-string v7, "people._id = contact_methods.person AND person="

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1443
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/CharSequence;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v10, v17

    .line 1444
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1446
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    .restart local p1
    :sswitch_52c
    const-string v7, "contact_methods, people"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1447
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1448
    const-string v7, "people._id = contact_methods.person AND person="

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1449
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1450
    const-string v7, " AND contact_methods._id="

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1451
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/CharSequence;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v10, v17

    .line 1452
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1454
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    .restart local p1
    :sswitch_563
    const-string v7, "organizations, people"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1455
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sOrganizationsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1456
    const-string v7, "people._id = organizations.person AND person="

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1457
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/CharSequence;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v10, v17

    .line 1458
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1460
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    .restart local p1
    :sswitch_587
    const-string v7, "organizations, people"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1461
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sOrganizationsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1462
    const-string v7, "people._id = organizations.person AND person="

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1463
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1464
    const-string v7, " AND organizations._id="

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1465
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/CharSequence;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v10, v17

    .line 1466
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1468
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    .restart local p1
    :sswitch_5be
    const-string v7, "phones, people"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1469
    const-string v7, "people._id = phones.person"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1470
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sPhonesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object/from16 v10, v17

    .line 1471
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1473
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    :sswitch_5d1
    const-string v7, "phones, people"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1474
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "people._id = phones.person AND phones._id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1476
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sPhonesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object/from16 v10, v17

    .line 1477
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1479
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    .restart local p1
    :sswitch_603
    const-string v7, "organizations, people"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1480
    const-string v7, "people._id = organizations.person"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1481
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sOrganizationsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object/from16 v10, v17

    .line 1482
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1484
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    :sswitch_616
    const-string v7, "organizations, people"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1485
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "people._id = organizations.person AND organizations._id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1487
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sOrganizationsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object/from16 v10, v17

    .line 1488
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1490
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    .restart local p1
    :sswitch_648
    const-string v7, "type=2 AND "

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1495
    :sswitch_64d
    const-string v7, "phones JOIN people ON (people._id = phones.person)"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1496
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sPhonesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1497
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_989

    .line 1498
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsProvider;->buildPeopleLookupWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v10, v17

    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1503
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    :sswitch_674
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1506
    .local v23, phoneNumber:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatchEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1507
    .local v18, indexable:Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 1508
    .local v26, subQuery:Ljava/lang/StringBuilder;
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_690

    .line 1511
    const-string p5, "name ASC"

    .line 1513
    :cond_690
    const-string v7, "people, (SELECT * FROM phones WHERE (phones.number_key GLOB \'"

    move-object/from16 v0, v26

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1514
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1515
    const-string v7, "*\')) AS phones"

    move-object/from16 v0, v26

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1516
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1517
    const-string v7, "phones.person=people._id AND PHONE_NUMBERS_EQUAL(phones.number, "

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1520
    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 1525
    const-string v7, ")"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1526
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sPhonesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object/from16 v10, v17

    .line 1527
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1530
    .end local v10           #groupBy:Ljava/lang/String;
    .end local v18           #indexable:Ljava/lang/String;
    .end local v23           #phoneNumber:Ljava/lang/String;
    .end local v26           #subQuery:Ljava/lang/StringBuilder;
    .restart local v17       #groupBy:Ljava/lang/String;
    :sswitch_6c7
    const-string v7, "contact_methods, people"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1531
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1532
    const-string v7, "people._id = contact_methods.person"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v10, v17

    .line 1533
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1535
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    :sswitch_6da
    const-string v7, "contact_methods LEFT OUTER JOIN people ON contact_methods.person = people._id"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1536
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1537
    const-string v7, "contact_methods._id="

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1538
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/CharSequence;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v10, v17

    .line 1539
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1541
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    .restart local p1
    :sswitch_6fe
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1542
    .local v22, pattern:Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 1546
    .restart local v27       #whereClause:Ljava/lang/StringBuilder;
    const-string v7, "kind"

    move-object/from16 v0, v27

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    const/16 v7, 0x3d

    move-object/from16 v0, v27

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1548
    const/16 v7, 0x27

    move-object/from16 v0, v27

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1549
    const/4 v7, 0x1

    move-object/from16 v0, v27

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1550
    const-string v7, "\' AND (UPPER("

    move-object/from16 v0, v27

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    const-string v7, "name"

    move-object/from16 v0, v27

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    const-string v7, ") GLOB "

    move-object/from16 v0, v27

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1553
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v27

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1554
    const-string v7, " OR UPPER("

    move-object/from16 v0, v27

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1555
    const-string v7, "name"

    move-object/from16 v0, v27

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1556
    const-string v7, ") GLOB "

    move-object/from16 v0, v27

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1557
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "* "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v27

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1558
    const-string v7, ") AND "

    move-object/from16 v0, v27

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1564
    .end local v22           #pattern:Ljava/lang/String;
    .end local v27           #whereClause:Ljava/lang/StringBuilder;
    :sswitch_7aa
    const-string v7, "contact_methods INNER JOIN people on (contact_methods.person = people._id)"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1565
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sEmailSearchProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1566
    const-string v7, "kind = 1"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1567
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    move-object/from16 v10, v17

    .line 1568
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1571
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    :sswitch_7c1
    const-string v7, "people._id=?"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1572
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider;->appendSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 1576
    :sswitch_7db
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contact_methods JOIN people ON (contact_methods.person = people._id) LEFT OUTER JOIN presence ON ((kind=1 AND im_protocol=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    invoke-static {v8}, Landroid/provider/Contacts$ContactMethods;->encodePredefinedImProtocol(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' AND data=im_handle)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " OR "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "(kind="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND data=im_handle AND aux_data=im_protocol))"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1588
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsWithPresenceProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object/from16 v10, v17

    .line 1589
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1592
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    .restart local p1
    :sswitch_81c
    const-string v7, "calls"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1593
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1594
    sget-object v21, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v10, v17

    .line 1595
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1597
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    :sswitch_82c
    const-string v7, "calls"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1598
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1599
    const-string v7, "calls._id="

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1600
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/CharSequence;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1601
    sget-object v21, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v10, v17

    .line 1602
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1604
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    .restart local p1
    :sswitch_852
    const-string v7, "calls"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1605
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1607
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1608
    .restart local v23       #phoneNumber:Ljava/lang/String;
    const-string v7, "PHONE_NUMBERS_EQUAL(number, "

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1609
    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 1610
    const-string v7, ")"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1611
    sget-object v21, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v10, v17

    .line 1612
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1616
    .end local v10           #groupBy:Ljava/lang/String;
    .end local v23           #phoneNumber:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    :sswitch_87d
    const-string v7, "presence LEFT OUTER JOIN people on (presence.person= people._id)"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1618
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sPresenceProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object/from16 v10, v17

    .line 1619
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1621
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    :sswitch_88b
    const-string v7, "presence LEFT OUTER JOIN people on (presence.person= people._id)"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1623
    const-string v7, "presence._id="

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1624
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v10, v17

    .line 1625
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1627
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    :sswitch_8a0
    const-string v7, "voice_dialer_timestamp"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1628
    const-string v7, "_id=1"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v10, v17

    .line 1629
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1632
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    :sswitch_8ae
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "extensions._id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1635
    :sswitch_8d5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "person="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1636
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sExtensionsTable:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1637
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sExtensionsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object/from16 v10, v17

    .line 1638
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1641
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    .restart local p1
    :sswitch_907
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "extensions._id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1644
    :sswitch_92b
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sExtensionsTable:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1645
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sExtensionsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object/from16 v10, v17

    .line 1646
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1649
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    .restart local p1
    :sswitch_939
    const-string v7, "people LEFT OUTER JOIN photos ON (photos.person=people._id)"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1650
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sLiveFoldersProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object/from16 v10, v17

    .line 1651
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1654
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    :sswitch_947
    const-string v7, "people LEFT OUTER JOIN photos ON (photos.person=people._id)"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1655
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sLiveFoldersProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1656
    const-string v7, "primary_phone IS NOT NULL"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v10, v17

    .line 1657
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1660
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    :sswitch_95a
    const-string v7, "people LEFT OUTER JOIN photos ON (photos.person=people._id)"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1661
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sLiveFoldersProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1662
    const-string v7, "starred <> 0"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v10, v17

    .line 1663
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1666
    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    :sswitch_96d
    const-string v7, "people LEFT OUTER JOIN photos ON (photos.person=people._id)"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1667
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sLiveFoldersProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1668
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider;->buildGroupNameMatchWhereClause(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v10, v17

    .line 1669
    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .end local v10           #groupBy:Ljava/lang/String;
    .restart local v17       #groupBy:Ljava/lang/String;
    :cond_989
    move-object/from16 v10, v17

    .end local v17           #groupBy:Ljava/lang/String;
    .restart local v10       #groupBy:Ljava/lang/String;
    goto/16 :goto_64

    .line 1143
    nop

    :sswitch_data_98e
    .sparse-switch
        0x0 -> :sswitch_1ca
        0x1 -> :sswitch_1f0
        0x2 -> :sswitch_463
        0x3 -> :sswitch_485
        0x4 -> :sswitch_4a9
        0x5 -> :sswitch_508
        0x6 -> :sswitch_52c
        0x7 -> :sswitch_1d6
        0x8 -> :sswitch_1eb
        0x9 -> :sswitch_339
        0xa -> :sswitch_3ab
        0xb -> :sswitch_563
        0xc -> :sswitch_587
        0xd -> :sswitch_d1
        0xe -> :sswitch_b9
        0xf -> :sswitch_2b3
        0x10 -> :sswitch_8d5
        0x11 -> :sswitch_8ae
        0x12 -> :sswitch_7c1
        0x13 -> :sswitch_1df
        0x15 -> :sswitch_4e0
        0x16 -> :sswitch_23a
        0x3e8 -> :sswitch_44e
        0x3e9 -> :sswitch_51
        0x7d0 -> :sswitch_5be
        0x7d1 -> :sswitch_5d1
        0x7d2 -> :sswitch_674
        0x7d3 -> :sswitch_64d
        0x7d4 -> :sswitch_648
        0x7d5 -> :sswitch_4fa
        0xbb8 -> :sswitch_6c7
        0xbb9 -> :sswitch_6da
        0xbba -> :sswitch_7aa
        0xbbb -> :sswitch_6fe
        0xbbc -> :sswitch_7db
        0xfa0 -> :sswitch_81c
        0xfa1 -> :sswitch_82c
        0xfa2 -> :sswitch_852
        0x1388 -> :sswitch_87d
        0x1389 -> :sswitch_88b
        0x1770 -> :sswitch_603
        0x1771 -> :sswitch_616
        0x1b59 -> :sswitch_8a0
        0x1b5a -> :sswitch_2e5
        0x1f40 -> :sswitch_a4
        0x1f42 -> :sswitch_8e
        0x1f43 -> :sswitch_170
        0x1f44 -> :sswitch_152
        0x1f45 -> :sswitch_1ac
        0x1f46 -> :sswitch_18e
        0x2328 -> :sswitch_136
        0x232a -> :sswitch_11b
        0x232b -> :sswitch_149
        0x2710 -> :sswitch_2a5
        0x2711 -> :sswitch_281
        0x2af8 -> :sswitch_92b
        0x2afa -> :sswitch_907
        0x2ee0 -> :sswitch_b1
        0x32c9 -> :sswitch_939
        0x32ca -> :sswitch_96d
        0x32cb -> :sswitch_947
        0x32cc -> :sswitch_95a
    .end sparse-switch
.end method

.method protected setTablesAndProjectionMapForPeople(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)V
    .registers 10
    .parameter "qb"
    .parameter "projectionIn"

    .prologue
    const-string v6, "people LEFT OUTER JOIN phones ON people.primary_phone=phones._id LEFT OUTER JOIN presence ON (presence.person=people._id)"

    .line 1082
    const/4 v1, 0x0

    .local v1, hasEmailColumn:Z
    move v0, v1

    .local v0, hasDrmPhotoColumn:Z
    move v2, v1

    .line 1084
    .local v2, hasPhotoColumn:Z
    if-nez p2, :cond_12

    .line 1085
    const-string v4, "people LEFT OUTER JOIN phones ON people.primary_phone=phones._id LEFT OUTER JOIN presence ON (presence.person=people._id)"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1086
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider;->sPeopleProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1123
    :goto_11
    return-void

    .line 1090
    :cond_12
    const/4 v3, 0x0

    .local v3, i:I
    :goto_13
    array-length v4, p2

    if-ge v3, v4, :cond_3c

    .line 1091
    aget-object v4, p2, v3

    const-string v5, "photo_data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1092
    const/4 v2, 0x1

    .line 1090
    :cond_21
    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1093
    :cond_24
    aget-object v4, p2, v3

    const-string v5, "drmphoto_data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1094
    const/4 v0, 0x1

    goto :goto_21

    .line 1095
    :cond_30
    aget-object v4, p2, v3

    const-string v5, "email_data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1096
    const/4 v1, 0x1

    goto :goto_21

    .line 1100
    :cond_3c
    if-eqz v1, :cond_63

    .line 1101
    if-eqz v0, :cond_4b

    .line 1102
    const-string v4, "people LEFT OUTER JOIN phones ON people.primary_phone=phones._id LEFT OUTER JOIN presence ON (presence.person=people._id) LEFT OUTER JOIN contact_methods ON people.primary_email=contact_methods._id LEFT OUTER JOIN drmphotos ON (drmphotos.person=people._id) LEFT OUTER JOIN photos ON (photos.person=people._id)"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1103
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider;->sPeopleWithDrmPhotoEmailProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto :goto_11

    .line 1104
    :cond_4b
    if-eqz v2, :cond_58

    .line 1105
    const-string v4, "people LEFT OUTER JOIN phones ON people.primary_phone=phones._id LEFT OUTER JOIN presence ON (presence.person=people._id) LEFT OUTER JOIN contact_methods ON people.primary_email=contact_methods._id LEFT OUTER JOIN photos ON (photos.person=people._id)"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1106
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider;->sPeopleWithPhotoEmailProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto :goto_11

    .line 1108
    :cond_58
    const-string v4, "people LEFT OUTER JOIN phones ON people.primary_phone=phones._id LEFT OUTER JOIN presence ON (presence.person=people._id) LEFT OUTER JOIN contact_methods ON people.primary_email=contact_methods._id"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1109
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider;->sPeopleWithEmailProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto :goto_11

    .line 1112
    :cond_63
    if-eqz v0, :cond_70

    .line 1113
    const-string v4, "people LEFT OUTER JOIN phones ON people.primary_phone=phones._id LEFT OUTER JOIN presence ON (presence.person=people._id) LEFT OUTER JOIN drmphotos ON (drmphotos.person=people._id) LEFT OUTER JOIN photos ON (photos.person=people._id)"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1114
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider;->sPeopleWithDrmPhotoProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto :goto_11

    .line 1115
    :cond_70
    if-eqz v2, :cond_7d

    .line 1116
    const-string v4, "people LEFT OUTER JOIN phones ON people.primary_phone=phones._id LEFT OUTER JOIN presence ON (presence.person=people._id) LEFT OUTER JOIN photos ON (photos.person=people._id)"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1117
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider;->sPeopleWithPhotoProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto :goto_11

    .line 1119
    :cond_7d
    const-string v4, "people LEFT OUTER JOIN phones ON people.primary_phone=phones._id LEFT OUTER JOIN presence ON (presence.person=people._id)"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1120
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider;->sPeopleProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto :goto_11
.end method

.method public updateInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 40
    .parameter "url"
    .parameter "values"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 2824
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    .line 2827
    .local v17, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v27

    .line 2829
    .local v27, matchedUriId:I
    const-string v5, "ContactsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "## ContactsProvider.update: url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2831
    sparse-switch v27, :sswitch_data_428

    .line 2991
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot update URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2833
    :sswitch_47
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 2834
    .local v16, changedItemId:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/providers/contacts/ContactsProvider;->addIdToWhereClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v5

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider;->updateGroups(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 3090
    .end local v16           #changedItemId:Ljava/lang/String;
    .end local p1
    :goto_65
    return v5

    .line 2838
    .restart local p1
    :sswitch_66
    sget-object v34, Lcom/android/providers/contacts/ContactsProvider;->sExtensionsTable:Ljava/lang/String;

    .line 2839
    .local v34, tableToChange:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 2994
    .restart local v16       #changedItemId:Ljava/lang/String;
    :goto_73
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/providers/contacts/ContactsProvider;->addIdToWhereClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2995
    .local v8, where:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v34

    move-object/from16 v2, p2

    move-object v3, v8

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v28

    .line 2997
    .local v28, numRowsUpdated:I
    if-lez v28, :cond_93

    if-eqz v16, :cond_93

    .line 2998
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v25

    .line 2999
    .local v25, itemId:J
    sparse-switch v27, :sswitch_data_466

    .end local v8           #where:Ljava/lang/String;
    .end local v25           #itemId:J
    .end local p1
    :cond_93
    :goto_93
    move/from16 v5, v28

    .line 3090
    goto :goto_65

    .line 2843
    .end local v16           #changedItemId:Ljava/lang/String;
    .end local v28           #numRowsUpdated:I
    .end local v34           #tableToChange:Ljava/lang/String;
    .restart local p1
    :sswitch_96
    sget-object v34, Lcom/android/providers/contacts/ContactsProvider;->sExtensionsTable:Ljava/lang/String;

    .line 2844
    .restart local v34       #tableToChange:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 2845
    .restart local v16       #changedItemId:Ljava/lang/String;
    goto :goto_73

    .line 2848
    .end local v16           #changedItemId:Ljava/lang/String;
    .end local v34           #tableToChange:Ljava/lang/String;
    :sswitch_a4
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b6

    const-string v5, "last_time_contacted"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d8

    .line 2849
    :cond_b6
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "You may only use "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to update People.LAST_TIME_CONTACTED"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2852
    :cond_d8
    sget-object v34, Lcom/android/providers/contacts/ContactsProvider;->sPeopleTable:Ljava/lang/String;

    .line 2853
    .restart local v34       #tableToChange:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 2854
    .restart local v16       #changedItemId:Ljava/lang/String;
    goto :goto_73

    .line 2857
    .end local v16           #changedItemId:Ljava/lang/String;
    .end local v34           #tableToChange:Ljava/lang/String;
    :sswitch_e6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 2858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 2859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    const-string v6, "_sync_dirty"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 p2, v0

    .line 2861
    sget-object v34, Lcom/android/providers/contacts/ContactsProvider;->sPeopleTable:Ljava/lang/String;

    .line 2862
    .restart local v34       #tableToChange:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 2863
    .restart local v16       #changedItemId:Ljava/lang/String;
    goto/16 :goto_73

    .line 2867
    .end local v16           #changedItemId:Ljava/lang/String;
    .end local v34           #tableToChange:Ljava/lang/String;
    :sswitch_11d
    const-string v5, "number"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 2868
    .local v29, number:Ljava/lang/String;
    if-eqz v29, :cond_14f

    .line 2869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 2870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 2871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    const-string v6, "number_key"

    invoke-static/range {v29 .. v29}, Landroid/telephony/PhoneNumberUtils;->getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 p2, v0

    .line 2875
    :cond_14f
    sget-object v34, Lcom/android/providers/contacts/ContactsProvider;->sPhonesTable:Ljava/lang/String;

    .line 2876
    .restart local v34       #tableToChange:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 2877
    .restart local v16       #changedItemId:Ljava/lang/String;
    goto/16 :goto_73

    .line 2881
    .end local v16           #changedItemId:Ljava/lang/String;
    .end local v29           #number:Ljava/lang/String;
    .end local v34           #tableToChange:Ljava/lang/String;
    :sswitch_15e
    sget-object v34, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsTable:Ljava/lang/String;

    .line 2882
    .restart local v34       #tableToChange:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 2883
    .restart local v16       #changedItemId:Ljava/lang/String;
    goto/16 :goto_73

    .line 2887
    .end local v16           #changedItemId:Ljava/lang/String;
    .end local v34           #tableToChange:Ljava/lang/String;
    :sswitch_16d
    const-string v5, "number"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 2888
    .restart local v29       #number:Ljava/lang/String;
    if-eqz v29, :cond_19f

    .line 2889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 2890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 2891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    const-string v6, "number_key"

    invoke-static/range {v29 .. v29}, Landroid/telephony/PhoneNumberUtils;->getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object/from16 p2, v0

    .line 2895
    :cond_19f
    sget-object v34, Lcom/android/providers/contacts/ContactsProvider;->sPhonesTable:Ljava/lang/String;

    .line 2896
    .restart local v34       #tableToChange:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 2897
    .restart local v16       #changedItemId:Ljava/lang/String;
    goto/16 :goto_73

    .line 2908
    .end local v16           #changedItemId:Ljava/lang/String;
    .end local v29           #number:Ljava/lang/String;
    .end local v34           #tableToChange:Ljava/lang/String;
    :sswitch_1ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 2909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 2913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    const-string v6, "_sync_dirty"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1ea

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    const-string v6, "data"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1ea

    .line 2914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    const-string v6, "_sync_dirty"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2917
    :cond_1ea
    const/16 v5, 0xf

    move/from16 v0, v27

    move v1, v5

    if-ne v0, v1, :cond_245

    .line 2918
    new-instance v8, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "person="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2931
    .local v8, where:Ljava/lang/StringBuilder;
    :goto_217
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_22d

    .line 2932
    const-string v5, " AND ("

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2933
    move-object v0, v8

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2934
    const/16 v5, 0x29

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2936
    :cond_22d
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider;->sPhotosTable:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mValues:Landroid/content/ContentValues;

    move-object v6, v0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_65

    .line 2929
    .end local v8           #where:Ljava/lang/StringBuilder;
    .restart local p1
    :cond_245
    new-instance v8, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v8       #where:Ljava/lang/StringBuilder;
    goto :goto_217

    .line 2939
    .end local v8           #where:Ljava/lang/StringBuilder;
    .restart local p1
    :sswitch_26c
    sget-object v34, Lcom/android/providers/contacts/ContactsProvider;->sOrganizationsTable:Ljava/lang/String;

    .line 2940
    .restart local v34       #tableToChange:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 2941
    .restart local v16       #changedItemId:Ljava/lang/String;
    goto/16 :goto_73

    .line 2944
    .end local v16           #changedItemId:Ljava/lang/String;
    .end local v34           #tableToChange:Ljava/lang/String;
    :sswitch_27b
    sget-object v34, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsTable:Ljava/lang/String;

    .line 2945
    .restart local v34       #tableToChange:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 2946
    .restart local v16       #changedItemId:Ljava/lang/String;
    goto/16 :goto_73

    .line 2949
    .end local v16           #changedItemId:Ljava/lang/String;
    .end local v34           #tableToChange:Ljava/lang/String;
    :sswitch_28a
    if-eqz p4, :cond_294

    .line 2950
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "you aren\'t allowed to specify where args when updating settings"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2953
    :cond_294
    if-eqz p3, :cond_29e

    .line 2954
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "you aren\'t allowed to specify a where string when updating settings"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2957
    :cond_29e
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider;->updateSettings(Landroid/content/ContentValues;)I

    move-result v5

    goto/16 :goto_65

    .line 2960
    :sswitch_2a8
    const-string v34, "calls"

    .line 2961
    .restart local v34       #tableToChange:Ljava/lang/String;
    const/16 v16, 0x0

    .line 2962
    .restart local v16       #changedItemId:Ljava/lang/String;
    goto/16 :goto_73

    .line 2965
    .end local v16           #changedItemId:Ljava/lang/String;
    .end local v34           #tableToChange:Ljava/lang/String;
    :sswitch_2ae
    const-string v34, "calls"

    .line 2966
    .restart local v34       #tableToChange:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 2967
    .restart local v16       #changedItemId:Ljava/lang/String;
    goto/16 :goto_73

    .line 3001
    .local v8, where:Ljava/lang/String;
    .restart local v25       #itemId:J
    .restart local v28       #numRowsUpdated:I
    :sswitch_2bd
    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "isprimary"

    .end local v8           #where:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider;->fixupPrimaryAfterUpdate(ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V

    goto/16 :goto_93

    .line 3008
    .restart local v8       #where:Ljava/lang/String;
    :sswitch_2d7
    const/4 v5, 0x5

    const/4 v6, 0x4

    move/from16 v0, v27

    move v1, v6

    if-ne v0, v1, :cond_309

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :goto_2f1
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "isprimary"

    .end local v8           #where:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider;->fixupPrimaryAfterUpdate(ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V

    goto/16 :goto_93

    .restart local v8       #where:Ljava/lang/String;
    .restart local p1
    :cond_309
    const/4 v6, 0x0

    goto :goto_2f1

    .line 3017
    :sswitch_30b
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsTable:Ljava/lang/String;

    sget-object v6, Lcom/android/providers/contacts/ContactsProvider;->sIsPrimaryProjectionWithKind:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v8

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider;->lookupIsPrimaryInfo(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;

    move-result-object v24

    .line 3019
    .local v24, isPrimaryInfo:Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;->kind:Ljava/lang/Integer;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;->person:Ljava/lang/Long;

    move-object v6, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "isprimary"

    .end local v8           #where:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider;->fixupPrimaryAfterUpdate(ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V

    goto/16 :goto_93

    .line 3025
    .end local v24           #isPrimaryInfo:Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;
    .restart local v8       #where:Ljava/lang/String;
    :sswitch_340
    const-string v5, "starred"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v21

    .line 3026
    .local v21, hasStarred:Z
    const-string v5, "primary_phone"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v20

    .line 3027
    .local v20, hasPrimaryPhone:Z
    const-string v5, "primary_organization"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v19

    .line 3029
    .local v19, hasPrimaryOrganization:Z
    const-string v5, "primary_email"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v18

    .line 3030
    .local v18, hasPrimaryEmail:Z
    if-nez v21, :cond_36c

    if-nez v20, :cond_36c

    if-nez v19, :cond_36c

    if-eqz v18, :cond_93

    .line 3032
    :cond_36c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    sget-object v6, Lcom/android/providers/contacts/ContactsProvider;->sPeopleTable:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v9, p4

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 3035
    .local v15, c:Landroid/database/Cursor;
    :try_start_37d
    const-string v5, "_sync_account"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 3036
    .local v22, indexAccount:I
    const-string v5, "_id"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 3037
    .local v23, indexId:I
    const-string v5, "starred"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v33

    .line 3038
    .local v33, starredValue:Ljava/lang/Long;
    const-string v5, "primary_phone"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v32

    .line 3039
    .local v32, primaryPhone:Ljava/lang/Long;
    const-string v5, "primary_organization"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v31

    .line 3041
    .local v31, primaryOrganization:Ljava/lang/Long;
    const-string v5, "primary_email"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v30

    .line 3042
    .end local v8           #where:Ljava/lang/String;
    .local v30, primaryEmail:Ljava/lang/Long;
    :cond_3ad
    :goto_3ad
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_422

    .line 3043
    move-object v0, v15

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 3044
    .local v11, personId:J
    if-eqz v21, :cond_3d8

    .line 3045
    move-object v0, v15

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v33, :cond_3e9

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3e9

    const/4 v6, 0x1

    :goto_3d0
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide v2, v11

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider;->fixupGroupMembershipAfterPeopleUpdate(Ljava/lang/String;JZ)V

    .line 3049
    :cond_3d8
    if-eqz v20, :cond_3f5

    .line 3050
    if-nez v32, :cond_3eb

    .line 3051
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "the value of PRIMARY_PHONE_ID must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3e4
    .catchall {:try_start_37d .. :try_end_3e4} :catchall_3e4

    .line 3074
    .end local v11           #personId:J
    .end local v22           #indexAccount:I
    .end local v23           #indexId:I
    .end local v30           #primaryEmail:Ljava/lang/Long;
    .end local v31           #primaryOrganization:Ljava/lang/Long;
    .end local v32           #primaryPhone:Ljava/lang/Long;
    .end local v33           #starredValue:Ljava/lang/Long;
    :catchall_3e4
    move-exception v5

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v5

    .line 3045
    .restart local v11       #personId:J
    .restart local v22       #indexAccount:I
    .restart local v23       #indexId:I
    .restart local v30       #primaryEmail:Ljava/lang/Long;
    .restart local v31       #primaryOrganization:Ljava/lang/Long;
    .restart local v32       #primaryPhone:Ljava/lang/Long;
    .restart local v33       #starredValue:Ljava/lang/Long;
    :cond_3e9
    const/4 v6, 0x0

    goto :goto_3d0

    .line 3054
    :cond_3eb
    const/4 v10, 0x5

    :try_start_3ec
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/providers/contacts/ContactsProvider;->setIsPrimary(IJJ)V

    .line 3056
    :cond_3f5
    if-eqz v19, :cond_40b

    .line 3057
    if-nez v31, :cond_401

    .line 3058
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "the value of PRIMARY_ORGANIZATION_ID must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3062
    :cond_401
    const/4 v10, 0x4

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/providers/contacts/ContactsProvider;->setIsPrimary(IJJ)V

    .line 3065
    :cond_40b
    if-eqz v18, :cond_3ad

    .line 3066
    if-nez v30, :cond_417

    .line 3067
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "the value of PRIMARY_EMAIL_ID must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3070
    :cond_417
    const/4 v10, 0x1

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/providers/contacts/ContactsProvider;->setIsPrimary(IJJ)V
    :try_end_421
    .catchall {:try_start_3ec .. :try_end_421} :catchall_3e4

    goto :goto_3ad

    .line 3074
    .end local v11           #personId:J
    :cond_422
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_93

    .line 2831
    nop

    :sswitch_data_428
    .sparse-switch
        0x2 -> :sswitch_e6
        0x4 -> :sswitch_11d
        0x6 -> :sswitch_15e
        0xf -> :sswitch_1ae
        0x11 -> :sswitch_66
        0x14 -> :sswitch_a4
        0x7d1 -> :sswitch_16d
        0xbb9 -> :sswitch_27b
        0xfa0 -> :sswitch_2a8
        0xfa1 -> :sswitch_2ae
        0x1771 -> :sswitch_26c
        0x1f42 -> :sswitch_47
        0x2711 -> :sswitch_1ae
        0x2afa -> :sswitch_96
        0x2ee0 -> :sswitch_28a
    .end sparse-switch

    .line 2999
    :sswitch_data_466
    .sparse-switch
        0x2 -> :sswitch_340
        0x4 -> :sswitch_2d7
        0x6 -> :sswitch_30b
        0x7d1 -> :sswitch_2d7
        0xbb9 -> :sswitch_30b
        0x1771 -> :sswitch_2bd
    .end sparse-switch
.end method

.method protected upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;II)Z
    .registers 8
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const-string v3, "ContactsProvider"

    .line 340
    const-string v1, "ContactsProvider"

    const-string v1, "> upgradeDatabase()"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v0, 0x1

    .line 342
    .local v0, upgradeWasLossless:Z
    const/16 v1, 0x8d

    if-ge p2, v1, :cond_40

    .line 343
    const-string v1, "ContactsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsProvider;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 346
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsProvider;->bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 347
    const/16 p2, 0x8d

    .line 348
    const/4 v1, 0x0

    .line 350
    :goto_3f
    return v1

    :cond_40
    move v1, v0

    goto :goto_3f
.end method
