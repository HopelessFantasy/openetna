.class public Lcom/android/contacts/ViewContactProfilesActivity;
.super Landroid/app/ListActivity;
.source "ViewContactProfilesActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ViewContactProfilesActivity$ProfileId;,
        Lcom/android/contacts/ViewContactProfilesActivity$ViewAdapter;,
        Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;,
        Lcom/android/contacts/ViewContactProfilesActivity$ProfileViewCache;,
        Lcom/android/contacts/ViewContactProfilesActivity$DeleteClickListener;
    }
.end annotation


# static fields
.field static final CONTACTS_PROJECTION:[Ljava/lang/String; = null

.field private static final FOCUS_KEY:Ljava/lang/String; = "focused"

.field private static final LIST_STATE_KEY:Ljava/lang/String; = "liststate"

.field public static final MENU_GOTO_SN_MANAGER:I = 0x2

.field public static final MENU_ITEM_COMMENT:I = 0x3

.field public static final MENU_ITEM_EDIT:I = 0x2

.field public static final MENU_ITEM_MARK_ALL:I = 0xa

.field public static final MENU_ITEM_MESSAGE:I = 0x4

.field public static final MENU_ITEM_REMOVE_PROFILE:I = 0x8

.field public static final MENU_ITEM_UNMARK_ALL:I = 0xb

.field public static final MENU_ITEM_VIEW:I = 0x1

.field public static final MENU_REFRESH:I = 0x1

.field public static final MENU_REMOVE_PROFILES:I = 0x3

.field private static final MODE_DELETE_PROFILES:I = 0xf

.field private static final MODE_SHOW_ALL_PROFILES:I = 0xa

.field private static final MODE_UNKNOWN:I = -0x1

.field static final NUMBER_COLUMN_INDEX:I = 0x1

.field static final SNPROFILE_PROJECTION:[Ljava/lang/String; = null

.field static final SNSIDS_ID_INDEX:I = 0x0

.field static final SNSIDS_SN_SITE_ID_INDEX:I = 0x1

.field static final SNSIDS_USER_ID_INDEX:I = 0x2

.field private static final SUBACTIVITY_ADD_ACCOUNT:I = 0x3

.field private static final SUBACTIVITY_DELETE_ACCOUNT:I = 0x4

.field private static final SUBACTIVITY_LOGIN:I = 0x2

.field private static final SUBACTIVITY_PICK_SNSID:I = 0x6

.field private static final SUBACTIVITY_REMOVE_PROFILE:I = 0x5

.field static final SYSTEMID_COLUMN_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SNViewContactProfileActivity"

.field private static mOwnNumber:Ljava/lang/String;


# instance fields
.field private mAccountMenu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/android/contacts/ViewContactProfilesActivity$ViewAdapter;

.field private mButtonLayout:Landroid/widget/LinearLayout;

.field private mCallButton:Landroid/widget/Button;

.field private mCursor:Landroid/database/Cursor;

.field private mIsMyProfile:Z

.field private mListHasFocus:Z

.field private mListState:Landroid/os/Parcelable;

.field private mMessageButton:Landroid/widget/Button;

.field private mMode:I

.field private mPhoneNumber:Ljava/lang/String;

.field private mProfileEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactProfilesActivity$ProfileId;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "system_id"

    aput-object v1, v0, v2

    const-string v1, "number"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/contacts/ViewContactProfilesActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 101
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "sn_site_id"

    aput-object v1, v0, v3

    const-string v1, "user_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/contacts/ViewContactProfilesActivity;->SNPROFILE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mProfileEntries:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mProfileIds:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mAccountMenu:Ljava/util/ArrayList;

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mListState:Landroid/os/Parcelable;

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mListHasFocus:Z

    .line 955
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/ViewContactProfilesActivity;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/ViewContactProfilesActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mProfileEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/ViewContactProfilesActivity;)Lcom/android/contacts/ViewContactProfilesActivity$ViewAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mAdapter:Lcom/android/contacts/ViewContactProfilesActivity$ViewAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/ViewContactProfilesActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mAccountMenu:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/ViewContactProfilesActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mMode:I

    return v0
.end method

.method private final buildEntries()V
    .registers 8

    .prologue
    .line 431
    iget-object v4, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mProfileEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 434
    iget-object v4, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mProfileIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/ViewContactProfilesActivity$ProfileId;

    .line 435
    .local v3, profileId:Lcom/android/contacts/ViewContactProfilesActivity$ProfileId;
    iget-object v4, v3, Lcom/android/contacts/ViewContactProfilesActivity$ProfileId;->snSiteId:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/contacts/ViewContactProfilesActivity$ProfileId;->userUid:Ljava/lang/String;

    invoke-static {p0, v4, v5}, Lcom/android/contacts/LinkbookAsyncHelper;->getProfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;

    move-result-object v2

    .line 436
    .local v2, profile:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;
    if-eqz v2, :cond_66

    .line 437
    new-instance v0, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;-><init>()V

    .line 438
    .local v0, entry:Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;
    iget-wide v4, v3, Lcom/android/contacts/ViewContactProfilesActivity$ProfileId;->_id:J

    iput-wide v4, v0, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->id:J

    .line 439
    iget-object v4, v2, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;->mUri:Landroid/net/Uri;

    iput-object v4, v0, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 440
    iget-object v4, v2, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;->mSnSiteId:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->snSiteId:Ljava/lang/String;

    .line 441
    iget-object v4, v3, Lcom/android/contacts/ViewContactProfilesActivity$ProfileId;->userUid:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->userUid:Ljava/lang/String;

    .line 442
    iget-object v4, v2, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;->mStatus:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->data:Ljava/lang/String;

    .line 443
    iget-object v4, v2, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;->mImage:Landroid/graphics/Bitmap;

    iput-object v4, v0, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->photoData:Landroid/graphics/Bitmap;

    .line 444
    const v4, 0x104000e

    invoke-virtual {p0, v4}, Lcom/android/contacts/ViewContactProfilesActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->name:Ljava/lang/String;

    .line 445
    iget-object v4, v2, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;->mDisplayName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_59

    .line 446
    iget-object v4, v2, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;->mDisplayName:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->name:Ljava/lang/String;

    .line 452
    :cond_53
    :goto_53
    iget-object v4, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mProfileEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 448
    :cond_59
    iget-object v4, v2, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;->mUserName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 449
    iget-object v4, v2, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;->mUserName:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->name:Ljava/lang/String;

    goto :goto_53

    .line 454
    .end local v0           #entry:Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;
    :cond_66
    const-string v4, "SNViewContactProfileActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wasn\'t found profile snsId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/contacts/ViewContactProfilesActivity$ProfileId;->snSiteId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/contacts/ViewContactProfilesActivity$ProfileId;->userUid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 458
    .end local v2           #profile:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;
    .end local v3           #profileId:Lcom/android/contacts/ViewContactProfilesActivity$ProfileId;
    :cond_8e
    iget-object v4, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mProfileEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/contacts/ViewContactProfilesActivity;->setEmptyTextLayout(I)V

    .line 459
    return-void
.end method

.method private dataChanged()V
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 374
    iget-object v1, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    .line 375
    iget-object v1, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 376
    const-string v1, "My profile"

    iget-object v2, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 377
    iput-boolean v4, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mIsMyProfile:Z

    .line 379
    :cond_21
    iget-object v1, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mPhoneNumber:Ljava/lang/String;

    .line 382
    :cond_29
    iget v1, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mMode:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_64

    iget-object v1, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 383
    iget-object v1, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 384
    iget-boolean v1, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mIsMyProfile:Z

    if-eqz v1, :cond_63

    sget-object v1, Lcom/android/contacts/ViewContactProfilesActivity;->mOwnNumber:Ljava/lang/String;

    if-eqz v1, :cond_63

    iget-object v1, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mPhoneNumber:Ljava/lang/String;

    if-eqz v1, :cond_63

    .line 385
    iget-object v1, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, number:Ljava/lang/String;
    const-string v1, "+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 387
    sget-object v1, Lcom/android/contacts/ViewContactProfilesActivity;->mOwnNumber:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 388
    iget-object v1, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 394
    .end local v0           #number:Ljava/lang/String;
    :cond_63
    :goto_63
    return-void

    .line 392
    :cond_64
    iget-object v1, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_63
.end method

.method private deleteMarkedProfiles()I
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 788
    iget-object v6, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v4

    .line 789
    .local v4, sba:Landroid/util/SparseBooleanArray;
    iget-object v6, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v3

    .line 791
    .local v3, imax:I
    const/4 v0, 0x0

    .line 793
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v3, :cond_46

    .line 794
    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 795
    iget-object v6, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v6, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;

    .line 796
    .local v1, entry:Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;
    iget-object v6, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mUri:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sns_ids/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v1, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 797
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactProfilesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 798
    add-int/lit8 v0, v0, 0x1

    .line 793
    .end local v1           #entry:Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 801
    :cond_46
    return v0
.end method

.method private final getProfilesInfo()V
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 398
    iget-object v0, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mProfileIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 400
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mIsMyProfile:Z

    if-nez v0, :cond_68

    .line 401
    iget-object v0, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mUri:Landroid/net/Uri;

    const-string v2, "sns_ids"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 402
    .local v1, snsIdsUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/contacts/ViewContactProfilesActivity;->SNPROFILE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 403
    .local v9, snsCursor:Landroid/database/Cursor;
    if-nez v9, :cond_39

    .line 404
    const-string v0, "SNViewContactProfileActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid contact sns profile uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    .end local v1           #snsIdsUri:Landroid/net/Uri;
    .end local v9           #snsCursor:Landroid/database/Cursor;
    :cond_38
    :goto_38
    return-void

    .line 408
    .restart local v1       #snsIdsUri:Landroid/net/Uri;
    .restart local v9       #snsCursor:Landroid/database/Cursor;
    :cond_39
    :goto_39
    :try_start_39
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 409
    new-instance v8, Lcom/android/contacts/ViewContactProfilesActivity$ProfileId;

    invoke-direct {v8}, Lcom/android/contacts/ViewContactProfilesActivity$ProfileId;-><init>()V

    .line 410
    .local v8, profileId:Lcom/android/contacts/ViewContactProfilesActivity$ProfileId;
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v8, Lcom/android/contacts/ViewContactProfilesActivity$ProfileId;->_id:J

    .line 411
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/ViewContactProfilesActivity$ProfileId;->snSiteId:Ljava/lang/String;

    .line 412
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/ViewContactProfilesActivity$ProfileId;->userUid:Ljava/lang/String;

    .line 413
    iget-object v0, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mProfileIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catchall {:try_start_39 .. :try_end_5e} :catchall_5f

    goto :goto_39

    .line 416
    .end local v8           #profileId:Lcom/android/contacts/ViewContactProfilesActivity$ProfileId;
    :catchall_5f
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_64
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_38

    .line 419
    .end local v1           #snsIdsUri:Landroid/net/Uri;
    .end local v9           #snsCursor:Landroid/database/Cursor;
    :cond_68
    sget-object v0, Lcom/android/contacts/LinkbookAsyncHelper;->mSNAccounts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_6e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;

    .line 420
    .local v6, account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    new-instance v8, Lcom/android/contacts/ViewContactProfilesActivity$ProfileId;

    invoke-direct {v8}, Lcom/android/contacts/ViewContactProfilesActivity$ProfileId;-><init>()V

    .line 421
    .restart local v8       #profileId:Lcom/android/contacts/ViewContactProfilesActivity$ProfileId;
    const-wide/16 v2, 0x0

    iput-wide v2, v8, Lcom/android/contacts/ViewContactProfilesActivity$ProfileId;->_id:J

    .line 422
    iget-object v0, v6, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mSnSiteId:Ljava/lang/String;

    iput-object v0, v8, Lcom/android/contacts/ViewContactProfilesActivity$ProfileId;->snSiteId:Ljava/lang/String;

    .line 423
    iget-object v0, v6, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mAccountUid:Ljava/lang/String;

    iput-object v0, v8, Lcom/android/contacts/ViewContactProfilesActivity$ProfileId;->userUid:Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mProfileIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6e
.end method

.method private refreshAll()V
    .registers 2

    .prologue
    .line 806
    invoke-static {p0}, Lcom/android/contacts/LinkbookAsyncHelper;->loadAccountList(Landroid/content/Context;)Z

    .line 807
    invoke-direct {p0}, Lcom/android/contacts/ViewContactProfilesActivity;->dataChanged()V

    .line 808
    invoke-direct {p0}, Lcom/android/contacts/ViewContactProfilesActivity;->getProfilesInfo()V

    .line 809
    invoke-direct {p0}, Lcom/android/contacts/ViewContactProfilesActivity;->buildEntries()V

    .line 810
    iget-object v0, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mAdapter:Lcom/android/contacts/ViewContactProfilesActivity$ViewAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/ViewContactProfilesActivity$ViewAdapter;->notifyDataSetChanged()V

    .line 811
    return-void
.end method

.method private setEmptyText()V
    .registers 4

    .prologue
    .line 351
    const v2, 0x7f050005

    invoke-virtual {p0, v2}, Lcom/android/contacts/ViewContactProfilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 352
    .local v0, empty:Landroid/widget/TextView;
    const/16 v1, 0x11

    .line 354
    .local v1, gravity:I
    const v2, 0x7f060119

    invoke-virtual {p0, v2}, Lcom/android/contacts/ViewContactProfilesActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 356
    return-void
.end method

.method private setEmptyTextLayout(I)V
    .registers 7
    .parameter "count"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 360
    const v2, 0x7f05000c

    invoke-virtual {p0, v2}, Lcom/android/contacts/ViewContactProfilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 361
    .local v0, emptyLayout:Landroid/widget/ScrollView;
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactProfilesActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 363
    .local v1, list:Landroid/widget/ListView;
    if-nez p1, :cond_19

    .line 364
    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 365
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 370
    :goto_18
    return-void

    .line 367
    :cond_19
    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 368
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_18
.end method

.method private showAddCommunityDialog()V
    .registers 13

    .prologue
    .line 744
    sget-object v9, Lcom/android/contacts/LinkbookAsyncHelper;->mSNAccounts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 745
    .local v7, imax:I
    new-array v3, v7, [Z

    .line 748
    .local v3, deletedIndexs:[Z
    iget-object v9, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mProfileEntries:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3d

    .line 749
    const/4 v5, 0x0

    .local v5, i:I
    :goto_11
    if-ge v5, v7, :cond_3d

    .line 750
    sget-object v9, Lcom/android/contacts/LinkbookAsyncHelper;->mSNAccounts:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;

    .line 751
    .local v0, account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    iget-object v9, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mProfileEntries:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_21
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;

    .line 752
    .local v4, entry:Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;
    iget-object v9, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mSnSiteId:Ljava/lang/String;

    iget-object v10, v4, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->snSiteId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 753
    const/4 v9, 0x1

    aput-boolean v9, v3, v5

    .line 749
    .end local v4           #entry:Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;
    :cond_3a
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 760
    .end local v0           #account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    .end local v5           #i:I
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_3d
    iget-object v9, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mAccountMenu:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 761
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_43
    if-ge v5, v7, :cond_64

    .line 762
    aget-boolean v9, v3, v5

    if-nez v9, :cond_61

    .line 763
    sget-object v9, Lcom/android/contacts/LinkbookAsyncHelper;->mSNAccounts:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;

    .line 764
    .restart local v0       #account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    new-instance v8, Lcom/android/contacts/IconListAdapter$IconListItem;

    iget-object v9, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mTitle:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mSnSiteId:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mIcon:Landroid/graphics/Bitmap;

    invoke-direct {v8, v5, v9, v10, v11}, Lcom/android/contacts/IconListAdapter$IconListItem;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 765
    .local v8, item:Lcom/android/contacts/IconListAdapter$IconListItem;
    iget-object v9, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mAccountMenu:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    .end local v0           #account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    .end local v8           #item:Lcom/android/contacts/IconListAdapter$IconListItem;
    :cond_61
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 769
    :cond_64
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 770
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const v9, 0x7f06010f

    invoke-virtual {p0, v9}, Lcom/android/contacts/ViewContactProfilesActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 772
    new-instance v1, Lcom/android/contacts/IconListAdapter;

    iget-object v9, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mAccountMenu:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v9}, Lcom/android/contacts/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 774
    .local v1, adapter:Lcom/android/contacts/IconListAdapter;
    new-instance v9, Lcom/android/contacts/ViewContactProfilesActivity$1;

    invoke-direct {v9, p0}, Lcom/android/contacts/ViewContactProfilesActivity$1;-><init>(Lcom/android/contacts/ViewContactProfilesActivity;)V

    invoke-virtual {v2, v1, v9}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 783
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 784
    return-void
.end method

.method private startActivityToViewProfile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "snSiteId"
    .parameter "userUid"

    .prologue
    .line 726
    iget-boolean v1, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mIsMyProfile:Z

    if-nez v1, :cond_29

    .line 727
    const-string v1, "TW"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 728
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.profile.intent.action.VIEW_TWITTER_PROFILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 735
    .local v0, intent:Landroid/content/Intent;
    :goto_13
    const-string v1, "sns_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 736
    const-string v1, "user_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 737
    invoke-virtual {p0, v0}, Lcom/android/contacts/ViewContactProfilesActivity;->startActivity(Landroid/content/Intent;)V

    .line 738
    return-void

    .line 730
    .end local v0           #intent:Landroid/content/Intent;
    :cond_21
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.profile.intent.action.VIEW_PROFILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_13

    .line 733
    .end local v0           #intent:Landroid/content/Intent;
    :cond_29
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.account.intent.action.SELECT_MENU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_13
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 464
    const/4 v3, -0x1

    if-eq p2, v3, :cond_4

    .line 489
    :cond_3
    :goto_3
    return-void

    .line 467
    :cond_4
    sparse-switch p1, :sswitch_data_52

    goto :goto_3

    .line 469
    :sswitch_8
    invoke-direct {p0}, Lcom/android/contacts/ViewContactProfilesActivity;->refreshAll()V

    goto :goto_3

    .line 473
    :sswitch_c
    invoke-static {p3}, Lcom/android/contacts/LinkbookAsyncHelper;->buildFriendFromIntent(Landroid/content/Intent;)Lcom/android/contacts/LinkbookAsyncHelper$LinkbookFriend;

    move-result-object v1

    .line 475
    .local v1, friend:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookFriend;
    if-eqz v1, :cond_3

    .line 476
    iget-object v3, v1, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookFriend;->mSnSiteId:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/android/contacts/LinkbookAsyncHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;

    move-result-object v0

    .line 477
    .local v0, account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    if-eqz v0, :cond_3

    .line 478
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 479
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "sn_site_id"

    iget-object v4, v1, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookFriend;->mSnSiteId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v3, "sn_user_id"

    iget-object v4, v1, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookFriend;->mSnUserId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v3, "label"

    iget-object v4, v0, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v3, "sns_id"

    iget-object v4, v1, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookFriend;->mSnsId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v3, "user_id"

    iget-object v4, v1, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookFriend;->mUserUid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactProfilesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mUri:Landroid/net/Uri;

    const-string v5, "sns_ids"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_3

    .line 467
    :sswitch_data_52
    .sparse-switch
        0x2 -> :sswitch_8
        0x6 -> :sswitch_c
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_7e

    .line 197
    :cond_8
    :goto_8
    :pswitch_8
    return-void

    .line 167
    :pswitch_9
    iget-boolean v2, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mIsMyProfile:Z

    if-nez v2, :cond_11

    .line 168
    invoke-direct {p0}, Lcom/android/contacts/ViewContactProfilesActivity;->showAddCommunityDialog()V

    goto :goto_8

    .line 170
    :cond_11
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "vnd.lge.cursor.dir/vnd.lge.sns.account"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/android/contacts/ViewContactProfilesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_8

    .line 176
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_22
    iget-object v2, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mPhoneNumber:Ljava/lang/String;

    .line 177
    iget-object v2, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 178
    const-string v2, "tel"

    iget-object v3, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v2, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 179
    .local v1, telUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/contacts/ViewContactProfilesActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    .line 183
    .end local v1           #telUri:Landroid/net/Uri;
    :pswitch_45
    iget-object v2, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mPhoneNumber:Ljava/lang/String;

    .line 184
    iget-object v2, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 185
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "smsto"

    iget-object v5, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/contacts/ViewContactProfilesActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    .line 190
    :pswitch_68
    invoke-direct {p0}, Lcom/android/contacts/ViewContactProfilesActivity;->deleteMarkedProfiles()I

    move-result v2

    if-lez v2, :cond_79

    .line 191
    const v2, 0x7f06010d

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 194
    :cond_79
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactProfilesActivity;->finish()V

    goto :goto_8

    .line 165
    nop

    :pswitch_data_7e
    .packed-switch 0x7f050058
        :pswitch_9
        :pswitch_8
        :pswitch_68
        :pswitch_8
        :pswitch_22
        :pswitch_45
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 13
    .parameter "item"

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    const-string v9, "sns_id"

    .line 650
    :try_start_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_a} :catch_14

    .line 658
    .local v2, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-wide v4, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1f

    move v4, v8

    .line 720
    .end local v2           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :goto_13
    return v4

    .line 651
    :catch_14
    move-exception v4

    move-object v0, v4

    .line 652
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v4, "SNViewContactProfileActivity"

    const-string v5, "bad menuInfo"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v8

    .line 653
    goto :goto_13

    .line 663
    .end local v0           #e:Ljava/lang/ClassCastException;
    .restart local v2       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_1f
    iget-object v4, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mProfileEntries:Ljava/util/ArrayList;

    iget v5, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;

    .line 664
    .local v1, entry:Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;
    if-nez v1, :cond_2d

    move v4, v8

    .line 666
    goto :goto_13

    .line 670
    :cond_2d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_d6

    .line 720
    :goto_34
    :pswitch_34
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    goto :goto_13

    .line 675
    :pswitch_39
    iget-object v4, v1, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->snSiteId:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->userUid:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/android/contacts/ViewContactProfilesActivity;->startActivityToViewProfile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    .line 678
    :pswitch_41
    iget-boolean v4, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mIsMyProfile:Z

    if-nez v4, :cond_5d

    .line 679
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.lge.sns.feed.intent.action.WRITE_PROFILE_COMMENT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 680
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "sns_id"

    iget-object v4, v1, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->snSiteId:Ljava/lang/String;

    invoke-virtual {v3, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    const-string v4, "user_id"

    iget-object v5, v1, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->userUid:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    invoke-virtual {p0, v3}, Lcom/android/contacts/ViewContactProfilesActivity;->startActivity(Landroid/content/Intent;)V

    .end local v3           #intent:Landroid/content/Intent;
    :cond_5d
    move v4, v10

    .line 684
    goto :goto_13

    .line 688
    :pswitch_5f
    const-string v4, "TW"

    iget-object v5, v1, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->snSiteId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 689
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.INSERT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 690
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v4, "vnd.lge.cursor.item/vnd.lge.sns.snmessage.twitter.send"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    const-string v4, "sns_id"

    iget-object v4, v1, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->snSiteId:Ljava/lang/String;

    invoke-virtual {v3, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    :goto_7c
    iget-boolean v4, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mIsMyProfile:Z

    if-nez v4, :cond_9b

    .line 697
    const-string v4, "recipient_id"

    iget-object v5, v1, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->userUid:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    invoke-virtual {p0, v3}, Lcom/android/contacts/ViewContactProfilesActivity;->startActivity(Landroid/content/Intent;)V

    :goto_8a
    move v4, v10

    .line 702
    goto :goto_13

    .line 693
    .end local v3           #intent:Landroid/content/Intent;
    :cond_8c
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.lge.sns.message.intent.action.MESSAGE_SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 694
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v4, "sns_id"

    iget-object v4, v1, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->snSiteId:Ljava/lang/String;

    invoke-virtual {v3, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7c

    .line 700
    :cond_9b
    invoke-virtual {p0, v3}, Lcom/android/contacts/ViewContactProfilesActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_8a

    .line 709
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_9f
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f060117

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f060111

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/android/contacts/ViewContactProfilesActivity$DeleteClickListener;

    iget-wide v7, v1, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->id:J

    iget v9, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/android/contacts/ViewContactProfilesActivity$DeleteClickListener;-><init>(Lcom/android/contacts/ViewContactProfilesActivity;JI)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v4, v10

    .line 716
    goto/16 :goto_13

    .line 670
    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_39
        :pswitch_34
        :pswitch_41
        :pswitch_5f
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_9f
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 21
    .parameter "icicle"

    .prologue
    .line 202
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ViewContactProfilesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ViewContactProfilesActivity;->mResolver:Landroid/content/ContentResolver;

    .line 207
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ViewContactProfilesActivity;->mUri:Landroid/net/Uri;

    .line 208
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/ViewContactProfilesActivity;->mIsMyProfile:Z

    .line 209
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ViewContactProfilesActivity;->mPhoneNumber:Ljava/lang/String;

    .line 210
    const/4 v4, 0x0

    sput-object v4, Lcom/android/contacts/ViewContactProfilesActivity;->mOwnNumber:Ljava/lang/String;

    .line 211
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ViewContactProfilesActivity;->mMode:I

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ViewContactProfilesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    .line 216
    .local v15, intent:Landroid/content/Intent;
    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 217
    .local v11, action:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ViewContactProfilesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ViewContactProfilesActivity;->mUri:Landroid/net/Uri;

    .line 221
    const v4, 0x7f030037

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/contacts/ViewContactProfilesActivity;->setContentView(I)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactProfilesActivity;->mUri:Landroid/net/Uri;

    move-object v4, v0

    if-eqz v4, :cond_5b

    .line 226
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 227
    const/16 v4, 0xa

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ViewContactProfilesActivity;->mMode:I

    .line 233
    :cond_5b
    :goto_5b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ViewContactProfilesActivity;->mMode:I

    move v4, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_8f

    .line 234
    const-string v4, "SNViewContactProfileActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot resolve intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ViewContactProfilesActivity;->finish()V

    .line 296
    .end local p1
    :goto_7e
    return-void

    .line 228
    .restart local p1
    :cond_7f
    const-string v4, "android.intent.action.DELETE"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 229
    const/16 v4, 0xf

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ViewContactProfilesActivity;->mMode:I

    goto :goto_5b

    .line 239
    :cond_8f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactProfilesActivity;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactProfilesActivity;->mUri:Landroid/net/Uri;

    move-object v5, v0

    sget-object v6, Lcom/android/contacts/ViewContactProfilesActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ViewContactProfilesActivity;->mCursor:Landroid/database/Cursor;

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactProfilesActivity;->mCursor:Landroid/database/Cursor;

    move-object v4, v0

    if-eqz v4, :cond_c0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactProfilesActivity;->mCursor:Landroid/database/Cursor;

    move-object v4, v0

    if-eqz v4, :cond_e1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactProfilesActivity;->mCursor:Landroid/database/Cursor;

    move-object v4, v0

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_e1

    .line 241
    :cond_c0
    const-string v4, "SNViewContactProfileActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid contact uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactProfilesActivity;->mUri:Landroid/net/Uri;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ViewContactProfilesActivity;->finish()V

    goto :goto_7e

    .line 248
    :cond_e1
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ViewContactProfilesActivity;->getListView()Landroid/widget/ListView;

    move-result-object v17

    .line 250
    .local v17, listView:Landroid/widget/ListView;
    const v4, 0x7f050058

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/contacts/ViewContactProfilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 251
    .local v10, accountPanel:Landroid/widget/Button;
    const v4, 0x7f05005a

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/contacts/ViewContactProfilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 253
    .local v14, deletePanel:Landroid/widget/Button;
    const v4, 0x7f050057

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/contacts/ViewContactProfilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 254
    .local v12, addCommunityLayout:Landroid/widget/LinearLayout;
    const v4, 0x7f050059

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/contacts/ViewContactProfilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 256
    .local v13, deleteCommunityLayout:Landroid/widget/LinearLayout;
    move-object v0, v10

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    move-object v0, v14

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    const/4 v4, 0x1

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 260
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 261
    const/4 v4, 0x0

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 262
    const/4 v4, 0x0

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 264
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ViewContactProfilesActivity;->mMode:I

    move v4, v0

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1e5

    .line 265
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 266
    const/16 v4, 0x8

    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 275
    :cond_14f
    :goto_14f
    const v4, 0x7f05005b

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/contacts/ViewContactProfilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ViewContactProfilesActivity;->mButtonLayout:Landroid/widget/LinearLayout;

    .line 276
    const v4, 0x7f05005c

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/contacts/ViewContactProfilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ViewContactProfilesActivity;->mCallButton:Landroid/widget/Button;

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactProfilesActivity;->mCallButton:Landroid/widget/Button;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    const v4, 0x7f05005d

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/contacts/ViewContactProfilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ViewContactProfilesActivity;->mMessageButton:Landroid/widget/Button;

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactProfilesActivity;->mMessageButton:Landroid/widget/Button;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    const-string v4, "phone"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/contacts/ViewContactProfilesActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/TelephonyManager;

    .line 283
    .local v18, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v18, :cond_1c0

    .line 284
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v16

    .line 285
    .local v16, line1Number:Ljava/lang/String;
    if-eqz v16, :cond_1c0

    .line 286
    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/contacts/ViewContactProfilesActivity;->mOwnNumber:Ljava/lang/String;

    .line 287
    sget-object v4, Lcom/android/contacts/ViewContactProfilesActivity;->mOwnNumber:Ljava/lang/String;

    const-string v5, "+"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/contacts/ViewContactProfilesActivity;->mOwnNumber:Ljava/lang/String;

    .line 292
    .end local v16           #line1Number:Ljava/lang/String;
    :cond_1c0
    new-instance v4, Lcom/android/contacts/ViewContactProfilesActivity$ViewAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactProfilesActivity;->mProfileEntries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/ViewContactProfilesActivity$ViewAdapter;-><init>(Lcom/android/contacts/ViewContactProfilesActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ViewContactProfilesActivity;->mAdapter:Lcom/android/contacts/ViewContactProfilesActivity$ViewAdapter;

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactProfilesActivity;->mAdapter:Lcom/android/contacts/ViewContactProfilesActivity$ViewAdapter;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/contacts/ViewContactProfilesActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 295
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/ViewContactProfilesActivity;->setEmptyText()V

    goto/16 :goto_7e

    .line 267
    .end local v18           #telephonyManager:Landroid/telephony/TelephonyManager;
    .restart local p1
    :cond_1e5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ViewContactProfilesActivity;->mMode:I

    move v4, v0

    const/16 v5, 0xf

    if-ne v4, v5, :cond_14f

    .line 268
    const/4 v4, 0x2

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 269
    const/16 v4, 0x8

    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 270
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_14f
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 14
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v9, 0x0

    .line 583
    iget v5, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mMode:I

    const/16 v6, 0xf

    if-ne v5, v6, :cond_8

    .line 643
    :cond_7
    :goto_7
    return-void

    .line 590
    :cond_8
    :try_start_8
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v3, v0
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_c} :catch_63

    .line 598
    .local v3, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-wide v5, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_7

    .line 604
    iget-object v5, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mProfileEntries:Ljava/util/ArrayList;

    iget v6, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;

    .line 605
    .local v2, entry:Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;
    if-eqz v2, :cond_7

    .line 611
    iget-object v5, v2, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->name:Ljava/lang/String;

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 614
    const/4 v5, 0x1

    const v6, 0x7f06010b

    invoke-interface {p1, v9, v5, v9, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 617
    iget-boolean v5, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mIsMyProfile:Z

    if-eqz v5, :cond_44

    .line 618
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.EDIT"

    iget-object v6, v2, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->uri:Landroid/net/Uri;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 619
    .local v4, intent:Landroid/content/Intent;
    const/4 v5, 0x2

    const v6, 0x7f06010c

    invoke-interface {p1, v9, v5, v9, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 624
    .end local v4           #intent:Landroid/content/Intent;
    :cond_44
    iget-boolean v5, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mIsMyProfile:Z

    if-nez v5, :cond_4f

    .line 625
    const/4 v5, 0x3

    const v6, 0x7f060116

    invoke-interface {p1, v9, v5, v9, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 629
    :cond_4f
    const/4 v5, 0x4

    const v6, 0x7f060115

    invoke-interface {p1, v9, v5, v9, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 640
    iget-boolean v5, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mIsMyProfile:Z

    if-nez v5, :cond_7

    .line 641
    const/16 v5, 0x8

    const v6, 0x7f060110

    invoke-interface {p1, v9, v5, v9, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_7

    .line 591
    .end local v2           #entry:Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;
    .end local v3           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :catch_63
    move-exception v1

    .line 592
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v5, "SNViewContactProfileActivity"

    const-string v6, "bad menuInfo"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter "id"

    .prologue
    .line 503
    .line 505
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 511
    iget v0, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mMode:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_33

    .line 512
    const/16 v0, 0xa

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0600c5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200d1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 516
    const/16 v0, 0xb

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0600c6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200cb

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 532
    :goto_2e
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 521
    :cond_33
    const/4 v0, 0x1

    const v1, 0x7f0600f1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200cf

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 525
    const/4 v0, 0x2

    const v1, 0x7f0600fe

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200cd

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 529
    const/4 v0, 0x3

    const v1, 0x7f060110

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2e
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 324
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 326
    iget-object v0, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    .line 327
    iget-object v0, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_c
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 9
    .parameter "list"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 494
    iget-object v1, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mProfileEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;

    .line 495
    .local v0, entry:Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;
    iget v1, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mMode:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_15

    .line 496
    iget-object v1, v0, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->snSiteId:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/contacts/ViewContactProfilesActivity$ViewEntry;->userUid:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/ViewContactProfilesActivity;->startActivityToViewProfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_15
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    const-string v6, "vnd.lge.cursor.dir/vnd.lge.sns.account"

    const-string v5, "android.intent.action.DELETE"

    .line 539
    iget-object v3, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 540
    .local v2, sba:Landroid/util/SparseBooleanArray;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_74

    .line 575
    :pswitch_12
    const/4 v3, 0x0

    :goto_13
    return v3

    .line 542
    :pswitch_14
    invoke-direct {p0}, Lcom/android/contacts/ViewContactProfilesActivity;->refreshAll()V

    move v3, v4

    .line 543
    goto :goto_13

    .line 545
    :pswitch_19
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 546
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "vnd.lge.cursor.dir/vnd.lge.sns.account"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    invoke-virtual {p0, v1}, Lcom/android/contacts/ViewContactProfilesActivity;->startActivity(Landroid/content/Intent;)V

    move v3, v4

    .line 548
    goto :goto_13

    .line 550
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_2a
    iget-boolean v3, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mIsMyProfile:Z

    if-nez v3, :cond_42

    .line 551
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    iget-object v3, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mUri:Landroid/net/Uri;

    invoke-direct {v1, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 552
    .restart local v1       #intent:Landroid/content/Intent;
    const-class v3, Lcom/android/contacts/ViewContactProfilesActivity;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 553
    const/4 v3, 0x5

    invoke-virtual {p0, v1, v3}, Lcom/android/contacts/ViewContactProfilesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_40
    move v3, v4

    .line 559
    goto :goto_13

    .line 555
    .end local v1           #intent:Landroid/content/Intent;
    :cond_42
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 556
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "vnd.lge.cursor.dir/vnd.lge.sns.account"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Lcom/android/contacts/ViewContactProfilesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_40

    .line 563
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_53
    const/4 v0, 0x0

    .local v0, i:I
    :goto_54
    iget-object v3, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_62

    .line 564
    invoke-virtual {v2, v0, v4}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 563
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    .line 566
    :cond_62
    iget-object v3, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mAdapter:Lcom/android/contacts/ViewContactProfilesActivity$ViewAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/ViewContactProfilesActivity$ViewAdapter;->notifyDataSetChanged()V

    move v3, v4

    .line 567
    goto :goto_13

    .line 570
    .end local v0           #i:I
    :pswitch_69
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 571
    iget-object v3, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mAdapter:Lcom/android/contacts/ViewContactProfilesActivity$ViewAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/ViewContactProfilesActivity$ViewAdapter;->notifyDataSetChanged()V

    move v3, v4

    .line 572
    goto :goto_13

    .line 540
    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_14
        :pswitch_19
        :pswitch_2a
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_53
        :pswitch_69
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 343
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 345
    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mListState:Landroid/os/Parcelable;

    .line 346
    const-string v0, "focused"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mListHasFocus:Z

    .line 347
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 301
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 303
    invoke-static {p0}, Lcom/android/contacts/LinkbookAsyncHelper;->loadAccountList(Landroid/content/Context;)Z

    .line 305
    invoke-direct {p0}, Lcom/android/contacts/ViewContactProfilesActivity;->dataChanged()V

    .line 306
    invoke-direct {p0}, Lcom/android/contacts/ViewContactProfilesActivity;->getProfilesInfo()V

    .line 307
    invoke-direct {p0}, Lcom/android/contacts/ViewContactProfilesActivity;->buildEntries()V

    .line 308
    iget-object v0, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mAdapter:Lcom/android/contacts/ViewContactProfilesActivity$ViewAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/ViewContactProfilesActivity$ViewAdapter;->notifyDataSetChanged()V

    .line 311
    iget-object v0, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_32

    .line 312
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactProfilesActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 313
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mListHasFocus:Z

    if-eqz v0, :cond_2c

    .line 314
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactProfilesActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 316
    :cond_2c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mListState:Landroid/os/Parcelable;

    .line 317
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ViewContactProfilesActivity;->mListHasFocus:Z

    .line 319
    :cond_32
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 334
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 336
    const-string v0, "liststate"

    invoke-virtual {p0}, Lcom/android/contacts/ViewContactProfilesActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 337
    const-string v0, "focused"

    invoke-virtual {p0}, Lcom/android/contacts/ViewContactProfilesActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 338
    return-void
.end method
