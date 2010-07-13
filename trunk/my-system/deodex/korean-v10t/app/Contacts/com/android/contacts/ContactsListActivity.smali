.class public final Lcom/android/contacts/ContactsListActivity;
.super Landroid/app/ListActivity;
.source "ContactsListActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;,
        Lcom/android/contacts/ContactsListActivity$ContactListItemCache;,
        Lcom/android/contacts/ContactsListActivity$QueryHandler;,
        Lcom/android/contacts/ContactsListActivity$DeleteClickListener;
    }
.end annotation


# static fields
.field static final CONTACTS_EMAIL_PROJECTION:[Ljava/lang/String; = null

.field static final CONTACTS_PHOTO_EMAIL_PROJECTION:[Ljava/lang/String; = null

.field static final CONTACTS_PHOTO_PROJECTION:[Ljava/lang/String; = null

.field static final CONTACTS_PROJECTION:[Ljava/lang/String; = null

.field static final CONTACT_METHODS_PROJECTION:[Ljava/lang/String; = null

.field static final DEFAULT_MODE:I = 0xb00000a

.field static final DIALOG_ASSIGN_MEMBER_MENU:I = 0x1

.field static final DIALOG_SEND_MESSAGE_MENU:I = 0x2

.field static final DISPLAY_GROUP_INDEX_ALL_CONTACTS:I = 0x0

.field static final DISPLAY_GROUP_INDEX_ALL_CONTACTS_WITH_PHONES:I = 0x1

.field static final DISPLAY_GROUP_INDEX_INVALID:I = -0x1

.field static final DISPLAY_GROUP_INDEX_MY_CONTACTS:I = 0x2

.field static final DISPLAY_TYPE_ALL:I = 0x0

.field static final DISPLAY_TYPE_ALL_WITH_PHONES:I = 0x1

.field static final DISPLAY_TYPE_SYSTEM_GROUP:I = 0x2

.field static final DISPLAY_TYPE_UNKNOWN:I = -0x1

.field static final DISPLAY_TYPE_USER_GROUP:I = 0x3

.field static final DRMPHOTO_COLUMN_INDEX:I = 0xb

.field private static final FOCUS_KEY:Ljava/lang/String; = "focused"

.field private static final GROUPS_NAME_COLUMN_INDEX:I = 0x0

.field private static final GROUPS_PROJECTION:[Ljava/lang/String; = null

.field private static final GROUPS_SYSTEM_ID_COLUMN_INDEX:I = 0x1

.field public static final GROUP_KIND_EXTRA_KEY:Ljava/lang/String; = "com.android.contacts.extra.LOCAL_GROUP_KIND"

.field static final GROUP_WITH_PHONES:Ljava/lang/String; = "android_smartgroup_phone"

.field static final ID_COLUMN_INDEX:I = 0x0

.field static final LABEL_COLUMN_INDEX:I = 0x4

.field private static final LIST_STATE_KEY:Ljava/lang/String; = "liststate"

.field public static final MENU_ITEM_ASSIGN_MEMBER:I = 0xd

.field static final MENU_ITEM_CALL:I = 0x1

.field public static final MENU_ITEM_CONTACTS_DELETE:I = 0x6

.field static final MENU_ITEM_DELETE_CONTACT:I = 0x6

.field public static final MENU_ITEM_DELETE_GROUP:I = 0xc

.field public static final MENU_ITEM_DISPLAY_GROUP:I = 0x3

.field static final MENU_ITEM_EDIT_CONTACT:I = 0x5

.field public static final MENU_ITEM_EDIT_GROUP:I = 0xb

.field public static final MENU_ITEM_EDIT_SYNC_GTOUP:I = 0x4

.field static final MENU_ITEM_EIDT_MY_PROFILE:I = 0xb

.field public static final MENU_ITEM_EXCLUDE_MEMBER:I = 0xf

.field public static final MENU_ITEM_NEW_CONTACT:I = 0x2

.field public static final MENU_ITEM_SEARCH:I = 0x1

.field public static final MENU_ITEM_SEND_MESSAGE:I = 0xa

.field static final MENU_ITEM_SEND_SMS:I = 0x2

.field public static final MENU_ITEM_SIM_IMPORT:I = 0x5

.field static final MENU_ITEM_TOGGLE_STAR:I = 0x3

.field static final MENU_ITEM_VIEW_CONTACT:I = 0x4

.field static final MENU_ITEM_VIEW_MY_PROFILE:I = 0xa

.field static final MODE_ALL_CONTACTS:I = 0xb00000a

.field static final MODE_FREQUENT:I = 0x19

.field static final MODE_GROUP:I = 0xb000005

.field static final MODE_INSERT_OR_EDIT_CONTACT:I = -0x7dffffce

.field static final MODE_MASK_CALLBUTTON:I = 0x8000000

.field static final MODE_MASK_CREATE_NEW:I = 0x2000000

.field static final MODE_MASK_MY_PROFILE:I = 0x1000000

.field static final MODE_MASK_NO_FILTER:I = 0x20000000

.field static final MODE_MASK_NO_PRESENCE:I = 0x40000000

.field static final MODE_MASK_PICKER:I = -0x80000000

.field static final MODE_MASK_SHOW_PHOTOS:I = 0x1000000

.field static final MODE_PICK_CONTACT:I = -0x7fffffd8

.field static final MODE_PICK_OR_CREATE_CONTACT:I = -0x7dffffd3

.field static final MODE_PICK_PHONE:I = -0x1fffffc9

.field static final MODE_PICK_POSTAL:I = -0x1fffffc4

.field static final MODE_QUERY:I = 0x20000046

.field static final MODE_QUERY_PICK_TO_VIEW:I = -0x5fffffb5

.field static final MODE_SHOW_GROUP_MEMBERS:I = 0x8000050

.field static final MODE_STARRED:I = 0x14

.field static final MODE_STREQUENT:I = 0x100001e

.field static final MODE_UNKNOWN:I = 0x0

.field static final MODE_WITH_PHONES:I = 0xb00000f

.field static final NAME_COLUMN:Ljava/lang/String; = "display_name"

.field static final NAME_COLUMN_INDEX:I = 0x1

.field static final NUMBER_COLUMN_INDEX:I = 0x2

.field static final PHONES_PERSON_ID_INDEX:I = 0x6

.field static final PHONES_PROJECTION:[Ljava/lang/String; = null

.field static final PHOTO_COLUMN_INDEX:I = 0xa

.field private static final POSITION_MYPROFILE:I = 0x0

.field private static final POSITION_RGS_MY5:I = 0x1

.field static final PREF_DISPLAY_INFO:Ljava/lang/String; = "display_group"

.field static final PREF_DISPLAY_TYPE:Ljava/lang/String; = "display_system_group"

.field static final PRIMARY_EMAIL_ID_COLUMN_INDEX:I = 0x7

.field static final PRIMARY_PHONE_ID_COLUMN_INDEX:I = 0x6

.field private static final QUERY_MODE_MAILTO:I = 0x1

.field private static final QUERY_MODE_NONE:I = -0x1

.field private static final QUERY_MODE_TEL:I = 0x2

.field private static final QUERY_TOKEN:I = 0x2a

.field static final SERVER_STATUS_COLUMN_INDEX:I = 0x8

.field static final SIMPLE_CONTACTS_PROJECTION:[Ljava/lang/String; = null

.field public static final SNSIDS_ID_COLUMN:I = 0x0

.field public static final SNSIDS_PROJECTION:[Ljava/lang/String; = null

.field public static final SNSIDS_SN_SITE_ID_COLUMN:I = 0x1

.field public static final SNSIDS_SN_USER_ID_COLUMN:I = 0x2

.field static final SORT_STRING:Ljava/lang/String; = "sort_string"

.field static final SORT_STRING_INDEX:I = 0x9

.field static final STARRED_COLUMN_INDEX:I = 0x5

.field static final STREQUENT_PROJECTION:[Ljava/lang/String; = null

.field private static final SUBACTIVITY_NEW_CONTACT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ContactsListActivity"

.field static final TIME_CONTACTED_INDEX:I = 0x9

.field static final TYPE_COLUMN_INDEX:I = 0x3

.field private static mContactsListPicture:Landroid/graphics/Bitmap;


# instance fields
.field private MANAGE_DRM_PHOTO:Z

.field private MANAGE_ROGERS_OPTION:Ljava/lang/String;

.field private MANAGE_SOCIAL_NETWORK:Z

.field mAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

.field private mCreateShortcut:Z

.field private mDataCursor:Landroid/database/Cursor;

.field private mDefaultMode:Z

.field private mDisplayGroupCurrentSelection:I

.field private mDisplayGroupId:J

.field private mDisplayGroupKind:I

.field private mDisplayGroupName:Ljava/lang/String;

.field private mDisplayGroupOriginalSelection:I

.field private mDisplayGroups:[Ljava/lang/CharSequence;

.field private mDisplayType:I

.field private mGroupFilterUri:Landroid/net/Uri;

.field private mGroupPhotoView:Landroid/widget/ImageView;

.field private mGroupUri:Landroid/net/Uri;

.field private mJustCreated:Z

.field private mListHasFocus:Z

.field private mListState:Landroid/os/Parcelable;

.field private mMode:I

.field private mMyProfileUri:Landroid/net/Uri;

.field private mObserver:Landroid/database/ContentObserver;

.field private mObserverRegistered:Z

.field private mProfileHeader:Landroid/view/View;

.field private mQuery:Ljava/lang/String;

.field private mQueryData:Ljava/lang/String;

.field private mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

.field private mQueryMode:I

.field private mQueryPersonIdIndex:I

.field private mSyncEnabled:Z

.field private final mediaReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "_id"

    .line 273
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v7, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "primary_phone"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "primary_email"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mode"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sort_string"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "_sync_account"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 287
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v7, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "primary_phone"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "primary_email"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mode"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sort_string"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "email_data"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_sync_account"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->CONTACTS_EMAIL_PROJECTION:[Ljava/lang/String;

    .line 302
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v7, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "primary_phone"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "primary_email"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mode"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sort_string"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "photo_data"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "drmphoto_data"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_sync_account"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->CONTACTS_PHOTO_PROJECTION:[Ljava/lang/String;

    .line 320
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v7, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "primary_phone"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "primary_email"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mode"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sort_string"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "photo_data"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "drmphoto_data"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "email_data"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "_sync_account"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->CONTACTS_PHOTO_EMAIL_PROJECTION:[Ljava/lang/String;

    .line 339
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v7, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "_sync_account"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->SIMPLE_CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 345
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v7, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "primary_phone"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "primary_email"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mode"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "times_contacted"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "photo_data"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "drmphoto_data"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_sync_account"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->STREQUENT_PROJECTION:[Ljava/lang/String;

    .line 364
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v7, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "person"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 374
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v7, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "data"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "person"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->CONTACT_METHODS_PROJECTION:[Ljava/lang/String;

    .line 406
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v7, v0, v3

    const-string v1, "sn_site_id"

    aput-object v1, v0, v4

    const-string v1, "sn_user_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->SNSIDS_PROJECTION:[Ljava/lang/String;

    .line 425
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "system_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->GROUPS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 103
    iput-boolean v1, p0, Lcom/android/contacts/ContactsListActivity;->MANAGE_SOCIAL_NETWORK:Z

    .line 104
    iput-object v2, p0, Lcom/android/contacts/ContactsListActivity;->MANAGE_ROGERS_OPTION:Ljava/lang/String;

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->MANAGE_DRM_PHOTO:Z

    .line 464
    iput-boolean v1, p0, Lcom/android/contacts/ContactsListActivity;->mObserverRegistered:Z

    .line 479
    iput-object v2, p0, Lcom/android/contacts/ContactsListActivity;->mListState:Landroid/os/Parcelable;

    .line 480
    iput-boolean v1, p0, Lcom/android/contacts/ContactsListActivity;->mListHasFocus:Z

    .line 497
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryMode:I

    .line 511
    new-instance v0, Lcom/android/contacts/ContactsListActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/ContactsListActivity$1;-><init>(Lcom/android/contacts/ContactsListActivity;)V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mediaReceiver:Landroid/content/BroadcastReceiver;

    .line 524
    new-instance v0, Lcom/android/contacts/ContactsListActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/ContactsListActivity$2;-><init>(Lcom/android/contacts/ContactsListActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mObserver:Landroid/database/ContentObserver;

    .line 2542
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/ContactsListActivity;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mDataCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/ContactsListActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupId:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/ContactsListActivity;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/ContactsListActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/ContactsListActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->MANAGE_SOCIAL_NETWORK:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/ContactsListActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryMode:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/ContactsListActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->MANAGE_DRM_PHOTO:Z

    return v0
.end method

.method static synthetic access$1500()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->mContactsListPicture:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/ContactsListActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupKind:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/contacts/ContactsListActivity;ZJLjava/lang/String;)Z
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/contacts/ContactsListActivity;->startActivityToAssignMembers(ZJLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/ContactsListActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/ContactsListActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->startActivityToSendMessage(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/ContactsListActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->setEmptyTextLayout(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/ContactsListActivity;)Landroid/os/Parcelable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mListState:Landroid/os/Parcelable;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/contacts/ContactsListActivity;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/contacts/ContactsListActivity;->mListState:Landroid/os/Parcelable;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/contacts/ContactsListActivity;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/ContactsListActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mListHasFocus:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/contacts/ContactsListActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/contacts/ContactsListActivity;->mListHasFocus:Z

    return p1
.end method

.method private buildGroupUriByGroupKind(I)V
    .registers 12
    .parameter "kind"

    .prologue
    const/4 v3, 0x0

    const-string v9, "filter"

    const-string v8, "content://contacts/groups/"

    .line 1109
    const/4 v7, 0x0

    .line 1110
    .local v7, name:Ljava/lang/String;
    packed-switch p1, :pswitch_data_10c

    .line 1150
    :goto_9
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1151
    invoke-virtual {p0, v7}, Lcom/android/contacts/ContactsListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1153
    :cond_12
    :goto_12
    return-void

    .line 1112
    :pswitch_13
    const v0, 0x7f06004d

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1113
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/contacts/ContactsListActivity;->buildUserGroupUris(Ljava/lang/String;)V

    goto :goto_9

    .line 1116
    :pswitch_20
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://contacts/groups/"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/ContactsListActivity;->GROUPS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mDataCursor:Landroid/database/Cursor;

    .line 1119
    const v0, 0x7f06004f

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1120
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/contacts/ContactsListActivity;->buildUserGroupUris(Ljava/lang/String;)V

    goto :goto_9

    .line 1123
    :pswitch_54
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://contacts/groups/"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/ContactsListActivity;->GROUPS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mDataCursor:Landroid/database/Cursor;

    .line 1126
    iget-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupName:Ljava/lang/String;

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://contacts/groups/"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/members"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupUri:Landroid/net/Uri;

    .line 1128
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupUri:Landroid/net/Uri;

    const-string v1, "filter"

    invoke-static {v0, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupFilterUri:Landroid/net/Uri;

    goto/16 :goto_9

    .line 1131
    :pswitch_aa
    const v0, 0x7f0600e0

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1132
    sget-object v0, Landroid/provider/Contacts$Groups;->CONTENT_NOGROUP_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupUri:Landroid/net/Uri;

    .line 1133
    sget-object v0, Landroid/provider/Contacts$Groups;->CONTENT_NOGROUP_FILTER_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupFilterUri:Landroid/net/Uri;

    goto/16 :goto_9

    .line 1137
    :pswitch_bb
    iget-wide v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupId:J

    invoke-static {p0, v0, v1}, Lcom/android/contacts/LinkbookAsyncHelper;->getAccount(Landroid/content/Context;J)Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;

    move-result-object v6

    .line 1138
    .local v6, account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    if-nez v6, :cond_e2

    .line 1139
    const-string v0, "ContactsListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid account id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto/16 :goto_12

    .line 1143
    :cond_e2
    iget-object v7, v6, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mTitle:Ljava/lang/String;

    .line 1144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://contacts/people/all/sns_ids/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mSnSiteId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupUri:Landroid/net/Uri;

    .line 1145
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupUri:Landroid/net/Uri;

    const-string v1, "filter"

    invoke-static {v0, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupFilterUri:Landroid/net/Uri;

    goto/16 :goto_9

    .line 1110
    nop

    :pswitch_data_10c
    .packed-switch 0x1
        :pswitch_aa
        :pswitch_13
        :pswitch_20
        :pswitch_54
        :pswitch_bb
    .end packed-switch
.end method

.method private buildSystemGroupUris(Ljava/lang/String;)V
    .registers 4
    .parameter "systemId"

    .prologue
    .line 1103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://contacts/groups/system_id/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/members"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupUri:Landroid/net/Uri;

    .line 1104
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupUri:Landroid/net/Uri;

    const-string v1, "filter"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupFilterUri:Landroid/net/Uri;

    .line 1105
    return-void
.end method

.method private buildUserGroupUris(Ljava/lang/String;)V
    .registers 4
    .parameter "groupName"

    .prologue
    .line 1092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://contacts/groups/name/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/members"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupUri:Landroid/net/Uri;

    .line 1093
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupUri:Landroid/net/Uri;

    const-string v1, "filter"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupFilterUri:Landroid/net/Uri;

    .line 1094
    return-void
.end method

.method private getContactsProjection(I)[Ljava/lang/String;
    .registers 4
    .parameter "mode"

    .prologue
    const/high16 v1, 0x100

    .line 1827
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    .line 1828
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->CONTACTS_PHOTO_EMAIL_PROJECTION:[Ljava/lang/String;

    .line 1831
    :goto_9
    return-object v0

    :cond_a
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->CONTACTS_EMAIL_PROJECTION:[Ljava/lang/String;

    goto :goto_9
.end method

.method private getPeopleFilterUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .parameter "filter"

    .prologue
    .line 1817
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1818
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1820
    :goto_10
    return-object v0

    :cond_11
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_10
.end method

.method private static getSortOrder([Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "projectionType"

    .prologue
    .line 1837
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1838
    const-string v0, "sort_string ASC"

    .line 1840
    :goto_e
    return-object v0

    :cond_f
    const-string v0, "display_name COLLATE LOCALIZED ASC"

    goto :goto_e
.end method

.method private returnPickerResult(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 9
    .parameter "name"
    .parameter "uri"

    .prologue
    const/4 v5, -0x1

    .line 1793
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1795
    .local v1, intent:Landroid/content/Intent;
    iget-boolean v3, p0, Lcom/android/contacts/ContactsListActivity;->mCreateShortcut:Z

    if-eqz v3, :cond_41

    .line 1796
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1797
    .local v2, shortcutIntent:Landroid/content/Intent;
    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1798
    const-string v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1799
    const-string v3, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1800
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, p2, v3, v4}, Landroid/provider/Contacts$People;->loadContactPhoto(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1801
    .local v0, icon:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_34

    .line 1802
    const-string v3, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1808
    :goto_2d
    invoke-virtual {p0, v5, v1}, Lcom/android/contacts/ContactsListActivity;->setResult(ILandroid/content/Intent;)V

    .line 1812
    .end local v0           #icon:Landroid/graphics/Bitmap;
    .end local v2           #shortcutIntent:Landroid/content/Intent;
    :goto_30
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    .line 1813
    return-void

    .line 1804
    .restart local v0       #icon:Landroid/graphics/Bitmap;
    .restart local v2       #shortcutIntent:Landroid/content/Intent;
    :cond_34
    const-string v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v4, 0x7f0200c4

    invoke-static {p0, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2d

    .line 1810
    .end local v0           #icon:Landroid/graphics/Bitmap;
    .end local v2           #shortcutIntent:Landroid/content/Intent;
    :cond_41
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v5, v3}, Lcom/android/contacts/ContactsListActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_30
.end method

.method private setDefaultMode()V
    .registers 13

    .prologue
    const v11, 0xb00000a

    const v10, 0xb000005

    const v9, 0xb00000f

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1161
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1163
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v5, "display_system_group"

    const/4 v6, -0x1

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayType:I

    .line 1165
    iget v5, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayType:I

    packed-switch v5, :pswitch_data_7a

    .line 1224
    iput v11, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 1225
    iput-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupName:Ljava/lang/String;

    .line 1226
    iput v8, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayType:I

    .line 1233
    :goto_23
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->setEmptyText()V

    .line 1234
    return-void

    .line 1167
    :pswitch_27
    iput v9, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 1168
    iput-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupName:Ljava/lang/String;

    goto :goto_23

    .line 1173
    :pswitch_2c
    const-string v5, "display_group"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1175
    .local v4, systemId:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_40

    .line 1177
    iput v10, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 1178
    invoke-direct {p0, v4}, Lcom/android/contacts/ContactsListActivity;->buildSystemGroupUris(Ljava/lang/String;)V

    .line 1179
    iput-object v4, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupName:Ljava/lang/String;

    goto :goto_23

    .line 1182
    :cond_40
    iput v9, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 1183
    iput-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupName:Ljava/lang/String;

    .line 1184
    iput v8, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayType:I

    goto :goto_23

    .line 1190
    .end local v4           #systemId:Ljava/lang/String;
    :pswitch_47
    const-string v5, "display_group"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1191
    .local v0, displayGroup:Ljava/lang/String;
    const v5, 0x7f06004f

    invoke-virtual {p0, v5}, Lcom/android/contacts/ContactsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1192
    .local v3, starredGroup:Ljava/lang/String;
    move-object v1, v0

    .line 1193
    .local v1, groupName:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 1194
    const-string v1, "Starred in Android"

    .line 1196
    :cond_5d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6b

    .line 1198
    iput v10, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 1199
    invoke-direct {p0, v1}, Lcom/android/contacts/ContactsListActivity;->buildUserGroupUris(Ljava/lang/String;)V

    .line 1200
    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupName:Ljava/lang/String;

    goto :goto_23

    .line 1203
    :cond_6b
    iput v9, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 1204
    iput-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupName:Ljava/lang/String;

    .line 1205
    iput v8, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayType:I

    goto :goto_23

    .line 1211
    .end local v0           #displayGroup:Ljava/lang/String;
    .end local v1           #groupName:Ljava/lang/String;
    .end local v3           #starredGroup:Ljava/lang/String;
    :pswitch_72
    iput v11, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 1212
    iput-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupName:Ljava/lang/String;

    .line 1213
    iput v8, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayType:I

    goto :goto_23

    .line 1165
    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_72
        :pswitch_27
        :pswitch_2c
        :pswitch_47
    .end packed-switch
.end method

.method private setEmptyText()V
    .registers 7

    .prologue
    .line 1040
    const v2, 0x7f050005

    invoke-virtual {p0, v2}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1041
    .local v0, empty:Landroid/widget/TextView;
    const/16 v1, 0x11

    .line 1042
    .local v1, gravity:I
    iget v2, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    sparse-switch v2, :sswitch_data_78

    .line 1067
    const v2, 0x7f060046

    invoke-virtual {p0, v2}, Lcom/android/contacts/ContactsListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1071
    :goto_1a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1072
    return-void

    .line 1044
    :sswitch_1e
    const-string v2, "Contacts"

    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1045
    iget-boolean v2, p0, Lcom/android/contacts/ContactsListActivity;->mSyncEnabled:Z

    if-eqz v2, :cond_38

    .line 1046
    const v2, 0x7f060078

    invoke-virtual {p0, v2}, Lcom/android/contacts/ContactsListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    :goto_36
    const/4 v1, 0x0

    goto :goto_1a

    .line 1048
    :cond_38
    const v2, 0x7f060077

    invoke-virtual {p0, v2}, Lcom/android/contacts/ContactsListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_36

    .line 1052
    :cond_43
    const v2, 0x7f06004a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/ContactsListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 1056
    :sswitch_56
    const v2, 0x7f0600e2

    invoke-virtual {p0, v2}, Lcom/android/contacts/ContactsListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 1061
    :sswitch_61
    const v2, 0x7f060048

    invoke-virtual {p0, v2}, Lcom/android/contacts/ContactsListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 1064
    :sswitch_6c
    const v2, 0x7f060047

    invoke-virtual {p0, v2}, Lcom/android/contacts/ContactsListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 1042
    nop

    :sswitch_data_78
    .sparse-switch
        0x14 -> :sswitch_61
        0x19 -> :sswitch_61
        0x100001e -> :sswitch_61
        0x8000050 -> :sswitch_56
        0xb000005 -> :sswitch_1e
        0xb00000f -> :sswitch_6c
    .end sparse-switch
.end method

.method private setEmptyTextLayout(I)V
    .registers 4
    .parameter "count"

    .prologue
    .line 1076
    const v1, 0x7f05000c

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 1078
    .local v0, emptyLayout:Landroid/widget/ScrollView;
    if-nez p1, :cond_1a

    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-nez v1, :cond_1a

    .line 1079
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1083
    :goto_19
    return-void

    .line 1081
    :cond_1a
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_19
.end method

.method private setGroupSelectionEntries(Landroid/app/AlertDialog$Builder;)V
    .registers 21
    .parameter "builder"

    .prologue
    .line 2118
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "syncEverything"

    invoke-static {v4, v5, v6}, Landroid/provider/Contacts$Settings;->getSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2120
    .local v18, value:Ljava/lang/String;
    if-nez v18, :cond_a1

    .line 2122
    const/16 v16, 0x1

    .line 2128
    .local v16, syncEverything:Z
    :goto_f
    if-nez v16, :cond_bb

    .line 2129
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/contacts/ContactsListActivity;->GROUPS_PROJECTION:[Ljava/lang/String;

    const-string v7, "should_sync != 0"

    const/4 v8, 0x0

    const-string v9, "name ASC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2137
    .local v11, cursor:Landroid/database/Cursor;
    :goto_22
    :try_start_22
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2138
    .local v12, groups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2141
    .local v15, prefStrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v4, 0x0

    const v5, 0x7f06004b

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactsListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2142
    const-string v4, ""

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2145
    const/4 v4, 0x1

    const v5, 0x7f06004e

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactsListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2147
    const-string v4, "android_smartgroup_phone"

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2149
    const/4 v10, -0x1

    .line 2150
    .local v10, currentIndex:I
    const/4 v13, 0x0

    .line 2151
    .local v13, insertedStarred:Z
    :cond_54
    :goto_54
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_104

    .line 2152
    const/4 v4, 0x1

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2153
    .local v17, systemId:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2154
    .local v14, name:Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {v11, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_d7

    const-string v4, "Contacts"

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d7

    .line 2159
    const-string v4, "Starred in Android"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cd

    if-nez v13, :cond_cd

    .line 2160
    const/4 v13, 0x1

    .line 2161
    const v4, 0x7f06004f

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2166
    :cond_8b
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 2168
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I
    :try_end_9c
    .catchall {:try_start_22 .. :try_end_9c} :catchall_164

    move-result v4

    const/4 v5, 0x1

    sub-int v10, v4, v5

    goto :goto_54

    .line 2124
    .end local v10           #currentIndex:I
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v12           #groups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v13           #insertedStarred:Z
    .end local v14           #name:Ljava/lang/String;
    .end local v15           #prefStrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v16           #syncEverything:Z
    .end local v17           #systemId:Ljava/lang/String;
    :cond_a1
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b7

    const-string v4, "0"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b7

    const/4 v4, 0x1

    move/from16 v16, v4

    .restart local v16       #syncEverything:Z
    :goto_b5
    goto/16 :goto_f

    .end local v16           #syncEverything:Z
    :cond_b7
    const/4 v4, 0x0

    move/from16 v16, v4

    goto :goto_b5

    .line 2132
    .restart local v16       #syncEverything:Z
    :cond_bb
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/contacts/ContactsListActivity;->GROUPS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "name ASC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .restart local v11       #cursor:Landroid/database/Cursor;
    goto/16 :goto_22

    .line 2163
    .restart local v10       #currentIndex:I
    .restart local v12       #groups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v13       #insertedStarred:Z
    .restart local v14       #name:Ljava/lang/String;
    .restart local v15       #prefStrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v17       #systemId:Ljava/lang/String;
    :cond_cd
    :try_start_cd
    const-string v4, "Contacts"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8b

    goto/16 :goto_54

    .line 2172
    :cond_d7
    const/4 v4, 0x2

    const v5, 0x7f06004d

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactsListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2174
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactsListActivity;->mDisplayType:I

    move v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_fd

    const-string v4, "Contacts"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupName:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_fd

    .line 2176
    const/4 v10, 0x2

    goto/16 :goto_54

    .line 2181
    :cond_fd
    const/4 v4, -0x1

    if-eq v10, v4, :cond_54

    .line 2182
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_54

    .line 2188
    .end local v14           #name:Ljava/lang/String;
    .end local v17           #systemId:Ljava/lang/String;
    :cond_104
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    move v4, v0

    const v5, 0xb00000a

    if-ne v4, v5, :cond_149

    .line 2189
    const/4 v10, 0x0

    .line 2194
    :cond_10f
    :goto_10f
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ContactsListActivity;->mDisplayGroups:[Ljava/lang/CharSequence;

    .line 2195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroups:[Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v10

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2199
    const/4 v4, -0x1

    if-ne v10, v4, :cond_155

    .line 2200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroups:[Ljava/lang/CharSequence;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v5

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2205
    :goto_140
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupOriginalSelection:I
    :try_end_145
    .catchall {:try_start_cd .. :try_end_145} :catchall_164

    .line 2207
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2209
    return-void

    .line 2190
    :cond_149
    :try_start_149
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    move v4, v0

    const v5, 0xb00000f

    if-ne v4, v5, :cond_10f

    .line 2191
    const/4 v10, 0x1

    goto :goto_10f

    .line 2202
    :cond_155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroups:[Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v10

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_163
    .catchall {:try_start_149 .. :try_end_163} :catchall_164

    goto :goto_140

    .line 2207
    .end local v10           #currentIndex:I
    .end local v12           #groups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v13           #insertedStarred:Z
    .end local v15           #prefStrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :catchall_164
    move-exception v4

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method private setTopButtonForGroupMembership(ZZ)V
    .registers 10
    .parameter "searchEnabled"
    .parameter "assignEnabled"

    .prologue
    const/4 v6, 0x0

    .line 2440
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 2441
    .local v3, listView:Landroid/widget/ListView;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 2443
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 2444
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030005

    invoke-virtual {v2, v5, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2448
    .local v1, header:Landroid/view/View;
    const v5, 0x7f050010

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 2449
    .local v4, search:Landroid/widget/Button;
    if-eqz p1, :cond_3a

    .line 2451
    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 2452
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2460
    :goto_25
    const v5, 0x7f050011

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 2461
    .local v0, assignMember:Landroid/widget/ImageButton;
    if-eqz p2, :cond_42

    .line 2463
    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2464
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2474
    :goto_36
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 2475
    return-void

    .line 2456
    .end local v0           #assignMember:Landroid/widget/ImageButton;
    :cond_3a
    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2457
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_25

    .line 2468
    .restart local v0       #assignMember:Landroid/widget/ImageButton;
    :cond_42
    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2469
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2470
    const/16 v5, 0x133

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setWidth(I)V

    goto :goto_36
.end method

.method private startActivityToAssignMembers(ZJLjava/lang/String;)Z
    .registers 10
    .parameter "isStarred"
    .parameter "groupId"
    .parameter "groupName"

    .prologue
    const-string v4, "com.android.contacts.extra.TITLE_EXTRA"

    .line 2310
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.LOCAL_ASSIGN_MEMBERS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2311
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_26

    .line 2312
    const-string v2, "com.android.contacts.extra.TITLE_EXTRA"

    const v2, 0x7f06004f

    invoke-virtual {p0, v2}, Lcom/android/contacts/ContactsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2313
    const-string v2, "starred"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2319
    :goto_1c
    const-class v2, Lcom/android/contacts/SearchActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2320
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 2321
    const/4 v2, 0x1

    return v2

    .line 2315
    :cond_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://contacts/groups/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/no_members/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2316
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "com.android.contacts.extra.TITLE_EXTRA"

    invoke-virtual {v0, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2317
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1c
.end method

.method private startActivityToExcludeMembers(ZJLjava/lang/String;)Z
    .registers 10
    .parameter "isStarred"
    .parameter "groupId"
    .parameter "groupName"

    .prologue
    const-string v4, "com.android.contacts.extra.TITLE_EXTRA"

    .line 2326
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.LOCAL_EXCLUDE_MEMBERS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2327
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_26

    .line 2328
    const-string v2, "com.android.contacts.extra.TITLE_EXTRA"

    const v2, 0x7f06004f

    invoke-virtual {p0, v2}, Lcom/android/contacts/ContactsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2329
    const-string v2, "starred"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2335
    :goto_1c
    const-class v2, Lcom/android/contacts/SearchActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2336
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 2337
    const/4 v2, 0x1

    return v2

    .line 2331
    :cond_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://contacts/groups/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/members"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2332
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "com.android.contacts.extra.TITLE_EXTRA"

    invoke-virtual {v0, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2333
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1c
.end method

.method private startActivityToSendMessage(Z)V
    .registers 6
    .parameter "isSMS"

    .prologue
    const-string v3, "com.android.contacts.extra.TITLE_EXTRA"

    .line 2285
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.LOCAL_SEND_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2286
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_38

    .line 2287
    const-string v1, "phone"

    const-string v2, "tel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2291
    :goto_12
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v2, 0x8000050

    if-ne v1, v2, :cond_5a

    .line 2292
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupKind:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_40

    .line 2293
    const-string v1, "com.android.contacts.extra.TITLE_EXTRA"

    const v1, 0x7f06004f

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2299
    :goto_2a
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mGroupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2304
    :goto_2f
    const-class v1, Lcom/android/contacts/SearchActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2305
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 2306
    return-void

    .line 2289
    :cond_38
    const-string v1, "email"

    const-string v2, "mailto"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_12

    .line 2294
    :cond_40
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupKind:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_52

    .line 2295
    const-string v1, "com.android.contacts.extra.TITLE_EXTRA"

    const v1, 0x7f0600e0

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2a

    .line 2297
    :cond_52
    const-string v1, "com.android.contacts.extra.TITLE_EXTRA"

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupName:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2a

    .line 2301
    :cond_5a
    const-string v1, "com.android.contacts.extra.TITLE_EXTRA"

    const v1, 0x7f0600c1

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2302
    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2f
.end method

.method private updateContactsList()V
    .registers 2

    .prologue
    .line 1238
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mDefaultMode:Z

    if-eqz v0, :cond_7

    .line 1239
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->setDefaultMode()V

    .line 1243
    :cond_7
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->startQuery()V

    .line 1244
    return-void
.end method


# virtual methods
.method public addHeaderView()V
    .registers 16

    .prologue
    const v5, 0x7f030006

    const/high16 v4, 0x100

    const/4 v3, 0x0

    const/4 v14, 0x0

    const/4 v2, 0x1

    .line 978
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x8000050

    if-ne v0, v1, :cond_31

    .line 979
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupKind:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_ba

    .line 982
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    .line 983
    .local v8, inflaterPhoto:Landroid/view/LayoutInflater;
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v8, v5, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 985
    .local v6, headerPhoto:Landroid/view/View;
    const v0, 0x7f050012

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupPhotoView:Landroid/widget/ImageView;

    .line 986
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 988
    invoke-direct {p0, v2, v2}, Lcom/android/contacts/ContactsListActivity;->setTopButtonForGroupMembership(ZZ)V

    .line 1010
    .end local v6           #headerPhoto:Landroid/view/View;
    .end local v8           #inflaterPhoto:Landroid/view/LayoutInflater;
    :cond_31
    :goto_31
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_b9

    .line 1012
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    .line 1013
    .local v7, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f030007

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v7, v0, v1, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mProfileHeader:Landroid/view/View;

    .line 1015
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mProfileHeader:Landroid/view/View;

    const v1, 0x7f050013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 1016
    .local v12, profilePhoto:Landroid/widget/ImageView;
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->mContactsListPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1017
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mProfileHeader:Landroid/view/View;

    const v1, 0x7f05000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1018
    .local v11, myProfile:Landroid/widget/TextView;
    const v0, 0x7f0600df

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1020
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mProfileHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1022
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_SYSTEM_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/ContactsListActivity;->CONTACTS_PHOTO_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mDataCursor:Landroid/database/Cursor;

    .line 1026
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->MANAGE_ROGERS_OPTION:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b9

    .line 1027
    const v0, 0x7f030007

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v7, v0, v1, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 1028
    .local v13, rgsMy5:Landroid/view/View;
    const v0, 0x7f050013

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 1029
    .local v10, myFiveIcon:Landroid/widget/ImageView;
    const v0, 0x7f020171

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1030
    const v0, 0x7f05000e

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1031
    .local v9, myFive:Landroid/widget/TextView;
    const v0, 0x7f0600f8

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1032
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v13}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1036
    .end local v7           #inflater:Landroid/view/LayoutInflater;
    .end local v9           #myFive:Landroid/widget/TextView;
    .end local v10           #myFiveIcon:Landroid/widget/ImageView;
    .end local v11           #myProfile:Landroid/widget/TextView;
    .end local v12           #profilePhoto:Landroid/widget/ImageView;
    .end local v13           #rgsMy5:Landroid/view/View;
    :cond_b9
    return-void

    .line 989
    :cond_ba
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupKind:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c4

    .line 990
    invoke-direct {p0, v2, v2}, Lcom/android/contacts/ContactsListActivity;->setTopButtonForGroupMembership(ZZ)V

    goto/16 :goto_31

    .line 992
    :cond_c4
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupKind:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_e8

    .line 995
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    .line 996
    .restart local v8       #inflaterPhoto:Landroid/view/LayoutInflater;
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v8, v5, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 998
    .restart local v6       #headerPhoto:Landroid/view/View;
    const v0, 0x7f050012

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupPhotoView:Landroid/widget/ImageView;

    .line 999
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1001
    invoke-direct {p0, v2, v14}, Lcom/android/contacts/ContactsListActivity;->setTopButtonForGroupMembership(ZZ)V

    goto/16 :goto_31

    .line 1003
    .end local v6           #headerPhoto:Landroid/view/View;
    .end local v8           #inflaterPhoto:Landroid/view/LayoutInflater;
    :cond_e8
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupKind:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f1

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupKind:I

    if-ne v0, v2, :cond_31

    .line 1006
    :cond_f1
    invoke-direct {p0, v2, v14}, Lcom/android/contacts/ContactsListActivity;->setTopButtonForGroupMembership(ZZ)V

    goto/16 :goto_31
.end method

.method callSelection()Z
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 2073
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 2074
    .local v2, list:Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 2075
    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 2076
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_3b

    .line 2077
    const/4 v6, 0x6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2078
    .local v3, phoneId:J
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-nez v6, :cond_23

    .line 2080
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->signalError()V

    move v6, v8

    .line 2090
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v3           #phoneId:J
    :goto_22
    return v6

    .line 2083
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v3       #phoneId:J
    :cond_23
    const-string v6, "tel"

    const/4 v7, 0x2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 2084
    .local v5, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v1, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2085
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 2086
    const/4 v6, 0x1

    goto :goto_22

    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #phoneId:J
    .end local v5           #uri:Landroid/net/Uri;
    :cond_3b
    move v6, v8

    .line 2090
    goto :goto_22
.end method

.method public dataChanged()V
    .registers 13

    .prologue
    const/high16 v8, 0x100

    const/16 v11, 0xa

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 2213
    iget v7, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_57

    .line 2214
    iget-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mDataCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_57

    .line 2215
    iget-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->requery()Z

    .line 2216
    iget-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_d4

    .line 2217
    iget-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2218
    .local v3, profileId:J
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-nez v7, :cond_2b

    .line 2219
    iput-object v9, p0, Lcom/android/contacts/ContactsListActivity;->mMyProfileUri:Landroid/net/Uri;

    .line 2281
    .end local v3           #profileId:J
    :cond_2a
    :goto_2a
    return-void

    .line 2222
    .restart local v3       #profileId:J
    :cond_2b
    sget-object v7, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mMyProfileUri:Landroid/net/Uri;

    .line 2224
    iget-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mProfileHeader:Landroid/view/View;

    const v8, 0x7f050013

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 2225
    .local v5, profilePhoto:Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v7, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_9b

    .line 2227
    :try_start_46
    iget-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mDataCursor:Landroid/database/Cursor;

    const/16 v8, 0xa

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 2228
    .local v2, photoData:[B
    const/4 v7, 0x0

    array-length v8, v2

    invoke-static {v2, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2230
    .local v1, photo:Landroid/graphics/Bitmap;
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_57
    .catch Ljava/lang/OutOfMemoryError; {:try_start_46 .. :try_end_57} :catch_93

    .line 2260
    .end local v1           #photo:Landroid/graphics/Bitmap;
    .end local v2           #photoData:[B
    .end local v3           #profileId:J
    .end local v5           #profilePhoto:Landroid/widget/ImageView;
    :cond_57
    :goto_57
    iget v7, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v8, 0x8000050

    if-ne v7, v8, :cond_2a

    .line 2262
    iget-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mGroupPhotoView:Landroid/widget/ImageView;

    if-eqz v7, :cond_6b

    .line 2263
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getGroupPhoto()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2264
    .restart local v1       #photo:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mGroupPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2266
    .end local v1           #photo:Landroid/graphics/Bitmap;
    :cond_6b
    iget v7, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupKind:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2a

    .line 2268
    iget-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->requery()Z

    .line 2269
    iget-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_d7

    .line 2270
    iget-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupName:Ljava/lang/String;

    .line 2271
    iget-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2a

    .line 2272
    iget-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/contacts/ContactsListActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2a

    .line 2231
    .restart local v3       #profileId:J
    .restart local v5       #profilePhoto:Landroid/widget/ImageView;
    :catch_93
    move-exception v7

    move-object v0, v7

    .line 2233
    .local v0, e:Ljava/lang/OutOfMemoryError;
    sget-object v7, Lcom/android/contacts/ContactsListActivity;->mContactsListPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_57

    .line 2237
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_9b
    iget-boolean v7, p0, Lcom/android/contacts/ContactsListActivity;->MANAGE_DRM_PHOTO:Z

    if-eqz v7, :cond_ce

    iget-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mDataCursor:Landroid/database/Cursor;

    const/16 v8, 0xb

    invoke-interface {v7, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_ce

    .line 2238
    iget-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mMyProfileUri:Landroid/net/Uri;

    invoke-static {p0, v7}, Landroid/provider/Contacts$DrmPhotoManager;->openDrmPhotoInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 2240
    .local v6, stream:Ljava/io/InputStream;
    if-eqz v6, :cond_c6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_b3
    invoke-static {v6, v7, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v1, v7

    .line 2241
    .restart local v1       #photo:Landroid/graphics/Bitmap;
    :goto_b8
    if-eqz v1, :cond_c8

    .line 2242
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_bd
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b3 .. :try_end_bd} :catch_be

    goto :goto_57

    .line 2246
    .end local v1           #photo:Landroid/graphics/Bitmap;
    :catch_be
    move-exception v7

    move-object v0, v7

    .line 2248
    .restart local v0       #e:Ljava/lang/OutOfMemoryError;
    sget-object v7, Lcom/android/contacts/ContactsListActivity;->mContactsListPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_57

    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_c6
    move-object v1, v9

    .line 2240
    goto :goto_b8

    .line 2244
    .restart local v1       #photo:Landroid/graphics/Bitmap;
    :cond_c8
    :try_start_c8
    sget-object v7, Lcom/android/contacts/ContactsListActivity;->mContactsListPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_cd
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c8 .. :try_end_cd} :catch_be

    goto :goto_57

    .line 2253
    .end local v1           #photo:Landroid/graphics/Bitmap;
    .end local v6           #stream:Ljava/io/InputStream;
    :cond_ce
    sget-object v7, Lcom/android/contacts/ContactsListActivity;->mContactsListPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_57

    .line 2256
    .end local v3           #profileId:J
    .end local v5           #profilePhoto:Landroid/widget/ImageView;
    :cond_d4
    iput-object v9, p0, Lcom/android/contacts/ContactsListActivity;->mMyProfileUri:Landroid/net/Uri;

    goto :goto_57

    .line 2275
    :cond_d7
    const v7, 0x7f0600b1

    invoke-static {p0, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 2276
    const-string v7, "ContactsListActivity"

    const-string v8, "invalid group uri"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto/16 :goto_2a
.end method

.method doFilter(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .parameter "filter"

    .prologue
    const/4 v4, 0x0

    const-string v3, "system_id IS NULL"

    .line 1971
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1972
    .local v0, resolver:Landroid/content/ContentResolver;
    iget v5, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    invoke-direct {p0, v5}, Lcom/android/contacts/ContactsListActivity;->getContactsProjection(I)[Ljava/lang/String;

    move-result-object v2

    .line 1974
    .local v2, contactsProjection:[Ljava/lang/String;
    iget v5, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    sparse-switch v5, :sswitch_data_142

    .line 2064
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filtering not allowed in mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1977
    :sswitch_2d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 1978
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mGroupUri:Landroid/net/Uri;

    .line 1982
    .local v1, uri:Landroid/net/Uri;
    :goto_35
    const-string v5, "system_id IS NULL"

    invoke-static {v2}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2058
    .end local v1           #uri:Landroid/net/Uri;
    :goto_3f
    return-object v3

    .line 1980
    :cond_40
    iget-object v5, p0, Lcom/android/contacts/ContactsListActivity;->mGroupFilterUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_35

    .line 1990
    .end local v1           #uri:Landroid/net/Uri;
    :sswitch_4b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 1991
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mGroupUri:Landroid/net/Uri;

    .line 1995
    .restart local v1       #uri:Landroid/net/Uri;
    :goto_53
    const-string v5, "system_id IS NULL"

    invoke-static {v2}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_3f

    .line 1993
    .end local v1           #uri:Landroid/net/Uri;
    :cond_5e
    iget-object v5, p0, Lcom/android/contacts/ContactsListActivity;->mGroupFilterUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_53

    .line 2005
    .end local v1           #uri:Landroid/net/Uri;
    :sswitch_69
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->getPeopleFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v5, "system_id IS NULL"

    invoke-static {v2}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v0

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_3f

    .line 2012
    :sswitch_7c
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->getPeopleFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v8, "system_id IS NULL AND primary_phone IS NOT NULL"

    invoke-static {v2}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v0

    move-object v7, v2

    move-object v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_3f

    .line 2020
    :sswitch_8e
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->getPeopleFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lcom/android/contacts/ContactsListActivity;->CONTACTS_PHOTO_PROJECTION:[Ljava/lang/String;

    const-string v8, "system_id IS NULL AND starred=1"

    sget-object v3, Lcom/android/contacts/ContactsListActivity;->CONTACTS_PHOTO_PROJECTION:[Ljava/lang/String;

    invoke-static {v3}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v0

    move-object v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_3f

    .line 2028
    :sswitch_a3
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->getPeopleFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lcom/android/contacts/ContactsListActivity;->CONTACTS_PHOTO_PROJECTION:[Ljava/lang/String;

    const-string v8, "system_id IS NULL AND times_contacted > 0"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "times_contacted DESC, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/android/contacts/ContactsListActivity;->CONTACTS_PHOTO_PROJECTION:[Ljava/lang/String;

    invoke-static {v5}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v5, v0

    move-object v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_3f

    .line 2038
    :sswitch_cc
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_fe

    .line 2039
    sget-object v5, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "strequent/filter/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2044
    .restart local v1       #uri:Landroid/net/Uri;
    :goto_ef
    sget-object v7, Lcom/android/contacts/ContactsListActivity;->STREQUENT_PROJECTION:[Ljava/lang/String;

    const-string v5, "system_id IS NULL"

    move-object v5, v0

    move-object v6, v1

    move-object v8, v3

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_3f

    .line 2042
    .end local v1           #uri:Landroid/net/Uri;
    :cond_fe
    sget-object v5, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "strequent"

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_ef

    .line 2052
    .end local v1           #uri:Landroid/net/Uri;
    :sswitch_107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13e

    .line 2053
    sget-object v5, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "filter_name/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2058
    .restart local v1       #uri:Landroid/net/Uri;
    :goto_12a
    sget-object v7, Lcom/android/contacts/ContactsListActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    const-string v5, "system_id IS NULL"

    sget-object v5, Lcom/android/contacts/ContactsListActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    invoke-static {v5}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v0

    move-object v6, v1

    move-object v8, v3

    move-object v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_3f

    .line 2056
    .end local v1           #uri:Landroid/net/Uri;
    :cond_13e
    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_12a

    .line 1974
    nop

    :sswitch_data_142
    .sparse-switch
        -0x7fffffd8 -> :sswitch_69
        -0x7dffffd3 -> :sswitch_69
        -0x7dffffce -> :sswitch_69
        -0x1fffffc9 -> :sswitch_107
        0x14 -> :sswitch_8e
        0x19 -> :sswitch_a3
        0x100001e -> :sswitch_cc
        0x8000050 -> :sswitch_4b
        0xb000005 -> :sswitch_2d
        0xb00000a -> :sswitch_69
        0xb00000f -> :sswitch_7c
    .end sparse-switch
.end method

.method public getGroupPhoto()Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 2342
    const/4 v0, 0x0

    .line 2344
    .local v0, photo:Landroid/graphics/Bitmap;
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupKind:I

    packed-switch v1, :pswitch_data_74

    .line 2372
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown Group Kind"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2346
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b8

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2375
    :cond_19
    :goto_19
    if-nez v0, :cond_26

    .line 2376
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b9

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2380
    :cond_26
    return-object v0

    .line 2350
    :pswitch_27
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b7

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2352
    goto :goto_19

    .line 2354
    :pswitch_33
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ba

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2356
    goto :goto_19

    .line 2358
    :pswitch_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://contacts/groups/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Landroid/provider/Contacts$Groups;->loadGroupPhoto(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2361
    goto :goto_19

    .line 2364
    :pswitch_5f
    iget-wide v1, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupId:J

    invoke-static {p0, v1, v2}, Lcom/android/contacts/LinkbookAsyncHelper;->getAccountIcon(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2365
    if-nez v0, :cond_19

    .line 2366
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d5

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_19

    .line 2344
    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_e
        :pswitch_27
        :pswitch_33
        :pswitch_3f
        :pswitch_5f
    .end packed-switch
.end method

.method getItemForView(Landroid/view/View;)Landroid/database/Cursor;
    .registers 5
    .parameter "view"

    .prologue
    .line 2103
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 2104
    .local v1, listView:Landroid/widget/ListView;
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 2105
    .local v0, index:I
    if-gez v0, :cond_c

    .line 2106
    const/4 v2, 0x0

    .line 2108
    .end local p0
    :goto_b
    return-object v2

    .restart local p0
    :cond_c
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/database/Cursor;

    move-object v2, p0

    goto :goto_b
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1648
    const/4 v0, -0x1

    if-eq p2, v0, :cond_4

    .line 1663
    :goto_3
    return-void

    .line 1652
    :cond_4
    packed-switch p1, :pswitch_data_24

    goto :goto_3

    .line 1655
    :pswitch_8
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mCreateShortcut:Z

    if-eqz v0, :cond_1a

    .line 1656
    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/ContactsListActivity;->returnPickerResult(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_3

    .line 1659
    :cond_1a
    const/4 v0, 0x0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/ContactsListActivity;->returnPickerResult(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_3

    .line 1652
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .parameter "dialogInterface"
    .parameter "which"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1271
    if-ne p2, v3, :cond_5e

    .line 1273
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupOriginalSelection:I

    iget v2, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupCurrentSelection:I

    if-eq v1, v2, :cond_39

    .line 1276
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupOriginalSelection:I

    if-ne v1, v3, :cond_13

    .line 1277
    iput v4, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupCurrentSelection:I

    .line 1282
    :cond_13
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupCurrentSelection:I

    if-nez v1, :cond_3a

    .line 1284
    iput v4, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayType:I

    .line 1285
    iput-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupName:Ljava/lang/String;

    .line 1300
    :goto_1b
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1301
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "display_system_group"

    iget v3, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayType:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "display_group"

    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1307
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->updateContactsList()V

    .line 1313
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :cond_39
    :goto_39
    return-void

    .line 1286
    :cond_3a
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupCurrentSelection:I

    if-ne v1, v5, :cond_43

    .line 1289
    iput v5, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayType:I

    .line 1290
    iput-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupName:Ljava/lang/String;

    goto :goto_1b

    .line 1291
    :cond_43
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupCurrentSelection:I

    if-ne v1, v6, :cond_4e

    .line 1292
    iput v6, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayType:I

    .line 1293
    const-string v1, "Contacts"

    iput-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupName:Ljava/lang/String;

    goto :goto_1b

    .line 1295
    :cond_4e
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayType:I

    .line 1296
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroups:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupCurrentSelection:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupName:Ljava/lang/String;

    goto :goto_1b

    .line 1311
    :cond_5e
    iput p2, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupCurrentSelection:I

    goto :goto_39
.end method

.method public onClick(Landroid/view/View;)V
    .registers 12
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-class v9, Lcom/android/contacts/EditContactActivity;

    const-string v8, "android.intent.action.INSERT"

    const-string v7, "ContactsListActivity"

    .line 554
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_9a

    .line 594
    :goto_f
    :pswitch_f
    return-void

    .line 556
    :pswitch_10
    iget v3, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v4, -0x7dffffce

    if-ne v3, v4, :cond_45

    .line 557
    const-string v3, "ContactsListActivity"

    const-string v3, "onClick createContact- mMode \'MODE_INSERT_OR_EDIT_CONTACT\'"

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v8, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 559
    .local v1, intent:Landroid/content/Intent;
    const-class v3, Lcom/android/contacts/EditContactActivity;

    invoke-virtual {v1, p0, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 560
    const/high16 v3, 0x200

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 561
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 562
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_3e

    .line 563
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 565
    :cond_3e
    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 566
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto :goto_f

    .line 567
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_45
    iget v3, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v4, -0x7dffffd3

    if-ne v3, v4, :cond_65

    .line 568
    const-string v3, "ContactsListActivity"

    const-string v3, "onClick createContact- mMode \'MODE_PICK_OR_CREATE_CONTACT\'"

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v8, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 571
    .local v2, newContact:Landroid/content/Intent;
    const-class v3, Lcom/android/contacts/EditContactActivity;

    invoke-virtual {v2, p0, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 572
    invoke-virtual {p0, v2, v5}, Lcom/android/contacts/ContactsListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_f

    .line 574
    .end local v2           #newContact:Landroid/content/Intent;
    :cond_65
    const-string v3, "ContactsListActivity"

    const-string v3, "onClick createContact- mMode \'else\'"

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v8, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 576
    .restart local v1       #intent:Landroid/content/Intent;
    const-class v3, Lcom/android/contacts/EditContactActivity;

    invoke-virtual {v1, p0, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 577
    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_f

    .line 581
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_7e
    const/4 v3, 0x0

    invoke-virtual {p0, v6, v5, v6, v3}, Lcom/android/contacts/ContactsListActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_f

    .line 584
    :pswitch_83
    const/4 v3, 0x0

    invoke-virtual {p0, v6, v5, v6, v3}, Lcom/android/contacts/ContactsListActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_f

    .line 587
    :pswitch_88
    iget v3, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupKind:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_92

    .line 588
    invoke-virtual {p0, v5}, Lcom/android/contacts/ContactsListActivity;->showDialog(I)V

    goto/16 :goto_f

    .line 590
    :cond_92
    const-wide/16 v3, 0x0

    invoke-direct {p0, v5, v3, v4, v6}, Lcom/android/contacts/ContactsListActivity;->startActivityToAssignMembers(ZJLjava/lang/String;)Z

    goto/16 :goto_f

    .line 554
    nop

    :pswitch_data_9a
    .packed-switch 0x7f05000a
        :pswitch_7e
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_83
        :pswitch_88
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 15
    .parameter "item"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1570
    :try_start_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_9} :catch_1a

    .line 1578
    .local v2, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-wide v6, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_4b

    .line 1579
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_da

    move v6, v10

    .line 1640
    .end local v2           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :goto_19
    return v6

    .line 1571
    :catch_1a
    move-exception v6

    move-object v1, v6

    .line 1572
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v6, "ContactsListActivity"

    const-string v7, "bad menuInfo"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v10

    .line 1573
    goto :goto_19

    .line 1581
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v2       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :pswitch_25
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    iget-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mMyProfileUri:Landroid/net/Uri;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1582
    .local v3, intent:Landroid/content/Intent;
    const-class v6, Lcom/android/contacts/ViewContactTabActivity;

    invoke-virtual {v3, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1584
    invoke-virtual {p0, v3}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    move v6, v11

    .line 1585
    goto :goto_19

    .line 1589
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_38
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.EDIT"

    iget-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mMyProfileUri:Landroid/net/Uri;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1590
    .restart local v3       #intent:Landroid/content/Intent;
    const-class v6, Lcom/android/contacts/EditContactActivity;

    invoke-virtual {v3, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1591
    invoke-virtual {p0, v3}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    move v6, v11

    .line 1592
    goto :goto_19

    .line 1599
    .end local v3           #intent:Landroid/content/Intent;
    :cond_4b
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    iget v7, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-interface {v6, v7}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1601
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_64

    move v6, v10

    .line 1603
    goto :goto_19

    .line 1607
    :cond_64
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_e2

    .line 1640
    :pswitch_6b
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    goto :goto_19

    .line 1616
    :pswitch_70
    sget-object v6, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1620
    .local v4, personUri:Landroid/net/Uri;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f06001b

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1080027

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f06001c

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x104

    invoke-virtual {v6, v7, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v8, Lcom/android/contacts/ContactsListActivity$DeleteClickListener;

    invoke-direct {v8, p0, v4}, Lcom/android/contacts/ContactsListActivity$DeleteClickListener;-><init>(Lcom/android/contacts/ContactsListActivity;Landroid/net/Uri;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v6, v11

    .line 1627
    goto/16 :goto_19

    .line 1631
    .end local v4           #personUri:Landroid/net/Uri;
    :pswitch_ac
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, v11}, Landroid/content/ContentValues;-><init>(I)V

    .line 1632
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "starred"

    const/4 v7, 0x5

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-nez v7, :cond_d7

    move v7, v11

    :goto_bb
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1633
    sget-object v6, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v7, v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1635
    .restart local v4       #personUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v4, v5, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v6, v11

    .line 1636
    goto/16 :goto_19

    .end local v4           #personUri:Landroid/net/Uri;
    :cond_d7
    move v7, v10

    .line 1632
    goto :goto_bb

    .line 1579
    nop

    :pswitch_data_da
    .packed-switch 0xa
        :pswitch_25
        :pswitch_38
    .end packed-switch

    .line 1607
    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_6b
        :pswitch_ac
        :pswitch_6b
        :pswitch_6b
        :pswitch_70
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 33
    .parameter "icicle"

    .prologue
    .line 599
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 603
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/FlexibleOptionHelper;->isLinkbookEnabled(Landroid/content/Context;)Z

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/ContactsListActivity;->MANAGE_SOCIAL_NETWORK:Z

    .line 604
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/FlexibleOptionHelper;->getRgsMy5Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ContactsListActivity;->MANAGE_ROGERS_OPTION:Ljava/lang/String;

    .line 606
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 607
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/ContactsListActivity;->mDefaultMode:Z

    .line 608
    const-wide/16 v7, -0x1

    move-wide v0, v7

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupId:J

    .line 609
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupName:Ljava/lang/String;

    .line 610
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupKind:I

    .line 611
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ContactsListActivity;->mDataCursor:Landroid/database/Cursor;

    .line 613
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200a6

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    sput-object v5, Lcom/android/contacts/ContactsListActivity;->mContactsListPicture:Landroid/graphics/Bitmap;

    .line 618
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 619
    .local v17, intent:Landroid/content/Intent;
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 622
    .local v11, action:Ljava/lang/String;
    const-string v5, "com.android.contacts.extra.TITLE_EXTRA"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 623
    .local v29, title:Ljava/lang/String;
    if-eqz v29, :cond_61

    .line 624
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactsListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 629
    :cond_61
    const v5, 0x7f030002

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactsListActivity;->setContentView(I)V

    .line 633
    const-string v5, "com.android.contacts.action.LIST_DEFAULT"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_131

    .line 636
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/ContactsListActivity;->mDefaultMode:Z

    .line 765
    :cond_78
    :goto_78
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    move v5, v0

    if-nez v5, :cond_87

    .line 766
    const v5, 0xb00000a

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 771
    :cond_87
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v19

    .line 773
    .local v19, listView:Landroid/widget/ListView;
    const/4 v5, 0x1

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 774
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 775
    const/4 v5, 0x0

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 783
    const/4 v5, 0x3

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactsListActivity;->setDefaultKeyMode(I)V

    .line 788
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    move v5, v0

    const/high16 v6, 0x200

    and-int/2addr v5, v6

    const/high16 v6, 0x200

    if-ne v5, v6, :cond_eb

    .line 804
    const v5, 0x7f050009

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 805
    .local v18, layoutCreate:Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 806
    const v5, 0x7f05000b

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    .line 807
    .local v12, creatNew:Landroid/widget/ImageButton;
    move-object v0, v12

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 810
    const v5, 0x7f05000a

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/Button;

    .line 811
    .local v27, search:Landroid/widget/Button;
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 814
    .end local v12           #creatNew:Landroid/widget/ImageButton;
    .end local v18           #layoutCreate:Landroid/widget/LinearLayout;
    .end local v27           #search:Landroid/widget/Button;
    :cond_eb
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactsListActivity;->addHeaderView()V

    .line 817
    new-instance v5, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;-><init>(Lcom/android/contacts/ContactsListActivity;Landroid/content/Context;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ContactsListActivity;->mAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity;->mAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactsListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 822
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/ContactsListActivity;->setEmptyText()V

    .line 825
    new-instance v5, Lcom/android/contacts/ContactsListActivity$QueryHandler;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactsListActivity$QueryHandler;-><init>(Landroid/content/Context;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    .line 826
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/ContactsListActivity;->mJustCreated:Z

    .line 830
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    .line 831
    .local v25, resolver:Landroid/content/ContentResolver;
    sget-object v5, Landroid/provider/Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v23

    .line 832
    .local v23, provider:Landroid/content/IContentProvider;
    if-nez v23, :cond_4c3

    .line 833
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    .line 845
    .end local v19           #listView:Landroid/widget/ListView;
    .end local v23           #provider:Landroid/content/IContentProvider;
    .end local v25           #resolver:Landroid/content/ContentResolver;
    :goto_130
    return-void

    .line 637
    :cond_131
    const-string v5, "com.android.contacts.action.LIST_GROUP"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16b

    .line 638
    const v5, 0xb000005

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 639
    const-string v5, "com.android.contacts.extra.GROUP"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupName:Ljava/lang/String;

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupName:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_15e

    .line 641
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto :goto_130

    .line 644
    :cond_15e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupName:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactsListActivity;->buildUserGroupUris(Ljava/lang/String;)V

    goto/16 :goto_78

    .line 645
    :cond_16b
    const-string v5, "com.android.contacts.action.LIST_GROUP_MEMBERSHIP"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b7

    .line 646
    const-string v5, "com.android.contacts.extra.GROUP_ID"

    const-wide/16 v7, -0x1

    move-object/from16 v0, v17

    move-object v1, v5

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    move-wide v0, v7

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupId:J

    .line 647
    const-string v5, "com.android.contacts.extra.GROUP"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupName:Ljava/lang/String;

    .line 648
    const-string v5, "com.android.contacts.extra.LOCAL_GROUP_KIND"

    const/4 v6, -0x1

    move-object/from16 v0, v17

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupKind:I

    .line 649
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupKind:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactsListActivity;->buildGroupUriByGroupKind(I)V

    .line 650
    const v5, 0x8000050

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_78

    .line 651
    :cond_1b7
    const-string v5, "com.android.contacts.action.LIST_ALL_CONTACTS"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c9

    .line 652
    const v5, 0xb00000a

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_78

    .line 653
    :cond_1c9
    const-string v5, "com.android.contacts.action.LIST_STARRED"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1da

    .line 654
    const/16 v5, 0x14

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_78

    .line 655
    :cond_1da
    const-string v5, "com.android.contacts.action.LIST_FREQUENT"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1eb

    .line 656
    const/16 v5, 0x19

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_78

    .line 657
    :cond_1eb
    const-string v5, "com.android.contacts.action.LIST_STREQUENT"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1fd

    .line 658
    const v5, 0x100001e

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_78

    .line 659
    :cond_1fd
    const-string v5, "com.android.contacts.action.LIST_CONTACTS_WITH_PHONES"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20f

    .line 660
    const v5, 0xb00000f

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_78

    .line 661
    :cond_20f
    const-string v5, "android.intent.action.PICK"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25e

    .line 663
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v30

    .line 664
    .local v30, type:Ljava/lang/String;
    const-string v5, "vnd.android.cursor.dir/person"

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_234

    .line 665
    const v5, -0x7fffffd8

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_78

    .line 666
    :cond_234
    const-string v5, "vnd.android.cursor.dir/phone"

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_249

    .line 667
    const v5, -0x1fffffc9

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_78

    .line 668
    :cond_249
    const-string v5, "vnd.android.cursor.dir/postal-address"

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    .line 669
    const v5, -0x1fffffc4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_78

    .line 671
    .end local v30           #type:Ljava/lang/String;
    :cond_25e
    const-string v5, "android.intent.action.GET_CONTENT"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2ad

    .line 672
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v30

    .line 673
    .restart local v30       #type:Ljava/lang/String;
    const-string v5, "vnd.android.cursor.item/person"

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_283

    .line 674
    const v5, -0x7dffffd3

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_78

    .line 675
    :cond_283
    const-string v5, "vnd.android.cursor.item/phone"

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_298

    .line 676
    const v5, -0x1fffffc9

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_78

    .line 677
    :cond_298
    const-string v5, "vnd.android.cursor.item/postal-address"

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    .line 678
    const v5, -0x1fffffc4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_78

    .line 680
    .end local v30           #type:Ljava/lang/String;
    :cond_2ad
    const-string v5, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c5

    .line 681
    const v5, -0x7dffffd3

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 682
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/ContactsListActivity;->mCreateShortcut:Z

    goto/16 :goto_78

    .line 683
    :cond_2c5
    const-string v5, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d7

    .line 684
    const v5, -0x7dffffce

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_78

    .line 685
    :cond_2d7
    const-string v5, "android.intent.action.SEARCH"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37d

    .line 687
    const-string v5, "call"

    const-string v6, "action_msg"

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_321

    .line 688
    const-string v5, "query"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 689
    .local v24, query:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_31c

    .line 690
    new-instance v21, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    const-string v6, "tel"

    const/4 v7, 0x0

    move-object v0, v6

    move-object/from16 v1, v24

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 692
    .local v21, newIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 694
    .end local v21           #newIntent:Landroid/content/Intent;
    :cond_31c
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto/16 :goto_130

    .line 698
    .end local v24           #query:Ljava/lang/String;
    :cond_321
    const-string v5, "email"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34a

    .line 699
    const v5, -0x5fffffb5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 700
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ContactsListActivity;->mQueryMode:I

    .line 701
    const-string v5, "email"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ContactsListActivity;->mQueryData:Ljava/lang/String;

    goto/16 :goto_78

    .line 702
    :cond_34a
    const-string v5, "phone"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_373

    .line 703
    const v5, -0x5fffffb5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 704
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ContactsListActivity;->mQueryMode:I

    .line 705
    const-string v5, "phone"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ContactsListActivity;->mQueryData:Ljava/lang/String;

    goto/16 :goto_78

    .line 708
    :cond_373
    const v5, 0x20000046

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_78

    .line 713
    :cond_37d
    const-string v5, "android.provider.Contacts.SEARCH_SUGGESTION_CLICKED"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3cb

    .line 716
    const-string v5, "call"

    const-string v6, "action_msg"

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b1

    .line 717
    new-instance v21, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 722
    .restart local v21       #newIntent:Landroid/content/Intent;
    :goto_3a5
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 723
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto/16 :goto_130

    .line 719
    .end local v21           #newIntent:Landroid/content/Intent;
    :cond_3b1
    new-instance v21, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 720
    .restart local v21       #newIntent:Landroid/content/Intent;
    const-class v5, Lcom/android/contacts/ViewContactTabActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_3a5

    .line 725
    .end local v21           #newIntent:Landroid/content/Intent;
    :cond_3cb
    const-string v5, "android.provider.Contacts.SEARCH_SUGGESTION_DIAL_NUMBER_CLICKED"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3ee

    .line 726
    new-instance v21, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 727
    .restart local v21       #newIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 728
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto/16 :goto_130

    .line 730
    .end local v21           #newIntent:Landroid/content/Intent;
    :cond_3ee
    const-string v5, "android.provider.Contacts.SEARCH_SUGGESTION_CREATE_CONTACT_CLICKED"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42b

    .line 731
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v22

    .line 732
    .local v22, number:Ljava/lang/String;
    new-instance v21, Landroid/content/Intent;

    const-string v5, "android.intent.action.INSERT"

    sget-object v6, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 733
    .restart local v21       #newIntent:Landroid/content/Intent;
    const-string v5, "phone"

    move-object/from16 v0, v21

    move-object v1, v5

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 734
    const-class v5, Lcom/android/contacts/EditContactActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 735
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 736
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto/16 :goto_130

    .line 738
    .end local v21           #newIntent:Landroid/content/Intent;
    .end local v22           #number:Ljava/lang/String;
    :cond_42b
    const-string v5, "com.android.contacts.action.LIST_ASSIGN_MEMBER"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    .line 740
    const-string v5, "com.android.contacts.extra.GROUP_ID"

    const-wide/16 v7, 0x0

    move-object/from16 v0, v17

    move-object v1, v5

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    .line 741
    .local v15, groupId:J
    sget-object v5, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupId:J

    move-wide v7, v0

    invoke-static {v5, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 742
    .local v6, groupUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Lcom/android/contacts/ContactsListActivity;->GROUPS_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 744
    .local v14, groupCursor:Landroid/database/Cursor;
    if-eqz v14, :cond_4a6

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4a6

    .line 745
    const/4 v5, 0x0

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 746
    .local v20, name:Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 747
    .local v28, systemId:Ljava/lang/String;
    const-string v5, "Contacts"

    move-object v0, v5

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_483

    .line 748
    const-string v5, "ContactsListActivity"

    const-string v6, "invalid group to assign members"

    .end local v6           #groupUri:Landroid/net/Uri;
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :goto_47b
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 755
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto/16 :goto_130

    .line 749
    .restart local v6       #groupUri:Landroid/net/Uri;
    :cond_483
    const-string v5, "Starred in Android"

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49b

    .line 750
    const/4 v5, 0x1

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move-wide v2, v7

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/contacts/ContactsListActivity;->startActivityToAssignMembers(ZJLjava/lang/String;)Z

    goto :goto_47b

    .line 752
    :cond_49b
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move-wide v2, v15

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/contacts/ContactsListActivity;->startActivityToAssignMembers(ZJLjava/lang/String;)Z

    goto :goto_47b

    .line 758
    .end local v20           #name:Ljava/lang/String;
    .end local v28           #systemId:Ljava/lang/String;
    :cond_4a6
    const-string v5, "ContactsListActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid group uri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .end local v6           #groupUri:Landroid/net/Uri;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto/16 :goto_130

    .line 838
    .end local v14           #groupCursor:Landroid/database/Cursor;
    .end local v15           #groupId:J
    .restart local v19       #listView:Landroid/widget/ListView;
    .restart local v23       #provider:Landroid/content/IContentProvider;
    .restart local v25       #resolver:Landroid/content/ContentResolver;
    :cond_4c3
    :try_start_4c3
    invoke-interface/range {v23 .. v23}, Landroid/content/IContentProvider;->getSyncAdapter()Landroid/content/ISyncAdapter;

    move-result-object v26

    .line 839
    .local v26, sa:Landroid/content/ISyncAdapter;
    if-eqz v26, :cond_4d8

    const/4 v5, 0x1

    :goto_4ca
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/ContactsListActivity;->mSyncEnabled:Z
    :try_end_4cf
    .catchall {:try_start_4c3 .. :try_end_4cf} :catchall_4eb
    .catch Landroid/os/RemoteException; {:try_start_4c3 .. :try_end_4cf} :catch_4da

    .line 843
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    goto/16 :goto_130

    .line 839
    :cond_4d8
    const/4 v5, 0x0

    goto :goto_4ca

    .line 840
    .end local v26           #sa:Landroid/content/ISyncAdapter;
    :catch_4da
    move-exception v5

    move-object v13, v5

    .line 841
    .local v13, e:Landroid/os/RemoteException;
    const/4 v5, 0x0

    :try_start_4dd
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/ContactsListActivity;->mSyncEnabled:Z
    :try_end_4e2
    .catchall {:try_start_4dd .. :try_end_4e2} :catchall_4eb

    .line 843
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    goto/16 :goto_130

    .end local v13           #e:Landroid/os/RemoteException;
    :catchall_4eb
    move-exception v5

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    throw v5
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 28
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 1478
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    move/from16 v18, v0

    const/high16 v19, -0x8000

    and-int v18, v18, v19

    const/high16 v19, -0x8000

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 1561
    .end local p2
    :cond_12
    :goto_12
    return-void

    .line 1485
    .restart local p2
    :cond_13
    :try_start_13
    move-object/from16 v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v8, v0
    :try_end_18
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_18} :catch_96

    .line 1493
    .local v8, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    move-object v0, v8

    iget-wide v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-nez v18, :cond_a5

    .line 1494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity;->MANAGE_ROGERS_OPTION:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_3c

    move-object v0, v8

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_12

    .line 1498
    :cond_3c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    move/from16 v18, v0

    const/high16 v19, 0x100

    and-int v18, v18, v19

    const/high16 v19, 0x100

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity;->mMyProfileUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    if-eqz v18, :cond_12

    .line 1500
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0600df

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1501
    const/16 v18, 0x0

    const/16 v19, 0xa

    const/16 v20, 0x0

    const v21, 0x7f06000d

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1502
    const/16 v18, 0x0

    const/16 v19, 0xb

    const/16 v20, 0x0

    const v21, 0x7f060012

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_12

    .line 1486
    .end local v8           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :catch_96
    move-exception v6

    .line 1487
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v18, "ContactsListActivity"

    const-string v19, "bad menuInfo"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_12

    .line 1508
    .end local v6           #e:Ljava/lang/ClassCastException;
    .restart local v8       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_a5
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactsListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v18

    move-object v0, v8

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v19, v0

    check-cast p2, Landroid/widget/ListView;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v20

    sub-int v19, v19, v20

    invoke-interface/range {v18 .. v19}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/Cursor;

    .line 1510
    .local v5, cursor:Landroid/database/Cursor;
    if-eqz v5, :cond_12

    .line 1516
    sget-object v18, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v8

    iget-wide v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    move-wide/from16 v19, v0

    invoke-static/range {v18 .. v20}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 1519
    .local v12, personUri:Landroid/net/Uri;
    const/16 v18, 0x1

    move-object v0, v5

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1522
    new-instance v9, Landroid/content/Intent;

    const-string v18, "android.intent.action.VIEW"

    move-object v0, v9

    move-object/from16 v1, v18

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1523
    .local v9, intent:Landroid/content/Intent;
    const-class v18, Lcom/android/contacts/ViewContactTabActivity;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1524
    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v20, 0x0

    const v21, 0x7f06000d

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1528
    const/16 v18, 0x6

    move-object v0, v5

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1529
    .local v13, phoneId:J
    const-wide/16 v18, 0x0

    cmp-long v18, v13, v18

    if-lez v18, :cond_1b2

    .line 1531
    const/16 v18, 0x2

    move-object v0, v5

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1532
    .local v11, number:Ljava/lang/String;
    const/16 v18, 0x4

    move-object v0, v5

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1533
    .local v10, label:Ljava/lang/CharSequence;
    const/16 v18, 0x3

    move-object v0, v5

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1534
    .local v17, type:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object v2, v10

    invoke-static {v0, v1, v2}, Landroid/provider/Contacts$Phones;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1536
    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const v21, 0x7f06000e

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v10, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v18

    new-instance v19, Landroid/content/Intent;

    const-string v20, "android.intent.action.CALL_PRIVILEGED"

    const-string v21, "tel"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object v1, v11

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1541
    const/16 v18, 0x0

    const/16 v19, 0x2

    const/16 v20, 0x0

    const v21, 0x7f060017

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v18

    new-instance v19, Landroid/content/Intent;

    const-string v20, "android.intent.action.SENDTO"

    const-string v21, "smsto"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object v1, v11

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1546
    .end local v10           #label:Ljava/lang/CharSequence;
    .end local v11           #number:Ljava/lang/String;
    .end local v17           #type:I
    :cond_1b2
    const-string v18, "_sync_account"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1547
    .local v7, index:I
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1548
    .local v16, syncAccount:Ljava/lang/String;
    const-string v18, "non_syncable"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1ec

    .line 1549
    const/16 v18, 0x5

    move-object v0, v5

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1550
    .local v15, starState:I
    if-nez v15, :cond_22a

    .line 1551
    const/16 v18, 0x0

    const/16 v19, 0x3

    const/16 v20, 0x0

    const v21, 0x7f06000f

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1557
    .end local v15           #starState:I
    :cond_1ec
    :goto_1ec
    const/16 v18, 0x0

    const/16 v19, 0x5

    const/16 v20, 0x0

    const v21, 0x7f060012

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v18

    new-instance v19, Landroid/content/Intent;

    const-string v20, "android.intent.action.EDIT"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1560
    const/16 v18, 0x0

    const/16 v19, 0x6

    const/16 v20, 0x0

    const v21, 0x7f060014

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_12

    .line 1553
    .restart local v15       #starState:I
    :cond_22a
    const/16 v18, 0x0

    const/16 v19, 0x3

    const/16 v20, 0x0

    const v21, 0x7f060010

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1ec
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    const/high16 v5, 0x104

    const/4 v4, 0x0

    .line 2386
    packed-switch p1, :pswitch_data_5e

    move-object v1, v4

    .line 2434
    :goto_7
    return-object v1

    .line 2388
    :pswitch_8
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f0600f5

    invoke-virtual {p0, v2}, Lcom/android/contacts/ContactsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0600f6

    invoke-virtual {p0, v2}, Lcom/android/contacts/ContactsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2392
    .local v0, menuItems:[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0600aa

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/ContactsListActivity$4;

    invoke-direct {v2, p0}, Lcom/android/contacts/ContactsListActivity$4;-><init>(Lcom/android/contacts/ContactsListActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_7

    .line 2417
    .end local v0           #menuItems:[Ljava/lang/String;
    :pswitch_3d
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0600ab

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070001

    new-instance v3, Lcom/android/contacts/ContactsListActivity$5;

    invoke-direct {v3, p0}, Lcom/android/contacts/ContactsListActivity$5;-><init>(Lcom/android/contacts/ContactsListActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_7

    .line 2386
    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_8
        :pswitch_3d
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 11
    .parameter "menu"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/high16 v4, -0x8000

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 1322
    iget v3, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_d

    move v3, v7

    .line 1404
    :goto_c
    return v3

    .line 1326
    :cond_d
    iget v3, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v4, 0x8000050

    if-ne v3, v4, :cond_aa

    .line 1327
    const v3, 0x7f06000b

    invoke-interface {p1, v7, v5, v7, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x108004f

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1330
    iget v3, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupKind:I

    if-eq v3, v8, :cond_29

    iget v3, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupKind:I

    if-ne v3, v6, :cond_4b

    .line 1332
    :cond_29
    const/16 v3, 0xd

    const v4, 0x7f0600be

    invoke-interface {p1, v7, v3, v7, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0200c5

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1335
    iget v3, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupKind:I

    if-ne v3, v8, :cond_4b

    .line 1336
    const/16 v3, 0xc

    const v4, 0x7f0600bd

    invoke-interface {p1, v7, v3, v7, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x108003c

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1341
    :cond_4b
    const/16 v3, 0xa

    const v4, 0x7f0600c1

    invoke-interface {p1, v7, v3, v7, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0200d2

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1344
    iget v3, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupKind:I

    if-eq v3, v8, :cond_62

    iget v3, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupKind:I

    if-ne v3, v6, :cond_a4

    .line 1346
    :cond_62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://contacts/groups/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1347
    .local v1, groupUri:Landroid/net/Uri;
    const/16 v3, 0xb

    const v4, 0x7f0600bc

    invoke-interface {p1, v7, v3, v7, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x108003e

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.EDIT"

    invoke-direct {v4, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1351
    const/16 v3, 0xf

    const v4, 0x7f0600bf

    invoke-interface {p1, v7, v3, v7, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0200ca

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1404
    .end local v1           #groupUri:Landroid/net/Uri;
    :cond_a4
    :goto_a4
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    goto/16 :goto_c

    .line 1356
    :cond_aa
    const v3, 0x7f06000b

    invoke-interface {p1, v7, v5, v7, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x108004f

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1360
    const/4 v3, 0x2

    const v4, 0x7f06000c

    invoke-interface {p1, v7, v3, v7, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x1080033

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.INSERT"

    sget-object v6, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x6e

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1366
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1367
    .local v0, deleteIntent:Landroid/content/Intent;
    const-string v3, "vnd.android.cursor.dir/person"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1368
    const/4 v3, 0x6

    const v4, 0x7f06009b

    invoke-interface {p1, v7, v3, v7, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x108003c

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1372
    const/16 v3, 0xa

    const v4, 0x7f0600c1

    invoke-interface {p1, v7, v3, v7, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0200d2

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1376
    iget-boolean v3, p0, Lcom/android/contacts/ContactsListActivity;->mSyncEnabled:Z

    invoke-static {p0, p1, v8, v3}, Lcom/android/contacts/FlexibleOptionHelper;->addSyncMenuItem(Landroid/content/Context;Landroid/view/Menu;IZ)V

    .line 1389
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1390
    .local v2, importIntent:Landroid/content/Intent;
    const-string v3, "vnd.android.cursor.item/sim-contact"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1391
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.SimContacts"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1392
    const/4 v3, 0x5

    const v4, 0x7f060040

    invoke-interface {p1, v7, v3, v7, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0200ce

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_a4
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 964
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 966
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1a

    .line 967
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mObserverRegistered:Z

    if-eqz v0, :cond_15

    .line 968
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mDataCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 969
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mObserverRegistered:Z

    .line 971
    :cond_15
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 973
    :cond_1a
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1668
    sparse-switch p1, :sswitch_data_64

    .line 1699
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_9
    return v3

    .line 1670
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->callSelection()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v7

    .line 1671
    goto :goto_9

    .line 1677
    :sswitch_12
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1678
    .local v1, list:Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1679
    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1680
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_5

    .line 1681
    sget-object v3, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1684
    .local v2, personUri:Landroid/net/Uri;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f06001b

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f06001c

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/contacts/ContactsListActivity$DeleteClickListener;

    invoke-direct {v5, p0, v2}, Lcom/android/contacts/ContactsListActivity$DeleteClickListener;-><init>(Lcom/android/contacts/ContactsListActivity;Landroid/net/Uri;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v3, v7

    .line 1692
    goto :goto_9

    .line 1668
    :sswitch_data_64
    .sparse-switch
        0x5 -> :sswitch_a
        0x43 -> :sswitch_12
    .end sparse-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 16
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1706
    const-string v7, "input_method"

    invoke-virtual {p0, v7}, Lcom/android/contacts/ContactsListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 1708
    .local v2, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1711
    iget v7, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v8, -0x7dffffce

    if-ne v7, v8, :cond_44

    .line 1717
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.EDIT"

    sget-object v8, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1720
    .local v3, intent:Landroid/content/Intent;
    const-class v7, Lcom/android/contacts/EditContactActivity;

    invoke-virtual {v3, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1721
    const/high16 v7, 0x200

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1722
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1723
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_3d

    .line 1724
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1726
    :cond_3d
    invoke-virtual {p0, v3}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 1727
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    .line 1789
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_43
    :goto_43
    return-void

    .line 1728
    :cond_44
    const-wide/16 v7, -0x1

    cmp-long v7, p4, v7

    if-eqz v7, :cond_10d

    .line 1729
    iget v7, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const/high16 v8, -0x8000

    and-int/2addr v7, v8

    if-nez v7, :cond_67

    .line 1730
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    sget-object v8, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1732
    .restart local v3       #intent:Landroid/content/Intent;
    const-class v7, Lcom/android/contacts/ViewContactTabActivity;

    invoke-virtual {v3, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1733
    invoke-virtual {p0, v3}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_43

    .line 1734
    .end local v3           #intent:Landroid/content/Intent;
    :cond_67
    iget v7, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v8, -0x5fffffb5

    if-ne v7, v8, :cond_95

    .line 1736
    iget-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v7, p3}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1737
    .local v0, c:Landroid/database/Cursor;
    iget v7, p0, Lcom/android/contacts/ContactsListActivity;->mQueryPersonIdIndex:I

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1738
    .local v4, personId:J
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    sget-object v8, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1740
    .restart local v3       #intent:Landroid/content/Intent;
    const-class v7, Lcom/android/contacts/ViewContactTabActivity;

    invoke-virtual {v3, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1741
    invoke-virtual {p0, v3}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 1742
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto :goto_43

    .line 1743
    .end local v0           #c:Landroid/database/Cursor;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #personId:J
    :cond_95
    iget v7, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v8, -0x7fffffd8

    if-eq v7, v8, :cond_a3

    iget v7, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v8, -0x7dffffd3

    if-ne v7, v8, :cond_cf

    .line 1745
    :cond_a3
    sget-object v7, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1746
    .local v6, uri:Landroid/net/Uri;
    iget-boolean v7, p0, Lcom/android/contacts/ContactsListActivity;->mCreateShortcut:Z

    if-eqz v7, :cond_c9

    .line 1748
    iget-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v8

    sub-int v8, p3, v8

    invoke-virtual {v7, v8}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1749
    .restart local v0       #c:Landroid/database/Cursor;
    const/4 v7, 0x1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lcom/android/contacts/ContactsListActivity;->returnPickerResult(Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_43

    .line 1751
    .end local v0           #c:Landroid/database/Cursor;
    :cond_c9
    const/4 v7, 0x0

    invoke-direct {p0, v7, v6}, Lcom/android/contacts/ContactsListActivity;->returnPickerResult(Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_43

    .line 1753
    .end local v6           #uri:Landroid/net/Uri;
    :cond_cf
    iget v7, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v8, -0x1fffffc9

    if-ne v7, v8, :cond_ee

    .line 1754
    const/4 v7, -0x1

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    sget-object v9, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/contacts/ContactsListActivity;->setResult(ILandroid/content/Intent;)V

    .line 1756
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto/16 :goto_43

    .line 1757
    :cond_ee
    iget v7, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v8, -0x1fffffc4

    if-ne v7, v8, :cond_43

    .line 1758
    const/4 v7, -0x1

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    sget-object v9, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/contacts/ContactsListActivity;->setResult(ILandroid/content/Intent;)V

    .line 1760
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto/16 :goto_43

    .line 1762
    :cond_10d
    iget v7, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const/high16 v8, 0x100

    and-int/2addr v7, v8

    const/high16 v8, 0x100

    if-ne v7, v8, :cond_142

    if-nez p3, :cond_142

    .line 1764
    iget-object v7, p0, Lcom/android/contacts/ContactsListActivity;->mMyProfileUri:Landroid/net/Uri;

    if-eqz v7, :cond_12f

    .line 1765
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    iget-object v8, p0, Lcom/android/contacts/ContactsListActivity;->mMyProfileUri:Landroid/net/Uri;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1766
    .restart local v3       #intent:Landroid/content/Intent;
    const-class v7, Lcom/android/contacts/ViewContactTabActivity;

    invoke-virtual {v3, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1768
    invoke-virtual {p0, v3}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_43

    .line 1770
    .end local v3           #intent:Landroid/content/Intent;
    :cond_12f
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.INSERT"

    sget-object v8, Landroid/provider/Contacts$People;->CONTENT_SYSTEM_URI:Landroid/net/Uri;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1771
    .restart local v3       #intent:Landroid/content/Intent;
    const-class v7, Lcom/android/contacts/EditContactActivity;

    invoke-virtual {v3, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1772
    invoke-virtual {p0, v3}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_43

    .line 1775
    .end local v3           #intent:Landroid/content/Intent;
    :cond_142
    iget v7, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const/high16 v8, 0x100

    and-int/2addr v7, v8

    const/high16 v8, 0x100

    if-ne v7, v8, :cond_168

    const/4 v7, 0x1

    if-ne p3, v7, :cond_168

    iget-object v7, p0, Lcom/android/contacts/ContactsListActivity;->MANAGE_ROGERS_OPTION:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_168

    .line 1778
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    iget-object v8, p0, Lcom/android/contacts/ContactsListActivity;->MANAGE_ROGERS_OPTION:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1779
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_43

    .line 1787
    .end local v3           #intent:Landroid/content/Intent;
    :cond_168
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->signalError()V

    goto/16 :goto_43
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter "item"

    .prologue
    const/high16 v6, 0x104

    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1412
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_92

    move v1, v5

    .line 1468
    :goto_e
    return v1

    .line 1420
    :sswitch_f
    invoke-virtual {p0, v3, v5, v3, v5}, Lcom/android/contacts/ContactsListActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    move v1, v4

    .line 1421
    goto :goto_e

    .line 1423
    :sswitch_14
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060049

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1427
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-direct {p0, v0}, Lcom/android/contacts/ContactsListActivity;->setGroupSelectionEntries(Landroid/app/AlertDialog$Builder;)V

    .line 1428
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v1, v4

    .line 1429
    goto :goto_e

    .line 1437
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :sswitch_33
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->showDialog(I)V

    move v1, v4

    .line 1438
    goto :goto_e

    .line 1440
    :sswitch_39
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f06001b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0600a4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/contacts/ContactsListActivity$3;

    invoke-direct {v3, p0}, Lcom/android/contacts/ContactsListActivity$3;-><init>(Lcom/android/contacts/ContactsListActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v1, v4

    .line 1455
    goto :goto_e

    .line 1457
    :sswitch_68
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupKind:I

    if-ne v1, v2, :cond_73

    .line 1458
    const-wide/16 v1, 0x0

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/android/contacts/ContactsListActivity;->startActivityToAssignMembers(ZJLjava/lang/String;)Z

    move-result v1

    goto :goto_e

    .line 1460
    :cond_73
    iget-wide v1, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupId:J

    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupName:Ljava/lang/String;

    invoke-direct {p0, v5, v1, v2, v3}, Lcom/android/contacts/ContactsListActivity;->startActivityToAssignMembers(ZJLjava/lang/String;)Z

    move-result v1

    goto :goto_e

    .line 1462
    :sswitch_7c
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupKind:I

    if-ne v1, v2, :cond_87

    .line 1463
    const-wide/16 v1, 0x0

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/android/contacts/ContactsListActivity;->startActivityToExcludeMembers(ZJLjava/lang/String;)Z

    move-result v1

    goto :goto_e

    .line 1465
    :cond_87
    iget-wide v1, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupId:J

    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayGroupName:Ljava/lang/String;

    invoke-direct {p0, v5, v1, v2, v3}, Lcom/android/contacts/ContactsListActivity;->startActivityToExcludeMembers(ZJLjava/lang/String;)Z

    move-result v1

    goto/16 :goto_e

    .line 1412
    nop

    :sswitch_data_92
    .sparse-switch
        0x1 -> :sswitch_f
        0x3 -> :sswitch_14
        0xa -> :sswitch_33
        0xc -> :sswitch_39
        0xd -> :sswitch_68
        0xf -> :sswitch_7c
    .end sparse-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 917
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 918
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 920
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1f

    .line 921
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mObserverRegistered:Z

    if-eqz v0, :cond_1a

    .line 922
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mDataCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 923
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mObserverRegistered:Z

    .line 925
    :cond_1a
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 927
    :cond_1f
    return-void
.end method

.method protected onRestart()V
    .registers 2

    .prologue
    .line 932
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 935
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getTextFilter()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 936
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->startQuery()V

    .line 941
    .end local p0
    :goto_14
    return-void

    .line 939
    .restart local p0
    :cond_15
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->onContentChanged()V

    goto :goto_14
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 1258
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1260
    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mListState:Landroid/os/Parcelable;

    .line 1261
    const-string v0, "focused"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mListHasFocus:Z

    .line 1262
    return-void
.end method

.method protected onResume()V
    .registers 7

    .prologue
    .line 850
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 853
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 854
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 855
    const-string v4, "file"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 856
    iget-object v4, p0, Lcom/android/contacts/ContactsListActivity;->mediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/android/contacts/ContactsListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 858
    iget-object v4, p0, Lcom/android/contacts/ContactsListActivity;->mDataCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_2b

    .line 859
    iget-boolean v4, p0, Lcom/android/contacts/ContactsListActivity;->mObserverRegistered:Z

    if-nez v4, :cond_2b

    .line 860
    iget-object v4, p0, Lcom/android/contacts/ContactsListActivity;->mDataCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/android/contacts/ContactsListActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v4, v5}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 861
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/contacts/ContactsListActivity;->mObserverRegistered:Z

    .line 865
    :cond_2b
    const/4 v3, 0x1

    .line 866
    .local v3, runQuery:Z
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getParent()Landroid/app/Activity;

    move-result-object v2

    .line 869
    .local v2, parent:Landroid/app/Activity;
    iget-boolean v4, p0, Lcom/android/contacts/ContactsListActivity;->mDefaultMode:Z

    if-eqz v4, :cond_37

    .line 872
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->setDefaultMode()V

    .line 890
    :cond_37
    iget-boolean v4, p0, Lcom/android/contacts/ContactsListActivity;->MANAGE_SOCIAL_NETWORK:Z

    if-eqz v4, :cond_3e

    .line 891
    invoke-static {p0}, Lcom/android/contacts/LinkbookAsyncHelper;->loadAccountList(Landroid/content/Context;)Z

    .line 895
    :cond_3e
    iget-boolean v4, p0, Lcom/android/contacts/ContactsListActivity;->mJustCreated:Z

    if-eqz v4, :cond_47

    if-eqz v3, :cond_47

    .line 898
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->startQuery()V

    .line 900
    :cond_47
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/contacts/ContactsListActivity;->mJustCreated:Z

    .line 902
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->dataChanged()V

    .line 905
    if-eqz v2, :cond_5e

    instance-of v4, v2, Lcom/android/contacts/DialtactsActivity;

    if-eqz v4, :cond_5e

    .line 906
    check-cast v2, Lcom/android/contacts/DialtactsActivity;

    .end local v2           #parent:Landroid/app/Activity;
    invoke-virtual {v2}, Lcom/android/contacts/DialtactsActivity;->getAndClearFilterKeyEvent()Landroid/view/KeyEvent;

    move-result-object v0

    .line 907
    .local v0, event:Landroid/view/KeyEvent;
    if-eqz v0, :cond_5e

    .line 908
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 912
    .end local v0           #event:Landroid/view/KeyEvent;
    :cond_5e
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 1249
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1251
    const-string v0, "liststate"

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1252
    const-string v0, "focused"

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1253
    return-void
.end method

.method protected onStop()V
    .registers 4

    .prologue
    .line 946
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 951
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->setLoading(Z)V

    .line 952
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 954
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v2, 0x20000046

    if-ne v1, v2, :cond_21

    .line 956
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 957
    .local v0, searchManager:Landroid/app/SearchManager;
    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    .line 959
    .end local v0           #searchManager:Landroid/app/SearchManager;
    :cond_21
    return-void
.end method

.method signalError()V
    .registers 1

    .prologue
    .line 2099
    return-void
.end method

.method startQuery()V
    .registers 20

    .prologue
    .line 1846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity;->mAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->setLoading(Z)V

    .line 1849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    move-object v2, v0

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->cancelOperation(I)V

    .line 1851
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    move v2, v0

    move-object/from16 v0, p0

    move v1, v2

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactsListActivity;->getContactsProjection(I)[Ljava/lang/String;

    move-result-object v6

    .line 1854
    .local v6, contactsProjection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    move v2, v0

    sparse-switch v2, :sswitch_data_1bc

    .line 1958
    const-string v2, "ContactsListActivity"

    const-string v3, "invalid mode to query"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    :cond_2e
    :goto_2e
    return-void

    .line 1856
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    move-object v2, v0

    const/16 v3, 0x2a

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity;->mGroupUri:Landroid/net/Uri;

    move-object v5, v0

    const-string v7, "system_id IS NULL"

    const/4 v8, 0x0

    invoke-static {v6}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v2 .. v9}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 1863
    :sswitch_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    move-object v2, v0

    const/16 v3, 0x2a

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity;->mGroupUri:Landroid/net/Uri;

    move-object v5, v0

    const-string v7, "system_id IS NULL"

    const/4 v8, 0x0

    invoke-static {v6}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v2 .. v9}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 1873
    :sswitch_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    move-object v2, v0

    const/16 v3, 0x2a

    const/4 v4, 0x0

    sget-object v5, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "system_id IS NULL"

    const/4 v8, 0x0

    invoke-static {v6}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v2 .. v9}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 1880
    :sswitch_74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    move-object v2, v0

    const/16 v3, 0x2a

    const/4 v4, 0x0

    sget-object v5, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "system_id IS NULL AND primary_phone IS NOT NULL"

    const/4 v8, 0x0

    invoke-static {v6}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v2 .. v9}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 1888
    :sswitch_89
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "query"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ContactsListActivity;->mQuery:Ljava/lang/String;

    .line 1889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    move-object v2, v0

    const/16 v3, 0x2a

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity;->mQuery:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactsListActivity;->getPeopleFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v7, "system_id IS NULL"

    const/4 v8, 0x0

    invoke-static {v6}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v2 .. v9}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 1896
    :sswitch_b8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactsListActivity;->mQueryMode:I

    move v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_ed

    .line 1899
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ContactsListActivity;->mQueryPersonIdIndex:I

    .line 1900
    sget-object v2, Landroid/provider/Contacts$People;->WITH_EMAIL_OR_IM_FILTER_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity;->mQueryData:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 1902
    .local v10, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    move-object v7, v0

    const/16 v8, 0x2a

    const/4 v9, 0x0

    sget-object v11, Lcom/android/contacts/ContactsListActivity;->SIMPLE_CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v12, "system_id IS NULL"

    const/4 v13, 0x0

    sget-object v2, Lcom/android/contacts/ContactsListActivity;->CONTACTS_PHOTO_PROJECTION:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v7 .. v14}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 1907
    .end local v10           #uri:Landroid/net/Uri;
    :cond_ed
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ContactsListActivity;->mQueryMode:I

    move v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2e

    .line 1908
    const/4 v2, 0x6

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ContactsListActivity;->mQueryPersonIdIndex:I

    .line 1909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    move-object v11, v0

    const/16 v12, 0x2a

    const/4 v13, 0x0

    sget-object v2, Landroid/provider/Contacts$Phones;->CONTENT_FILTER_URL:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity;->mQueryData:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    sget-object v15, Lcom/android/contacts/ContactsListActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    const-string v16, "system_id IS NULL"

    const/16 v17, 0x0

    sget-object v2, Lcom/android/contacts/ContactsListActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v11 .. v18}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 1919
    :sswitch_11f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    move-object v11, v0

    const/16 v12, 0x2a

    const/4 v13, 0x0

    sget-object v14, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    sget-object v15, Lcom/android/contacts/ContactsListActivity;->CONTACTS_PHOTO_PROJECTION:[Ljava/lang/String;

    const-string v16, "system_id IS NULL AND starred=1"

    const/16 v17, 0x0

    sget-object v2, Lcom/android/contacts/ContactsListActivity;->CONTACTS_PHOTO_PROJECTION:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v11 .. v18}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 1927
    :sswitch_13a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    move-object v11, v0

    const/16 v12, 0x2a

    const/4 v13, 0x0

    sget-object v14, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    sget-object v15, Lcom/android/contacts/ContactsListActivity;->CONTACTS_PHOTO_PROJECTION:[Ljava/lang/String;

    const-string v16, "system_id IS NULL AND times_contacted > 0"

    const/16 v17, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "times_contacted DESC, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/ContactsListActivity;->CONTACTS_PHOTO_PROJECTION:[Ljava/lang/String;

    invoke-static {v3}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v11 .. v18}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 1935
    :sswitch_168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    move-object v11, v0

    const/16 v12, 0x2a

    const/4 v13, 0x0

    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "strequent"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    sget-object v15, Lcom/android/contacts/ContactsListActivity;->STREQUENT_PROJECTION:[Ljava/lang/String;

    const-string v16, "system_id IS NULL"

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v11 .. v18}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 1943
    :sswitch_185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    move-object v11, v0

    const/16 v12, 0x2a

    const/4 v13, 0x0

    sget-object v14, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    sget-object v15, Lcom/android/contacts/ContactsListActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    const-string v16, "system_id IS NULL"

    const/16 v17, 0x0

    sget-object v2, Lcom/android/contacts/ContactsListActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v11 .. v18}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 1950
    :sswitch_1a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    move-object v11, v0

    const/16 v12, 0x2a

    const/4 v13, 0x0

    sget-object v14, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    sget-object v15, Lcom/android/contacts/ContactsListActivity;->CONTACT_METHODS_PROJECTION:[Ljava/lang/String;

    const-string v16, "system_id IS NULL AND kind=2"

    const/16 v17, 0x0

    sget-object v2, Lcom/android/contacts/ContactsListActivity;->CONTACT_METHODS_PROJECTION:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v11 .. v18}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 1854
    nop

    :sswitch_data_1bc
    .sparse-switch
        -0x7fffffd8 -> :sswitch_5f
        -0x7dffffd3 -> :sswitch_5f
        -0x7dffffce -> :sswitch_5f
        -0x5fffffb5 -> :sswitch_b8
        -0x1fffffc9 -> :sswitch_185
        -0x1fffffc4 -> :sswitch_1a0
        0x14 -> :sswitch_11f
        0x19 -> :sswitch_13a
        0x100001e -> :sswitch_168
        0x8000050 -> :sswitch_47
        0xb000005 -> :sswitch_2f
        0xb00000a -> :sswitch_5f
        0xb00000f -> :sswitch_74
        0x20000046 -> :sswitch_89
    .end sparse-switch
.end method
