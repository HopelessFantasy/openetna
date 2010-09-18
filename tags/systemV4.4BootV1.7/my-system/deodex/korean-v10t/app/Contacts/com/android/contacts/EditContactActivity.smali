.class public final Lcom/android/contacts/EditContactActivity;
.super Landroid/app/Activity;
.source "EditContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/EditContactActivity$GroupEntry;,
        Lcom/android/contacts/EditContactActivity$EditEntry;,
        Lcom/android/contacts/EditContactActivity$LabelPickedListener;
    }
.end annotation


# static fields
.field public static final CAPTURE_MENU_ITEM_CAMERA:I = 0x2

.field public static final CAPTURE_MENU_ITEM_GALLERY:I = 0x1

.field private static final DATE_CHANGED:I = 0x1

.field private static final DATE_DEFAULT:I = 0x0

.field private static final DEFAULT_EMAIL_TYPE:I = 0x1

.field private static final DEFAULT_PHONE_TYPE:I = 0x2

.field private static final DEFAULT_POSTAL_TYPE:I = 0x1

.field private static final DEFAULT_WEBSITE_TYPE:I = 0x1

.field static final DIALOG_BRITHDAY_SELECTION:I = 0x5

.field static final DIALOG_DELETE_CONFIRMATION:I = 0x2

.field static final DIALOG_DELETE_SNID_CONFIRMATION:I = 0x8

.field static final DIALOG_GROUP_SELECTION:I = 0x4

.field static final DIALOG_INPUT_SNSID_ENTRY:I = 0x7

.field static final DIALOG_SIM_DELETE_CONFIRMATION:I = 0x3

.field private static final GROUPS_PROJECTION:[Ljava/lang/String; = null

.field static final GROUP_ID_COLUMN_INDEX:I = 0x0

.field static final GROUP_NAME_COLUMN_INDEX:I = 0x1

.field static final GROUP_NOTES_COLUMN_INDEX:I = 0x2

.field static final GROUP_SYSTEM_ID_COLUMN_INDEX:I = 0x3

.field private static final INVALID_TYPE:I = -0x1

.field public static final MENU_ITEM_DELETE:I = 0x3

.field public static final MENU_ITEM_DELETE_SIM:I = 0x5

.field public static final MENU_ITEM_DONT_SAVE:I = 0x2

.field public static final MENU_ITEM_PHOTO:I = 0x6

.field public static final MENU_ITEM_SAVE:I = 0x1

.field public static final MENU_ITEM_SAVE_SIM:I = 0x4

.field static final MSG_ADD_EMAIL:I = 0x4

.field static final MSG_ADD_PHONE:I = 0x3

.field static final MSG_ADD_POSTAL:I = 0x5

.field static final MSG_ADD_WEBSITE:I = 0x6

.field static final MSG_CHANGE_LABEL:I = 0x2

.field static final MSG_DELETE:I = 0x1

.field static final SECTION_BIRTHDAY:I = 0xb

.field static final SECTION_EMAIL:I = 0x4

.field static final SECTION_GROUP:I = 0xa

.field static final SECTION_IM:I = 0x5

.field static final SECTION_NOTE:I = 0x9

.field static final SECTION_ORG:I = 0x8

.field static final SECTION_PHONES:I = 0x3

.field static final SECTION_POSTAL:I = 0x7

.field static final SECTION_SNSID:I = 0xc

.field static final SECTION_WEBSITE:I = 0x6

.field private static final STATE_EDIT:I = 0x1

.field private static final STATE_INSERT:I = 0x2

.field private static final STATE_UNKNOWN:I = 0x0

.field private static final SUBACTIVITY_NEW_GROUP:I = 0x1

.field private static final SUBACTIVITY_PHOTO_PICKED_WITH_DATA:I = 0xbcd

.field private static final SUBACTIVITY_PICK_SNSID:I = 0x2

.field private static final SUBACTIVITY_RINGTONE_PICKED:I = 0xbcf

.field private static final SUBACTIVITY_TAKE_PICTURE_WITH_DATA:I = 0xbce

.field private static final TAG:Ljava/lang/String; = "EditContactActivity"

.field private static final TYPE_PRECEDENCE_IM:[I

.field private static final TYPE_PRECEDENCE_METHODS:[I

.field private static final TYPE_PRECEDENCE_ORG:[I

.field private static final TYPE_PRECEDENCE_PHONES:[I

.field private static mSNLabels:[Ljava/lang/String;

.field private static saveSIM:Z


# instance fields
.field private MANAGE_DRM_PHOTO:Z

.field private MANAGE_SOCIAL_NETWORK:Z

.field private mBirthdayDialog:Landroid/app/DatePickerDialog;

.field mBirthdayEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/EditContactActivity$EditEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptureMenu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptureMenuItem:Landroid/view/MenuItem;

.field private mContactChanged:Z

.field private mContentView:Landroid/view/ViewGroup;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDeleteContactDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDeleteSimContactDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDrmFilename:Ljava/lang/String;

.field private mDrmPhoto:Landroid/graphics/Bitmap;

.field mEmailEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/EditContactActivity$EditEntry;",
            ">;"
        }
    .end annotation
.end field

.field mGroupEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/EditContactActivity$EditEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupSelectDialog:Landroid/app/AlertDialog;

.field private mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/EditContactActivity$GroupEntry;",
            ">;"
        }
    .end annotation
.end field

.field mImEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/EditContactActivity$EditEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsMyProfile:Z

.field private mLayout:Landroid/widget/LinearLayout;

.field private mMobilePhoneAdded:Z

.field private mNameView:Landroid/widget/EditText;

.field mNoteEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/EditContactActivity$EditEntry;",
            ">;"
        }
    .end annotation
.end field

.field mOrgEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/EditContactActivity$EditEntry;",
            ">;"
        }
    .end annotation
.end field

.field mOtherEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/EditContactActivity$EditEntry;",
            ">;"
        }
    .end annotation
.end field

.field mPhoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/EditContactActivity$EditEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneticNameView:Landroid/widget/EditText;

.field private mPhoto:Landroid/graphics/Bitmap;

.field private mPhotoChanged:Z

.field private mPhotoImageView:Landroid/widget/ImageView;

.field private mPhotoPresent:Z

.field mPostalEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/EditContactActivity$EditEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryEmailAdded:Z

.field mResolver:Landroid/content/ContentResolver;

.field private mSNData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSNSelectDialog:Landroid/app/AlertDialog;

.field mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/EditContactActivity$EditEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSimMenu:Landroid/view/MenuItem;

.field private mSnDeletEntry:Lcom/android/contacts/EditContactActivity$EditEntry;

.field mSnsIdEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/EditContactActivity$EditEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private mUri:Landroid/net/Uri;

.field mWebsiteEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/EditContactActivity$EditEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 227
    sput-boolean v2, Lcom/android/contacts/EditContactActivity;->saveSIM:Z

    .line 251
    new-array v0, v1, [I

    fill-array-data v0, :array_3a

    sput-object v0, Lcom/android/contacts/EditContactActivity;->TYPE_PRECEDENCE_PHONES:[I

    .line 257
    new-array v0, v4, [I

    fill-array-data v0, :array_46

    sput-object v0, Lcom/android/contacts/EditContactActivity;->TYPE_PRECEDENCE_METHODS:[I

    .line 262
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_50

    sput-object v0, Lcom/android/contacts/EditContactActivity;->TYPE_PRECEDENCE_IM:[I

    .line 272
    new-array v0, v3, [I

    fill-array-data v0, :array_64

    sput-object v0, Lcom/android/contacts/EditContactActivity;->TYPE_PRECEDENCE_ORG:[I

    .line 279
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const-string v1, "notes"

    aput-object v1, v0, v3

    const-string v1, "system_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/contacts/EditContactActivity;->GROUPS_PROJECTION:[Ljava/lang/String;

    return-void

    .line 251
    :array_3a
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    .line 257
    :array_46
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 262
    :array_50
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 272
    :array_64
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/EditContactActivity;->MANAGE_DRM_PHOTO:Z

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/EditContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/EditContactActivity;->mEmailEntries:Ljava/util/ArrayList;

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/EditContactActivity;->mImEntries:Ljava/util/ArrayList;

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/EditContactActivity;->mPostalEntries:Ljava/util/ArrayList;

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/EditContactActivity;->mOrgEntries:Ljava/util/ArrayList;

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/EditContactActivity;->mNoteEntries:Ljava/util/ArrayList;

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/EditContactActivity;->mOtherEntries:Ljava/util/ArrayList;

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/EditContactActivity;->mWebsiteEntries:Ljava/util/ArrayList;

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/EditContactActivity;->mGroupEntries:Ljava/util/ArrayList;

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/EditContactActivity;->mBirthdayEntries:Ljava/util/ArrayList;

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/EditContactActivity;->mSnsIdEntries:Ljava/util/ArrayList;

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/EditContactActivity;->mSections:Ljava/util/ArrayList;

    .line 328
    iput-boolean v1, p0, Lcom/android/contacts/EditContactActivity;->mPhotoChanged:Z

    .line 329
    iput-boolean v1, p0, Lcom/android/contacts/EditContactActivity;->mContactChanged:Z

    .line 344
    iput-boolean v1, p0, Lcom/android/contacts/EditContactActivity;->mPhotoPresent:Z

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/EditContactActivity;->mGroups:Ljava/util/ArrayList;

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/EditContactActivity;->mCaptureMenu:Ljava/util/ArrayList;

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/EditContactActivity;->mSNData:Ljava/util/ArrayList;

    .line 375
    iput-boolean v1, p0, Lcom/android/contacts/EditContactActivity;->mMobilePhoneAdded:Z

    .line 376
    iput-boolean v1, p0, Lcom/android/contacts/EditContactActivity;->mPrimaryEmailAdded:Z

    .line 383
    new-instance v0, Lcom/android/contacts/EditContactActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/EditContactActivity$1;-><init>(Lcom/android/contacts/EditContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/EditContactActivity;->mediaReceiver:Landroid/content/BroadcastReceiver;

    .line 394
    new-instance v0, Lcom/android/contacts/EditContactActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/EditContactActivity$2;-><init>(Lcom/android/contacts/EditContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/EditContactActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 548
    new-instance v0, Lcom/android/contacts/EditContactActivity$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/EditContactActivity$3;-><init>(Lcom/android/contacts/EditContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/EditContactActivity;->mDeleteContactDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 560
    new-instance v0, Lcom/android/contacts/EditContactActivity$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/EditContactActivity$4;-><init>(Lcom/android/contacts/EditContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/EditContactActivity;->mDeleteSimContactDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 4119
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/EditContactActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/contacts/EditContactActivity;->buildViews()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/EditContactActivity;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/EditContactActivity;Lcom/android/contacts/EditContactActivity$EditEntry;Ljava/util/ArrayList;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/EditContactActivity;->createCustomPicker(Lcom/android/contacts/EditContactActivity$EditEntry;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/contacts/EditContactActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/contacts/EditContactActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/contacts/EditContactActivity;->mGroupSelectDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/contacts/EditContactActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/contacts/EditContactActivity;->setGroupEntries()V

    return-void
.end method

.method static synthetic access$1500()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 165
    sget-object v0, Lcom/android/contacts/EditContactActivity;->mSNLabels:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/contacts/EditContactActivity;->snID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/contacts/EditContactActivity;Landroid/app/DatePickerDialog;)Landroid/app/DatePickerDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/contacts/EditContactActivity;->mBirthdayDialog:Landroid/app/DatePickerDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/contacts/EditContactActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mNameView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/EditContactActivity;)Lcom/android/contacts/EditContactActivity$EditEntry;
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mSnDeletEntry:Lcom/android/contacts/EditContactActivity$EditEntry;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/contacts/EditContactActivity;Lcom/android/contacts/EditContactActivity$EditEntry;)Lcom/android/contacts/EditContactActivity$EditEntry;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/contacts/EditContactActivity;->mSnDeletEntry:Lcom/android/contacts/EditContactActivity$EditEntry;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/contacts/EditContactActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/contacts/EditContactActivity;->mSNSelectDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/contacts/EditContactActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/contacts/EditContactActivity;->mContactChanged:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/contacts/EditContactActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mCaptureMenu:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/EditContactActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/contacts/EditContactActivity;->doPickPhotoAction()V

    return-void
.end method

.method private addEmailFromExtras(Landroid/os/Bundle;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "extras"
    .parameter "methodsUri"
    .parameter "emailField"
    .parameter "typeField"
    .parameter "primaryField"

    .prologue
    const/4 v9, 0x1

    const/4 v3, -0x1

    .line 2866
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 2869
    .local v7, email:Ljava/lang/CharSequence;
    const/4 v2, -0x1

    .line 2870
    .local v2, emailType:I
    const/4 v1, 0x0

    .line 2871
    .local v1, customLabel:Ljava/lang/String;
    invoke-virtual {p1, p4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_3f

    .line 2872
    const/4 v2, 0x0

    .line 2873
    invoke-virtual {p1, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2878
    :goto_15
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    if-ne v2, v3, :cond_20

    .line 2879
    const/4 v2, 0x1

    .line 2880
    iput-boolean v9, p0, Lcom/android/contacts/EditContactActivity;->mPrimaryEmailAdded:Z

    .line 2883
    :cond_20
    if-eq v2, v3, :cond_3e

    .line 2884
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/android/contacts/EditContactActivity$EditEntry;->newEmailEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v8

    .line 2886
    .local v8, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    if-nez p5, :cond_44

    const/4 v0, 0x0

    :goto_31
    iput-boolean v0, v8, Lcom/android/contacts/EditContactActivity$EditEntry;->isPrimary:Z

    .line 2887
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2890
    iget-boolean v0, v8, Lcom/android/contacts/EditContactActivity$EditEntry;->isPrimary:Z

    if-eqz v0, :cond_3e

    .line 2891
    iput-boolean v9, p0, Lcom/android/contacts/EditContactActivity;->mPrimaryEmailAdded:Z

    .line 2894
    .end local v8           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :cond_3e
    return-void

    .line 2875
    :cond_3f
    invoke-virtual {p1, p4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_15

    .line 2886
    .restart local v8       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :cond_44
    invoke-virtual {p1, p5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_31
.end method

.method private addFromExtras(Landroid/os/Bundle;Landroid/net/Uri;Z)V
    .registers 46
    .parameter "extras"
    .parameter "personUri"
    .parameter "isNew"

    .prologue
    .line 2736
    const/16 v32, 0x0

    .line 2737
    .local v32, phonesUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 2738
    .local v8, methodsUri:Landroid/net/Uri;
    const/16 v25, 0x0

    .line 2740
    .local v25, StuffsUri:Landroid/net/Uri;
    if-eqz p2, :cond_22

    .line 2741
    const-string v4, "phones"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v32

    .line 2742
    const-string v4, "contact_methods"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 2743
    const-string v4, "stuffs"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    .line 2748
    :cond_22
    if-eqz p3, :cond_40

    .line 2749
    const-string v4, "name"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v31

    .line 2750
    .local v31, name:Ljava/lang/CharSequence;
    if-eqz v31, :cond_40

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 2751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mNameView:Landroid/widget/EditText;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2757
    .end local v31           #name:Ljava/lang/CharSequence;
    :cond_40
    const-string v4, "phonetic_name"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v33

    .line 2758
    .local v33, phoneticName:Ljava/lang/CharSequence;
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5a

    .line 2759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mPhoneticNameView:Landroid/widget/EditText;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2763
    :cond_5a
    const-string v4, "postal"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v34

    .line 2764
    .local v34, postal:Ljava/lang/CharSequence;
    const-string v4, "postal_type"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 2765
    .local v6, postalType:I
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_78

    const/4 v4, -0x1

    if-ne v6, v4, :cond_78

    .line 2766
    const/4 v6, 0x1

    .line 2769
    :cond_78
    const/4 v4, -0x1

    if-eq v6, v4, :cond_a1

    .line 2770
    const/4 v5, 0x0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v9, 0x0

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v10}, Lcom/android/contacts/EditContactActivity$EditEntry;->newPostalEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v28

    .line 2772
    .local v28, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    const-string v4, "postal_isprimary"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    move v0, v4

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->isPrimary:Z

    .line 2773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mPostalEntries:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2777
    .end local v28           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :cond_a1
    const-string v12, "email"

    const-string v13, "email_type"

    const-string v14, "email_isprimary"

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v8

    invoke-direct/range {v9 .. v14}, Lcom/android/contacts/EditContactActivity;->addEmailFromExtras(Landroid/os/Bundle;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2779
    const-string v12, "secondary_email"

    const-string v13, "secondary_email_type"

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v8

    invoke-direct/range {v9 .. v14}, Lcom/android/contacts/EditContactActivity;->addEmailFromExtras(Landroid/os/Bundle;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2781
    const-string v12, "tertiary_email"

    const-string v13, "tertiary_email_type"

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v8

    invoke-direct/range {v9 .. v14}, Lcom/android/contacts/EditContactActivity;->addEmailFromExtras(Landroid/os/Bundle;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2785
    const-string v12, "phone"

    const-string v13, "phone_type"

    const-string v14, "phone_isprimary"

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, v32

    invoke-direct/range {v9 .. v14}, Lcom/android/contacts/EditContactActivity;->addPhoneFromExtras(Landroid/os/Bundle;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2787
    const-string v12, "secondary_phone"

    const-string v13, "secondary_phone_type"

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, v32

    invoke-direct/range {v9 .. v14}, Lcom/android/contacts/EditContactActivity;->addPhoneFromExtras(Landroid/os/Bundle;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2789
    const-string v12, "tertiary_phone"

    const-string v13, "tertiary_phone_type"

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, v32

    invoke-direct/range {v9 .. v14}, Lcom/android/contacts/EditContactActivity;->addPhoneFromExtras(Landroid/os/Bundle;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2793
    const-string v4, "im_handle"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v29

    .line 2794
    .local v29, imHandle:Ljava/lang/CharSequence;
    const-string v4, "im_protocol"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v30

    .line 2796
    .local v30, imProtocol:Ljava/lang/CharSequence;
    if-eqz v29, :cond_14f

    if-eqz v30, :cond_14f

    .line 2797
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/Contacts$ContactMethods;->decodeImProtocol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    .line 2798
    .local v35, protocolObj:Ljava/lang/Object;
    move-object/from16 v0, v35

    instance-of v0, v0, Ljava/lang/Number;

    move v4, v0

    if-eqz v4, :cond_249

    .line 2799
    check-cast v35, Ljava/lang/Number;

    .end local v35           #protocolObj:Ljava/lang/Object;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 2800
    .local v11, protocol:I
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move v1, v4

    invoke-static {v0, v1}, Lcom/android/contacts/EditContactActivity;->getLabelsForKind(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v4

    aget-object v10, v4, v11

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-wide/16 v14, 0x0

    move-object/from16 v9, p0

    move-object v13, v8

    invoke-static/range {v9 .. v15}, Lcom/android/contacts/EditContactActivity$EditEntry;->newImEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v28

    .line 2807
    .end local v11           #protocol:I
    .restart local v28       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :goto_136
    const-string v4, "im_isprimary"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    move v0, v4

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->isPrimary:Z

    .line 2808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mImEntries:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2812
    .end local v28           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :cond_14f
    const-string v4, "website"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v41

    .line 2813
    .local v41, website:Ljava/lang/CharSequence;
    const-string v4, "website_type"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 2814
    .local v14, websiteType:I
    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16d

    const/4 v4, -0x1

    if-ne v14, v4, :cond_16d

    .line 2815
    const/4 v14, 0x1

    .line 2818
    :cond_16d
    const/4 v4, -0x1

    if-eq v14, v4, :cond_190

    .line 2819
    const/4 v13, 0x0

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    const-wide/16 v17, 0x0

    move-object/from16 v12, p0

    move-object/from16 v16, v8

    invoke-static/range {v12 .. v18}, Lcom/android/contacts/EditContactActivity$EditEntry;->newWebsiteEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v28

    .line 2821
    .restart local v28       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->isPrimary:Z

    .line 2822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mWebsiteEntries:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2826
    .end local v28           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :cond_190
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/EditContactActivity;->MANAGE_SOCIAL_NETWORK:Z

    move v4, v0

    if-eqz v4, :cond_21a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/EditContactActivity;->mIsMyProfile:Z

    move v4, v0

    if-nez v4, :cond_21a

    .line 2827
    const/16 v22, 0x0

    .line 2828
    .local v22, snsIdsUri:Landroid/net/Uri;
    if-eqz p2, :cond_1ab

    .line 2829
    const-string v4, "sns_ids"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 2831
    :cond_1ab
    const-string v4, "sns_id"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v38

    .line 2832
    .local v38, snsId:Ljava/lang/CharSequence;
    const-string v4, "user_id"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v39

    .line 2833
    .local v39, userid:Ljava/lang/CharSequence;
    const-string v4, "sn_site_id"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v36

    .line 2834
    .local v36, sn_siteId:Ljava/lang/CharSequence;
    const-string v4, "sn_user_id"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v37

    .line 2835
    .local v37, sn_userId:Ljava/lang/CharSequence;
    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_21a

    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_21a

    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_21a

    .line 2836
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/contacts/LinkbookAsyncHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;

    move-result-object v26

    .line 2837
    .local v26, account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    if-eqz v26, :cond_21a

    .line 2838
    if-nez v38, :cond_25e

    const/4 v4, 0x0

    move-object/from16 v18, v4

    .line 2839
    .local v18, snsIdStr:Ljava/lang/String;
    :goto_1f3
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mTitle:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    const-wide/16 v23, 0x0

    move-object/from16 v15, p0

    invoke-static/range {v15 .. v24}, Lcom/android/contacts/EditContactActivity$EditEntry;->newSnsIdEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v28

    .line 2841
    .restart local v28       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mSnsIdEntries:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2849
    .end local v18           #snsIdStr:Ljava/lang/String;
    .end local v22           #snsIdsUri:Landroid/net/Uri;
    .end local v26           #account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    .end local v28           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    .end local v36           #sn_siteId:Ljava/lang/CharSequence;
    .end local v37           #sn_userId:Ljava/lang/CharSequence;
    .end local v38           #snsId:Ljava/lang/CharSequence;
    .end local v39           #userid:Ljava/lang/CharSequence;
    :cond_21a
    const-string v4, "birthday"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    .line 2852
    .local v40, value:Ljava/lang/Object;
    if-nez v40, :cond_265

    const/4 v4, 0x0

    move-object/from16 v27, v4

    .line 2853
    .end local v40           #value:Ljava/lang/Object;
    .local v27, birthtime:Ljava/lang/Long;
    :goto_228
    if-eqz v27, :cond_248

    .line 2854
    :try_start_22a
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-wide v1, v4

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/EditContactActivity$EditEntry;->newBirthdayEntry(Lcom/android/contacts/EditContactActivity;JLandroid/net/Uri;)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v28

    .line 2855
    .restart local v28       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->isPrimary:Z

    .line 2856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mBirthdayEntries:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_248
    .catch Ljava/lang/ClassCastException; {:try_start_22a .. :try_end_248} :catch_272

    .line 2861
    .end local v27           #birthtime:Ljava/lang/Long;
    .end local v28           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :cond_248
    :goto_248
    return-void

    .line 2804
    .end local v14           #websiteType:I
    .end local v41           #website:Ljava/lang/CharSequence;
    .restart local v35       #protocolObj:Ljava/lang/Object;
    :cond_249
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, -0x1

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    const-wide/16 v17, 0x0

    move-object/from16 v12, p0

    move-object/from16 v16, v8

    invoke-static/range {v12 .. v18}, Lcom/android/contacts/EditContactActivity$EditEntry;->newImEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v28

    .restart local v28       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    goto/16 :goto_136

    .line 2838
    .end local v28           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    .end local v35           #protocolObj:Ljava/lang/Object;
    .restart local v14       #websiteType:I
    .restart local v22       #snsIdsUri:Landroid/net/Uri;
    .restart local v26       #account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    .restart local v36       #sn_siteId:Ljava/lang/CharSequence;
    .restart local v37       #sn_userId:Ljava/lang/CharSequence;
    .restart local v38       #snsId:Ljava/lang/CharSequence;
    .restart local v39       #userid:Ljava/lang/CharSequence;
    .restart local v41       #website:Ljava/lang/CharSequence;
    :cond_25e
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v18, v4

    goto :goto_1f3

    .line 2852
    .end local v22           #snsIdsUri:Landroid/net/Uri;
    .end local v26           #account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    .end local v36           #sn_siteId:Ljava/lang/CharSequence;
    .end local v37           #sn_userId:Ljava/lang/CharSequence;
    .end local v38           #snsId:Ljava/lang/CharSequence;
    .end local v39           #userid:Ljava/lang/CharSequence;
    .restart local v40       #value:Ljava/lang/Object;
    :cond_265
    :try_start_265
    check-cast v40, Ljava/lang/Number;

    .end local v40           #value:Ljava/lang/Object;
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_26e
    .catch Ljava/lang/ClassCastException; {:try_start_265 .. :try_end_26e} :catch_272

    move-result-object v4

    move-object/from16 v27, v4

    goto :goto_228

    .line 2858
    :catch_272
    move-exception v4

    goto :goto_248
.end method

.method private addPhoneFromExtras(Landroid/os/Bundle;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter "extras"
    .parameter "phonesUri"
    .parameter "phoneField"
    .parameter "typeField"
    .parameter "primaryField"

    .prologue
    const/4 v3, -0x1

    .line 2899
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 2902
    .local v8, phoneNumber:Ljava/lang/CharSequence;
    const/4 v2, -0x1

    .line 2903
    .local v2, phoneType:I
    const/4 v1, 0x0

    .line 2904
    .local v1, customLabel:Ljava/lang/String;
    invoke-virtual {p1, p4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_3c

    .line 2905
    const/4 v2, 0x0

    .line 2906
    invoke-virtual {p1, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2911
    :goto_14
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    if-ne v2, v3, :cond_1d

    .line 2912
    const/4 v2, 0x2

    .line 2915
    :cond_1d
    if-eq v2, v3, :cond_3b

    .line 2916
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/android/contacts/EditContactActivity$EditEntry;->newPhoneEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v7

    .line 2918
    .local v7, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    if-nez p5, :cond_41

    const/4 v0, 0x0

    :goto_2e
    iput-boolean v0, v7, Lcom/android/contacts/EditContactActivity$EditEntry;->isPrimary:Z

    .line 2919
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2922
    const/4 v0, 0x2

    if-ne v2, v0, :cond_3b

    .line 2923
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/EditContactActivity;->mMobilePhoneAdded:Z

    .line 2926
    .end local v7           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :cond_3b
    return-void

    .line 2908
    :cond_3c
    invoke-virtual {p1, p4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_14

    .line 2918
    .restart local v7       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :cond_41
    invoke-virtual {p1, p5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_2e
.end method

.method private buildEntriesForEdit(Landroid/os/Bundle;Landroid/database/Cursor;)V
    .registers 71
    .parameter "extras"
    .parameter "personCursor"

    .prologue
    .line 2357
    if-nez p2, :cond_23

    .line 2358
    const-string v5, "EditContactActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid contact uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/EditContactActivity;->finish()V

    .line 2676
    :goto_22
    return-void

    .line 2361
    :cond_23
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_4d

    .line 2362
    const-string v5, "EditContactActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid contact uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 2364
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/EditContactActivity;->finish()V

    goto :goto_22

    .line 2369
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mSections:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v59

    .line 2370
    .local v59, numSections:I
    const/16 v54, 0x0

    .local v54, i:I
    :goto_58
    move/from16 v0, v54

    move/from16 v1, v59

    if-ge v0, v1, :cond_72

    .line 2371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mSections:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2370
    add-int/lit8 v54, v54, 0x1

    goto :goto_58

    .line 2377
    :cond_72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mNameView:Landroid/widget/EditText;

    move-object v5, v0

    const/4 v6, 0x2

    move-object/from16 v0, p2

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mNameView:Landroid/widget/EditText;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2381
    const/16 v62, 0x0

    .line 2382
    .local v62, photo:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    move-object v5, v0

    const-string v6, "photo"

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 2383
    .local v6, photoUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "data"

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v52

    .line 2385
    .local v52, cursor:Landroid/database/Cursor;
    :try_start_ae
    invoke-interface/range {v52 .. v52}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_d1

    .line 2386
    const/4 v5, 0x0

    move-object/from16 v0, v52

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v30

    .line 2387
    .local v30, data:[B
    if-eqz v30, :cond_d1

    .line 2388
    const/4 v5, 0x0

    move-object/from16 v0, v30

    array-length v0, v0

    move v6, v0

    .end local v6           #photoUri:Landroid/net/Uri;
    move-object/from16 v0, v30

    move v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v62

    .line 2389
    move-object/from16 v0, v62

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/EditContactActivity;->mPhoto:Landroid/graphics/Bitmap;
    :try_end_d1
    .catchall {:try_start_ae .. :try_end_d1} :catchall_1cc

    .line 2393
    .end local v30           #data:[B
    :cond_d1
    if-eqz v52, :cond_d6

    .line 2394
    invoke-interface/range {v52 .. v52}, Landroid/database/Cursor;->close()V

    .line 2398
    :cond_d6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/EditContactActivity;->MANAGE_DRM_PHOTO:Z

    move v5, v0

    if-eqz v5, :cond_140

    if-nez v62, :cond_140

    .line 2399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    move-object v5, v0

    const-string v6, "drmphotos"

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 2400
    .local v8, drmphotoUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object v7, v0

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "filename"

    aput-object v6, v9, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v52

    .line 2402
    :try_start_fe
    invoke-interface/range {v52 .. v52}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_13b

    .line 2403
    const/4 v5, 0x0

    move-object/from16 v0, v52

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_13b

    .line 2404
    const/4 v5, 0x0

    move-object/from16 v0, v52

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/EditContactActivity;->mDrmFilename:Ljava/lang/String;

    .line 2405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/provider/Contacts$DrmPhotoManager;->openDrmPhotoInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v65

    .line 2406
    .local v65, stream:Ljava/io/InputStream;
    if-eqz v65, :cond_1d3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v65

    move-object v1, v5

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v62, v5

    .line 2407
    :goto_135
    move-object/from16 v0, v62

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/EditContactActivity;->mDrmPhoto:Landroid/graphics/Bitmap;
    :try_end_13b
    .catchall {:try_start_fe .. :try_end_13b} :catchall_1d8

    .line 2411
    .end local v65           #stream:Ljava/io/InputStream;
    :cond_13b
    if-eqz v52, :cond_140

    .line 2412
    invoke-interface/range {v52 .. v52}, Landroid/database/Cursor;->close()V

    .line 2417
    .end local v8           #drmphotoUri:Landroid/net/Uri;
    :cond_140
    if-eqz v62, :cond_1df

    .line 2418
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/contacts/EditContactActivity;->setPhotoPresent(Z)V

    .line 2419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mPhotoImageView:Landroid/widget/ImageView;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2425
    :goto_154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    move-object v5, v0

    const-string v6, "organizations"

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 2426
    .local v10, organizationsUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object v9, v0

    sget-object v11, Lcom/android/contacts/ContactEntryAdapter;->ORGANIZATIONS_PROJECTION:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v60

    .line 2429
    .local v60, organizationsCursor:Landroid/database/Cursor;
    if-eqz v60, :cond_1ed

    .line 2430
    :goto_16f
    invoke-interface/range {v60 .. v60}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1ea

    .line 2431
    const/4 v5, 0x1

    move-object/from16 v0, v60

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 2432
    .local v13, type:I
    const/4 v5, 0x2

    move-object/from16 v0, v60

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2433
    .local v12, label:Ljava/lang/String;
    const/4 v5, 0x3

    move-object/from16 v0, v60

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2434
    .local v14, company:Ljava/lang/String;
    const/4 v5, 0x4

    move-object/from16 v0, v60

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2435
    .local v15, title:Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, v60

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 2436
    .local v17, id:J
    sget-object v5, Landroid/provider/Contacts$Organizations;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .local v16, uri:Landroid/net/Uri;
    move-object/from16 v11, p0

    .line 2439
    invoke-static/range {v11 .. v18}, Lcom/android/contacts/EditContactActivity$EditEntry;->newOrganizationEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v53

    .line 2440
    .local v53, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    const/4 v5, 0x5

    move-object/from16 v0, v60

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmp-long v5, v21, v23

    if-eqz v5, :cond_1e8

    const/4 v5, 0x1

    :goto_1bb
    move v0, v5

    move-object/from16 v1, v53

    iput-boolean v0, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->isPrimary:Z

    .line 2441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mOrgEntries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16f

    .line 2393
    .end local v10           #organizationsUri:Landroid/net/Uri;
    .end local v12           #label:Ljava/lang/String;
    .end local v13           #type:I
    .end local v14           #company:Ljava/lang/String;
    .end local v15           #title:Ljava/lang/String;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v17           #id:J
    .end local v53           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    .end local v60           #organizationsCursor:Landroid/database/Cursor;
    :catchall_1cc
    move-exception v5

    if-eqz v52, :cond_1d2

    .line 2394
    invoke-interface/range {v52 .. v52}, Landroid/database/Cursor;->close()V

    :cond_1d2
    throw v5

    .line 2406
    .restart local v8       #drmphotoUri:Landroid/net/Uri;
    .restart local v65       #stream:Ljava/io/InputStream;
    :cond_1d3
    const/4 v5, 0x0

    move-object/from16 v62, v5

    goto/16 :goto_135

    .line 2411
    .end local v65           #stream:Ljava/io/InputStream;
    :catchall_1d8
    move-exception v5

    if-eqz v52, :cond_1de

    .line 2412
    invoke-interface/range {v52 .. v52}, Landroid/database/Cursor;->close()V

    :cond_1de
    throw v5

    .line 2421
    .end local v8           #drmphotoUri:Landroid/net/Uri;
    :cond_1df
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/contacts/EditContactActivity;->setPhotoPresent(Z)V

    goto/16 :goto_154

    .line 2440
    .restart local v10       #organizationsUri:Landroid/net/Uri;
    .restart local v12       #label:Ljava/lang/String;
    .restart local v13       #type:I
    .restart local v14       #company:Ljava/lang/String;
    .restart local v15       #title:Ljava/lang/String;
    .restart local v16       #uri:Landroid/net/Uri;
    .restart local v17       #id:J
    .restart local v53       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    .restart local v60       #organizationsCursor:Landroid/database/Cursor;
    :cond_1e8
    const/4 v5, 0x0

    goto :goto_1bb

    .line 2443
    .end local v12           #label:Ljava/lang/String;
    .end local v13           #type:I
    .end local v14           #company:Ljava/lang/String;
    .end local v15           #title:Ljava/lang/String;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v17           #id:J
    .end local v53           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :cond_1ea
    invoke-interface/range {v60 .. v60}, Landroid/database/Cursor;->close()V

    .line 2447
    :cond_1ed
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/EditContactActivity;->mIsMyProfile:Z

    move v5, v0

    if-nez v5, :cond_214

    .line 2448
    const/4 v5, 0x7

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/contacts/EditContactActivity$EditEntry;->newRingtoneEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;Landroid/net/Uri;)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v53

    .line 2450
    .restart local v53       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mOtherEntries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2454
    .end local v53           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :cond_214
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/EditContactActivity;->mIsMyProfile:Z

    move v5, v0

    if-nez v5, :cond_23c

    .line 2455
    const/16 v5, 0x8

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/contacts/EditContactActivity$EditEntry;->newSendToVoicemailEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;Landroid/net/Uri;)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v53

    .line 2457
    .restart local v53       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mOtherEntries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2461
    .end local v53           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :cond_23c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mPhoneticNameView:Landroid/widget/EditText;

    move-object v5, v0

    const/16 v6, 0x9

    move-object/from16 v0, p2

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mPhoneticNameView:Landroid/widget/EditText;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2465
    const/4 v5, 0x3

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_282

    .line 2466
    const/4 v5, 0x3

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/contacts/EditContactActivity$EditEntry;->newNotesEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;Landroid/net/Uri;)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v53

    .line 2468
    .restart local v53       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mNoteEntries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2471
    .end local v53           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :cond_282
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 2474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    move-object v5, v0

    const-string v6, "phones"

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 2475
    .local v20, phonesUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    sget-object v21, Lcom/android/contacts/ContactEntryAdapter;->PHONES_PROJECTION:[Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v19 .. v24}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v61

    .line 2478
    .local v61, phonesCursor:Landroid/database/Cursor;
    if-eqz v61, :cond_317

    .line 2479
    :cond_2a4
    :goto_2a4
    invoke-interface/range {v61 .. v61}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_314

    .line 2480
    const/4 v5, 0x2

    move-object/from16 v0, v61

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 2481
    .restart local v13       #type:I
    const/4 v5, 0x3

    move-object/from16 v0, v61

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2484
    .restart local v12       #label:Ljava/lang/String;
    const/4 v5, 0x1

    move-object/from16 v0, v61

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 2487
    .local v24, number:Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, v61

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 2488
    .restart local v17       #id:J
    const/4 v5, 0x4

    move-object/from16 v0, v61

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    const-wide/16 v25, 0x0

    cmp-long v5, v21, v25

    if-eqz v5, :cond_310

    const/4 v5, 0x1

    move/from16 v55, v5

    .line 2489
    .local v55, isPrimary:Z
    :goto_2df
    move-object/from16 v0, v20

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .restart local v16       #uri:Landroid/net/Uri;
    move-object/from16 v21, p0

    move-object/from16 v22, v12

    move/from16 v23, v13

    move-object/from16 v25, v16

    move-wide/from16 v26, v17

    .line 2492
    invoke-static/range {v21 .. v27}, Lcom/android/contacts/EditContactActivity$EditEntry;->newPhoneEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v53

    .line 2493
    .restart local v53       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    move/from16 v0, v55

    move-object/from16 v1, v53

    iput-boolean v0, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->isPrimary:Z

    .line 2494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2497
    const/4 v5, 0x2

    if-ne v13, v5, :cond_2a4

    .line 2498
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/EditContactActivity;->mMobilePhoneAdded:Z

    goto :goto_2a4

    .line 2488
    .end local v16           #uri:Landroid/net/Uri;
    .end local v53           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    .end local v55           #isPrimary:Z
    :cond_310
    const/4 v5, 0x0

    move/from16 v55, v5

    goto :goto_2df

    .line 2502
    .end local v12           #label:Ljava/lang/String;
    .end local v13           #type:I
    .end local v17           #id:J
    .end local v24           #number:Ljava/lang/String;
    :cond_314
    invoke-interface/range {v61 .. v61}, Landroid/database/Cursor;->close()V

    .line 2506
    :cond_317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    move-object v5, v0

    const-string v6, "contact_methods"

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    .line 2507
    .local v26, methodsUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v25, v0

    sget-object v27, Lcom/android/contacts/ContactEntryAdapter;->METHODS_PROJECTION:[Ljava/lang/String;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {v25 .. v30}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v58

    .line 2509
    .local v58, methodsCursor:Landroid/database/Cursor;
    if-eqz v58, :cond_460

    .line 2510
    :cond_336
    :goto_336
    invoke-interface/range {v58 .. v58}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_45d

    .line 2511
    const/4 v5, 0x1

    move-object/from16 v0, v58

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v56

    .line 2512
    .local v56, kind:I
    const/4 v5, 0x4

    move-object/from16 v0, v58

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2513
    .restart local v12       #label:Ljava/lang/String;
    const/4 v5, 0x2

    move-object/from16 v0, v58

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 2514
    .local v30, data:Ljava/lang/String;
    const/4 v5, 0x6

    move-object/from16 v0, v58

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v51

    .line 2515
    .local v51, auxData:Ljava/lang/String;
    const/4 v5, 0x3

    move-object/from16 v0, v58

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 2516
    .restart local v13       #type:I
    const/4 v5, 0x0

    move-object/from16 v0, v58

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 2517
    .restart local v17       #id:J
    const/4 v5, 0x5

    move-object/from16 v0, v58

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmp-long v5, v21, v23

    if-eqz v5, :cond_3b1

    const/4 v5, 0x1

    move/from16 v55, v5

    .line 2518
    .restart local v55       #isPrimary:Z
    :goto_37d
    move-object/from16 v0, v26

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 2520
    .restart local v16       #uri:Landroid/net/Uri;
    packed-switch v56, :pswitch_data_696

    :pswitch_388
    goto :goto_336

    :pswitch_389
    move-object/from16 v27, p0

    move-object/from16 v28, v12

    move/from16 v29, v13

    move-object/from16 v31, v16

    move-wide/from16 v32, v17

    .line 2522
    invoke-static/range {v27 .. v33}, Lcom/android/contacts/EditContactActivity$EditEntry;->newEmailEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v53

    .line 2523
    .restart local v53       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    move/from16 v0, v55

    move-object/from16 v1, v53

    iput-boolean v0, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->isPrimary:Z

    .line 2524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mEmailEntries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2526
    if-eqz v55, :cond_336

    .line 2527
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/EditContactActivity;->mPrimaryEmailAdded:Z

    goto :goto_336

    .line 2517
    .end local v16           #uri:Landroid/net/Uri;
    .end local v53           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    .end local v55           #isPrimary:Z
    :cond_3b1
    const/4 v5, 0x0

    move/from16 v55, v5

    goto :goto_37d

    .restart local v16       #uri:Landroid/net/Uri;
    .restart local v55       #isPrimary:Z
    :pswitch_3b5
    move-object/from16 v27, p0

    move-object/from16 v28, v12

    move/from16 v29, v13

    move-object/from16 v31, v16

    move-wide/from16 v32, v17

    .line 2533
    invoke-static/range {v27 .. v33}, Lcom/android/contacts/EditContactActivity$EditEntry;->newPostalEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v53

    .line 2534
    .restart local v53       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    move/from16 v0, v55

    move-object/from16 v1, v53

    iput-boolean v0, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->isPrimary:Z

    .line 2535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mPostalEntries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_336

    .line 2540
    .end local v53           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :pswitch_3d6
    invoke-static/range {v51 .. v51}, Landroid/provider/Contacts$ContactMethods;->decodeImProtocol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v63

    .line 2541
    .local v63, protocolObj:Ljava/lang/Object;
    if-nez v63, :cond_3f9

    .line 2543
    const-string v5, "EditContactActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t decode IM protocol: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_336

    .line 2546
    :cond_3f9
    move-object/from16 v0, v63

    instance-of v0, v0, Ljava/lang/Number;

    move v5, v0

    if-eqz v5, :cond_427

    .line 2547
    check-cast v63, Ljava/lang/Number;

    .end local v63           #protocolObj:Ljava/lang/Object;
    invoke-virtual/range {v63 .. v63}, Ljava/lang/Number;->intValue()I

    move-result v29

    .line 2548
    .local v29, protocol:I
    const/4 v5, 0x3

    move-object/from16 v0, p0

    move v1, v5

    invoke-static {v0, v1}, Lcom/android/contacts/EditContactActivity;->getLabelsForKind(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v5

    aget-object v28, v5, v29

    move-object/from16 v27, p0

    move-object/from16 v31, v16

    move-wide/from16 v32, v17

    invoke-static/range {v27 .. v33}, Lcom/android/contacts/EditContactActivity$EditEntry;->newImEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v53

    .line 2555
    .end local v29           #protocol:I
    .restart local v53       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :goto_41a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mImEntries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_336

    .line 2552
    .end local v53           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    .restart local v63       #protocolObj:Ljava/lang/Object;
    :cond_427
    invoke-virtual/range {v63 .. v63}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, -0x1

    move-object/from16 v31, p0

    move-object/from16 v34, v30

    move-object/from16 v35, v16

    move-wide/from16 v36, v17

    invoke-static/range {v31 .. v37}, Lcom/android/contacts/EditContactActivity$EditEntry;->newImEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v53

    .restart local v53       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    goto :goto_41a

    .end local v53           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    .end local v63           #protocolObj:Ljava/lang/Object;
    :pswitch_43a
    move-object/from16 v31, p0

    move-object/from16 v32, v12

    move/from16 v33, v13

    move-object/from16 v34, v30

    move-object/from16 v35, v16

    move-wide/from16 v36, v17

    .line 2561
    invoke-static/range {v31 .. v37}, Lcom/android/contacts/EditContactActivity$EditEntry;->newWebsiteEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v53

    .line 2562
    .restart local v53       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    move/from16 v0, v55

    move-object/from16 v1, v53

    iput-boolean v0, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->isPrimary:Z

    .line 2563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mWebsiteEntries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_336

    .line 2569
    .end local v12           #label:Ljava/lang/String;
    .end local v13           #type:I
    .end local v16           #uri:Landroid/net/Uri;
    .end local v17           #id:J
    .end local v30           #data:Ljava/lang/String;
    .end local v51           #auxData:Ljava/lang/String;
    .end local v53           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    .end local v55           #isPrimary:Z
    .end local v56           #kind:I
    :cond_45d
    invoke-interface/range {v58 .. v58}, Landroid/database/Cursor;->close()V

    .line 2573
    :cond_460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    move-object v5, v0

    const-string v6, "stuffs"

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v32

    .line 2574
    .local v32, stuffsUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v31, v0

    sget-object v33, Lcom/android/contacts/ContactEntryAdapter;->STUFFS_PROJECTION:[Ljava/lang/String;

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-virtual/range {v31 .. v36}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v66

    .line 2576
    .local v66, stuffsCursor:Landroid/database/Cursor;
    if-eqz v66, :cond_50c

    .line 2577
    :goto_47f
    invoke-interface/range {v66 .. v66}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_509

    .line 2578
    const/4 v5, 0x1

    move-object/from16 v0, v66

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v56

    .line 2579
    .restart local v56       #kind:I
    const/4 v5, 0x2

    move-object/from16 v0, v66

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 2580
    .restart local v30       #data:Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, v66

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 2581
    .restart local v17       #id:J
    const/4 v5, 0x4

    move-object/from16 v0, v66

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmp-long v5, v21, v23

    if-eqz v5, :cond_4d8

    const/4 v5, 0x1

    move/from16 v55, v5

    .line 2582
    .restart local v55       #isPrimary:Z
    :goto_4ae
    move-object/from16 v0, v32

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 2584
    .restart local v16       #uri:Landroid/net/Uri;
    packed-switch v56, :pswitch_data_6a6

    goto :goto_47f

    .line 2586
    :pswitch_4ba
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v16

    move-wide/from16 v3, v17

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/contacts/EditContactActivity$EditEntry;->newNotesEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v53

    .line 2587
    .restart local v53       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    move/from16 v0, v55

    move-object/from16 v1, v53

    iput-boolean v0, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->isPrimary:Z

    .line 2588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mNoteEntries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47f

    .line 2581
    .end local v16           #uri:Landroid/net/Uri;
    .end local v53           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    .end local v55           #isPrimary:Z
    :cond_4d8
    const/4 v5, 0x0

    move/from16 v55, v5

    goto :goto_4ae

    .line 2593
    .restart local v16       #uri:Landroid/net/Uri;
    .restart local v55       #isPrimary:Z
    :pswitch_4dc
    const/4 v5, 0x3

    move-object/from16 v0, v66

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v67

    .line 2594
    .local v67, time:Ljava/lang/Long;
    invoke-virtual/range {v67 .. v67}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    move-object/from16 v33, p0

    move-object/from16 v36, v16

    move-wide/from16 v37, v17

    invoke-static/range {v33 .. v38}, Lcom/android/contacts/EditContactActivity$EditEntry;->newBirthdayEntry(Lcom/android/contacts/EditContactActivity;JLandroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v53

    .line 2595
    .restart local v53       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    move/from16 v0, v55

    move-object/from16 v1, v53

    iput-boolean v0, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->isPrimary:Z

    .line 2596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mBirthdayEntries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_47f

    .line 2602
    .end local v16           #uri:Landroid/net/Uri;
    .end local v17           #id:J
    .end local v30           #data:Ljava/lang/String;
    .end local v53           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    .end local v55           #isPrimary:Z
    .end local v56           #kind:I
    .end local v67           #time:Ljava/lang/Long;
    :cond_509
    invoke-interface/range {v66 .. v66}, Landroid/database/Cursor;->close()V

    .line 2607
    :cond_50c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/EditContactActivity;->MANAGE_SOCIAL_NETWORK:Z

    move v5, v0

    if-eqz v5, :cond_5ab

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/EditContactActivity;->mIsMyProfile:Z

    move v5, v0

    if-nez v5, :cond_5ab

    .line 2608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    move-object v5, v0

    const-string v6, "sns_ids"

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v34

    .line 2609
    .local v34, snsIdsUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v33, v0

    sget-object v35, Lcom/android/contacts/ContactEntryAdapter;->SNSIDS_PROJECTION:[Ljava/lang/String;

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-virtual/range {v33 .. v38}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v64

    .line 2612
    .local v64, snsIdsCursor:Landroid/database/Cursor;
    if-eqz v64, :cond_5ab

    .line 2613
    :goto_539
    invoke-interface/range {v64 .. v64}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5a8

    .line 2614
    const/4 v5, 0x1

    move-object/from16 v0, v64

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2615
    .restart local v12       #label:Ljava/lang/String;
    const/4 v5, 0x2

    move-object/from16 v0, v64

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 2616
    .local v38, snsId:Ljava/lang/String;
    const/4 v5, 0x3

    move-object/from16 v0, v64

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 2617
    .local v39, snsUid:Ljava/lang/String;
    const/4 v5, 0x4

    move-object/from16 v0, v64

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 2618
    .local v40, siteId:Ljava/lang/String;
    const/4 v5, 0x5

    move-object/from16 v0, v64

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 2619
    .local v41, userId:Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, v64

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 2620
    .restart local v17       #id:J
    sget-object v5, Landroid/provider/Contacts$SnsIds;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 2623
    .restart local v16       #uri:Landroid/net/Uri;
    const/16 v37, 0x0

    move-object/from16 v35, p0

    move-object/from16 v36, v12

    move-object/from16 v42, v16

    move-wide/from16 v43, v17

    invoke-static/range {v35 .. v44}, Lcom/android/contacts/EditContactActivity$EditEntry;->newSnsIdEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v53

    .line 2624
    .restart local v53       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    const/4 v5, 0x6

    move-object/from16 v0, v64

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmp-long v5, v21, v23

    if-eqz v5, :cond_5a6

    const/4 v5, 0x1

    :goto_595
    move v0, v5

    move-object/from16 v1, v53

    iput-boolean v0, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->isPrimary:Z

    .line 2625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mSnsIdEntries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_539

    .line 2624
    :cond_5a6
    const/4 v5, 0x0

    goto :goto_595

    .line 2627
    .end local v12           #label:Ljava/lang/String;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v17           #id:J
    .end local v38           #snsId:Ljava/lang/String;
    .end local v39           #snsUid:Ljava/lang/String;
    .end local v40           #siteId:Ljava/lang/String;
    .end local v41           #userId:Ljava/lang/String;
    .end local v53           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :cond_5a8
    invoke-interface/range {v64 .. v64}, Landroid/database/Cursor;->close()V

    .line 2633
    .end local v34           #snsIdsUri:Landroid/net/Uri;
    .end local v64           #snsIdsCursor:Landroid/database/Cursor;
    :cond_5ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    move-object v5, v0

    const-string v6, "groupmembership"

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v43

    .line 2634
    .local v43, membershipUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v42, v0

    sget-object v44, Lcom/android/contacts/ContactEntryAdapter;->GROUPMEMBERSHIP_PROJECTION:[Ljava/lang/String;

    const-string v45, "system_id IS NULL"

    const/16 v46, 0x0

    const/16 v47, 0x0

    invoke-virtual/range {v42 .. v47}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v57

    .line 2638
    .local v57, memberC:Landroid/database/Cursor;
    if-eqz v57, :cond_62b

    .line 2639
    :cond_5ca
    :goto_5ca
    invoke-interface/range {v57 .. v57}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_628

    .line 2640
    const/4 v5, 0x0

    move-object/from16 v0, v57

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 2641
    .restart local v17       #id:J
    sget-object v5, Landroid/provider/Contacts$GroupMembership;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 2642
    .restart local v16       #uri:Landroid/net/Uri;
    const/4 v5, 0x1

    move-object/from16 v0, v57

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v46

    .line 2643
    .local v46, groupId:J
    const/4 v5, 0x4

    move-object/from16 v0, v57

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 2645
    .local v45, groupName:Ljava/lang/String;
    const-string v5, "Starred in Android"

    move-object v0, v5

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5ca

    move-object/from16 v44, p0

    move-object/from16 v48, v16

    move-wide/from16 v49, v17

    .line 2646
    invoke-static/range {v44 .. v50}, Lcom/android/contacts/EditContactActivity$EditEntry;->newGroupEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;JLandroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v53

    .line 2647
    .restart local v53       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    const/4 v5, 0x3

    move-object/from16 v0, v57

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmp-long v5, v21, v23

    if-eqz v5, :cond_626

    const/4 v5, 0x1

    :goto_615
    move v0, v5

    move-object/from16 v1, v53

    iput-boolean v0, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->isPrimary:Z

    .line 2648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mGroupEntries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5ca

    .line 2647
    :cond_626
    const/4 v5, 0x0

    goto :goto_615

    .line 2651
    .end local v16           #uri:Landroid/net/Uri;
    .end local v17           #id:J
    .end local v45           #groupName:Ljava/lang/String;
    .end local v46           #groupId:J
    .end local v53           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :cond_628
    invoke-interface/range {v57 .. v57}, Landroid/database/Cursor;->close()V

    .line 2655
    :cond_62b
    if-eqz p1, :cond_63c

    .line 2656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/EditContactActivity;->addFromExtras(Landroid/os/Bundle;Landroid/net/Uri;Z)V

    .line 2660
    :cond_63c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/EditContactActivity;->mMobilePhoneAdded:Z

    move v5, v0

    if-nez v5, :cond_662

    .line 2661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    move-object v5, v0

    const-string v6, "phones"

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/contacts/EditContactActivity$EditEntry;->newPhoneEntry(Lcom/android/contacts/EditContactActivity;Landroid/net/Uri;I)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v53

    .line 2664
    .restart local v53       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2667
    .end local v53           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :cond_662
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/EditContactActivity;->mPrimaryEmailAdded:Z

    move v5, v0

    if-nez v5, :cond_68e

    .line 2668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    move-object v5, v0

    const-string v6, "contact_methods"

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/contacts/EditContactActivity$EditEntry;->newEmailEntry(Lcom/android/contacts/EditContactActivity;Landroid/net/Uri;I)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v53

    .line 2671
    .restart local v53       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v53

    iput-boolean v0, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->isPrimary:Z

    .line 2672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mEmailEntries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2675
    .end local v53           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :cond_68e
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/EditContactActivity;->mContactChanged:Z

    goto/16 :goto_22

    .line 2520
    :pswitch_data_696
    .packed-switch 0x1
        :pswitch_389
        :pswitch_3b5
        :pswitch_3d6
        :pswitch_388
        :pswitch_388
        :pswitch_43a
    .end packed-switch

    .line 2584
    :pswitch_data_6a6
    .packed-switch 0x7
        :pswitch_4ba
        :pswitch_4dc
    .end packed-switch
.end method

.method private buildEntriesForInsert(Landroid/os/Bundle;)V
    .registers 9
    .parameter "extras"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2681
    iget-object v4, p0, Lcom/android/contacts/EditContactActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2682
    .local v2, numSections:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v2, :cond_19

    .line 2683
    iget-object v4, p0, Lcom/android/contacts/EditContactActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2682
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2689
    :cond_19
    if-eqz p1, :cond_1e

    .line 2690
    invoke-direct {p0, p1, v5, v6}, Lcom/android/contacts/EditContactActivity;->addFromExtras(Landroid/os/Bundle;Landroid/net/Uri;Z)V

    .line 2694
    :cond_1e
    iput-object v5, p0, Lcom/android/contacts/EditContactActivity;->mPhoto:Landroid/graphics/Bitmap;

    .line 2695
    iput-object v5, p0, Lcom/android/contacts/EditContactActivity;->mDrmFilename:Ljava/lang/String;

    .line 2696
    iput-object v5, p0, Lcom/android/contacts/EditContactActivity;->mDrmPhoto:Landroid/graphics/Bitmap;

    .line 2697
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/contacts/EditContactActivity;->setPhotoPresent(Z)V

    .line 2700
    iget-boolean v4, p0, Lcom/android/contacts/EditContactActivity;->mMobilePhoneAdded:Z

    if-nez v4, :cond_4c

    .line 2701
    const/4 v4, 0x2

    invoke-static {p0, v5, v4}, Lcom/android/contacts/EditContactActivity$EditEntry;->newPhoneEntry(Lcom/android/contacts/EditContactActivity;Landroid/net/Uri;I)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v0

    .line 2702
    .local v0, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    iget-boolean v4, p0, Lcom/android/contacts/EditContactActivity;->mIsMyProfile:Z

    if-eqz v4, :cond_45

    .line 2703
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/contacts/EditContactActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 2704
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_45

    .line 2705
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->data:Ljava/lang/String;

    .line 2708
    .end local v3           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_45
    iput-boolean v6, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->isPrimary:Z

    .line 2709
    iget-object v4, p0, Lcom/android/contacts/EditContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2712
    .end local v0           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :cond_4c
    iget-boolean v4, p0, Lcom/android/contacts/EditContactActivity;->mPrimaryEmailAdded:Z

    if-nez v4, :cond_5b

    .line 2713
    invoke-static {p0, v5, v6}, Lcom/android/contacts/EditContactActivity$EditEntry;->newEmailEntry(Lcom/android/contacts/EditContactActivity;Landroid/net/Uri;I)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v0

    .line 2714
    .restart local v0       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    iput-boolean v6, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->isPrimary:Z

    .line 2715
    iget-object v4, p0, Lcom/android/contacts/EditContactActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2719
    .end local v0           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :cond_5b
    iget-boolean v4, p0, Lcom/android/contacts/EditContactActivity;->mIsMyProfile:Z

    if-nez v4, :cond_6a

    .line 2720
    iget-object v4, p0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v5, v4}, Lcom/android/contacts/EditContactActivity$EditEntry;->newRingtoneEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;Landroid/net/Uri;)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v0

    .line 2721
    .restart local v0       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    iget-object v4, p0, Lcom/android/contacts/EditContactActivity;->mOtherEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2726
    .end local v0           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :cond_6a
    iget-boolean v4, p0, Lcom/android/contacts/EditContactActivity;->mIsMyProfile:Z

    if-nez v4, :cond_7b

    .line 2727
    const-string v4, "0"

    iget-object v5, p0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v4, v5}, Lcom/android/contacts/EditContactActivity$EditEntry;->newSendToVoicemailEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;Landroid/net/Uri;)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v0

    .line 2728
    .restart local v0       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    iget-object v4, p0, Lcom/android/contacts/EditContactActivity;->mOtherEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2731
    .end local v0           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :cond_7b
    return-void
.end method

.method private buildOtherViews(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V
    .registers 10
    .parameter "layout"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/EditContactActivity$EditEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/EditContactActivity$EditEntry;>;"
    const v6, 0x7f030018

    const/4 v5, 0x0

    .line 3027
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/EditContactActivity$EditEntry;

    .line 3028
    .local v1, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    iget-object v4, p0, Lcom/android/contacts/EditContactActivity;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v6, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 3029
    .local v0, divider:Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3031
    iput-object p0, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->activity:Lcom/android/contacts/EditContactActivity;

    .line 3032
    invoke-virtual {p0, v1}, Lcom/android/contacts/EditContactActivity;->buildViewForEntry(Lcom/android/contacts/EditContactActivity$EditEntry;)Landroid/view/View;

    move-result-object v3

    .line 3033
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3034
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_8

    .line 3037
    .end local v0           #divider:Landroid/view/View;
    .end local v1           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    .end local v3           #view:Landroid/view/View;
    :cond_2a
    iget-object v4, p0, Lcom/android/contacts/EditContactActivity;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v6, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 3038
    .restart local v0       #divider:Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3039
    return-void
.end method

.method private buildViews()V
    .registers 5

    .prologue
    .line 2931
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mLayout:Landroid/widget/LinearLayout;

    .line 2932
    .local v0, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2934
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    const v2, 0x7f060053

    const/4 v3, 0x3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/contacts/EditContactActivity;->buildViewsForSection(Landroid/widget/LinearLayout;Ljava/util/ArrayList;II)V

    .line 2936
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity;->mEmailEntries:Ljava/util/ArrayList;

    const v2, 0x7f060056

    const/4 v3, 0x4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/contacts/EditContactActivity;->buildViewsForSection(Landroid/widget/LinearLayout;Ljava/util/ArrayList;II)V

    .line 2938
    iget-boolean v1, p0, Lcom/android/contacts/EditContactActivity;->MANAGE_SOCIAL_NETWORK:Z

    if-eqz v1, :cond_29

    iget-boolean v1, p0, Lcom/android/contacts/EditContactActivity;->mIsMyProfile:Z

    if-nez v1, :cond_29

    .line 2939
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity;->mSnsIdEntries:Ljava/util/ArrayList;

    const v2, 0x7f060102

    const/16 v3, 0xc

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/contacts/EditContactActivity;->buildViewsForSection(Landroid/widget/LinearLayout;Ljava/util/ArrayList;II)V

    .line 2942
    :cond_29
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity;->mImEntries:Ljava/util/ArrayList;

    const v2, 0x7f060058

    const/4 v3, 0x5

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/contacts/EditContactActivity;->buildViewsForSection(Landroid/widget/LinearLayout;Ljava/util/ArrayList;II)V

    .line 2944
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity;->mWebsiteEntries:Ljava/util/ArrayList;

    const v2, 0x7f0600d6

    const/4 v3, 0x6

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/contacts/EditContactActivity;->buildViewsForSection(Landroid/widget/LinearLayout;Ljava/util/ArrayList;II)V

    .line 2946
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity;->mPostalEntries:Ljava/util/ArrayList;

    const v2, 0x7f06005a

    const/4 v3, 0x7

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/contacts/EditContactActivity;->buildViewsForSection(Landroid/widget/LinearLayout;Ljava/util/ArrayList;II)V

    .line 2948
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity;->mOrgEntries:Ljava/util/ArrayList;

    const v2, 0x7f06005b

    const/16 v3, 0x8

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/contacts/EditContactActivity;->buildViewsForSection(Landroid/widget/LinearLayout;Ljava/util/ArrayList;II)V

    .line 2951
    iget-boolean v1, p0, Lcom/android/contacts/EditContactActivity;->mIsMyProfile:Z

    if-nez v1, :cond_5c

    .line 2952
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity;->mGroupEntries:Ljava/util/ArrayList;

    const v2, 0x7f0600cf

    const/16 v3, 0xa

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/contacts/EditContactActivity;->buildViewsForSection(Landroid/widget/LinearLayout;Ljava/util/ArrayList;II)V

    .line 2955
    :cond_5c
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity;->mBirthdayEntries:Ljava/util/ArrayList;

    const v2, 0x7f0600d8

    const/16 v3, 0xb

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/contacts/EditContactActivity;->buildViewsForSection(Landroid/widget/LinearLayout;Ljava/util/ArrayList;II)V

    .line 2957
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity;->mNoteEntries:Ljava/util/ArrayList;

    const v2, 0x7f0600d9

    const/16 v3, 0x9

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/contacts/EditContactActivity;->buildViewsForSection(Landroid/widget/LinearLayout;Ljava/util/ArrayList;II)V

    .line 2959
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity;->mOtherEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/EditContactActivity;->buildOtherViews(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V

    .line 2960
    return-void
.end method

.method private buildViewsForSection(Landroid/widget/LinearLayout;Ljava/util/ArrayList;II)V
    .registers 22
    .parameter "layout"
    .parameter
    .parameter "separatorResource"
    .parameter "sectionType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/EditContactActivity$EditEntry;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2971
    .local p2, section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/EditContactActivity$EditEntry;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mInflater:Landroid/view/LayoutInflater;

    move-object v14, v0

    const v15, 0x7f030018

    const/16 v16, 0x0

    move-object v0, v14

    move v1, v15

    move-object/from16 v2, p1

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 2972
    .local v6, divider:Landroid/view/View;
    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2975
    const/4 v4, 0x0

    .line 2976
    .local v4, activeChildren:I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x1

    sub-int v9, v14, v15

    .local v9, i:I
    :goto_22
    if-ltz v9, :cond_36

    .line 2977
    move-object/from16 v0, p2

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/EditContactActivity$EditEntry;

    .line 2978
    .local v7, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    iget-boolean v14, v7, Lcom/android/contacts/EditContactActivity$EditEntry;->isDeleted:Z

    if-nez v14, :cond_33

    .line 2979
    add-int/lit8 v4, v4, 0x1

    .line 2976
    :cond_33
    add-int/lit8 v9, v9, -0x1

    goto :goto_22

    .line 2986
    .end local v7           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :cond_36
    if-nez v4, :cond_af

    .line 2987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mInflater:Landroid/view/LayoutInflater;

    move-object v14, v0

    const v15, 0x7f03001d

    const/16 v16, 0x0

    move-object v0, v14

    move v1, v15

    move-object/from16 v2, p1

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 2994
    .local v8, header:Landroid/view/ViewGroup;
    :goto_4e
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2996
    const v14, 0x7f05001d

    invoke-virtual {v8, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2997
    .local v12, text:Landroid/widget/TextView;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/contacts/EditContactActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3001
    if-lez v4, :cond_75

    .line 3002
    invoke-virtual {v12}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 3003
    .local v11, stateList:Landroid/content/res/ColorStateList;
    invoke-virtual {v11}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3006
    .end local v11           #stateList:Landroid/content/res/ColorStateList;
    :cond_75
    const v14, 0x7f05003b

    invoke-virtual {v8, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 3007
    .local v5, addView:Landroid/view/View;
    if-eqz v5, :cond_8b

    .line 3008
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3009
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3013
    :cond_8b
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_8f
    :goto_8f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/EditContactActivity$EditEntry;

    .line 3014
    .restart local v7       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    move-object/from16 v0, p0

    move-object v1, v7

    iput-object v0, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->activity:Lcom/android/contacts/EditContactActivity;

    .line 3015
    iget-boolean v14, v7, Lcom/android/contacts/EditContactActivity$EditEntry;->isDeleted:Z

    if-nez v14, :cond_8f

    .line 3016
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/contacts/EditContactActivity;->buildViewForEntry(Lcom/android/contacts/EditContactActivity$EditEntry;)Landroid/view/View;

    move-result-object v13

    .line 3017
    .local v13, view:Landroid/view/View;
    invoke-virtual {v8, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_8f

    .line 2989
    .end local v5           #addView:Landroid/view/View;
    .end local v7           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    .end local v8           #header:Landroid/view/ViewGroup;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #text:Landroid/widget/TextView;
    .end local v13           #view:Landroid/view/View;
    :cond_af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mInflater:Landroid/view/LayoutInflater;

    move-object v14, v0

    const v15, 0x7f03001c

    const/16 v16, 0x0

    move-object v0, v14

    move v1, v15

    move-object/from16 v2, p1

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .restart local v8       #header:Landroid/view/ViewGroup;
    goto :goto_4e

    .line 3021
    .restart local v5       #addView:Landroid/view/View;
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v12       #text:Landroid/widget/TextView;
    :cond_c6
    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3022
    return-void
.end method

.method private create()V
    .registers 28

    .prologue
    .line 2133
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 2135
    .local v26, values:Landroid/content/ContentValues;
    const/16 v21, 0x0

    .line 2138
    .local v21, numValues:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/EditContactActivity;->reorderNoteEntries()V

    .line 2142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mNameView:Landroid/widget/EditText;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 2143
    .local v18, name:Ljava/lang/String;
    const-string v5, "name"

    move-object/from16 v0, v26

    move-object v1, v5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    if-eqz v18, :cond_2b

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 2145
    add-int/lit8 v21, v21, 0x1

    .line 2147
    :cond_2b
    const-string v5, "phonetic_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mPhoneticNameView:Landroid/widget/EditText;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    if-nez v21, :cond_51

    .line 2151
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/EditContactActivity;->countDataWillBeInserted()I

    move-result v20

    .line 2152
    .local v20, numValidData:I
    if-nez v20, :cond_51

    .line 2153
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/EditContactActivity;->setResult(I)V

    .line 2282
    .end local v20           #numValidData:I
    :goto_50
    return-void

    .line 2161
    :cond_51
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/EditContactActivity;->mIsMyProfile:Z

    move v5, v0

    if-nez v5, :cond_6e

    .line 2162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/provider/Contacts$People;->createPersonInMyContactsGroup(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 2169
    .local v13, contactUri:Landroid/net/Uri;
    :goto_64
    if-nez v13, :cond_94

    .line 2170
    const-string v5, "EditContactActivity"

    const-string v6, "Failed to create the contact"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    .line 2165
    .end local v13           #contactUri:Landroid/net/Uri;
    :cond_6e
    const-string v5, "_sync_account"

    const-string v6, "non_syncable"

    move-object/from16 v0, v26

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2166
    const-string v5, "system_id"

    const-string v6, "My profile"

    move-object/from16 v0, v26

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    sget-object v6, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .restart local v13       #contactUri:Landroid/net/Uri;
    goto :goto_64

    .line 2175
    :cond_94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mPhoto:Landroid/graphics/Bitmap;

    move-object v5, v0

    if-eqz v5, :cond_e4

    .line 2176
    new-instance v23, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v23 .. v23}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2177
    .local v23, stream:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mPhoto:Landroid/graphics/Bitmap;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x4b

    move-object v0, v5

    move-object v1, v6

    move v2, v7

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2178
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/EditContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v5, v13, v6}, Landroid/provider/Contacts$People;->setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B)V

    .line 2190
    .end local v23           #stream:Ljava/io/ByteArrayOutputStream;
    :cond_bc
    :goto_bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mSections:Ljava/util/ArrayList;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/contacts/ContactEntryAdapter;->countEntries(Ljava/util/ArrayList;Z)I

    move-result v16

    .line 2193
    .local v16, entryCount:I
    const/4 v11, 0x0

    .line 2194
    .local v11, addedGroup:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_c9
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_1a8

    .line 2195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mSections:Ljava/util/ArrayList;

    move-object v5, v0

    const/4 v6, 0x0

    move-object v0, v5

    move/from16 v1, v17

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/contacts/ContactEntryAdapter;->getEntry(Ljava/util/ArrayList;IZ)Lcom/android/contacts/ContactEntryAdapter$Entry;

    move-result-object v15

    check-cast v15, Lcom/android/contacts/EditContactActivity$EditEntry;

    .line 2196
    .local v15, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    if-nez v15, :cond_119

    .line 2194
    :cond_e1
    :goto_e1
    add-int/lit8 v17, v17, 0x1

    goto :goto_c9

    .line 2181
    .end local v11           #addedGroup:I
    .end local v15           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    .end local v16           #entryCount:I
    .end local v17           #i:I
    :cond_e4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/EditContactActivity;->MANAGE_DRM_PHOTO:Z

    move v5, v0

    if-eqz v5, :cond_bc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mDrmFilename:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_bc

    .line 2182
    new-instance v23, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v23 .. v23}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2183
    .restart local v23       #stream:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mDrmPhoto:Landroid/graphics/Bitmap;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x4b

    move-object v0, v5

    move-object v1, v6

    move v2, v7

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2184
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/EditContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mDrmFilename:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-static {v5, v13, v6, v7}, Landroid/provider/Contacts$People;->setDrmPhotoDataWithFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[B)V

    goto :goto_bc

    .line 2200
    .end local v23           #stream:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #addedGroup:I
    .restart local v15       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    .restart local v16       #entryCount:I
    .restart local v17       #i:I
    :cond_119
    iget v5, v15, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    const/4 v6, -0x4

    if-ne v5, v6, :cond_136

    .line 2201
    iget-object v5, v15, Lcom/android/contacts/EditContactActivity$EditEntry;->data:Ljava/lang/String;

    if-eqz v5, :cond_e1

    .line 2202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    invoke-static {v13}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    iget-wide v8, v15, Lcom/android/contacts/EditContactActivity$EditEntry;->groupId:J

    invoke-static {v5, v6, v7, v8, v9}, Landroid/provider/Contacts$People;->addToGroup(Landroid/content/ContentResolver;JJ)Landroid/net/Uri;

    move-result-object v19

    .line 2204
    .local v19, newMembershipUri:Landroid/net/Uri;
    if-eqz v19, :cond_e1

    .line 2205
    add-int/lit8 v11, v11, 0x1

    goto :goto_e1

    .line 2208
    .end local v19           #newMembershipUri:Landroid/net/Uri;
    :cond_136
    iget v5, v15, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_168

    .line 2209
    invoke-virtual/range {v26 .. v26}, Landroid/content/ContentValues;->clear()V

    .line 2210
    move-object v0, v15

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/contacts/EditContactActivity$EditEntry;->toValues(Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_e1

    .line 2211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    iget-object v6, v15, Lcom/android/contacts/EditContactActivity$EditEntry;->contentDirectory:Ljava/lang/String;

    invoke-static {v13, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v15, Lcom/android/contacts/EditContactActivity$EditEntry;->uri:Landroid/net/Uri;

    .line 2213
    iget-object v5, v15, Lcom/android/contacts/EditContactActivity$EditEntry;->uri:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    iput-wide v5, v15, Lcom/android/contacts/EditContactActivity$EditEntry;->id:J

    .line 2214
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_e1

    .line 2218
    :cond_168
    invoke-virtual {v15}, Lcom/android/contacts/EditContactActivity$EditEntry;->getData()Ljava/lang/String;

    move-result-object v14

    .line 2219
    .local v14, data:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Landroid/content/ContentValues;->clear()V

    .line 2220
    if-eqz v14, :cond_e1

    invoke-static {v14}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e1

    .line 2221
    iget-object v5, v15, Lcom/android/contacts/EditContactActivity$EditEntry;->column:Ljava/lang/String;

    move-object/from16 v0, v26

    move-object v1, v5

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object v1, v13

    move-object/from16 v2, v26

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2223
    const-string v5, "custom_ringtone"

    iget-object v6, v15, Lcom/android/contacts/EditContactActivity$EditEntry;->column:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e1

    const-string v5, "send_to_voicemail"

    iget-object v6, v15, Lcom/android/contacts/EditContactActivity$EditEntry;->column:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e1

    .line 2225
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_e1

    .line 2231
    .end local v14           #data:Ljava/lang/String;
    .end local v15           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :cond_1a8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/EditContactActivity;->mIsMyProfile:Z

    move v5, v0

    if-nez v5, :cond_23b

    if-nez v11, :cond_23b

    .line 2235
    const-string v5, "0"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object v6, v0

    const/4 v7, 0x0

    const-string v8, "syncEverything"

    invoke-static {v6, v7, v8}, Landroid/provider/Contacts$Settings;->getSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_250

    const/4 v5, 0x1

    move/from16 v24, v5

    .line 2237
    .local v24, syncingEverything:Z
    :goto_1c8
    if-nez v24, :cond_23b

    .line 2238
    const/16 v25, 0x0

    .line 2239
    .local v25, syncingMyContacts:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    sget-object v6, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "should_sync"

    aput-object v9, v7, v8

    const-string v8, "system_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "Contacts"

    .end local v11           #addedGroup:I
    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2241
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_205

    .line 2243
    :try_start_1ec
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_202

    .line 2244
    const-string v5, "0"

    const/4 v6, 0x0

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1fc
    .catchall {:try_start_1ec .. :try_end_1fc} :catchall_259

    move-result v5

    if-nez v5, :cond_255

    const/4 v5, 0x1

    move/from16 v25, v5

    .line 2247
    :cond_202
    :goto_202
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2251
    :cond_205
    if-nez v25, :cond_23b

    .line 2255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    sget-object v6, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v8

    const-string v8, "should_sync!=0"

    const/4 v9, 0x0

    const-string v10, "name ASC"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2257
    if-eqz v12, :cond_23b

    .line 2259
    :try_start_221
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_238

    .line 2260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    invoke-static {v13}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v5, v6, v7, v8, v9}, Landroid/provider/Contacts$People;->addToGroup(Landroid/content/ContentResolver;JJ)Landroid/net/Uri;
    :try_end_238
    .catchall {:try_start_221 .. :try_end_238} :catchall_25e

    .line 2264
    :cond_238
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2271
    .end local v12           #c:Landroid/database/Cursor;
    .end local v24           #syncingEverything:Z
    .end local v25           #syncingMyContacts:Z
    :cond_23b
    if-nez v21, :cond_263

    .line 2272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v13, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2273
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/EditContactActivity;->setResult(I)V

    goto/16 :goto_50

    .line 2235
    .restart local v11       #addedGroup:I
    :cond_250
    const/4 v5, 0x0

    move/from16 v24, v5

    goto/16 :goto_1c8

    .line 2244
    .end local v11           #addedGroup:I
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v24       #syncingEverything:Z
    .restart local v25       #syncingMyContacts:Z
    :cond_255
    const/4 v5, 0x0

    move/from16 v25, v5

    goto :goto_202

    .line 2247
    :catchall_259
    move-exception v5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v5

    .line 2264
    :catchall_25e
    move-exception v5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v5

    .line 2275
    .end local v12           #c:Landroid/database/Cursor;
    .end local v24           #syncingEverything:Z
    .end local v25           #syncingMyContacts:Z
    :cond_263
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    .line 2276
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.intent.extra.shortcut.NAME"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v22

    .line 2279
    .local v22, resultIntent:Landroid/content/Intent;
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/EditContactActivity;->setResult(ILandroid/content/Intent;)V

    .line 2280
    const v5, 0x7f060050

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_50
.end method

.method private createCustomPicker(Lcom/android/contacts/EditContactActivity$EditEntry;Ljava/util/ArrayList;)V
    .registers 7
    .parameter "entry"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/EditContactActivity$EditEntry;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/EditContactActivity$EditEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1759
    .local p2, addTo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/EditContactActivity$EditEntry;>;"
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1760
    .local v0, label:Landroid/widget/EditText;
    invoke-static {p1}, Lcom/android/contacts/EditContactActivity;->getCustomLabelForType(Lcom/android/contacts/EditContactActivity$EditEntry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1761
    const/4 v1, 0x0

    sget-object v2, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v1, v2}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1762
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1763
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1764
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06003d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/contacts/EditContactActivity$7;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/android/contacts/EditContactActivity$7;-><init>(Lcom/android/contacts/EditContactActivity;Landroid/widget/EditText;Lcom/android/contacts/EditContactActivity$EditEntry;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1784
    return-void
.end method

.method private deleteGroupEntries(Lcom/android/contacts/EditContactActivity$EditEntry;)V
    .registers 9
    .parameter "deleteEntry"

    .prologue
    const/4 v6, 0x0

    .line 1433
    iget-wide v0, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->groupId:J

    .line 1434
    .local v0, deleteGroup:J
    iget-object v4, p0, Lcom/android/contacts/EditContactActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/EditContactActivity$GroupEntry;

    .line 1435
    .local v2, group:Lcom/android/contacts/EditContactActivity$GroupEntry;
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_9

    iget-wide v4, v2, Lcom/android/contacts/EditContactActivity$GroupEntry;->groupId:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_9

    .line 1436
    iput-boolean v6, v2, Lcom/android/contacts/EditContactActivity$GroupEntry;->check:Z

    .line 1437
    iput-boolean v6, v2, Lcom/android/contacts/EditContactActivity$GroupEntry;->confirm:Z

    .line 1441
    .end local v2           #group:Lcom/android/contacts/EditContactActivity$GroupEntry;
    :cond_25
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/contacts/EditContactActivity;->mGroupSelectDialog:Landroid/app/AlertDialog;

    .line 1442
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/contacts/EditContactActivity;->removeDialog(I)V

    .line 1443
    return-void
.end method

.method private doAddAction(I)V
    .registers 8
    .parameter "sectionType"

    .prologue
    const-string v5, "contact_methods"

    .line 1151
    const/4 v1, 0x0

    .line 1152
    .local v1, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    packed-switch p1, :pswitch_data_100

    .line 1241
    :goto_6
    if-eqz v1, :cond_1d

    .line 1242
    invoke-direct {p0}, Lcom/android/contacts/EditContactActivity;->buildViews()V

    .line 1243
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/contacts/EditContactActivity;->mContactChanged:Z

    .line 1245
    iget-object v3, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    const/high16 v4, 0x7f05

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1246
    .local v0, dataView:Landroid/view/View;
    if-nez v0, :cond_fa

    .line 1247
    iget-object v3, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 1252
    .end local v0           #dataView:Landroid/view/View;
    :cond_1d
    :goto_1d
    return-void

    .line 1155
    :pswitch_1e
    iget-object v3, p0, Lcom/android/contacts/EditContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/contacts/EditContactActivity;->TYPE_PRECEDENCE_PHONES:[I

    invoke-direct {p0, v3, v4}, Lcom/android/contacts/EditContactActivity;->guessNextType(Ljava/util/ArrayList;[I)I

    move-result v2

    .line 1156
    .local v2, nextType:I
    iget-object v3, p0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    const-string v4, "phones"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3, v2}, Lcom/android/contacts/EditContactActivity$EditEntry;->newPhoneEntry(Lcom/android/contacts/EditContactActivity;Landroid/net/Uri;I)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v1

    .line 1159
    iget-object v3, p0, Lcom/android/contacts/EditContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1164
    .end local v2           #nextType:I
    :pswitch_38
    iget-object v3, p0, Lcom/android/contacts/EditContactActivity;->mEmailEntries:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/contacts/EditContactActivity;->TYPE_PRECEDENCE_METHODS:[I

    invoke-direct {p0, v3, v4}, Lcom/android/contacts/EditContactActivity;->guessNextType(Ljava/util/ArrayList;[I)I

    move-result v2

    .line 1165
    .restart local v2       #nextType:I
    iget-object v3, p0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    const-string v4, "contact_methods"

    invoke-static {v3, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3, v2}, Lcom/android/contacts/EditContactActivity$EditEntry;->newEmailEntry(Lcom/android/contacts/EditContactActivity;Landroid/net/Uri;I)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v1

    .line 1168
    iget-object v3, p0, Lcom/android/contacts/EditContactActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1174
    .end local v2           #nextType:I
    :pswitch_52
    invoke-direct {p0}, Lcom/android/contacts/EditContactActivity;->setSnsEntries()V

    .line 1175
    sget-object v3, Lcom/android/contacts/EditContactActivity;->mSNLabels:[Ljava/lang/String;

    if-eqz v3, :cond_63

    sget-object v3, Lcom/android/contacts/EditContactActivity;->mSNLabels:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_63

    .line 1176
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/android/contacts/EditContactActivity;->showDialog(I)V

    goto :goto_6

    .line 1178
    :cond_63
    const v3, 0x7f06011c

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_6

    .line 1186
    :pswitch_6f
    iget-object v3, p0, Lcom/android/contacts/EditContactActivity;->mImEntries:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/contacts/EditContactActivity;->TYPE_PRECEDENCE_IM:[I

    invoke-direct {p0, v3, v4}, Lcom/android/contacts/EditContactActivity;->guessNextType(Ljava/util/ArrayList;[I)I

    move-result v2

    .line 1187
    .restart local v2       #nextType:I
    iget-object v3, p0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    const-string v4, "contact_methods"

    invoke-static {v3, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3, v2}, Lcom/android/contacts/EditContactActivity$EditEntry;->newImEntry(Lcom/android/contacts/EditContactActivity;Landroid/net/Uri;I)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v1

    .line 1190
    iget-object v3, p0, Lcom/android/contacts/EditContactActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 1195
    .end local v2           #nextType:I
    :pswitch_8a
    iget-object v3, p0, Lcom/android/contacts/EditContactActivity;->mWebsiteEntries:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/contacts/EditContactActivity;->TYPE_PRECEDENCE_METHODS:[I

    invoke-direct {p0, v3, v4}, Lcom/android/contacts/EditContactActivity;->guessNextType(Ljava/util/ArrayList;[I)I

    move-result v2

    .line 1196
    .restart local v2       #nextType:I
    iget-object v3, p0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    const-string v4, "contact_methods"

    invoke-static {v3, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3, v2}, Lcom/android/contacts/EditContactActivity$EditEntry;->newWebsiteEntry(Lcom/android/contacts/EditContactActivity;Landroid/net/Uri;I)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v1

    .line 1199
    iget-object v3, p0, Lcom/android/contacts/EditContactActivity;->mWebsiteEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 1203
    .end local v2           #nextType:I
    :pswitch_a5
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/contacts/EditContactActivity;->showDialog(I)V

    goto/16 :goto_6

    .line 1212
    :pswitch_ab
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/android/contacts/EditContactActivity;->showDialog(I)V

    goto/16 :goto_6

    .line 1217
    :pswitch_b1
    iget-object v3, p0, Lcom/android/contacts/EditContactActivity;->mPostalEntries:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/contacts/EditContactActivity;->TYPE_PRECEDENCE_METHODS:[I

    invoke-direct {p0, v3, v4}, Lcom/android/contacts/EditContactActivity;->guessNextType(Ljava/util/ArrayList;[I)I

    move-result v2

    .line 1218
    .restart local v2       #nextType:I
    iget-object v3, p0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    const-string v4, "contact_methods"

    invoke-static {v3, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3, v2}, Lcom/android/contacts/EditContactActivity$EditEntry;->newPostalEntry(Lcom/android/contacts/EditContactActivity;Landroid/net/Uri;I)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v1

    .line 1221
    iget-object v3, p0, Lcom/android/contacts/EditContactActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 1225
    .end local v2           #nextType:I
    :pswitch_cc
    iget-object v3, p0, Lcom/android/contacts/EditContactActivity;->mOrgEntries:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/contacts/EditContactActivity;->TYPE_PRECEDENCE_ORG:[I

    invoke-direct {p0, v3, v4}, Lcom/android/contacts/EditContactActivity;->guessNextType(Ljava/util/ArrayList;[I)I

    move-result v2

    .line 1226
    .restart local v2       #nextType:I
    iget-object v3, p0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    const-string v4, "organizations"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3, v2}, Lcom/android/contacts/EditContactActivity$EditEntry;->newOrganizationEntry(Lcom/android/contacts/EditContactActivity;Landroid/net/Uri;I)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v1

    .line 1229
    iget-object v3, p0, Lcom/android/contacts/EditContactActivity;->mOrgEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 1233
    .end local v2           #nextType:I
    :pswitch_e7
    iget-object v3, p0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    const-string v4, "stuffs"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/contacts/EditContactActivity$EditEntry;->newNotesEntry(Lcom/android/contacts/EditContactActivity;Landroid/net/Uri;)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v1

    .line 1235
    iget-object v3, p0, Lcom/android/contacts/EditContactActivity;->mNoteEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 1249
    .restart local v0       #dataView:Landroid/view/View;
    :cond_fa
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_1d

    .line 1152
    nop

    :pswitch_data_100
    .packed-switch 0x3
        :pswitch_1e
        :pswitch_38
        :pswitch_6f
        :pswitch_8a
        :pswitch_b1
        :pswitch_cc
        :pswitch_e7
        :pswitch_a5
        :pswitch_ab
        :pswitch_52
    .end packed-switch
.end method

.method private doPickPhotoAction()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x60

    const/4 v4, 0x1

    .line 1449
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1451
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1452
    const-string v2, "crop"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1453
    const-string v2, "aspectX"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1454
    const-string v2, "aspectY"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1455
    const-string v2, "outputX"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1456
    const-string v2, "outputY"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1458
    :try_start_2b
    const-string v2, "return-data"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1459
    const/16 v2, 0xbcd

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/EditContactActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_36
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2b .. :try_end_36} :catch_37

    .line 1467
    :goto_36
    return-void

    .line 1460
    :catch_37
    move-exception v2

    move-object v0, v2

    .line 1461
    .local v0, e:Landroid/content/ActivityNotFoundException;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f06003a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f06003b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_36
.end method

.method private doPickRingtone(Lcom/android/contacts/EditContactActivity$EditEntry;)V
    .registers 7
    .parameter "entry"

    .prologue
    const/4 v4, 0x1

    .line 1487
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1489
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1491
    const-string v2, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1493
    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1496
    iget-object v2, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->data:Ljava/lang/String;

    if-eqz v2, :cond_32

    .line 1497
    iget-object v2, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->data:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1503
    .local v1, ringtoneUri:Landroid/net/Uri;
    :goto_22
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1505
    const-string v2, "ringtone_picker"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1507
    const/16 v2, 0xbcf

    invoke-virtual {p0, v0, v2}, Lcom/android/contacts/EditContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1508
    return-void

    .line 1500
    .end local v1           #ringtoneUri:Landroid/net/Uri;
    :cond_32
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #ringtoneUri:Landroid/net/Uri;
    goto :goto_22
.end method

.method private doRemovePhotoAction()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1473
    iput-object v1, p0, Lcom/android/contacts/EditContactActivity;->mPhoto:Landroid/graphics/Bitmap;

    .line 1475
    iget-boolean v0, p0, Lcom/android/contacts/EditContactActivity;->MANAGE_DRM_PHOTO:Z

    if-eqz v0, :cond_9

    .line 1476
    iput-object v1, p0, Lcom/android/contacts/EditContactActivity;->mDrmFilename:Ljava/lang/String;

    .line 1479
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/EditContactActivity;->mPhotoChanged:Z

    .line 1480
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/EditContactActivity;->setPhotoPresent(Z)V

    .line 1481
    return-void
.end method

.method private doRevertAction()V
    .registers 2

    .prologue
    .line 1788
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/EditContactActivity;->setResult(I)V

    .line 1789
    invoke-virtual {p0}, Lcom/android/contacts/EditContactActivity;->finish()V

    .line 1790
    return-void
.end method

.method private doSaveAction()V
    .registers 4

    .prologue
    .line 1795
    iget v0, p0, Lcom/android/contacts/EditContactActivity;->mState:I

    packed-switch v0, :pswitch_data_2c

    .line 1805
    const-string v0, "EditContactActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state in doSaveOrCreate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/EditContactActivity;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    :goto_1f
    invoke-virtual {p0}, Lcom/android/contacts/EditContactActivity;->finish()V

    .line 1809
    return-void

    .line 1797
    :pswitch_23
    invoke-direct {p0}, Lcom/android/contacts/EditContactActivity;->save()V

    goto :goto_1f

    .line 1801
    :pswitch_27
    invoke-direct {p0}, Lcom/android/contacts/EditContactActivity;->create()V

    goto :goto_1f

    .line 1795
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_23
        :pswitch_27
    .end packed-switch
.end method

.method private doSaveSIMAction()V
    .registers 20

    .prologue
    .line 1817
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/EditContactActivity;->getEmptyAdnRecordNumber()I

    move-result v5

    .line 1818
    .local v5, emptyAdnRecordNumber:I
    if-nez v5, :cond_19

    .line 1819
    const v16, 0x7f0600b5

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    .line 1891
    :cond_18
    :goto_18
    return-void

    .line 1825
    :cond_19
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 1830
    .local v15, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mNameView:Landroid/widget/EditText;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1831
    .local v11, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mSections:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Lcom/android/contacts/ContactEntryAdapter;->getEntry(Ljava/util/ArrayList;IZ)Lcom/android/contacts/ContactEntryAdapter$Entry;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/EditContactActivity$EditEntry;

    .line 1832
    .local v6, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    invoke-virtual {v6}, Lcom/android/contacts/EditContactActivity$EditEntry;->getData()Ljava/lang/String;

    move-result-object v3

    .line 1833
    .local v3, data:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 1834
    .local v9, isNameEmpty:Z
    const/16 v16, 0x1

    move v0, v9

    move/from16 v1, v16

    if-eq v0, v1, :cond_51

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_64

    .line 1835
    :cond_51
    const v16, 0x7f060020

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    goto :goto_18

    .line 1838
    :cond_64
    if-nez v9, :cond_18

    invoke-static {v11}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_18

    .line 1839
    const-string v16, "\\-"

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1840
    .local v4, data_str:[Ljava/lang/String;
    const/16 v16, 0x0

    aget-object v12, v4, v16

    .line 1841
    .local v12, number:Ljava/lang/String;
    const/4 v7, 0x1

    .local v7, i:I
    :goto_7a
    move-object v0, v4

    array-length v0, v0

    move/from16 v16, v0

    move v0, v7

    move/from16 v1, v16

    if-ge v0, v1, :cond_9c

    .line 1842
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    aget-object v17, v4, v7

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1841
    add-int/lit8 v7, v7, 0x1

    goto :goto_7a

    .line 1850
    :cond_9c
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/EditContactActivity;->getAdnRecordSize()I

    move-result v10

    .line 1851
    .local v10, maxAdnRecordSize:I
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    .line 1853
    .local v14, srcByte:[B
    const/4 v8, 0x0

    .local v8, ii:I
    :goto_a5
    if-ge v8, v10, :cond_bd

    move-object v0, v14

    array-length v0, v0

    move/from16 v16, v0

    move v0, v8

    move/from16 v1, v16

    if-ge v0, v1, :cond_bd

    .line 1854
    aget-byte v16, v14, v8

    if-gez v16, :cond_122

    .line 1858
    const/16 v16, 0x1

    sub-int v16, v10, v16

    div-int/lit8 v10, v16, 0x2

    .line 1859
    if-le v8, v10, :cond_bd

    .line 1860
    move v10, v8

    .line 1866
    :cond_bd
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    move v1, v10

    if-le v0, v1, :cond_125

    .line 1867
    const-string v16, "tag"

    const/16 v17, 0x0

    move-object v0, v11

    move/from16 v1, v17

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    :goto_d5
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/EditContactActivity;->getAdnNumberFieldSize()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_12f

    .line 1877
    const-string v16, "number"

    const/16 v17, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/EditContactActivity;->getAdnNumberFieldSize()I

    move-result v18

    move-object v0, v12

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1885
    :goto_f7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    const-string v17, "content://icc/adn"

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 1886
    .local v13, result:Landroid/net/Uri;
    if-eqz v13, :cond_139

    .line 1887
    const v16, 0x7f06001f

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    goto/16 :goto_18

    .line 1853
    .end local v13           #result:Landroid/net/Uri;
    :cond_122
    add-int/lit8 v8, v8, 0x1

    goto :goto_a5

    .line 1869
    :cond_125
    const-string v16, "tag"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d5

    .line 1879
    :cond_12f
    const-string v16, "number"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f7

    .line 1889
    .restart local v13       #result:Landroid/net/Uri;
    :cond_139
    const v16, 0x7f060021

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    goto/16 :goto_18
.end method

.method private fillViewData(Lcom/android/contacts/EditContactActivity$EditEntry;)V
    .registers 7
    .parameter "entry"

    .prologue
    const/4 v4, 0x1

    .line 3200
    const-string v2, "custom_ringtone"

    invoke-static {p1, v2}, Lcom/android/contacts/EditContactActivity;->isOtherEntry(Lcom/android/contacts/EditContactActivity$EditEntry;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3201
    invoke-direct {p0, p1}, Lcom/android/contacts/EditContactActivity;->updateRingtoneView(Lcom/android/contacts/EditContactActivity$EditEntry;)V

    .line 3210
    :cond_c
    :goto_c
    return-void

    .line 3202
    :cond_d
    const-string v2, "send_to_voicemail"

    invoke-static {p1, v2}, Lcom/android/contacts/EditContactActivity;->isOtherEntry(Lcom/android/contacts/EditContactActivity$EditEntry;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3203
    iget-object v2, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    const v3, 0x7f050034

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 3204
    .local v0, checkBox:Landroid/widget/CheckBox;
    const/4 v1, 0x0

    .line 3205
    .local v1, sendToVoicemail:Z
    iget-object v2, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->data:Ljava/lang/String;

    if-eqz v2, :cond_32

    .line 3206
    iget-object v2, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->data:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_36

    move v1, v4

    .line 3208
    :cond_32
    :goto_32
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_c

    .line 3206
    :cond_36
    const/4 v2, 0x0

    move v1, v2

    goto :goto_32
.end method

.method private findEntryForView(Landroid/view/View;)Lcom/android/contacts/EditContactActivity$EditEntry;
    .registers 7
    .parameter "v"

    .prologue
    .line 527
    const/4 v1, 0x0

    .line 529
    .local v1, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 530
    .local v3, tag:Ljava/lang/Object;
    if-eqz v3, :cond_10

    instance-of v4, v3, Lcom/android/contacts/EditContactActivity$EditEntry;

    if-eqz v4, :cond_10

    .line 531
    move-object v0, v3

    check-cast v0, Lcom/android/contacts/EditContactActivity$EditEntry;

    move-object v1, v0

    .line 542
    :goto_f
    return-object v1

    .line 534
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 535
    .local v2, parent:Landroid/view/ViewParent;
    if-eqz v2, :cond_21

    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_21

    .line 536
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object p1, v0

    .line 541
    :goto_1e
    if-nez p1, :cond_1

    goto :goto_f

    .line 538
    :cond_21
    const/4 p1, 0x0

    goto :goto_1e
.end method

.method private getAdnNumberFieldSize()I
    .registers 3

    .prologue
    .line 1994
    const/16 v0, 0x14

    .line 1996
    .local v0, MAX_ADN_NUMBER_FIELD:I
    const/16 v1, 0x14

    return v1
.end method

.method private getAdnRecordSize()I
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1895
    const/4 v3, 0x3

    new-array v1, v3, [I

    .line 1896
    .local v1, recordSize:[I
    const/4 v0, 0x0

    .line 1900
    .local v0, maxAdnSize:I
    :try_start_5
    const-string v3, "simphonebook"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 1902
    .local v2, simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_17

    .line 1903
    const/16 v3, 0x6f3a

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_16} :catch_58
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_16} :catch_56

    move-result-object v1

    .line 1915
    .end local v2           #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_17
    :goto_17
    const-string v3, "EditContactActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimRecordSize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " total "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " #record "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    aget v3, v1, v6

    if-eqz v3, :cond_55

    .line 1922
    aget v3, v1, v6

    const/16 v4, 0xe

    sub-int v0, v3, v4

    .line 1925
    :cond_55
    return v0

    .line 1908
    :catch_56
    move-exception v3

    goto :goto_17

    .line 1906
    :catch_58
    move-exception v3

    goto :goto_17
.end method

.method public static getCustomLabelForType(Lcom/android/contacts/EditContactActivity$EditEntry;)Ljava/lang/String;
    .registers 2
    .parameter "entry"

    .prologue
    .line 1702
    iget v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    packed-switch v0, :pswitch_data_1c

    .line 1722
    :cond_5
    const/4 v0, 0x0

    :goto_6
    return-object v0

    .line 1704
    :pswitch_7
    iget v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->type:I

    if-nez v0, :cond_5

    .line 1705
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->label:Ljava/lang/String;

    goto :goto_6

    .line 1712
    :pswitch_e
    iget v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->type:I

    if-nez v0, :cond_5

    .line 1713
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->label:Ljava/lang/String;

    goto :goto_6

    .line 1717
    :pswitch_15
    iget v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->type:I

    if-nez v0, :cond_5

    .line 1718
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->label:Ljava/lang/String;

    goto :goto_6

    .line 1702
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_15
        :pswitch_7
        :pswitch_e
    .end packed-switch
.end method

.method private getEmptyAdnRecordNumber()I
    .registers 10

    .prologue
    .line 1934
    const/4 v7, 0x0

    .line 1938
    .local v7, emptyAdnNumber:I
    :try_start_1
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v8

    .line 1940
    .local v8, simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v8, :cond_11

    .line 1945
    invoke-interface {v8}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnsRecordsNumber()I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_3e
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_10} :catch_3c

    move-result v7

    .line 1967
    .end local v8           #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_11
    :goto_11
    const/4 v0, 0x0

    .line 1968
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 1971
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_13
    invoke-virtual {p0}, Lcom/android/contacts/EditContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1974
    const-string v1, "content://icc/adn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_24} :catch_3a

    move-result-object v6

    .line 1979
    :goto_25
    if-eqz v0, :cond_29

    if-nez v6, :cond_2b

    :cond_29
    move v1, v7

    .line 1986
    :goto_2a
    return v1

    .line 1984
    :cond_2b
    :try_start_2b
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_35

    move-result v1

    sub-int v1, v7, v1

    .line 1986
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2a

    :catchall_35
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1975
    :catch_3a
    move-exception v1

    goto :goto_25

    .line 1952
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_3c
    move-exception v1

    goto :goto_11

    .line 1950
    :catch_3e
    move-exception v1

    goto :goto_11
.end method

.method public static getLabelsForKind(Landroid/content/Context;I)[Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "kind"

    .prologue
    const/high16 v1, 0x107

    .line 1676
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1677
    .local v0, resources:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_3c

    .line 1695
    :pswitch_9
    const/4 v1, 0x0

    :goto_a
    return-object v1

    .line 1679
    :pswitch_b
    const v1, 0x1070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 1681
    :pswitch_13
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 1683
    :pswitch_18
    const v1, 0x1070004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 1685
    :pswitch_20
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 1687
    :pswitch_25
    const v1, 0x1070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 1689
    :pswitch_2d
    const v1, 0x1070002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 1693
    :pswitch_35
    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 1677
    :pswitch_data_3c
    .packed-switch -0x1
        :pswitch_35
        :pswitch_9
        :pswitch_13
        :pswitch_18
        :pswitch_25
        :pswitch_2d
        :pswitch_b
        :pswitch_20
        :pswitch_35
        :pswitch_35
    .end packed-switch
.end method

.method private getOtherEntry(Ljava/lang/String;)Lcom/android/contacts/EditContactActivity$EditEntry;
    .registers 6
    .parameter "column"

    .prologue
    .line 1743
    iget-object v2, p0, Lcom/android/contacts/EditContactActivity;->mOtherEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_9
    if-ltz v1, :cond_1e

    .line 1744
    iget-object v2, p0, Lcom/android/contacts/EditContactActivity;->mOtherEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/EditContactActivity$EditEntry;

    .line 1745
    .local v0, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    invoke-static {v0, p1}, Lcom/android/contacts/EditContactActivity;->isOtherEntry(Lcom/android/contacts/EditContactActivity$EditEntry;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    move-object v2, v0

    .line 1749
    .end local v0           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :goto_1a
    return-object v2

    .line 1743
    .restart local v0       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1749
    .end local v0           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :cond_1e
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method private guessNextType(Ljava/util/ArrayList;[I)I
    .registers 12
    .parameter
    .parameter "precedenceList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/EditContactActivity$EditEntry;",
            ">;[I)I"
        }
    .end annotation

    .prologue
    .local p1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/EditContactActivity$EditEntry;>;"
    const/4 v8, 0x1

    .line 1128
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v2, v7}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1129
    .local v2, existAlready:Landroid/util/SparseBooleanArray;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v3, v7, v8

    .local v3, i:I
    :goto_10
    if-ltz v3, :cond_24

    .line 1130
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/EditContactActivity$EditEntry;

    .line 1131
    .local v1, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    iget-boolean v7, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->isDeleted:Z

    if-nez v7, :cond_21

    .line 1132
    iget v7, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->type:I

    invoke-virtual {v2, v7, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1129
    :cond_21
    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    .line 1137
    .end local v1           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :cond_24
    move-object v0, p2

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_27
    if-ge v4, v5, :cond_37

    aget v6, v0, v4

    .line 1138
    .local v6, type:I
    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v7

    if-nez v7, :cond_34

    move v7, v6

    .line 1144
    .end local v6           #type:I
    :goto_33
    return v7

    .line 1137
    .restart local v6       #type:I
    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 1144
    .end local v6           #type:I
    :cond_37
    array-length v7, p2

    sub-int/2addr v7, v8

    aget v7, p2, v7

    goto :goto_33
.end method

.method private handleRingtonePicked(Landroid/net/Uri;)V
    .registers 5
    .parameter "pickedUri"

    .prologue
    .line 1512
    const-string v1, "custom_ringtone"

    invoke-direct {p0, v1}, Lcom/android/contacts/EditContactActivity;->getOtherEntry(Ljava/lang/String;)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v0

    .line 1513
    .local v0, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    if-nez v0, :cond_10

    .line 1514
    const-string v1, "EditContactActivity"

    const-string v2, "Ringtone picked but could not find ringtone entry"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    :goto_f
    return-void

    .line 1518
    :cond_10
    if-eqz p1, :cond_18

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1519
    :cond_18
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->data:Ljava/lang/String;

    .line 1524
    :goto_1b
    invoke-direct {p0, v0}, Lcom/android/contacts/EditContactActivity;->updateRingtoneView(Lcom/android/contacts/EditContactActivity$EditEntry;)V

    goto :goto_f

    .line 1521
    :cond_1f
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->data:Ljava/lang/String;

    goto :goto_1b
.end method

.method private static isOtherEntry(Lcom/android/contacts/EditContactActivity$EditEntry;Ljava/lang/String;)Z
    .registers 3
    .parameter "entry"
    .parameter "column"

    .prologue
    .line 1754
    if-eqz p0, :cond_10

    iget-object v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->column:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/contacts/EditContactActivity$EditEntry;->column:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private save()V
    .registers 23

    .prologue
    .line 2002
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 2004
    .local v16, values:Landroid/content/ContentValues;
    const/4 v13, 0x0

    .line 2008
    .local v13, numValues:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/EditContactActivity;->reorderNoteEntries()V

    .line 2012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mNameView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2013
    .local v12, name:Ljava/lang/String;
    const-string v17, "name"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    if-eqz v12, :cond_2b

    invoke-static {v12}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2b

    .line 2015
    add-int/lit8 v13, v13, 0x1

    .line 2017
    :cond_2b
    const-string v17, "phonetic_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mPhoneticNameView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2020
    .local v14, result:I
    if-nez v14, :cond_a3

    .line 2021
    const v17, 0x7f060032

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 2022
    const-string v17, "EditContactActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "invalid contact uri: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    .line 2024
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/EditContactActivity;->setResult(I)V

    .line 2025
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/EditContactActivity;->finish()V

    .line 2129
    :cond_a2
    :goto_a2
    return-void

    .line 2030
    :cond_a3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/EditContactActivity;->mPhotoChanged:Z

    move/from16 v17, v0

    if-eqz v17, :cond_df

    .line 2032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mPhoto:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_106

    .line 2033
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2034
    .local v15, stream:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mPhoto:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v19, 0x4b

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    invoke-static/range {v17 .. v19}, Landroid/provider/Contacts$People;->setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B)V

    .line 2052
    .end local v15           #stream:Ljava/io/ByteArrayOutputStream;
    :cond_df
    :goto_df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mSections:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/contacts/ContactEntryAdapter;->countEntries(Ljava/util/ArrayList;Z)I

    move-result v9

    .line 2055
    .local v9, entryCount:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_ec
    if-ge v10, v9, :cond_319

    .line 2056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mSections:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move v1, v10

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/contacts/ContactEntryAdapter;->getEntry(Ljava/util/ArrayList;IZ)Lcom/android/contacts/ContactEntryAdapter$Entry;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/EditContactActivity$EditEntry;

    .line 2057
    .local v8, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    if-nez v8, :cond_16f

    .line 2055
    :cond_103
    :goto_103
    add-int/lit8 v10, v10, 0x1

    goto :goto_ec

    .line 2038
    .end local v8           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    .end local v9           #entryCount:I
    .end local v10           #i:I
    :cond_106
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/EditContactActivity;->MANAGE_DRM_PHOTO:Z

    move/from16 v17, v0

    if-eqz v17, :cond_149

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mDrmFilename:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_149

    .line 2039
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2040
    .restart local v15       #stream:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mDrmPhoto:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v19, 0x4b

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mDrmFilename:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v20

    invoke-static/range {v17 .. v20}, Landroid/provider/Contacts$People;->setDrmPhotoDataWithFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[B)V

    goto :goto_df

    .line 2045
    .end local v15           #stream:Ljava/io/ByteArrayOutputStream;
    :cond_149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Contacts$People;->setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B)V

    .line 2046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v17 .. v20}, Landroid/provider/Contacts$People;->setDrmPhotoDataWithFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[B)V

    goto/16 :goto_df

    .line 2061
    .restart local v8       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    .restart local v9       #entryCount:I
    .restart local v10       #i:I
    :cond_16f
    iget v11, v8, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    .line 2062
    .local v11, kind:I
    invoke-virtual {v8}, Lcom/android/contacts/EditContactActivity$EditEntry;->getData()Ljava/lang/String;

    move-result-object v5

    .line 2064
    .local v5, data:Ljava/lang/String;
    if-eqz v5, :cond_17d

    invoke-static {v5}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1d4

    :cond_17d
    const/16 v17, 0x1

    move/from16 v7, v17

    .line 2065
    .local v7, empty:Z
    :goto_181
    const/16 v17, -0x1

    move v0, v11

    move/from16 v1, v17

    if-ne v0, v1, :cond_207

    .line 2066
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentValues;->clear()V

    .line 2067
    if-nez v7, :cond_1d9

    .line 2068
    move-object v0, v8

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->column:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    move-object v0, v8

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->uri:Landroid/net/Uri;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2070
    const-string v17, "custom_ringtone"

    move-object v0, v8

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->column:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_103

    const-string v17, "send_to_voicemail"

    move-object v0, v8

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->column:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_103

    .line 2072
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_103

    .line 2064
    .end local v7           #empty:Z
    :cond_1d4
    const/16 v17, 0x0

    move/from16 v7, v17

    goto :goto_181

    .line 2075
    .restart local v7       #empty:Z
    :cond_1d9
    move-object v0, v8

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->column:Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    .end local v5           #data:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    move-object v0, v8

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->uri:Landroid/net/Uri;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_103

    .line 2078
    .restart local v5       #data:Ljava/lang/String;
    :cond_207
    const/16 v17, -0x4

    move v0, v11

    move/from16 v1, v17

    if-ne v0, v1, :cond_25b

    .line 2079
    if-nez v7, :cond_23c

    move-object v0, v8

    iget-boolean v0, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->isDeleted:Z

    move/from16 v17, v0

    if-nez v17, :cond_23c

    .line 2080
    move-object v0, v8

    iget-wide v0, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->id:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-nez v17, :cond_103

    .line 2083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    move-object v0, v8

    iget-wide v0, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->groupId:J

    move-wide/from16 v20, v0

    invoke-static/range {v17 .. v21}, Landroid/provider/Contacts$People;->addToGroup(Landroid/content/ContentResolver;JJ)Landroid/net/Uri;

    goto/16 :goto_103

    .line 2085
    :cond_23c
    move-object v0, v8

    iget-wide v0, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->id:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-eqz v17, :cond_103

    .line 2086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    move-object v0, v8

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->uri:Landroid/net/Uri;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_103

    .line 2089
    :cond_25b
    const/16 v17, 0x9

    move v0, v11

    move/from16 v1, v17

    if-ne v0, v1, :cond_2b4

    .line 2090
    invoke-virtual {v8}, Lcom/android/contacts/EditContactActivity$EditEntry;->getData2()Ljava/lang/String;

    move-result-object v6

    .line 2091
    .local v6, data2:Ljava/lang/String;
    if-eqz v6, :cond_275

    invoke-static {v6}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_275

    move-object v0, v8

    iget-boolean v0, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->isDeleted:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2af

    :cond_275
    const/16 v17, 0x1

    move/from16 v7, v17

    .line 2096
    .end local v5           #data:Ljava/lang/String;
    .end local v6           #data2:Ljava/lang/String;
    :cond_279
    :goto_279
    if-nez v7, :cond_2fa

    .line 2097
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentValues;->clear()V

    .line 2098
    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/contacts/EditContactActivity$EditEntry;->toValues(Landroid/content/ContentValues;)Z

    .line 2099
    move-object v0, v8

    iget-wide v0, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->id:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-eqz v17, :cond_2e5

    .line 2100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    move-object v0, v8

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->uri:Landroid/net/Uri;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2104
    :goto_2ab
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_103

    .line 2091
    .restart local v5       #data:Ljava/lang/String;
    .restart local v6       #data2:Ljava/lang/String;
    :cond_2af
    const/16 v17, 0x0

    move/from16 v7, v17

    goto :goto_279

    .line 2092
    .end local v6           #data2:Ljava/lang/String;
    :cond_2b4
    if-eqz v7, :cond_279

    const/16 v17, 0x4

    move v0, v11

    move/from16 v1, v17

    if-ne v0, v1, :cond_279

    .line 2093
    move-object v0, v8

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f050031

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #data:Ljava/lang/String;
    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2094
    .restart local v6       #data2:Ljava/lang/String;
    if-eqz v6, :cond_2db

    invoke-static {v6}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2e0

    :cond_2db
    const/16 v17, 0x1

    move/from16 v7, v17

    :goto_2df
    goto :goto_279

    :cond_2e0
    const/16 v17, 0x0

    move/from16 v7, v17

    goto :goto_2df

    .line 2102
    .end local v6           #data2:Ljava/lang/String;
    :cond_2e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    move-object v0, v8

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->uri:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2ab

    .line 2105
    :cond_2fa
    move-object v0, v8

    iget-wide v0, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->id:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-eqz v17, :cond_103

    .line 2106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    move-object v0, v8

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->uri:Landroid/net/Uri;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_103

    .line 2112
    .end local v7           #empty:Z
    .end local v8           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    .end local v11           #kind:I
    :cond_319
    if-nez v13, :cond_341

    .line 2114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2115
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    .line 2116
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/EditContactActivity;->setResult(I)V

    goto/16 :goto_a2

    .line 2119
    :cond_341
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/EditContactActivity;->mIsMyProfile:Z

    move/from16 v17, v0

    if-nez v17, :cond_35c

    .line 2120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    invoke-static/range {v17 .. v19}, Landroid/provider/Contacts$People;->addToMyContactsGroup(Landroid/content/ContentResolver;J)Landroid/net/Uri;

    .line 2122
    :cond_35c
    const/16 v17, -0x1

    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/EditContactActivity;->setResult(ILandroid/content/Intent;)V

    .line 2125
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/EditContactActivity;->mContactChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_386

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/EditContactActivity;->mPhotoChanged:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a2

    .line 2126
    :cond_386
    const v17, 0x7f060051

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_a2
.end method

.method private setGroupEntries()V
    .registers 11

    .prologue
    .line 1398
    const/4 v1, 0x0

    .line 1399
    .local v1, count:I
    iget-object v6, p0, Lcom/android/contacts/EditContactActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/EditContactActivity$GroupEntry;

    .line 1400
    .local v3, group:Lcom/android/contacts/EditContactActivity$GroupEntry;
    iget-boolean v6, v3, Lcom/android/contacts/EditContactActivity$GroupEntry;->check:Z

    iput-boolean v6, v3, Lcom/android/contacts/EditContactActivity$GroupEntry;->confirm:Z

    .line 1401
    iget-wide v6, v3, Lcom/android/contacts/EditContactActivity$GroupEntry;->groupId:J

    const-wide/16 v8, 0x1

    cmp-long v6, v6, v8

    if-ltz v6, :cond_7

    .line 1404
    iget-boolean v6, v3, Lcom/android/contacts/EditContactActivity$GroupEntry;->check:Z

    if-eqz v6, :cond_5c

    .line 1405
    const/4 v0, 0x0

    .line 1406
    .local v0, catched:Z
    iget-object v6, p0, Lcom/android/contacts/EditContactActivity;->mGroupEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/EditContactActivity$EditEntry;

    .line 1407
    .local v2, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    iget-wide v6, v3, Lcom/android/contacts/EditContactActivity$GroupEntry;->groupId:J

    iget-wide v8, v2, Lcom/android/contacts/EditContactActivity$EditEntry;->groupId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_2a

    .line 1408
    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/android/contacts/EditContactActivity$EditEntry;->isDeleted:Z

    .line 1409
    const/4 v0, 0x1

    .line 1413
    .end local v2           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :cond_42
    if-nez v0, :cond_7

    .line 1414
    iget-object v6, p0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    const-string v7, "groupmembership"

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, v3, Lcom/android/contacts/EditContactActivity$GroupEntry;->groupDispName:Ljava/lang/String;

    iget-wide v8, v3, Lcom/android/contacts/EditContactActivity$GroupEntry;->groupId:J

    invoke-static {p0, v6, v7, v8, v9}, Lcom/android/contacts/EditContactActivity$EditEntry;->newGroupEntry(Lcom/android/contacts/EditContactActivity;Landroid/net/Uri;Ljava/lang/String;J)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v2

    .line 1417
    .restart local v2       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    iget-object v6, p0, Lcom/android/contacts/EditContactActivity;->mGroupEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1418
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1421
    .end local v0           #catched:Z
    .end local v2           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_5c
    iget-object v6, p0, Lcom/android/contacts/EditContactActivity;->mGroupEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_62
    :goto_62
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/EditContactActivity$EditEntry;

    .line 1422
    .restart local v2       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    iget-wide v6, v3, Lcom/android/contacts/EditContactActivity$GroupEntry;->groupId:J

    iget-wide v8, v2, Lcom/android/contacts/EditContactActivity$EditEntry;->groupId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_62

    .line 1423
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/android/contacts/EditContactActivity$EditEntry;->isDeleted:Z

    goto :goto_62

    .line 1428
    .end local v2           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    .end local v3           #group:Lcom/android/contacts/EditContactActivity$GroupEntry;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_7a
    invoke-direct {p0}, Lcom/android/contacts/EditContactActivity;->buildViews()V

    .line 1429
    return-void
.end method

.method private setGroupSelectionEntries(J)I
    .registers 26
    .parameter "displayGroupId"

    .prologue
    .line 1292
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/EditContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "syncEverything"

    invoke-static {v3, v4, v5}, Landroid/provider/Contacts$Settings;->getSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1294
    .local v22, value:Ljava/lang/String;
    if-nez v22, :cond_a2

    .line 1296
    const/16 v21, 0x1

    .line 1302
    .local v21, syncEverything:Z
    :goto_f
    const/4 v6, 0x0

    .line 1303
    .local v6, selection:Ljava/lang/String;
    if-nez v21, :cond_bc

    .line 1304
    const-string v6, "should_sync != 0 AND system_id IS NULL"

    .line 1308
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/EditContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/contacts/EditContactActivity;->GROUPS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "name ASC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1314
    .local v10, cursor:Landroid/database/Cursor;
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 1315
    .local v20, prefs:Landroid/content/SharedPreferences;
    const/4 v11, 0x0

    .line 1317
    .local v11, displayGroupName:Ljava/lang/String;
    const-string v3, "display_system_group"

    const/4 v4, -0x1

    move-object/from16 v0, v20

    move-object v1, v3

    move v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 1319
    .local v12, displayType:I
    const/4 v3, 0x3

    if-ne v12, v3, :cond_41

    .line 1320
    const-string v3, "display_group"

    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1323
    :cond_41
    const/4 v9, -0x1

    .line 1327
    .local v9, currentIndex:I
    const/16 v19, 0x0

    .line 1335
    .local v19, numGroup:I
    :cond_44
    :goto_44
    :try_start_44
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 1336
    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1337
    .local v16, groupName:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1338
    .local v14, groupId:J
    new-instance v13, Lcom/android/contacts/EditContactActivity$GroupEntry;

    const/4 v3, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/EditContactActivity$GroupEntry;-><init>(Lcom/android/contacts/EditContactActivity;Lcom/android/contacts/EditContactActivity$1;)V

    .line 1339
    .local v13, entry:Lcom/android/contacts/EditContactActivity$GroupEntry;
    const-string v3, "Contacts"

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 1341
    const-string v3, "Starred in Android"

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 1350
    move-object/from16 v0, v16

    move-object v1, v13

    iput-object v0, v1, Lcom/android/contacts/EditContactActivity$GroupEntry;->groupDispName:Ljava/lang/String;

    .line 1352
    move-object/from16 v0, v16

    move-object v1, v13

    iput-object v0, v1, Lcom/android/contacts/EditContactActivity$GroupEntry;->groupName:Ljava/lang/String;

    .line 1353
    iput-wide v14, v13, Lcom/android/contacts/EditContactActivity$GroupEntry;->groupId:J

    .line 1354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mGroups:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1355
    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8e
    .catchall {:try_start_44 .. :try_end_8e} :catchall_10e

    move-result v3

    if-eqz v3, :cond_93

    .line 1356
    move/from16 v9, v19

    .line 1358
    :cond_93
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-eqz v3, :cond_9f

    cmp-long v3, p1, v14

    if-nez v3, :cond_9f

    .line 1359
    move/from16 v9, v19

    .line 1361
    :cond_9f
    add-int/lit8 v19, v19, 0x1

    goto :goto_44

    .line 1298
    .end local v6           #selection:Ljava/lang/String;
    .end local v9           #currentIndex:I
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #displayGroupName:Ljava/lang/String;
    .end local v12           #displayType:I
    .end local v13           #entry:Lcom/android/contacts/EditContactActivity$GroupEntry;
    .end local v14           #groupId:J
    .end local v16           #groupName:Ljava/lang/String;
    .end local v19           #numGroup:I
    .end local v20           #prefs:Landroid/content/SharedPreferences;
    .end local v21           #syncEverything:Z
    :cond_a2
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b8

    const-string v3, "0"

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b8

    const/4 v3, 0x1

    move/from16 v21, v3

    .restart local v21       #syncEverything:Z
    :goto_b6
    goto/16 :goto_f

    .end local v21           #syncEverything:Z
    :cond_b8
    const/4 v3, 0x0

    move/from16 v21, v3

    goto :goto_b6

    .line 1306
    .restart local v6       #selection:Ljava/lang/String;
    .restart local v21       #syncEverything:Z
    :cond_bc
    const-string v6, "system_id IS NULL"

    goto/16 :goto_14

    .line 1364
    .restart local v9       #currentIndex:I
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v11       #displayGroupName:Ljava/lang/String;
    .restart local v12       #displayType:I
    .restart local v19       #numGroup:I
    .restart local v20       #prefs:Landroid/content/SharedPreferences;
    :cond_c0
    :try_start_c0
    new-instance v13, Lcom/android/contacts/EditContactActivity$GroupEntry;

    const/4 v3, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/EditContactActivity$GroupEntry;-><init>(Lcom/android/contacts/EditContactActivity;Lcom/android/contacts/EditContactActivity$1;)V

    .line 1365
    .restart local v13       #entry:Lcom/android/contacts/EditContactActivity$GroupEntry;
    const v3, 0x7f0600ba

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/contacts/EditContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lcom/android/contacts/EditContactActivity$GroupEntry;->groupName:Ljava/lang/String;

    .line 1366
    iget-object v3, v13, Lcom/android/contacts/EditContactActivity$GroupEntry;->groupName:Ljava/lang/String;

    iput-object v3, v13, Lcom/android/contacts/EditContactActivity$GroupEntry;->groupDispName:Ljava/lang/String;

    .line 1367
    const-wide/16 v3, -0x1

    iput-wide v3, v13, Lcom/android/contacts/EditContactActivity$GroupEntry;->groupId:J

    .line 1368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mGroups:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e6
    .catchall {:try_start_c0 .. :try_end_e6} :catchall_10e

    .line 1370
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1375
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/EditContactActivity;->mState:I

    move v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_113

    .line 1376
    const/4 v3, -0x1

    if-eq v9, v3, :cond_10d

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mGroups:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #entry:Lcom/android/contacts/EditContactActivity$GroupEntry;
    check-cast v13, Lcom/android/contacts/EditContactActivity$GroupEntry;

    .line 1378
    .restart local v13       #entry:Lcom/android/contacts/EditContactActivity$GroupEntry;
    const/4 v3, 0x1

    iput-boolean v3, v13, Lcom/android/contacts/EditContactActivity$GroupEntry;->check:Z

    .line 1379
    const/4 v3, 0x1

    iput-boolean v3, v13, Lcom/android/contacts/EditContactActivity$GroupEntry;->confirm:Z

    .line 1380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mGroups:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v9, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1393
    .end local p1
    :cond_10d
    return v9

    .line 1370
    .end local v13           #entry:Lcom/android/contacts/EditContactActivity$GroupEntry;
    .restart local p1
    :catchall_10e
    move-exception v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3

    .line 1382
    .restart local v13       #entry:Lcom/android/contacts/EditContactActivity$GroupEntry;
    :cond_113
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/EditContactActivity;->mState:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10d

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mGroups:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .end local p1
    .local v18, i$:Ljava/util/Iterator;
    :cond_124
    :goto_124
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10d

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .end local v13           #entry:Lcom/android/contacts/EditContactActivity$GroupEntry;
    check-cast v13, Lcom/android/contacts/EditContactActivity$GroupEntry;

    .line 1384
    .restart local v13       #entry:Lcom/android/contacts/EditContactActivity$GroupEntry;
    const/16 v17, 0x0

    .local v17, i:I
    :goto_132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mGroupEntries:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v17

    move v1, v3

    if-ge v0, v1, :cond_124

    .line 1385
    iget-wide v3, v13, Lcom/android/contacts/EditContactActivity$GroupEntry;->groupId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_168

    iget-wide v3, v13, Lcom/android/contacts/EditContactActivity$GroupEntry;->groupId:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mGroupEntries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/EditContactActivity$EditEntry;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->groupId:J

    move-wide v5, v0

    cmp-long v3, v3, v5

    if-nez v3, :cond_168

    .line 1386
    const/4 v3, 0x1

    iput-boolean v3, v13, Lcom/android/contacts/EditContactActivity$GroupEntry;->check:Z

    .line 1387
    const/4 v3, 0x1

    iput-boolean v3, v13, Lcom/android/contacts/EditContactActivity$GroupEntry;->confirm:Z

    goto :goto_124

    .line 1384
    :cond_168
    add-int/lit8 v17, v17, 0x1

    goto :goto_132
.end method

.method private setPhotoPresent(Z)V
    .registers 5
    .parameter "present"

    .prologue
    const v2, 0x7f0200c6

    .line 501
    iput-boolean p1, p0, Lcom/android/contacts/EditContactActivity;->mPhotoPresent:Z

    .line 506
    iget-boolean v0, p0, Lcom/android/contacts/EditContactActivity;->mPhotoPresent:Z

    if-eqz v0, :cond_27

    .line 507
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mPhotoImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 513
    :goto_10
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mCaptureMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_26

    .line 514
    if-eqz p1, :cond_34

    .line 515
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mCaptureMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f060045

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 516
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mCaptureMenuItem:Landroid/view/MenuItem;

    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 522
    :cond_26
    :goto_26
    return-void

    .line 509
    :cond_27
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 510
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mPhotoImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_10

    .line 518
    :cond_34
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mCaptureMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f060044

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 519
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mCaptureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_26
.end method

.method private setSnsEntries()V
    .registers 10

    .prologue
    .line 1257
    iget-boolean v7, p0, Lcom/android/contacts/EditContactActivity;->MANAGE_SOCIAL_NETWORK:Z

    if-eqz v7, :cond_70

    .line 1258
    invoke-static {p0}, Lcom/android/contacts/LinkbookAsyncHelper;->loadAccountList(Landroid/content/Context;)Z

    .line 1259
    const/4 v7, 0x0

    sput-object v7, Lcom/android/contacts/EditContactActivity;->mSNLabels:[Ljava/lang/String;

    .line 1260
    sget-object v7, Lcom/android/contacts/LinkbookAsyncHelper;->mSNAccounts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1261
    .local v5, imax:I
    iget-object v7, p0, Lcom/android/contacts/EditContactActivity;->mSNData:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1262
    if-lez v5, :cond_52

    .line 1263
    const/4 v3, 0x0

    .local v3, i:I
    :goto_18
    if-ge v3, v5, :cond_52

    .line 1264
    const/4 v1, 0x0

    .line 1265
    .local v1, count:I
    sget-object v7, Lcom/android/contacts/LinkbookAsyncHelper;->mSNAccounts:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;

    .line 1266
    .local v0, account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    iget-object v7, p0, Lcom/android/contacts/EditContactActivity;->mSnsIdEntries:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_29
    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_46

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/EditContactActivity$EditEntry;

    .line 1267
    .local v2, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    iget-object v7, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mTitle:Ljava/lang/String;

    iget-object v8, v2, Lcom/android/contacts/EditContactActivity$EditEntry;->label:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    iget-boolean v7, v2, Lcom/android/contacts/EditContactActivity$EditEntry;->isDeleted:Z

    if-nez v7, :cond_29

    .line 1268
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 1271
    .end local v2           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :cond_46
    if-nez v1, :cond_4f

    .line 1272
    iget-object v7, p0, Lcom/android/contacts/EditContactActivity;->mSNData:Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mTitle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1263
    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 1277
    .end local v0           #account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_52
    iget-object v7, p0, Lcom/android/contacts/EditContactActivity;->mSNData:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1278
    .local v6, size:I
    if-eqz v6, :cond_70

    .line 1279
    new-array v7, v6, [Ljava/lang/String;

    sput-object v7, Lcom/android/contacts/EditContactActivity;->mSNLabels:[Ljava/lang/String;

    .line 1280
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5f
    if-ge v3, v6, :cond_70

    .line 1281
    sget-object v8, Lcom/android/contacts/EditContactActivity;->mSNLabels:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/contacts/EditContactActivity;->mSNData:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v8, v3

    .line 1280
    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    .line 1286
    .end local v3           #i:I
    .end local v5           #imax:I
    .end local v6           #size:I
    :cond_70
    return-void
.end method

.method private setupSections()V
    .registers 3

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/EditContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/EditContactActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    iget-boolean v0, p0, Lcom/android/contacts/EditContactActivity;->MANAGE_SOCIAL_NETWORK:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/contacts/EditContactActivity;->mIsMyProfile:Z

    if-nez v0, :cond_1d

    .line 715
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/EditContactActivity;->mSnsIdEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    :cond_1d
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/EditContactActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/EditContactActivity;->mWebsiteEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/EditContactActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/EditContactActivity;->mOrgEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    iget-boolean v0, p0, Lcom/android/contacts/EditContactActivity;->mIsMyProfile:Z

    if-nez v0, :cond_44

    .line 723
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/EditContactActivity;->mGroupEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    :cond_44
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/EditContactActivity;->mBirthdayEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/EditContactActivity;->mNoteEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/EditContactActivity;->mOtherEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    return-void
.end method

.method private showAddAttachmentDialog()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 3214
    iget-object v3, p0, Lcom/android/contacts/EditContactActivity;->mCaptureMenu:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3217
    new-instance v2, Lcom/android/contacts/IconListAdapter$IconListItem;

    const/4 v3, 0x1

    const v4, 0x7f0600ed

    invoke-virtual {p0, v4}, Lcom/android/contacts/EditContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/contacts/EditContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200c2

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/android/contacts/IconListAdapter$IconListItem;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 3221
    .local v2, item:Lcom/android/contacts/IconListAdapter$IconListItem;
    iget-object v3, p0, Lcom/android/contacts/EditContactActivity;->mCaptureMenu:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3222
    new-instance v2, Lcom/android/contacts/IconListAdapter$IconListItem;

    .end local v2           #item:Lcom/android/contacts/IconListAdapter$IconListItem;
    const/4 v3, 0x2

    const v4, 0x7f0600ee

    invoke-virtual {p0, v4}, Lcom/android/contacts/EditContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/contacts/EditContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200bb

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/android/contacts/IconListAdapter$IconListItem;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 3226
    .restart local v2       #item:Lcom/android/contacts/IconListAdapter$IconListItem;
    iget-object v3, p0, Lcom/android/contacts/EditContactActivity;->mCaptureMenu:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3228
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3229
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0200b5

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3230
    const v3, 0x7f060044

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3232
    new-instance v0, Lcom/android/contacts/IconListAdapter;

    iget-object v3, p0, Lcom/android/contacts/EditContactActivity;->mCaptureMenu:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3}, Lcom/android/contacts/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 3234
    .local v0, adapter:Lcom/android/contacts/IconListAdapter;
    new-instance v3, Lcom/android/contacts/EditContactActivity$8;

    invoke-direct {v3, p0}, Lcom/android/contacts/EditContactActivity$8;-><init>(Lcom/android/contacts/EditContactActivity;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3251
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3252
    return-void
.end method

.method private snID(Ljava/lang/String;)I
    .registers 6
    .parameter "data"

    .prologue
    .line 1640
    invoke-static {p0}, Lcom/android/contacts/LinkbookAsyncHelper;->loadAccountList(Landroid/content/Context;)Z

    .line 1641
    sget-object v3, Lcom/android/contacts/LinkbookAsyncHelper;->mSNAccounts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1642
    .local v2, imax:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v2, :cond_21

    .line 1643
    sget-object v3, Lcom/android/contacts/LinkbookAsyncHelper;->mSNAccounts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;

    .line 1644
    .local v0, account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    iget-object v3, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v1

    .line 1648
    .end local v0           #account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    :goto_1d
    return v3

    .line 1642
    .restart local v0       #account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1648
    .end local v0           #account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    :cond_21
    const/4 v3, -0x1

    goto :goto_1d
.end method

.method private updateDataView(Lcom/android/contacts/EditContactActivity$EditEntry;Ljava/lang/String;)V
    .registers 6
    .parameter "entry"
    .parameter "text"

    .prologue
    .line 1549
    iget-object v1, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    const/high16 v2, 0x7f05

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1550
    .local v0, dataView:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1551
    return-void
.end method

.method private updateRingtoneView(Lcom/android/contacts/EditContactActivity$EditEntry;)V
    .registers 7
    .parameter "entry"

    .prologue
    .line 1530
    iget-object v3, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->data:Ljava/lang/String;

    if-nez v3, :cond_f

    .line 1531
    const v3, 0x7f060043

    invoke-virtual {p0, v3}, Lcom/android/contacts/EditContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1544
    .local v1, ringtoneName:Ljava/lang/String;
    :goto_b
    invoke-direct {p0, p1, v1}, Lcom/android/contacts/EditContactActivity;->updateDataView(Lcom/android/contacts/EditContactActivity$EditEntry;Ljava/lang/String;)V

    .line 1545
    .end local v1           #ringtoneName:Ljava/lang/String;
    :goto_e
    return-void

    .line 1533
    :cond_f
    iget-object v3, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->data:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1534
    .local v2, ringtoneUri:Landroid/net/Uri;
    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 1535
    .local v0, ringtone:Landroid/media/Ringtone;
    if-nez v0, :cond_23

    .line 1536
    const-string v3, "EditContactActivity"

    const-string v4, "ringtone\'s URI doesn\'t resolve to a Ringtone"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1539
    :cond_23
    invoke-virtual {v0, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1541
    .restart local v1       #ringtoneName:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    goto :goto_b
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 3989
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/EditContactActivity;->mContactChanged:Z

    .line 3990
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 3995
    return-void
.end method

.method public buildViewForEntry(Lcom/android/contacts/EditContactActivity$EditEntry;)Landroid/view/View;
    .registers 16
    .parameter "entry"

    .prologue
    .line 3051
    iget-object v11, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    if-eqz v11, :cond_4f

    iget-boolean v11, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->syncDataWithView:Z

    if-eqz v11, :cond_4f

    .line 3052
    iget-object v11, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    const/high16 v12, 0x7f05

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3055
    .local v5, enteredText:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_22

    .line 3056
    iput-object v5, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->data:Ljava/lang/String;

    .line 3058
    :cond_22
    iget v11, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_4f

    .line 3059
    iget-object v11, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    const v12, 0x7f050031

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 3060
    .local v9, subData:Landroid/widget/TextView;
    if-eqz v9, :cond_4f

    .line 3061
    iget-object v11, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    const v12, 0x7f050031

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3064
    .local v4, enteredSubText:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4f

    .line 3065
    iput-object v4, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->data2:Ljava/lang/String;

    .line 3072
    .end local v4           #enteredSubText:Ljava/lang/String;
    .end local v5           #enteredText:Ljava/lang/String;
    .end local v9           #subData:Landroid/widget/TextView;
    :cond_4f
    iget-object v8, p0, Lcom/android/contacts/EditContactActivity;->mLayout:Landroid/widget/LinearLayout;

    .line 3077
    .local v8, parent:Landroid/view/ViewGroup;
    iget v11, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_12d

    .line 3078
    iget-object v11, p0, Lcom/android/contacts/EditContactActivity;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f030013

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v8, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 3099
    .local v10, view:Landroid/view/View;
    :goto_60
    iput-object v10, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    .line 3102
    invoke-virtual {v10, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3105
    iget v11, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    const/16 v12, 0x9

    if-eq v11, v12, :cond_1b5

    .line 3106
    invoke-virtual {p1, p0}, Lcom/android/contacts/EditContactActivity$EditEntry;->bindLabel(Landroid/content/Context;)V

    .line 3113
    :goto_6e
    const/high16 v11, 0x7f05

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3114
    .local v1, data:Landroid/widget/TextView;
    const v11, 0x7f050031

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3116
    .local v2, data2:Landroid/widget/TextView;
    iget v11, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    const/4 v12, -0x4

    if-eq v11, v12, :cond_90

    iget v11, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    const/16 v12, 0x9

    if-eq v11, v12, :cond_90

    iget v11, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    const/16 v12, 0x8

    if-ne v11, v12, :cond_1c5

    .line 3125
    :cond_90
    :goto_90
    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v11

    if-nez v11, :cond_9f

    .line 3126
    iget-boolean v11, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->syncDataWithView:Z

    if-eqz v11, :cond_1ce

    .line 3128
    iget-object v11, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->data:Ljava/lang/String;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3134
    :cond_9f
    :goto_9f
    if-eqz v2, :cond_ac

    .line 3135
    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v11

    if-nez v11, :cond_ac

    .line 3137
    iget-object v11, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->data2:Ljava/lang/String;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3141
    :cond_ac
    iget-object v11, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->hint:Ljava/lang/String;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 3142
    if-eqz v2, :cond_b8

    .line 3143
    iget-object v11, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->hint2:Ljava/lang/String;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 3146
    :cond_b8
    iget v11, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->lines:I

    const/4 v12, 0x1

    if-le v11, v12, :cond_d3

    .line 3147
    iget v11, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->lines:I

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setLines(I)V

    .line 3148
    iget v11, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->maxLines:I

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 3149
    if-eqz v2, :cond_d3

    .line 3150
    iget v11, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->lines:I

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setLines(I)V

    .line 3151
    iget v11, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->maxLines:I

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 3155
    :cond_d3
    iget v0, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->contentType:I

    .line 3156
    .local v0, contentType:I
    if-eqz v0, :cond_f6

    .line 3157
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 3158
    if-eqz v2, :cond_df

    .line 3159
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 3161
    :cond_df
    and-int/lit8 v11, v0, 0xf

    const/4 v12, 0x3

    if-ne v11, v12, :cond_f6

    .line 3162
    new-instance v11, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-direct {v11}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3163
    if-eqz v2, :cond_f6

    .line 3164
    new-instance v11, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-direct {v11}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3170
    :cond_f6
    iget v11, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->requestFocusId:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 3171
    .local v6, focusChild:Landroid/view/View;
    if-eqz v6, :cond_10c

    .line 3172
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 3173
    instance-of v11, v6, Landroid/widget/EditText;

    if-eqz v11, :cond_10c

    .line 3174
    check-cast v6, Landroid/widget/EditText;

    .end local v6           #focusChild:Landroid/view/View;
    iget v11, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->requestCursor:I

    invoke-virtual {v6, v11}, Landroid/widget/EditText;->setSelection(I)V

    .line 3179
    :cond_10c
    const/4 v11, -0x1

    iput v11, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->requestFocusId:I

    .line 3180
    const/4 v11, 0x0

    iput v11, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->requestCursor:I

    .line 3183
    instance-of v11, v1, Landroid/widget/EditText;

    if-eqz v11, :cond_119

    .line 3184
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3187
    :cond_119
    instance-of v11, v2, Landroid/widget/EditText;

    if-eqz v11, :cond_120

    .line 3188
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3191
    :cond_120
    const v11, 0x7f050030

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3192
    .local v3, delete:Landroid/view/View;
    if-eqz v3, :cond_12c

    .line 3193
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3195
    :cond_12c
    return-object v10

    .line 3079
    .end local v0           #contentType:I
    .end local v1           #data:Landroid/widget/TextView;
    .end local v2           #data2:Landroid/widget/TextView;
    .end local v3           #delete:Landroid/view/View;
    .end local v10           #view:Landroid/view/View;
    :cond_12d
    iget v11, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    const/16 v12, 0x8

    if-ne v11, v12, :cond_142

    .line 3080
    iget-object v11, p0, Lcom/android/contacts/EditContactActivity;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f030011

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v8, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 3081
    .restart local v10       #view:Landroid/view/View;
    invoke-virtual {v10, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto/16 :goto_60

    .line 3082
    .end local v10           #view:Landroid/view/View;
    :cond_142
    const-string v11, "custom_ringtone"

    invoke-static {p1, v11}, Lcom/android/contacts/EditContactActivity;->isOtherEntry(Lcom/android/contacts/EditContactActivity$EditEntry;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_159

    .line 3083
    iget-object v11, p0, Lcom/android/contacts/EditContactActivity;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f030014

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v8, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 3084
    .restart local v10       #view:Landroid/view/View;
    invoke-virtual {v10, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto/16 :goto_60

    .line 3085
    .end local v10           #view:Landroid/view/View;
    :cond_159
    iget v11, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    const/4 v12, -0x4

    if-ne v11, v12, :cond_16d

    .line 3086
    iget-object v11, p0, Lcom/android/contacts/EditContactActivity;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f030012

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v8, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 3087
    .restart local v10       #view:Landroid/view/View;
    invoke-virtual {v10, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto/16 :goto_60

    .line 3088
    .end local v10           #view:Landroid/view/View;
    :cond_16d
    const-string v11, "send_to_voicemail"

    invoke-static {p1, v11}, Lcom/android/contacts/EditContactActivity;->isOtherEntry(Lcom/android/contacts/EditContactActivity$EditEntry;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_184

    .line 3089
    iget-object v11, p0, Lcom/android/contacts/EditContactActivity;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f030017

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v8, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 3090
    .restart local v10       #view:Landroid/view/View;
    invoke-virtual {v10, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto/16 :goto_60

    .line 3091
    .end local v10           #view:Landroid/view/View;
    :cond_184
    iget v11, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    const/16 v12, 0x9

    if-ne v11, v12, :cond_199

    .line 3092
    iget-object v11, p0, Lcom/android/contacts/EditContactActivity;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f030015

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v8, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 3093
    .restart local v10       #view:Landroid/view/View;
    invoke-virtual {v10, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto/16 :goto_60

    .line 3094
    .end local v10           #view:Landroid/view/View;
    :cond_199
    iget-boolean v11, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->isStaticLabel:Z

    if-nez v11, :cond_1a9

    .line 3095
    iget-object v11, p0, Lcom/android/contacts/EditContactActivity;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f030010

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v8, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .restart local v10       #view:Landroid/view/View;
    goto/16 :goto_60

    .line 3097
    .end local v10           #view:Landroid/view/View;
    :cond_1a9
    iget-object v11, p0, Lcom/android/contacts/EditContactActivity;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f030016

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v8, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .restart local v10       #view:Landroid/view/View;
    goto/16 :goto_60

    .line 3108
    :cond_1b5
    const v11, 0x7f050007

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 3109
    .local v7, label:Landroid/widget/Button;
    iget-object v11, p1, Lcom/android/contacts/EditContactActivity$EditEntry;->label:Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6e

    .line 3120
    .end local v7           #label:Landroid/widget/Button;
    .restart local v1       #data:Landroid/widget/TextView;
    .restart local v2       #data2:Landroid/widget/TextView;
    :cond_1c5
    instance-of v11, v1, Landroid/widget/Button;

    if-eqz v11, :cond_90

    .line 3121
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_90

    .line 3130
    :cond_1ce
    invoke-direct {p0, p1}, Lcom/android/contacts/EditContactActivity;->fillViewData(Lcom/android/contacts/EditContactActivity$EditEntry;)V

    goto/16 :goto_9f
.end method

.method public countDataWillBeInserted()I
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 2286
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2287
    .local v5, values:Landroid/content/ContentValues;
    const/4 v4, 0x0

    .line 2292
    .local v4, numValues:I
    iget-object v6, p0, Lcom/android/contacts/EditContactActivity;->mSections:Ljava/util/ArrayList;

    invoke-static {v6, v8}, Lcom/android/contacts/ContactEntryAdapter;->countEntries(Ljava/util/ArrayList;Z)I

    move-result v3

    .line 2293
    .local v3, imax:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    if-ge v2, v3, :cond_56

    .line 2294
    iget-object v6, p0, Lcom/android/contacts/EditContactActivity;->mSections:Ljava/util/ArrayList;

    invoke-static {v6, v2, v8}, Lcom/android/contacts/ContactEntryAdapter;->getEntry(Ljava/util/ArrayList;IZ)Lcom/android/contacts/ContactEntryAdapter$Entry;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/EditContactActivity$EditEntry;

    .line 2295
    .local v1, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    if-nez v1, :cond_1d

    .line 2293
    :cond_1a
    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2299
    :cond_1d
    iget v6, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    const/4 v7, -0x4

    if-eq v6, v7, :cond_1a

    .line 2301
    iget v6, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_33

    .line 2302
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 2303
    invoke-virtual {v1, v5}, Lcom/android/contacts/EditContactActivity$EditEntry;->toValues(Landroid/content/ContentValues;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 2304
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 2308
    :cond_33
    invoke-virtual {v1}, Lcom/android/contacts/EditContactActivity$EditEntry;->getData()Ljava/lang/String;

    move-result-object v0

    .line 2309
    .local v0, data:Ljava/lang/String;
    if-eqz v0, :cond_1a

    invoke-static {v0}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 2310
    const-string v6, "custom_ringtone"

    iget-object v7, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->column:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    const-string v6, "send_to_voicemail"

    iget-object v7, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->column:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    .line 2312
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 2318
    .end local v0           #data:Ljava/lang/String;
    .end local v1           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :cond_56
    return v4
.end method

.method public createGroupSelectionDialog()V
    .registers 8

    .prologue
    .line 4013
    iget-object v4, p0, Lcom/android/contacts/EditContactActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4014
    .local v3, numGroups:I
    new-array v0, v3, [Ljava/lang/CharSequence;

    .line 4015
    .local v0, displayGroups:[Ljava/lang/CharSequence;
    new-array v1, v3, [Z

    .line 4016
    .local v1, displayGroupsCheck:[Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v3, :cond_28

    .line 4017
    iget-object v4, p0, Lcom/android/contacts/EditContactActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/EditContactActivity$GroupEntry;

    iget-object v4, v4, Lcom/android/contacts/EditContactActivity$GroupEntry;->groupDispName:Ljava/lang/String;

    aput-object v4, v0, v2

    .line 4018
    iget-object v4, p0, Lcom/android/contacts/EditContactActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/EditContactActivity$GroupEntry;

    iget-boolean v4, v4, Lcom/android/contacts/EditContactActivity$GroupEntry;->check:Z

    aput-boolean v4, v1, v2

    .line 4016
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 4020
    :cond_28
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f060049

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0600b6

    new-instance v6, Lcom/android/contacts/EditContactActivity$11;

    invoke-direct {v6, p0}, Lcom/android/contacts/EditContactActivity$11;-><init>(Lcom/android/contacts/EditContactActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    new-instance v6, Lcom/android/contacts/EditContactActivity$10;

    invoke-direct {v6, p0}, Lcom/android/contacts/EditContactActivity$10;-><init>(Lcom/android/contacts/EditContactActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/contacts/EditContactActivity$9;

    invoke-direct {v5, p0}, Lcom/android/contacts/EditContactActivity$9;-><init>(Lcom/android/contacts/EditContactActivity;)V

    invoke-virtual {v4, v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/EditContactActivity;->mGroupSelectDialog:Landroid/app/AlertDialog;

    .line 4056
    return-void
.end method

.method public createSNSelectDialog()V
    .registers 4

    .prologue
    .line 4060
    sget-object v0, Lcom/android/contacts/EditContactActivity;->mSNLabels:[Ljava/lang/String;

    .line 4062
    .local v0, labels:[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060034

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/EditContactActivity$12;

    invoke-direct {v2, p0}, Lcom/android/contacts/EditContactActivity$12;-><init>(Lcom/android/contacts/EditContactActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/EditContactActivity;->mSNSelectDialog:Landroid/app/AlertDialog;

    .line 4077
    return-void
.end method

.method public defaultBrithDayDialog(Landroid/app/Dialog;)Landroid/app/DatePickerDialog;
    .registers 11
    .parameter "dialog"

    .prologue
    const-string v8, "EditContactActivity"

    const-string v7, "/"

    .line 4103
    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v6, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 4104
    .local v6, date:Ljava/util/Date;
    if-nez p1, :cond_65

    .line 4105
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/android/contacts/EditContactActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-virtual {v6}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v3, v1, 0x76c

    invoke-virtual {v6}, Ljava/util/Date;->getMonth()I

    move-result v4

    invoke-virtual {v6}, Ljava/util/Date;->getDate()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 4107
    .local v0, dateDialog:Landroid/app/DatePickerDialog;
    const v1, 0x7f0600ce

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setTitle(I)V

    .line 4108
    const-string v1, "EditContactActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog is null. defaultBrithDayDialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/util/Date;->getYear()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/util/Date;->getMonth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/util/Date;->getDate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 4113
    .end local v0           #dateDialog:Landroid/app/DatePickerDialog;
    .end local p1
    :goto_64
    return-object v1

    .line 4111
    .restart local p1
    :cond_65
    check-cast p1, Landroid/app/DatePickerDialog;

    .end local p1
    invoke-virtual {v6}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    invoke-virtual {v6}, Ljava/util/Date;->getMonth()I

    move-result v2

    invoke-virtual {v6}, Ljava/util/Date;->getDate()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/DatePickerDialog;->updateDate(III)V

    .line 4112
    const-string v1, "EditContactActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defaultBrithDayDialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/util/Date;->getYear()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/util/Date;->getMonth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/util/Date;->getDate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4113
    const/4 v1, 0x0

    goto :goto_64
.end method

.method public getTypeFromLabelPosition([Ljava/lang/CharSequence;I)I
    .registers 5
    .parameter "labels"
    .parameter "labelPosition"

    .prologue
    .line 1732
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_7

    .line 1733
    const/4 v0, 0x0

    .line 1735
    :goto_6
    return v0

    :cond_7
    add-int/lit8 v0, p2, 0x1

    goto :goto_6
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 27
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 871
    const/4 v3, 0x1

    move/from16 v0, p1

    move v1, v3

    if-ne v0, v1, :cond_a4

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mGroups:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v18, v3, v4

    .line 873
    .local v18, imax:I
    const/4 v3, -0x1

    move/from16 v0, p2

    move v1, v3

    if-ne v0, v1, :cond_83

    .line 874
    new-instance v15, Lcom/android/contacts/EditContactActivity$GroupEntry;

    const/4 v3, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/EditContactActivity$GroupEntry;-><init>(Lcom/android/contacts/EditContactActivity;Lcom/android/contacts/EditContactActivity$1;)V

    .line 875
    .local v15, entry:Lcom/android/contacts/EditContactActivity$GroupEntry;
    const-string v3, "com.android.contacts.extra.GROUP"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/android/contacts/EditContactActivity$GroupEntry;->groupName:Ljava/lang/String;

    .line 876
    iget-object v3, v15, Lcom/android/contacts/EditContactActivity$GroupEntry;->groupName:Ljava/lang/String;

    iput-object v3, v15, Lcom/android/contacts/EditContactActivity$GroupEntry;->groupDispName:Ljava/lang/String;

    .line 877
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    iput-wide v3, v15, Lcom/android/contacts/EditContactActivity$GroupEntry;->groupId:J

    .line 878
    const/4 v3, 0x1

    iput-boolean v3, v15, Lcom/android/contacts/EditContactActivity$GroupEntry;->check:Z

    .line 879
    const/4 v3, 0x1

    iput-boolean v3, v15, Lcom/android/contacts/EditContactActivity$GroupEntry;->confirm:Z

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mGroups:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/contacts/EditContactActivity$GroupEntry;

    .line 882
    .local v19, newGroup:Lcom/android/contacts/EditContactActivity$GroupEntry;
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/contacts/EditContactActivity$GroupEntry;->check:Z

    .line 883
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/contacts/EditContactActivity$GroupEntry;->confirm:Z

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mGroups:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v18

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mGroups:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    .end local v19           #newGroup:Lcom/android/contacts/EditContactActivity$GroupEntry;
    :goto_72
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/EditContactActivity;->setGroupEntries()V

    .line 895
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/EditContactActivity;->mGroupSelectDialog:Landroid/app/AlertDialog;

    .line 896
    const/4 v3, 0x4

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/contacts/EditContactActivity;->removeDialog(I)V

    .line 998
    .end local v15           #entry:Lcom/android/contacts/EditContactActivity$GroupEntry;
    .end local v18           #imax:I
    :cond_82
    :goto_82
    return-void

    .line 888
    .restart local v18       #imax:I
    :cond_83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mGroups:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/contacts/EditContactActivity$GroupEntry;

    .line 889
    .restart local v15       #entry:Lcom/android/contacts/EditContactActivity$GroupEntry;
    const/4 v3, 0x0

    iput-boolean v3, v15, Lcom/android/contacts/EditContactActivity$GroupEntry;->check:Z

    .line 890
    const/4 v3, 0x0

    iput-boolean v3, v15, Lcom/android/contacts/EditContactActivity$GroupEntry;->confirm:Z

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mGroups:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v18

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_72

    .line 900
    .end local v15           #entry:Lcom/android/contacts/EditContactActivity$GroupEntry;
    .end local v18           #imax:I
    :cond_a4
    const/4 v3, -0x1

    move/from16 v0, p2

    move v1, v3

    if-ne v0, v1, :cond_82

    .line 904
    sparse-switch p1, :sswitch_data_258

    goto :goto_82

    .line 959
    :sswitch_ae
    invoke-static/range {p3 .. p3}, Lcom/android/contacts/LinkbookAsyncHelper;->buildFriendFromIntent(Landroid/content/Intent;)Lcom/android/contacts/LinkbookAsyncHelper$LinkbookFriend;

    move-result-object v17

    .line 962
    .local v17, friend:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookFriend;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mPhoto:Landroid/graphics/Bitmap;

    move-object v3, v0

    if-nez v3, :cond_105

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mDrmPhoto:Landroid/graphics/Bitmap;

    move-object v3, v0

    if-nez v3, :cond_105

    .line 963
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookFriend;->mSnSiteId:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookFriend;->mUserUid:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/contacts/LinkbookAsyncHelper;->getProfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;

    move-result-object v22

    .line 964
    .local v22, profile:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;
    if-eqz v22, :cond_105

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;->mImage:Landroid/graphics/Bitmap;

    move-object v3, v0

    if-eqz v3, :cond_105

    .line 965
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;->mImage:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    .line 966
    .local v20, photo:Landroid/graphics/Bitmap;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/EditContactActivity;->mPhoto:Landroid/graphics/Bitmap;

    .line 967
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/EditContactActivity;->mDrmFilename:Ljava/lang/String;

    .line 968
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/EditContactActivity;->mPhotoChanged:Z

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mPhotoImageView:Landroid/widget/ImageView;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 970
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/android/contacts/EditContactActivity;->setPhotoPresent(Z)V

    .line 973
    .end local v20           #photo:Landroid/graphics/Bitmap;
    .end local v22           #profile:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;
    :cond_105
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookFriend;->mSnSiteId:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_156

    .line 974
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookFriend;->mSnSiteId:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/contacts/LinkbookAsyncHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;

    move-result-object v13

    .line 977
    .local v13, account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    if-eqz v13, :cond_23f

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookFriend;->mUserUid:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_23f

    .line 978
    iget-object v4, v13, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mTitle:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookFriend;->mSnsId:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookFriend;->mUserUid:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookFriend;->mSnSiteId:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookFriend;->mSnUserId:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    move-object v3, v0

    const-string v10, "sns_ids"

    invoke-static {v3, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const-wide/16 v11, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v12}, Lcom/android/contacts/EditContactActivity$EditEntry;->newSnsIdEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;J)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v15

    .line 987
    .local v15, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mSnsIdEntries:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 988
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/EditContactActivity;->buildViews()V

    .line 994
    .end local v13           #account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    .end local v15           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :cond_156
    :goto_156
    const/4 v3, 0x7

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/contacts/EditContactActivity;->removeDialog(I)V

    goto/16 :goto_82

    .line 906
    .end local v17           #friend:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookFriend;
    :sswitch_15f
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v16

    .line 907
    .local v16, extras:Landroid/os/Bundle;
    if-eqz v16, :cond_82

    .line 909
    const-string v3, "drm_file"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 910
    .local v14, drmFilename:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/EditContactActivity;->MANAGE_DRM_PHOTO:Z

    move v3, v0

    if-eqz v3, :cond_1af

    if-eqz v14, :cond_1af

    .line 911
    const-string v3, "drm_data"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Landroid/graphics/Bitmap;

    .line 912
    .restart local v20       #photo:Landroid/graphics/Bitmap;
    if-eqz v20, :cond_82

    .line 913
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/EditContactActivity;->mPhoto:Landroid/graphics/Bitmap;

    .line 914
    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/EditContactActivity;->mDrmFilename:Ljava/lang/String;

    .line 915
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/EditContactActivity;->mDrmPhoto:Landroid/graphics/Bitmap;

    .line 916
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/EditContactActivity;->mPhotoChanged:Z

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mPhotoImageView:Landroid/widget/ImageView;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 918
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/android/contacts/EditContactActivity;->setPhotoPresent(Z)V

    goto/16 :goto_82

    .line 923
    .end local v20           #photo:Landroid/graphics/Bitmap;
    :cond_1af
    const-string v3, "data"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Landroid/graphics/Bitmap;

    .line 924
    .restart local v20       #photo:Landroid/graphics/Bitmap;
    if-eqz v20, :cond_82

    .line 925
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/EditContactActivity;->mPhoto:Landroid/graphics/Bitmap;

    .line 926
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/EditContactActivity;->mDrmFilename:Ljava/lang/String;

    .line 927
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/EditContactActivity;->mDrmPhoto:Landroid/graphics/Bitmap;

    .line 928
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/EditContactActivity;->mPhotoChanged:Z

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mPhotoImageView:Landroid/widget/ImageView;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 930
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/android/contacts/EditContactActivity;->setPhotoPresent(Z)V

    goto/16 :goto_82

    .line 938
    .end local v14           #drmFilename:Ljava/lang/String;
    .end local v16           #extras:Landroid/os/Bundle;
    .end local v20           #photo:Landroid/graphics/Bitmap;
    :sswitch_1e8
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v16

    .line 939
    .restart local v16       #extras:Landroid/os/Bundle;
    if-eqz v16, :cond_82

    .line 940
    const-string v3, "data"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Landroid/graphics/Bitmap;

    .line 941
    .restart local v20       #photo:Landroid/graphics/Bitmap;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/EditContactActivity;->mPhoto:Landroid/graphics/Bitmap;

    .line 942
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/EditContactActivity;->mDrmFilename:Ljava/lang/String;

    .line 943
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/EditContactActivity;->mDrmPhoto:Landroid/graphics/Bitmap;

    .line 944
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/EditContactActivity;->mPhotoChanged:Z

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity;->mPhotoImageView:Landroid/widget/ImageView;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 946
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/android/contacts/EditContactActivity;->setPhotoPresent(Z)V

    goto/16 :goto_82

    .line 952
    .end local v16           #extras:Landroid/os/Bundle;
    .end local v20           #photo:Landroid/graphics/Bitmap;
    :sswitch_225
    const-string v3, "android.intent.extra.ringtone.PICKED_URI"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v21

    check-cast v21, Landroid/net/Uri;

    .line 953
    .local v21, pickedUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/contacts/EditContactActivity;->handleRingtonePicked(Landroid/net/Uri;)V

    .line 954
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/EditContactActivity;->mContactChanged:Z

    goto/16 :goto_82

    .line 990
    .end local v21           #pickedUri:Landroid/net/Uri;
    .restart local v13       #account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    .restart local v17       #friend:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookFriend;
    :cond_23f
    const-string v3, "EditContactActivity"

    const-string v4, "account and userID are empty!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const v3, 0x7f0600ef

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_156

    .line 904
    nop

    :sswitch_data_258
    .sparse-switch
        0x2 -> :sswitch_ae
        0xbcd -> :sswitch_15f
        0xbce -> :sswitch_1e8
        0xbcf -> :sswitch_225
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 13
    .parameter "v"

    .prologue
    const/high16 v10, 0x7f05

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 418
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_ce

    .line 497
    :cond_d
    :goto_d
    return-void

    .line 420
    :sswitch_e
    invoke-direct {p0}, Lcom/android/contacts/EditContactActivity;->showAddAttachmentDialog()V

    goto :goto_d

    .line 425
    :sswitch_12
    const v5, 0x7f050034

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 426
    .local v0, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 428
    invoke-direct {p0, p1}, Lcom/android/contacts/EditContactActivity;->findEntryForView(Landroid/view/View;)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v1

    .line 429
    .local v1, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2f

    const-string v5, "1"

    :goto_2a
    iput-object v5, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->data:Ljava/lang/String;

    .line 431
    iput-boolean v8, p0, Lcom/android/contacts/EditContactActivity;->mContactChanged:Z

    goto :goto_d

    .line 429
    :cond_2f
    const-string v5, "0"

    goto :goto_2a

    .line 436
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    .end local v1           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :sswitch_32
    invoke-direct {p0, p1}, Lcom/android/contacts/EditContactActivity;->findEntryForView(Landroid/view/View;)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v1

    .line 437
    .restart local v1       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    invoke-direct {p0, v1}, Lcom/android/contacts/EditContactActivity;->doPickRingtone(Lcom/android/contacts/EditContactActivity$EditEntry;)V

    goto :goto_d

    .line 443
    .end local v1           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :sswitch_3a
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 444
    .local v4, sectionType:I
    invoke-direct {p0, v4}, Lcom/android/contacts/EditContactActivity;->doAddAction(I)V

    goto :goto_d

    .line 449
    .end local v4           #sectionType:I
    :sswitch_48
    invoke-direct {p0}, Lcom/android/contacts/EditContactActivity;->doSaveAction()V

    goto :goto_d

    .line 453
    :sswitch_4c
    invoke-direct {p0}, Lcom/android/contacts/EditContactActivity;->doRevertAction()V

    goto :goto_d

    .line 457
    :sswitch_50
    iput-object v7, p0, Lcom/android/contacts/EditContactActivity;->mSnDeletEntry:Lcom/android/contacts/EditContactActivity$EditEntry;

    .line 458
    invoke-direct {p0, p1}, Lcom/android/contacts/EditContactActivity;->findEntryForView(Landroid/view/View;)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v1

    .line 459
    .restart local v1       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    if-eqz v1, :cond_63

    .line 460
    iget v5, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_67

    .line 461
    iput-object v1, p0, Lcom/android/contacts/EditContactActivity;->mSnDeletEntry:Lcom/android/contacts/EditContactActivity$EditEntry;

    .line 462
    invoke-virtual {p0, v9}, Lcom/android/contacts/EditContactActivity;->showDialog(I)V

    .line 479
    :cond_63
    :goto_63
    invoke-direct {p0}, Lcom/android/contacts/EditContactActivity;->buildViews()V

    goto :goto_d

    .line 463
    :cond_67
    iget v5, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_8d

    .line 464
    iget-object v5, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v5, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    const v6, 0x7f050031

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v5, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 467
    iput-boolean v8, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->isDeleted:Z

    goto :goto_63

    .line 469
    :cond_8d
    iget v5, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    const/4 v6, -0x4

    if-ne v5, v6, :cond_95

    .line 470
    invoke-direct {p0, v1}, Lcom/android/contacts/EditContactActivity;->deleteGroupEntries(Lcom/android/contacts/EditContactActivity$EditEntry;)V

    .line 472
    :cond_95
    iget-object v5, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v5, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 474
    iput-boolean v8, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->isDeleted:Z

    goto :goto_63

    .line 484
    .end local v1           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :sswitch_a8
    invoke-direct {p0, p1}, Lcom/android/contacts/EditContactActivity;->findEntryForView(Landroid/view/View;)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v1

    .line 486
    .restart local v1       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    if-eqz v1, :cond_d

    .line 487
    iget v5, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    invoke-static {p0, v5}, Lcom/android/contacts/EditContactActivity;->getLabelsForKind(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v2

    .line 488
    .local v2, labels:[Ljava/lang/String;
    new-instance v3, Lcom/android/contacts/EditContactActivity$LabelPickedListener;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/contacts/EditContactActivity$LabelPickedListener;-><init>(Lcom/android/contacts/EditContactActivity;Lcom/android/contacts/EditContactActivity$EditEntry;[Ljava/lang/String;)V

    .line 489
    .local v3, listener:Lcom/android/contacts/EditContactActivity$LabelPickedListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f060034

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_d

    .line 418
    :sswitch_data_ce
    .sparse-switch
        0x7f050007 -> :sswitch_a8
        0x7f05002c -> :sswitch_e
        0x7f05002e -> :sswitch_48
        0x7f05002f -> :sswitch_4c
        0x7f050030 -> :sswitch_50
        0x7f050032 -> :sswitch_32
        0x7f050033 -> :sswitch_12
        0x7f05003b -> :sswitch_3a
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "icicle"

    .prologue
    const/high16 v4, 0x7f05

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 583
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 587
    invoke-static {p0}, Lcom/android/contacts/FlexibleOptionHelper;->isLinkbookEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/EditContactActivity;->MANAGE_SOCIAL_NETWORK:Z

    .line 589
    invoke-virtual {p0}, Lcom/android/contacts/EditContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    .line 590
    iput v1, p0, Lcom/android/contacts/EditContactActivity;->mState:I

    .line 592
    iput-boolean v1, p0, Lcom/android/contacts/EditContactActivity;->mIsMyProfile:Z

    .line 596
    invoke-virtual {p0}, Lcom/android/contacts/EditContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 597
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 598
    .local v6, action:Ljava/lang/String;
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    .line 602
    invoke-direct {p0}, Lcom/android/contacts/EditContactActivity;->setupSections()V

    .line 605
    invoke-virtual {p0}, Lcom/android/contacts/EditContactActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/EditContactActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 606
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03000f

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/EditContactActivity;->mContentView:Landroid/view/ViewGroup;

    .line 609
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/contacts/EditContactActivity;->setContentView(Landroid/view/View;)V

    .line 611
    const v0, 0x7f05002d

    invoke-virtual {p0, v0}, Lcom/android/contacts/EditContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/contacts/EditContactActivity;->mLayout:Landroid/widget/LinearLayout;

    .line 612
    const v0, 0x7f05000e

    invoke-virtual {p0, v0}, Lcom/android/contacts/EditContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/contacts/EditContactActivity;->mNameView:Landroid/widget/EditText;

    .line 613
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mNameView:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    .line 614
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mNameView:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setNextFocusRightId(I)V

    .line 616
    const v0, 0x7f05003a

    invoke-virtual {p0, v0}, Lcom/android/contacts/EditContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/contacts/EditContactActivity;->mPhoneticNameView:Landroid/widget/EditText;

    .line 617
    const v0, 0x7f05002c

    invoke-virtual {p0, v0}, Lcom/android/contacts/EditContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/EditContactActivity;->mPhotoImageView:Landroid/widget/ImageView;

    .line 618
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    const v0, 0x7f05002e

    invoke-virtual {p0, v0}, Lcom/android/contacts/EditContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 622
    .local v9, view:Landroid/view/View;
    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    const v0, 0x7f05002f

    invoke-virtual {p0, v0}, Lcom/android/contacts/EditContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 624
    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_9f

    .line 629
    const-string v0, "android.intent.action.EDIT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 630
    iput v10, p0, Lcom/android/contacts/EditContactActivity;->mState:I

    .line 636
    :cond_9f
    :goto_9f
    iget v0, p0, Lcom/android/contacts/EditContactActivity;->mState:I

    if-nez v0, :cond_ca

    .line 637
    const-string v0, "EditContactActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot resolve intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-virtual {p0}, Lcom/android/contacts/EditContactActivity;->finish()V

    .line 689
    :cond_be
    :goto_be
    return-void

    .line 631
    :cond_bf
    const-string v0, "android.intent.action.INSERT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 632
    iput v2, p0, Lcom/android/contacts/EditContactActivity;->mState:I

    goto :goto_9f

    .line 642
    :cond_ca
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_SYSTEM_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 643
    iput-boolean v10, p0, Lcom/android/contacts/EditContactActivity;->mIsMyProfile:Z

    .line 646
    :cond_d6
    iget v0, p0, Lcom/android/contacts/EditContactActivity;->mState:I

    if-ne v0, v2, :cond_106

    .line 647
    if-nez p1, :cond_e6

    .line 648
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/EditContactActivity;->buildEntriesForInsert(Landroid/os/Bundle;)V

    .line 649
    invoke-direct {p0}, Lcom/android/contacts/EditContactActivity;->buildViews()V

    .line 651
    :cond_e6
    iget-boolean v0, p0, Lcom/android/contacts/EditContactActivity;->mIsMyProfile:Z

    if-nez v0, :cond_ff

    .line 652
    const v0, 0x7f060024

    invoke-virtual {p0, v0}, Lcom/android/contacts/EditContactActivity;->setTitle(I)V

    .line 653
    const-string v0, "com.android.contacts.extra.GROUP_ID"

    const-wide/16 v1, 0x0

    invoke-virtual {v7, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/EditContactActivity;->setGroupSelectionEntries(J)I

    .line 654
    invoke-direct {p0}, Lcom/android/contacts/EditContactActivity;->setGroupEntries()V

    goto :goto_be

    .line 656
    :cond_ff
    const v0, 0x7f0600ca

    invoke-virtual {p0, v0}, Lcom/android/contacts/EditContactActivity;->setTitle(I)V

    goto :goto_be

    .line 658
    :cond_106
    iget v0, p0, Lcom/android/contacts/EditContactActivity;->mState:I

    if-ne v0, v10, :cond_be

    .line 659
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/ContactEntryAdapter;->CONTACT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 662
    .local v8, personCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_151

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_151

    .line 663
    const/16 v0, 0xa

    invoke-interface {v8, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_12e

    .line 664
    iput-boolean v10, p0, Lcom/android/contacts/EditContactActivity;->mIsMyProfile:Z

    .line 665
    const v0, 0x7f0600cb

    invoke-virtual {p0, v0}, Lcom/android/contacts/EditContactActivity;->setTitle(I)V

    .line 672
    :cond_12e
    if-nez p1, :cond_13a

    .line 673
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0, v8}, Lcom/android/contacts/EditContactActivity;->buildEntriesForEdit(Landroid/os/Bundle;Landroid/database/Cursor;)V

    .line 674
    invoke-direct {p0}, Lcom/android/contacts/EditContactActivity;->buildViews()V

    .line 676
    :cond_13a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 678
    iget-boolean v0, p0, Lcom/android/contacts/EditContactActivity;->mIsMyProfile:Z

    if-nez v0, :cond_170

    .line 679
    const v0, 0x7f060023

    invoke-virtual {p0, v0}, Lcom/android/contacts/EditContactActivity;->setTitle(I)V

    .line 680
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/EditContactActivity;->setGroupSelectionEntries(J)I

    .line 681
    invoke-direct {p0}, Lcom/android/contacts/EditContactActivity;->setGroupEntries()V

    goto/16 :goto_be

    .line 668
    :cond_151
    const-string v0, "EditContactActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid contact uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-virtual {p0}, Lcom/android/contacts/EditContactActivity;->finish()V

    goto/16 :goto_be

    .line 683
    :cond_170
    const v0, 0x7f0600cb

    invoke-virtual {p0, v0}, Lcom/android/contacts/EditContactActivity;->setTitle(I)V

    goto/16 :goto_be
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 10
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    const v7, 0x7f060104

    const v6, 0x104000a

    const/high16 v5, 0x104

    const/4 v4, 0x0

    .line 1556
    packed-switch p1, :pswitch_data_e4

    .line 1635
    :pswitch_d
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_11
    return-object v1

    .line 1558
    :pswitch_12
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f06001b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06001c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/EditContactActivity;->mDeleteContactDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_11

    .line 1569
    :pswitch_3f
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f06001b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06001c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/EditContactActivity;->mDeleteSimContactDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_11

    .line 1578
    :pswitch_65
    invoke-virtual {p0}, Lcom/android/contacts/EditContactActivity;->createGroupSelectionDialog()V

    .line 1579
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity;->mGroupSelectDialog:Landroid/app/AlertDialog;

    goto :goto_11

    .line 1585
    :pswitch_6b
    invoke-virtual {p0, v3}, Lcom/android/contacts/EditContactActivity;->defaultBrithDayDialog(Landroid/app/Dialog;)Landroid/app/DatePickerDialog;

    move-result-object v1

    goto :goto_11

    .line 1588
    :pswitch_70
    invoke-virtual {p0}, Lcom/android/contacts/EditContactActivity;->createSNSelectDialog()V

    .line 1589
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity;->mSNSelectDialog:Landroid/app/AlertDialog;

    goto :goto_11

    .line 1592
    :pswitch_76
    const/4 v0, 0x0

    .line 1593
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity;->mSnDeletEntry:Lcom/android/contacts/EditContactActivity$EditEntry;

    if-eqz v1, :cond_df

    .line 1594
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity;->mSnDeletEntry:Lcom/android/contacts/EditContactActivity$EditEntry;

    iget-object v1, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->data:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_cc

    .line 1595
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/contacts/EditContactActivity;->mSnDeletEntry:Lcom/android/contacts/EditContactActivity$EditEntry;

    iget-object v2, v2, Lcom/android/contacts/EditContactActivity$EditEntry;->label:Ljava/lang/String;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/contacts/EditContactActivity;->mSnDeletEntry:Lcom/android/contacts/EditContactActivity$EditEntry;

    iget-object v3, v3, Lcom/android/contacts/EditContactActivity$EditEntry;->data:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v7, v1}, Lcom/android/contacts/EditContactActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1602
    :goto_99
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060103

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/EditContactActivity$6;

    invoke-direct {v2, p0}, Lcom/android/contacts/EditContactActivity$6;-><init>(Lcom/android/contacts/EditContactActivity;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/EditContactActivity$5;

    invoke-direct {v2, p0}, Lcom/android/contacts/EditContactActivity$5;-><init>(Lcom/android/contacts/EditContactActivity;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_11

    .line 1597
    :cond_cc
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/contacts/EditContactActivity;->mSnDeletEntry:Lcom/android/contacts/EditContactActivity$EditEntry;

    iget-object v2, v2, Lcom/android/contacts/EditContactActivity$EditEntry;->label:Ljava/lang/String;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {p0, v7, v1}, Lcom/android/contacts/EditContactActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_99

    .line 1600
    :cond_df
    invoke-virtual {p0, v7}, Lcom/android/contacts/EditContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_99

    .line 1556
    :pswitch_data_e4
    .packed-switch 0x2
        :pswitch_12
        :pswitch_3f
        :pswitch_65
        :pswitch_6b
        :pswitch_d
        :pswitch_70
        :pswitch_76
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1019
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1021
    const v0, 0x7f06001d

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1026
    const/4 v0, 0x4

    const v1, 0x7f06001e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200d0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/EditContactActivity;->mSimMenu:Landroid/view/MenuItem;

    .line 1030
    invoke-virtual {p0}, Lcom/android/contacts/EditContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_72

    .line 1031
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mSimMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1036
    :goto_3a
    iget v0, p0, Lcom/android/contacts/EditContactActivity;->mState:I

    if-ne v0, v3, :cond_50

    .line 1037
    iget-boolean v0, p0, Lcom/android/contacts/EditContactActivity;->mIsMyProfile:Z

    if-nez v0, :cond_50

    .line 1038
    const/4 v0, 0x3

    const v1, 0x7f060014

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1050
    :cond_50
    const/4 v0, 0x2

    const v1, 0x7f060022

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x71

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1054
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/EditContactActivity;->mCaptureMenuItem:Landroid/view/MenuItem;

    .line 1056
    iget-boolean v0, p0, Lcom/android/contacts/EditContactActivity;->mPhotoPresent:Z

    invoke-direct {p0, v0}, Lcom/android/contacts/EditContactActivity;->setPhotoPresent(Z)V

    .line 1058
    return v3

    .line 1033
    :cond_72
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mSimMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_3a
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 4006
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 4007
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1003
    packed-switch p1, :pswitch_data_16

    .line 1013
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_7
    return v0

    .line 1005
    :pswitch_8
    sget-boolean v0, Lcom/android/contacts/EditContactActivity;->saveSIM:Z

    if-nez v0, :cond_11

    .line 1006
    invoke-direct {p0}, Lcom/android/contacts/EditContactActivity;->doSaveAction()V

    .line 1010
    :goto_f
    const/4 v0, 0x1

    goto :goto_7

    .line 1008
    :cond_11
    invoke-virtual {p0}, Lcom/android/contacts/EditContactActivity;->finish()V

    goto :goto_f

    .line 1003
    nop

    :pswitch_data_16
    .packed-switch 0x4
        :pswitch_8
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1077
    sput-boolean v2, Lcom/android/contacts/EditContactActivity;->saveSIM:Z

    .line 1079
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_32

    :pswitch_b
    move v0, v2

    .line 1116
    :goto_c
    return v0

    .line 1081
    :pswitch_d
    invoke-direct {p0}, Lcom/android/contacts/EditContactActivity;->doSaveAction()V

    move v0, v1

    .line 1082
    goto :goto_c

    .line 1085
    :pswitch_12
    invoke-direct {p0}, Lcom/android/contacts/EditContactActivity;->doRevertAction()V

    move v0, v1

    .line 1086
    goto :goto_c

    .line 1090
    :pswitch_17
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/contacts/EditContactActivity;->showDialog(I)V

    move v0, v1

    .line 1091
    goto :goto_c

    .line 1095
    :pswitch_1d
    invoke-direct {p0}, Lcom/android/contacts/EditContactActivity;->doSaveSIMAction()V

    .line 1096
    sput-boolean v1, Lcom/android/contacts/EditContactActivity;->saveSIM:Z

    move v0, v1

    .line 1097
    goto :goto_c

    .line 1108
    :pswitch_24
    iget-boolean v0, p0, Lcom/android/contacts/EditContactActivity;->mPhotoPresent:Z

    if-nez v0, :cond_2d

    .line 1109
    invoke-direct {p0}, Lcom/android/contacts/EditContactActivity;->showAddAttachmentDialog()V

    :goto_2b
    move v0, v1

    .line 1113
    goto :goto_c

    .line 1111
    :cond_2d
    invoke-direct {p0}, Lcom/android/contacts/EditContactActivity;->doRemovePhotoAction()V

    goto :goto_2b

    .line 1079
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_d
        :pswitch_12
        :pswitch_17
        :pswitch_1d
        :pswitch_b
        :pswitch_24
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 705
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 706
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/contacts/EditContactActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 707
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1656
    packed-switch p1, :pswitch_data_8

    .line 1670
    :goto_3
    return-void

    .line 1666
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/android/contacts/EditContactActivity;->defaultBrithDayDialog(Landroid/app/Dialog;)Landroid/app/DatePickerDialog;

    goto :goto_3

    .line 1656
    :pswitch_data_8
    .packed-switch 0x5
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1064
    invoke-virtual {p0}, Lcom/android/contacts/EditContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_1b

    .line 1065
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mSimMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1069
    :goto_13
    const-string v0, "EditContactActivity"

    const-string v1, "prepare"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    return v3

    .line 1067
    :cond_1b
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity;->mSimMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_13
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 9
    .parameter "inState"

    .prologue
    const/4 v6, 0x0

    .line 808
    const-string v4, "phoneEntries"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/EditContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    .line 809
    const-string v4, "emailEntries"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/EditContactActivity;->mEmailEntries:Ljava/util/ArrayList;

    .line 811
    iget-boolean v4, p0, Lcom/android/contacts/EditContactActivity;->MANAGE_SOCIAL_NETWORK:Z

    if-eqz v4, :cond_27

    .line 812
    const-string v4, "snsidEntries"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/EditContactActivity;->mSnsIdEntries:Ljava/util/ArrayList;

    .line 813
    const-string v4, "deleteSnsEntry"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/EditContactActivity$EditEntry;

    iput-object v4, p0, Lcom/android/contacts/EditContactActivity;->mSnDeletEntry:Lcom/android/contacts/EditContactActivity$EditEntry;

    .line 816
    :cond_27
    const-string v4, "imEntries"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/EditContactActivity;->mImEntries:Ljava/util/ArrayList;

    .line 817
    const-string v4, "postalEntries"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/EditContactActivity;->mPostalEntries:Ljava/util/ArrayList;

    .line 818
    const-string v4, "birthdayEntries"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/EditContactActivity;->mBirthdayEntries:Ljava/util/ArrayList;

    .line 819
    const-string v4, "groupEntries"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/EditContactActivity;->mGroupEntries:Ljava/util/ArrayList;

    .line 820
    const-string v4, "orgEntries"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/EditContactActivity;->mOrgEntries:Ljava/util/ArrayList;

    .line 821
    const-string v4, "noteEntries"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/EditContactActivity;->mNoteEntries:Ljava/util/ArrayList;

    .line 822
    const-string v4, "otherEntries"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/EditContactActivity;->mOtherEntries:Ljava/util/ArrayList;

    .line 823
    const-string v4, "websiteEntries"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/EditContactActivity;->mWebsiteEntries:Ljava/util/ArrayList;

    .line 824
    invoke-direct {p0}, Lcom/android/contacts/EditContactActivity;->setupSections()V

    .line 826
    const-string v4, "state"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/contacts/EditContactActivity;->mState:I

    .line 827
    const-string v4, "uri"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    .line 828
    iget-object v4, p0, Lcom/android/contacts/EditContactActivity;->mNameView:Landroid/widget/EditText;

    const-string v5, "name"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 830
    const/4 v1, 0x0

    .line 831
    .local v1, photo:Landroid/graphics/Bitmap;
    const-string v4, "photo"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/android/contacts/EditContactActivity;->mPhoto:Landroid/graphics/Bitmap;

    .line 832
    const-string v4, "drmfilename"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/EditContactActivity;->mDrmFilename:Ljava/lang/String;

    .line 833
    iget-object v4, p0, Lcom/android/contacts/EditContactActivity;->mPhoto:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_eb

    .line 834
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity;->mPhoto:Landroid/graphics/Bitmap;

    .line 842
    :cond_a0
    :goto_a0
    if-eqz v1, :cond_100

    .line 843
    iget-object v4, p0, Lcom/android/contacts/EditContactActivity;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 844
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/contacts/EditContactActivity;->setPhotoPresent(Z)V

    .line 849
    :goto_ab
    const-string v4, "photoChanged"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/contacts/EditContactActivity;->mPhotoChanged:Z

    .line 850
    iget-object v4, p0, Lcom/android/contacts/EditContactActivity;->mPhoneticNameView:Landroid/widget/EditText;

    const-string v5, "phoneticName"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 851
    const-string v4, "contactChanged"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/contacts/EditContactActivity;->mContactChanged:Z

    .line 854
    invoke-direct {p0}, Lcom/android/contacts/EditContactActivity;->buildViews()V

    .line 857
    const-string v4, "requestFocusId"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 858
    .local v3, requestFocusId:I
    iget-object v4, p0, Lcom/android/contacts/EditContactActivity;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 859
    .local v0, focusedChild:Landroid/view/View;
    if-eqz v0, :cond_ea

    .line 860
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 861
    instance-of v4, v0, Landroid/widget/EditText;

    if-eqz v4, :cond_ea

    .line 862
    const-string v4, "requestCursor"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 863
    .local v2, requestCursor:I
    check-cast v0, Landroid/widget/EditText;

    .end local v0           #focusedChild:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 866
    .end local v2           #requestCursor:I
    :cond_ea
    return-void

    .line 837
    .end local v3           #requestFocusId:I
    :cond_eb
    iget-boolean v4, p0, Lcom/android/contacts/EditContactActivity;->MANAGE_DRM_PHOTO:Z

    if-eqz v4, :cond_a0

    iget-object v4, p0, Lcom/android/contacts/EditContactActivity;->mDrmFilename:Ljava/lang/String;

    if-eqz v4, :cond_a0

    .line 838
    const-string v4, "drmphoto"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/android/contacts/EditContactActivity;->mDrmPhoto:Landroid/graphics/Bitmap;

    .line 839
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity;->mDrmPhoto:Landroid/graphics/Bitmap;

    goto :goto_a0

    .line 846
    :cond_100
    invoke-direct {p0, v6}, Lcom/android/contacts/EditContactActivity;->setPhotoPresent(Z)V

    goto :goto_ab
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 694
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 696
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 697
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 698
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 699
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity;->mediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/EditContactActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 700
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 11
    .parameter "outState"

    .prologue
    .line 735
    iget-object v7, p0, Lcom/android/contacts/EditContactActivity;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 736
    .local v2, focusedChild:Landroid/view/View;
    const/4 v3, 0x0

    .line 737
    .local v3, focusedEntry:Lcom/android/contacts/EditContactActivity$EditEntry;
    :goto_7
    if-eqz v2, :cond_25

    .line 738
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 739
    .local v6, tag:Ljava/lang/Object;
    instance-of v7, v6, Lcom/android/contacts/EditContactActivity$EditEntry;

    if-eqz v7, :cond_15

    .line 740
    move-object v0, v6

    check-cast v0, Lcom/android/contacts/EditContactActivity$EditEntry;

    move-object v3, v0

    .line 744
    :cond_15
    instance-of v7, v2, Landroid/view/ViewGroup;

    if-eqz v7, :cond_25

    .line 745
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 746
    .local v1, deeperFocus:Landroid/view/View;
    if-eqz v1, :cond_25

    .line 747
    move-object v2, v1

    .line 754
    goto :goto_7

    .line 756
    .end local v1           #deeperFocus:Landroid/view/View;
    .end local v6           #tag:Ljava/lang/Object;
    :cond_25
    if-eqz v2, :cond_3c

    .line 757
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v5

    .line 758
    .local v5, requestFocusId:I
    const/4 v4, 0x0

    .line 759
    .local v4, requestCursor:I
    instance-of v7, v2, Landroid/widget/EditText;

    if-eqz v7, :cond_36

    .line 760
    check-cast v2, Landroid/widget/EditText;

    .end local v2           #focusedChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v4

    .line 765
    :cond_36
    if-eqz v3, :cond_e8

    .line 766
    iput v5, v3, Lcom/android/contacts/EditContactActivity$EditEntry;->requestFocusId:I

    .line 767
    iput v4, v3, Lcom/android/contacts/EditContactActivity$EditEntry;->requestCursor:I

    .line 774
    .end local v4           #requestCursor:I
    .end local v5           #requestFocusId:I
    :cond_3c
    :goto_3c
    const-string v7, "phoneEntries"

    iget-object v8, p0, Lcom/android/contacts/EditContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 775
    const-string v7, "emailEntries"

    iget-object v8, p0, Lcom/android/contacts/EditContactActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 777
    iget-boolean v7, p0, Lcom/android/contacts/EditContactActivity;->MANAGE_SOCIAL_NETWORK:Z

    if-eqz v7, :cond_5c

    .line 778
    const-string v7, "snsidEntries"

    iget-object v8, p0, Lcom/android/contacts/EditContactActivity;->mSnsIdEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 779
    const-string v7, "deleteSnsEntry"

    iget-object v8, p0, Lcom/android/contacts/EditContactActivity;->mSnDeletEntry:Lcom/android/contacts/EditContactActivity$EditEntry;

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 782
    :cond_5c
    const-string v7, "imEntries"

    iget-object v8, p0, Lcom/android/contacts/EditContactActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 783
    const-string v7, "postalEntries"

    iget-object v8, p0, Lcom/android/contacts/EditContactActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 784
    const-string v7, "birthdayEntries"

    iget-object v8, p0, Lcom/android/contacts/EditContactActivity;->mBirthdayEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 785
    const-string v7, "orgEntries"

    iget-object v8, p0, Lcom/android/contacts/EditContactActivity;->mOrgEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 786
    const-string v7, "noteEntries"

    iget-object v8, p0, Lcom/android/contacts/EditContactActivity;->mNoteEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 787
    const-string v7, "otherEntries"

    iget-object v8, p0, Lcom/android/contacts/EditContactActivity;->mOtherEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 788
    const-string v7, "websiteEntries"

    iget-object v8, p0, Lcom/android/contacts/EditContactActivity;->mWebsiteEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 789
    const-string v7, "groupEntries"

    iget-object v8, p0, Lcom/android/contacts/EditContactActivity;->mGroupEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 790
    const-string v7, "state"

    iget v8, p0, Lcom/android/contacts/EditContactActivity;->mState:I

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 791
    const-string v7, "uri"

    iget-object v8, p0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 792
    const-string v7, "name"

    iget-object v8, p0, Lcom/android/contacts/EditContactActivity;->mNameView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const-string v7, "photo"

    iget-object v8, p0, Lcom/android/contacts/EditContactActivity;->mPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 795
    iget-boolean v7, p0, Lcom/android/contacts/EditContactActivity;->MANAGE_DRM_PHOTO:Z

    if-eqz v7, :cond_ca

    .line 796
    const-string v7, "drmfilename"

    iget-object v8, p0, Lcom/android/contacts/EditContactActivity;->mDrmFilename:Ljava/lang/String;

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    const-string v7, "drmphoto"

    iget-object v8, p0, Lcom/android/contacts/EditContactActivity;->mDrmPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 800
    :cond_ca
    const-string v7, "photoChanged"

    iget-boolean v8, p0, Lcom/android/contacts/EditContactActivity;->mPhotoChanged:Z

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 801
    const-string v7, "phoneticName"

    iget-object v8, p0, Lcom/android/contacts/EditContactActivity;->mPhoneticNameView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    const-string v7, "contactChanged"

    iget-boolean v8, p0, Lcom/android/contacts/EditContactActivity;->mContactChanged:Z

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 803
    return-void

    .line 769
    .restart local v4       #requestCursor:I
    .restart local v5       #requestFocusId:I
    :cond_e8
    const-string v7, "requestFocusId"

    invoke-virtual {p1, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 770
    const-string v7, "requestCursor"

    invoke-virtual {p1, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3c
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 4000
    return-void
.end method

.method public reorderNoteEntries()V
    .registers 11

    .prologue
    const/high16 v9, 0x7f05

    .line 2323
    const/4 v1, 0x0

    .line 2324
    .local v1, hasPersonNote:Z
    const/4 v5, 0x0

    .line 2325
    .local v5, stuffNote:Lcom/android/contacts/EditContactActivity$EditEntry;
    const/4 v6, 0x0

    .line 2326
    .local v6, stuffNoteIndex:I
    iget-object v7, p0, Lcom/android/contacts/EditContactActivity;->mNoteEntries:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2327
    .local v3, imax:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    if-ge v2, v3, :cond_5d

    .line 2328
    iget-object v7, p0, Lcom/android/contacts/EditContactActivity;->mNoteEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/EditContactActivity$EditEntry;

    .line 2329
    .local v0, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    const-string v7, "notes"

    iget-object v8, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->column:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    iget v7, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2d

    iget-boolean v7, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->isDeleted:Z

    if-nez v7, :cond_2d

    .line 2332
    const/4 v1, 0x1

    .line 2327
    :cond_2a
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 2333
    :cond_2d
    const-string v7, "data"

    iget-object v8, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->column:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    iget v7, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->kind:I

    const/4 v8, 0x7

    if-ne v7, v8, :cond_2a

    iget-boolean v7, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->isDeleted:Z

    if-nez v7, :cond_2a

    if-nez v5, :cond_2a

    .line 2337
    iget-object v7, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2338
    .local v4, note:Ljava/lang/String;
    if-eqz v4, :cond_2a

    invoke-static {v4}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 2339
    move-object v5, v0

    .line 2340
    move v6, v2

    goto :goto_2a

    .line 2344
    .end local v0           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    .end local v4           #note:Ljava/lang/String;
    :cond_5d
    if-nez v1, :cond_97

    if-eqz v5, :cond_97

    .line 2345
    iget-object v7, v5, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2346
    .restart local v4       #note:Ljava/lang/String;
    iget-object v7, v5, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2347
    iget-object v7, v5, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2348
    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/android/contacts/EditContactActivity$EditEntry;->isDeleted:Z

    .line 2349
    iget-object v7, p0, Lcom/android/contacts/EditContactActivity;->mNoteEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v6, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2350
    iget-object v7, p0, Lcom/android/contacts/EditContactActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v4, v7}, Lcom/android/contacts/EditContactActivity$EditEntry;->newNotesEntry(Lcom/android/contacts/EditContactActivity;Ljava/lang/String;Landroid/net/Uri;)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v0

    .line 2351
    .restart local v0       #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    iget-object v7, p0, Lcom/android/contacts/EditContactActivity;->mNoteEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2353
    .end local v0           #entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    .end local v4           #note:Ljava/lang/String;
    :cond_97
    return-void
.end method
