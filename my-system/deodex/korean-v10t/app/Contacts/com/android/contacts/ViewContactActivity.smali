.class public Lcom/android/contacts/ViewContactActivity;
.super Landroid/app/ListActivity;
.source "ViewContactActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ViewContactActivity$ViewAdapter;,
        Lcom/android/contacts/ViewContactActivity$ViewEntry;
    }
.end annotation


# static fields
.field private static final DIALOG_CONFIRM_DELETE:I = 0x1

.field private static final EMAIL_KEYS:[Ljava/lang/String; = null

.field public static final FLICKING_NONE:I = 0x0

.field public static final FLICKING_TO_DOWN:I = 0x4

.field public static final FLICKING_TO_LEFT:I = 0x2

.field public static final FLICKING_TO_RIGHT:I = 0x1

.field public static final FLICKING_TO_UP:I = 0x3

.field static final MEMBERSHIP_ISPRIMARY_COLUMN_INDEX:I = 0x3

.field static final MEMBERSHIP_NAME_COLUMN_INDEX:I = 0x0

.field static final MEMBERSHIP_NOTES_COLUMN_INDEX:I = 0x1

.field private static final MEMBERSHIP_PROJECTION:[Ljava/lang/String; = null

.field static final MEMBERSHIP_SYSTEM_ID_COLUMN_INDEX:I = 0x2

.field public static final MENU_ITEM_COPY_SIM:I = 0x3

.field public static final MENU_ITEM_DELETE:I = 0x1

.field public static final MENU_ITEM_MAKE_DEFAULT:I = 0x2

.field public static final MENU_ITEM_SEND_EMAIL:I = 0x6

.field public static final MENU_ITEM_SHOW_BARCODE:I = 0x2

.field public static final MENU_ITEM_SHOW_INTENT:I = 0x1

.field public static final MENU_ITEM_VIEW_POSTAL:I = 0x5

.field private static final PHONE_KEYS:[Ljava/lang/String; = null

.field private static final SHOW_BARCODE_INTENT:Ljava/lang/String; = "com.google.zxing.client.android.ENCODE"

.field private static final SHOW_SEPARATORS:Z = false

.field private static final TAG:Ljava/lang/String; = "ViewContactActivity"

.field public static final TOUCH_MOVE_MIN:F = 60.0f

.field private static mOwnNumber:Ljava/lang/String;


# instance fields
.field private MANAGE_SOCIAL_NETWORK:Z

.field private mAdapter:Lcom/android/contacts/ViewContactActivity$ViewAdapter;

.field mBirthdayEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mCursor:Landroid/database/Cursor;

.field private mDialogMessage:Ljava/lang/String;

.field private mDialogTitle:Ljava/lang/String;

.field mEmailEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field mGroupsEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field mImEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSystemContact:Z

.field private mNameView:Landroid/widget/TextView;

.field private mNoPhotoResource:I

.field mNoteEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mNumPhoneNumbers:I

.field private mObserver:Landroid/database/ContentObserver;

.field private mObserverRegistered:Z

.field mOrganizationEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field mOtherEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field mPhoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneticNameView:Landroid/widget/TextView;

.field private mPhotoView:Landroid/widget/ImageView;

.field mPostalEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mShowSmsLinksForAllPhones:Z

.field private mSimMenu:Landroid/view/MenuItem;

.field mSmsEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field mSnsIdEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mStarView:Landroid/widget/CheckBox;

.field private mUri:Landroid/net/Uri;

.field mWebsiteEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaReceiver:Landroid/content/BroadcastReceiver;

.field private pointX:[F

.field private pointY:[F


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 145
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "phone"

    aput-object v1, v0, v2

    const-string v1, "secondary_phone"

    aput-object v1, v0, v3

    const-string v1, "tertiary_phone"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/contacts/ViewContactActivity;->PHONE_KEYS:[Ljava/lang/String;

    .line 151
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "email"

    aput-object v1, v0, v2

    const-string v1, "secondary_email"

    aput-object v1, v0, v3

    const-string v1, "tertiary_email"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/contacts/ViewContactActivity;->EMAIL_KEYS:[Ljava/lang/String;

    .line 159
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v2

    const-string v1, "notes"

    aput-object v1, v0, v3

    const-string v1, "system_id"

    aput-object v1, v0, v4

    const-string v1, "isprimary"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/contacts/ViewContactActivity;->MEMBERSHIP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSmsEntries:Ljava/util/ArrayList;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mEmailEntries:Ljava/util/ArrayList;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mPostalEntries:Ljava/util/ArrayList;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mImEntries:Ljava/util/ArrayList;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mWebsiteEntries:Ljava/util/ArrayList;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mGroupsEntries:Ljava/util/ArrayList;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mBirthdayEntries:Ljava/util/ArrayList;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mNoteEntries:Ljava/util/ArrayList;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mOtherEntries:Ljava/util/ArrayList;

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSnsIdEntries:Ljava/util/ArrayList;

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    .line 213
    iput-boolean v1, p0, Lcom/android/contacts/ViewContactActivity;->mIsSystemContact:Z

    .line 214
    iput v1, p0, Lcom/android/contacts/ViewContactActivity;->mNumPhoneNumbers:I

    .line 215
    iput-boolean v1, p0, Lcom/android/contacts/ViewContactActivity;->mObserverRegistered:Z

    .line 231
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->pointX:[F

    .line 232
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->pointY:[F

    .line 248
    new-instance v0, Lcom/android/contacts/ViewContactActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/ViewContactActivity$1;-><init>(Lcom/android/contacts/ViewContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mediaReceiver:Landroid/content/BroadcastReceiver;

    .line 259
    new-instance v0, Lcom/android/contacts/ViewContactActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/ViewContactActivity$2;-><init>(Lcom/android/contacts/ViewContactActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mObserver:Landroid/database/ContentObserver;

    .line 1685
    return-void
.end method

.method private Flicking()I
    .registers 7

    .prologue
    const/high16 v5, 0x4270

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1834
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->pointX:[F

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/contacts/ViewContactActivity;->pointX:[F

    aget v2, v2, v4

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_23

    .line 1835
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->pointX:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/contacts/ViewContactActivity;->pointX:[F

    aget v2, v2, v3

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v5

    if-lez v1, :cond_21

    .line 1836
    const/4 v0, 0x1

    .line 1847
    .local v0, FLICKING_MODE:I
    :goto_20
    return v0

    .line 1838
    .end local v0           #FLICKING_MODE:I
    :cond_21
    const/4 v0, 0x0

    .restart local v0       #FLICKING_MODE:I
    goto :goto_20

    .line 1841
    .end local v0           #FLICKING_MODE:I
    :cond_23
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->pointX:[F

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/contacts/ViewContactActivity;->pointX:[F

    aget v2, v2, v4

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v5

    if-lez v1, :cond_32

    .line 1842
    const/4 v0, 0x2

    .restart local v0       #FLICKING_MODE:I
    goto :goto_20

    .line 1844
    .end local v0           #FLICKING_MODE:I
    :cond_32
    const/4 v0, 0x0

    .restart local v0       #FLICKING_MODE:I
    goto :goto_20
.end method

.method private Flicking_Intent()V
    .registers 2

    .prologue
    .line 1853
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->Flicking()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 1873
    :pswitch_7
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->dataChanged()V

    .line 1874
    return-void

    .line 1853
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/contacts/ViewContactActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->dataChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/ViewContactActivity;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private final buildEntries(Landroid/database/Cursor;)V
    .registers 69
    .parameter "personCursor"

    .prologue
    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v41

    .line 1185
    .local v41, numSections:I
    const/16 v29, 0x0

    .local v29, i:I
    :goto_b
    move/from16 v0, v29

    move/from16 v1, v41

    if-ge v0, v1, :cond_25

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1185
    add-int/lit8 v29, v29, 0x1

    goto :goto_b

    .line 1194
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mUri:Landroid/net/Uri;

    move-object v4, v0

    const-string v5, "phones"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1195
    .local v5, phonesUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    sget-object v6, Lcom/android/contacts/ContactEntryAdapter;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "isprimary DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v46

    .line 1199
    .local v46, phonesCursor:Landroid/database/Cursor;
    if-eqz v46, :cond_19c

    .line 1200
    :cond_41
    :goto_41
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_199

    .line 1201
    const/4 v4, 0x2

    move-object/from16 v0, v46

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v63

    .line 1202
    .local v63, type:I
    const/4 v4, 0x1

    move-object/from16 v0, v46

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 1203
    .local v42, number:Ljava/lang/String;
    const/4 v4, 0x3

    move-object/from16 v0, v46

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 1204
    .local v35, label:Ljava/lang/String;
    const/4 v4, 0x4

    move-object/from16 v0, v46

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_9e

    const/4 v4, 0x1

    move/from16 v33, v4

    .line 1205
    .local v33, isPrimary:Z
    :goto_6d
    const/4 v4, 0x0

    move-object/from16 v0, v46

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 1206
    .local v30, id:J
    move-object v0, v5

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v64

    .line 1209
    .local v64, uri:Landroid/net/Uri;
    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 1210
    const-string v4, "ViewContactActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "empty number for phone "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 1204
    .end local v30           #id:J
    .end local v33           #isPrimary:Z
    .end local v64           #uri:Landroid/net/Uri;
    :cond_9e
    const/4 v4, 0x0

    move/from16 v33, v4

    goto :goto_6d

    .line 1214
    .restart local v30       #id:J
    .restart local v33       #isPrimary:Z
    .restart local v64       #uri:Landroid/net/Uri;
    :cond_a2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ViewContactActivity;->mNumPhoneNumbers:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ViewContactActivity;->mNumPhoneNumbers:I

    .line 1217
    new-instance v25, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    invoke-direct/range {v25 .. v25}, Lcom/android/contacts/ViewContactActivity$ViewEntry;-><init>()V

    .line 1218
    .local v25, entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    move-object/from16 v0, p0

    move/from16 v1, v63

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Contacts$Phones;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    .line 1219
    .local v24, displayLabel:Ljava/lang/CharSequence;
    const v4, 0x7f06008c

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move-object/from16 v2, v24

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/ViewContactActivity;->buildActionString(ILjava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->label:Ljava/lang/String;

    .line 1222
    invoke-static/range {v42 .. v42}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    .line 1224
    move-wide/from16 v0, v30

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->id:J

    .line 1225
    const-string v4, "tel"

    const/4 v6, 0x0

    move-object v0, v4

    move-object/from16 v1, v42

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 1226
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->uri:Landroid/net/Uri;

    move-object v7, v0

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 1227
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.SENDTO"

    const-string v7, "smsto"

    const/4 v8, 0x0

    move-object v0, v7

    move-object/from16 v1, v42

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->auxIntent:Landroid/content/Intent;

    .line 1229
    const/4 v4, 0x5

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->kind:I

    .line 1230
    if-eqz v33, :cond_127

    .line 1231
    const v4, 0x7f0200ab

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->primaryIcon:I

    .line 1233
    :cond_127
    const v4, 0x7f020149

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    const/4 v4, 0x2

    move/from16 v0, v63

    move v1, v4

    if-eq v0, v1, :cond_147

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ViewContactActivity;->mShowSmsLinksForAllPhones:Z

    move v4, v0

    if-eqz v4, :cond_41

    .line 1238
    :cond_147
    new-instance v57, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    invoke-direct/range {v57 .. v57}, Lcom/android/contacts/ViewContactActivity$ViewEntry;-><init>()V

    .line 1239
    .local v57, smsEntry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    const v4, 0x7f06008e

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move-object/from16 v2, v24

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/ViewContactActivity;->buildActionString(ILjava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->label:Ljava/lang/String;

    .line 1242
    invoke-static/range {v42 .. v42}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    .line 1244
    move-wide/from16 v0, v30

    move-object/from16 v2, v57

    iput-wide v0, v2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->id:J

    .line 1245
    move-object/from16 v0, v64

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 1246
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->auxIntent:Landroid/content/Intent;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 1247
    const/4 v4, -0x2

    move v0, v4

    move-object/from16 v1, v57

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->kind:I

    .line 1248
    const v4, 0x7f020151

    move v0, v4

    move-object/from16 v1, v57

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mSmsEntries:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_41

    .line 1253
    .end local v24           #displayLabel:Ljava/lang/CharSequence;
    .end local v25           #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    .end local v30           #id:J
    .end local v33           #isPrimary:Z
    .end local v35           #label:Ljava/lang/String;
    .end local v42           #number:Ljava/lang/String;
    .end local v57           #smsEntry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    .end local v63           #type:I
    .end local v64           #uri:Landroid/net/Uri;
    :cond_199
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V

    .line 1257
    :cond_19c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mUri:Landroid/net/Uri;

    move-object v4, v0

    const-string v5, "contact_methods"

    .end local v5           #phonesUri:Landroid/net/Uri;
    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v37

    .line 1258
    .local v37, methodsUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mUri:Landroid/net/Uri;

    move-object v4, v0

    const-string v5, "contact_methods_with_presence"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    sget-object v8, Lcom/android/contacts/ContactEntryAdapter;->METHODS_WITH_PRESENCE_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v36

    .line 1263
    .local v36, methodsCursor:Landroid/database/Cursor;
    if-eqz v36, :cond_411

    .line 1264
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ViewContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v51

    .line 1266
    .local v51, protocolStrings:[Ljava/lang/String;
    :goto_1cd
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_40e

    .line 1267
    const/4 v4, 0x1

    move-object/from16 v0, v36

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 1268
    .local v34, kind:I
    const/4 v4, 0x4

    move-object/from16 v0, v36

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 1269
    .restart local v35       #label:Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v36

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1270
    .local v22, data:Ljava/lang/String;
    const/4 v4, 0x3

    move-object/from16 v0, v36

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v63

    .line 1271
    .restart local v63       #type:I
    const/4 v4, 0x0

    move-object/from16 v0, v36

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 1272
    .restart local v30       #id:J
    move-object/from16 v0, v37

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v64

    .line 1275
    .restart local v64       #uri:Landroid/net/Uri;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_225

    .line 1276
    const-string v4, "ViewContactActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "empty data for contact method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1cd

    .line 1280
    :cond_225
    new-instance v25, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    invoke-direct/range {v25 .. v25}, Lcom/android/contacts/ViewContactActivity$ViewEntry;-><init>()V

    .line 1281
    .restart local v25       #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    move-wide/from16 v0, v30

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->id:J

    .line 1282
    move-object/from16 v0, v64

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 1283
    move/from16 v0, v34

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->kind:I

    .line 1285
    packed-switch v34, :pswitch_data_978

    :pswitch_23f
    goto :goto_1cd

    .line 1287
    :pswitch_240
    const v4, 0x7f06008d

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v63

    move-object/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Contacts$ContactMethods;->getDisplayLabel(Landroid/content/Context;IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/ViewContactActivity;->buildActionString(ILjava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->label:Ljava/lang/String;

    .line 1289
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    .line 1290
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    const-string v6, "mailto"

    const/4 v7, 0x0

    move-object v0, v6

    move-object/from16 v1, v22

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 1292
    const v4, 0x7f02014c

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mEmailEntries:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1cd

    .line 1297
    :pswitch_290
    const v4, 0x7f060090

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v63

    move-object/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Contacts$ContactMethods;->getDisplayLabel(Landroid/content/Context;IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/ViewContactActivity;->buildActionString(ILjava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->label:Ljava/lang/String;

    .line 1299
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    .line 1300
    const/4 v4, 0x4

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->maxLines:I

    .line 1301
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v64

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 1302
    const v4, 0x7f02014d

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mPostalEntries:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1cd

    .line 1307
    :pswitch_2df
    const v4, 0x7f0600e5

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v63

    move-object/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Contacts$ContactMethods;->getDisplayLabel(Landroid/content/Context;IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/ViewContactActivity;->buildActionString(ILjava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->label:Ljava/lang/String;

    .line 1309
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    .line 1310
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_342

    .line 1311
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v66

    .line 1312
    .local v66, webUri:Landroid/net/Uri;
    const-string v4, "http://"

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_332

    .line 1313
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v66

    .line 1315
    :cond_332
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v66

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 1317
    .end local v66           #webUri:Landroid/net/Uri;
    :cond_342
    const v4, 0x7f020153

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mWebsiteEntries:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1cd

    .line 1322
    :pswitch_357
    const/4 v4, 0x6

    move-object/from16 v0, v36

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/Contacts$ContactMethods;->decodeImProtocol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v50

    .line 1325
    .local v50, protocolObj:Ljava/lang/Object;
    move-object/from16 v0, v50

    instance-of v0, v0, Ljava/lang/Number;

    move v4, v0

    if-eqz v4, :cond_3f0

    .line 1326
    check-cast v50, Ljava/lang/Number;

    .end local v50           #protocolObj:Ljava/lang/Object;
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Number;->intValue()I

    move-result v49

    .line 1327
    .local v49, protocol:I
    const v4, 0x7f06008f

    aget-object v5, v51, v49

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/ViewContactActivity;->buildActionString(ILjava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->label:Ljava/lang/String;

    .line 1329
    invoke-static/range {v49 .. v49}, Landroid/provider/Contacts$ContactMethods;->lookupProviderNameFromId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v28

    .line 1330
    .local v28, host:Ljava/lang/String;
    const/4 v4, 0x5

    move/from16 v0, v49

    move v1, v4

    if-eq v0, v1, :cond_398

    const/4 v4, 0x1

    move/from16 v0, v49

    move v1, v4

    if-ne v0, v1, :cond_39e

    .line 1332
    :cond_398
    const/4 v4, 0x2

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->maxLabelLines:I

    .line 1342
    .end local v49           #protocol:I
    :cond_39e
    :goto_39e
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3ba

    .line 1343
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ViewContactActivity;->constructImToUrl(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 1346
    :cond_3ba
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    .line 1347
    const/4 v4, 0x7

    move-object/from16 v0, v36

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_3db

    .line 1348
    const/4 v4, 0x7

    move-object/from16 v0, v36

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Landroid/provider/Contacts$Presence;->getPresenceIconResourceId(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->presenceIcon:I

    .line 1351
    :cond_3db
    const v4, 0x7f02014a

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mImEntries:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1cd

    .line 1335
    .end local v28           #host:Ljava/lang/String;
    .restart local v50       #protocolObj:Ljava/lang/Object;
    :cond_3f0
    move-object/from16 v0, v50

    check-cast v0, Ljava/lang/String;

    move-object/from16 v52, v0

    .line 1336
    .local v52, providerName:Ljava/lang/String;
    const v4, 0x7f06008f

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move-object/from16 v2, v52

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/ViewContactActivity;->buildActionString(ILjava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->label:Ljava/lang/String;

    .line 1338
    invoke-virtual/range {v52 .. v52}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v28

    .restart local v28       #host:Ljava/lang/String;
    goto :goto_39e

    .line 1358
    .end local v22           #data:Ljava/lang/String;
    .end local v25           #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    .end local v28           #host:Ljava/lang/String;
    .end local v30           #id:J
    .end local v34           #kind:I
    .end local v35           #label:Ljava/lang/String;
    .end local v50           #protocolObj:Ljava/lang/Object;
    .end local v52           #providerName:Ljava/lang/String;
    .end local v63           #type:I
    .end local v64           #uri:Landroid/net/Uri;
    :cond_40e
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 1363
    .end local v51           #protocolStrings:[Ljava/lang/String;
    :cond_411
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ViewContactActivity;->MANAGE_SOCIAL_NETWORK:Z

    move v4, v0

    if-eqz v4, :cond_52f

    .line 1364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mUri:Landroid/net/Uri;

    move-object v4, v0

    const-string v5, "sns_ids"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1365
    .local v7, snsIdsUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object v6, v0

    sget-object v8, Lcom/android/contacts/ContactEntryAdapter;->SNSIDS_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v59

    .line 1368
    .local v59, snsIdsCursor:Landroid/database/Cursor;
    if-eqz v59, :cond_52f

    .line 1369
    :goto_433
    invoke-interface/range {v59 .. v59}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_52c

    .line 1370
    const/4 v4, 0x4

    move-object/from16 v0, v59

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    .line 1371
    .local v58, snSiteId:Ljava/lang/String;
    const/4 v4, 0x3

    move-object/from16 v0, v59

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v65

    .line 1372
    .local v65, userUid:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v65

    invoke-static {v0, v1, v2}, Lcom/android/contacts/LinkbookAsyncHelper;->getProfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;

    move-result-object v48

    .line 1373
    .local v48, profile:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;
    if-eqz v48, :cond_513

    .line 1374
    new-instance v25, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    invoke-direct/range {v25 .. v25}, Lcom/android/contacts/ViewContactActivity$ViewEntry;-><init>()V

    .line 1375
    .restart local v25       #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    const/4 v4, 0x0

    move-object/from16 v0, v59

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-wide v0, v8

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->id:J

    .line 1376
    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->id:J

    move-wide v8, v0

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 1377
    const/16 v4, 0x9

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->kind:I

    .line 1378
    const/4 v4, 0x1

    move-object/from16 v0, v59

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->label:Ljava/lang/String;

    .line 1379
    const/4 v4, 0x2

    move-object/from16 v0, v59

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    .line 1380
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Lcom/android/contacts/LinkbookAsyncHelper;->getAccountIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->iconData:Landroid/graphics/Bitmap;

    .line 1381
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->iconData:Landroid/graphics/Bitmap;

    move-object v4, v0

    if-nez v4, :cond_4b2

    .line 1382
    const v4, 0x7f02015a

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    .line 1385
    :cond_4b2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ViewContactActivity;->mIsSystemContact:Z

    move v4, v0

    if-nez v4, :cond_506

    .line 1386
    const-string v4, "TW"

    move-object v0, v4

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f9

    .line 1387
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.lge.sns.profile.intent.action.VIEW_TWITTER_PROFILE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 1394
    :goto_4d0
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    move-object v4, v0

    const-string v5, "sns_id"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1395
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    move-object v4, v0

    const-string v5, "user_id"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mSnsIdEntries:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_433

    .line 1389
    :cond_4f9
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.lge.sns.profile.intent.action.VIEW_PROFILE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    goto :goto_4d0

    .line 1392
    :cond_506
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.lge.sns.account.intent.action.SELECT_MENU"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    goto :goto_4d0

    .line 1400
    .end local v25           #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    :cond_513
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ViewContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Contacts$SnsIds;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, v59

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v5, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_433

    .line 1405
    .end local v48           #profile:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookProfile;
    .end local v58           #snSiteId:Ljava/lang/String;
    .end local v65           #userUid:Ljava/lang/String;
    :cond_52c
    invoke-interface/range {v59 .. v59}, Landroid/database/Cursor;->close()V

    .line 1411
    .end local v7           #snsIdsUri:Landroid/net/Uri;
    .end local v59           #snsIdsCursor:Landroid/database/Cursor;
    :cond_52f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mUri:Landroid/net/Uri;

    move-object v4, v0

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v44

    .line 1412
    .local v44, personId:J
    const/4 v4, 0x3

    new-array v10, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "im_handle"

    aput-object v5, v10, v4

    const/4 v4, 0x1

    const-string v5, "im_protocol"

    aput-object v5, v10, v4

    const/4 v4, 0x2

    const-string v5, "mode"

    aput-object v5, v10, v4

    .line 1417
    .local v10, projection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object v8, v0

    sget-object v9, Landroid/provider/Contacts$Presence;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "person="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v47

    .line 1421
    .local v47, presenceCursor:Landroid/database/Cursor;
    if-eqz v47, :cond_65d

    .line 1423
    :cond_56f
    :goto_56f
    :try_start_56f
    invoke-interface/range {v47 .. v47}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_65a

    .line 1425
    const/4 v4, 0x0

    move-object/from16 v0, v47

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1427
    .restart local v22       #data:Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, v47

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/Contacts$ContactMethods;->decodeImProtocol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v50

    .line 1430
    .restart local v50       #protocolObj:Ljava/lang/Object;
    move-object/from16 v0, v50

    instance-of v0, v0, Ljava/lang/Number;

    move v4, v0

    if-eqz v4, :cond_648

    .line 1431
    check-cast v50, Ljava/lang/Number;

    .end local v50           #protocolObj:Ljava/lang/Object;
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Number;->intValue()I

    move-result v49

    .line 1432
    .restart local v49       #protocol:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ViewContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    aget-object v35, v4, v49

    .line 1434
    .restart local v35       #label:Ljava/lang/String;
    invoke-static/range {v49 .. v49}, Landroid/provider/Contacts$ContactMethods;->lookupProviderNameFromId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v28

    .line 1441
    .end local v49           #protocol:I
    .restart local v28       #host:Ljava/lang/String;
    :goto_5ab
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_56f

    .line 1447
    new-instance v32, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ViewContactActivity;->constructImToUrl(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v32

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1450
    .local v32, intent:Landroid/content/Intent;
    const/16 v21, 0x1

    .line 1451
    .local v21, addEntry:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mImEntries:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v40

    .line 1452
    .local v40, numImEntries:I
    const/16 v29, 0x0

    :goto_5d3
    move/from16 v0, v29

    move/from16 v1, v40

    if-ge v0, v1, :cond_5f8

    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mImEntries:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    move-object v0, v4

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    move-object/from16 v26, v0

    .line 1457
    .local v26, existingIntent:Landroid/content/Intent;
    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_656

    .line 1458
    const/16 v21, 0x0

    .line 1464
    .end local v26           #existingIntent:Landroid/content/Intent;
    :cond_5f8
    if-eqz v21, :cond_56f

    .line 1465
    new-instance v25, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    invoke-direct/range {v25 .. v25}, Lcom/android/contacts/ViewContactActivity$ViewEntry;-><init>()V

    .line 1466
    .restart local v25       #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->kind:I

    .line 1467
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    .line 1468
    move-object/from16 v0, v35

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->label:Ljava/lang/String;

    .line 1469
    move-object/from16 v0, v32

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 1470
    const v4, 0x7f02014a

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    .line 1471
    const/4 v4, 0x2

    move-object/from16 v0, v47

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Landroid/provider/Contacts$Presence;->getPresenceIconResourceId(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->presenceIcon:I

    .line 1473
    const/4 v4, 0x2

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->maxLabelLines:I

    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mImEntries:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_641
    .catchall {:try_start_56f .. :try_end_641} :catchall_643

    goto/16 :goto_56f

    .line 1478
    .end local v21           #addEntry:Z
    .end local v22           #data:Ljava/lang/String;
    .end local v25           #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    .end local v28           #host:Ljava/lang/String;
    .end local v32           #intent:Landroid/content/Intent;
    .end local v35           #label:Ljava/lang/String;
    .end local v40           #numImEntries:I
    :catchall_643
    move-exception v4

    invoke-interface/range {v47 .. v47}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1436
    .restart local v22       #data:Ljava/lang/String;
    .restart local v50       #protocolObj:Ljava/lang/Object;
    :cond_648
    :try_start_648
    move-object/from16 v0, v50

    check-cast v0, Ljava/lang/String;

    move-object/from16 v52, v0

    .line 1437
    .restart local v52       #providerName:Ljava/lang/String;
    move-object/from16 v35, v52

    .line 1438
    .restart local v35       #label:Ljava/lang/String;
    invoke-virtual/range {v52 .. v52}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_653
    .catchall {:try_start_648 .. :try_end_653} :catchall_643

    move-result-object v28

    .restart local v28       #host:Ljava/lang/String;
    goto/16 :goto_5ab

    .line 1452
    .end local v50           #protocolObj:Ljava/lang/Object;
    .end local v52           #providerName:Ljava/lang/String;
    .restart local v21       #addEntry:Z
    .restart local v26       #existingIntent:Landroid/content/Intent;
    .restart local v32       #intent:Landroid/content/Intent;
    .restart local v40       #numImEntries:I
    :cond_656
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_5d3

    .line 1478
    .end local v21           #addEntry:Z
    .end local v22           #data:Ljava/lang/String;
    .end local v26           #existingIntent:Landroid/content/Intent;
    .end local v28           #host:Ljava/lang/String;
    .end local v32           #intent:Landroid/content/Intent;
    .end local v35           #label:Ljava/lang/String;
    .end local v40           #numImEntries:I
    :cond_65a
    invoke-interface/range {v47 .. v47}, Landroid/database/Cursor;->close()V

    .line 1483
    :cond_65d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mUri:Landroid/net/Uri;

    move-object v4, v0

    const-string v5, "organizations"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 1484
    .local v12, organizationsUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object v11, v0

    sget-object v13, Lcom/android/contacts/ContactEntryAdapter;->ORGANIZATIONS_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v43

    .line 1488
    .local v43, organizationsCursor:Landroid/database/Cursor;
    if-eqz v43, :cond_6d6

    .line 1489
    :goto_679
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6d3

    .line 1490
    new-instance v25, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    invoke-direct/range {v25 .. v25}, Lcom/android/contacts/ViewContactActivity$ViewEntry;-><init>()V

    .line 1491
    .restart local v25       #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    const/4 v4, 0x0

    move-object/from16 v0, v43

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-wide v0, v8

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->id:J

    .line 1492
    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->id:J

    move-wide v8, v0

    invoke-static {v12, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 1493
    const/4 v4, 0x4

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->kind:I

    .line 1494
    const/4 v4, 0x3

    move-object/from16 v0, v43

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->label:Ljava/lang/String;

    .line 1495
    const/4 v4, 0x4

    move-object/from16 v0, v43

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    .line 1496
    const v4, 0x7f02014e

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_679

    .line 1505
    .end local v25           #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    :cond_6d3
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->close()V

    .line 1509
    :cond_6d6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ViewContactActivity;->mIsSystemContact:Z

    move v4, v0

    if-nez v4, :cond_779

    .line 1510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mUri:Landroid/net/Uri;

    move-object v4, v0

    const-string v5, "groupmembership"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 1511
    .local v14, groupUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object v13, v0

    sget-object v15, Lcom/android/contacts/ViewContactActivity;->MEMBERSHIP_PROJECTION:[Ljava/lang/String;

    const-string v16, "system_id IS NULL"

    const/16 v17, 0x0

    const-string v18, "isprimary DESC"

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 1514
    .local v27, groupCursor:Landroid/database/Cursor;
    if-eqz v27, :cond_779

    .line 1515
    :cond_6fb
    :goto_6fb
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_776

    .line 1516
    const/4 v4, 0x0

    move-object/from16 v0, v27

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 1518
    .local v38, name:Ljava/lang/String;
    const/4 v4, 0x3

    move-object/from16 v0, v27

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_772

    const/4 v4, 0x1

    move/from16 v33, v4

    .line 1520
    .restart local v33       #isPrimary:Z
    :goto_717
    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6fb

    .line 1523
    new-instance v25, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    invoke-direct/range {v25 .. v25}, Lcom/android/contacts/ViewContactActivity$ViewEntry;-><init>()V

    .line 1524
    .restart local v25       #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    const/4 v4, -0x4

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->kind:I

    .line 1525
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ViewContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600cf

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->label:Ljava/lang/String;

    .line 1527
    const-string v4, "Contacts"

    move-object v0, v4

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6fb

    .line 1529
    const-string v4, "Starred in Android"

    move-object v0, v4

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6fb

    .line 1532
    move-object/from16 v0, v38

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    .line 1534
    if-eqz v33, :cond_75e

    .line 1535
    const v4, 0x7f0200aa

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->primaryIcon:I

    .line 1537
    :cond_75e
    const v4, 0x7f020156

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mGroupsEntries:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6fb

    .line 1518
    .end local v25           #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    .end local v33           #isPrimary:Z
    :cond_772
    const/4 v4, 0x0

    move/from16 v33, v4

    goto :goto_717

    .line 1540
    .end local v38           #name:Ljava/lang/String;
    :cond_776
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 1545
    .end local v14           #groupUri:Landroid/net/Uri;
    .end local v27           #groupCursor:Landroid/database/Cursor;
    :cond_779
    const/4 v4, 0x3

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 1546
    .local v39, note:Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7cf

    .line 1547
    new-instance v25, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    invoke-direct/range {v25 .. v25}, Lcom/android/contacts/ViewContactActivity$ViewEntry;-><init>()V

    .line 1548
    .restart local v25       #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    const-wide/16 v8, 0x0

    move-wide v0, v8

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->id:J

    .line 1549
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 1550
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->kind:I

    .line 1551
    move-object/from16 v0, v39

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    .line 1552
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ViewContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060027

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->label:Ljava/lang/String;

    .line 1553
    const/16 v4, 0x32

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->maxLines:I

    .line 1554
    const v4, 0x7f020157

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mNoteEntries:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1559
    .end local v25           #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    :cond_7cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mUri:Landroid/net/Uri;

    move-object v4, v0

    const-string v5, "stuffs"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 1560
    .local v16, stuffsUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object v15, v0

    sget-object v17, Lcom/android/contacts/ContactEntryAdapter;->STUFFS_PROJECTION:[Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v60

    .line 1563
    .local v60, stuffsCursor:Landroid/database/Cursor;
    if-eqz v60, :cond_8d3

    .line 1564
    :goto_7ed
    invoke-interface/range {v60 .. v60}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8d0

    .line 1565
    const/4 v4, 0x0

    move-object/from16 v0, v60

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 1566
    .restart local v30       #id:J
    const/4 v4, 0x1

    move-object/from16 v0, v60

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 1567
    .restart local v34       #kind:I
    move-object/from16 v0, v16

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v64

    .line 1569
    .restart local v64       #uri:Landroid/net/Uri;
    new-instance v25, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    invoke-direct/range {v25 .. v25}, Lcom/android/contacts/ViewContactActivity$ViewEntry;-><init>()V

    .line 1570
    .restart local v25       #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    move-wide/from16 v0, v30

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->id:J

    .line 1571
    move-object/from16 v0, v64

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 1572
    move/from16 v0, v34

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->kind:I

    .line 1573
    packed-switch v34, :pswitch_data_988

    goto :goto_7ed

    .line 1575
    :pswitch_826
    const/4 v4, 0x2

    move-object/from16 v0, v60

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    .line 1577
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_85a

    .line 1578
    const-string v4, "ViewContactActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "empty data for stuff "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7ed

    .line 1581
    :cond_85a
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ViewContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060027

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->label:Ljava/lang/String;

    .line 1582
    const/16 v4, 0x32

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->maxLines:I

    .line 1583
    const v4, 0x7f020157

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mNoteEntries:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7ed

    .line 1587
    :pswitch_886
    const/4 v4, 0x3

    move-object/from16 v0, v60

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v61

    .line 1596
    .local v61, time:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-static/range {v61 .. v62}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1597
    .local v23, day:Ljava/lang/StringBuilder;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    .line 1598
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ViewContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600ce

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->label:Ljava/lang/String;

    .line 1599
    const v4, 0x7f020154

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mBirthdayEntries:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7ed

    .line 1605
    .end local v23           #day:Ljava/lang/StringBuilder;
    .end local v25           #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    .end local v30           #id:J
    .end local v34           #kind:I
    .end local v61           #time:J
    .end local v64           #uri:Landroid/net/Uri;
    :cond_8d0
    invoke-interface/range {v60 .. v60}, Landroid/database/Cursor;->close()V

    .line 1609
    :cond_8d3
    const/4 v4, 0x7

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    .line 1610
    .local v54, ringtoneStr:Ljava/lang/String;
    invoke-static/range {v54 .. v54}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_934

    .line 1612
    invoke-static/range {v54 .. v54}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v55

    .line 1613
    .local v55, ringtoneUri:Landroid/net/Uri;
    if-eqz v55, :cond_934

    .line 1614
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v53

    .line 1615
    .local v53, ringtone:Landroid/media/Ringtone;
    if-eqz v53, :cond_934

    .line 1616
    new-instance v25, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    invoke-direct/range {v25 .. v25}, Lcom/android/contacts/ViewContactActivity$ViewEntry;-><init>()V

    .line 1617
    .restart local v25       #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    const v4, 0x7f060028

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/contacts/ViewContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->label:Ljava/lang/String;

    .line 1618
    move-object/from16 v0, v53

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    .line 1619
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->kind:I

    .line 1620
    move-object/from16 v0, v55

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 1621
    const v4, 0x7f020158

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    .line 1622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mOtherEntries:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1624
    invoke-virtual/range {v53 .. v53}, Landroid/media/Ringtone;->stop()V

    .line 1630
    .end local v25           #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    .end local v53           #ringtone:Landroid/media/Ringtone;
    .end local v55           #ringtoneUri:Landroid/net/Uri;
    :cond_934
    const/16 v4, 0x8

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_973

    const/4 v4, 0x1

    move/from16 v56, v4

    .line 1631
    .local v56, sendToVoicemail:Z
    :goto_943
    if-eqz v56, :cond_972

    .line 1632
    new-instance v25, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    invoke-direct/range {v25 .. v25}, Lcom/android/contacts/ViewContactActivity$ViewEntry;-><init>()V

    .line 1636
    .restart local v25       #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    const v4, 0x7f060124

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/contacts/ViewContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->label:Ljava/lang/String;

    .line 1642
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->kind:I

    .line 1645
    const v4, 0x7f020155

    move v0, v4

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    .line 1647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mOtherEntries:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1649
    .end local v25           #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    :cond_972
    return-void

    .line 1630
    .end local v56           #sendToVoicemail:Z
    :cond_973
    const/4 v4, 0x0

    move/from16 v56, v4

    goto :goto_943

    .line 1285
    nop

    :pswitch_data_978
    .packed-switch 0x1
        :pswitch_240
        :pswitch_290
        :pswitch_357
        :pswitch_23f
        :pswitch_23f
        :pswitch_2df
    .end packed-switch

    .line 1573
    :pswitch_data_988
    .packed-switch 0x7
        :pswitch_826
        :pswitch_886
    .end packed-switch
.end method

.method private buildSeparators()V
    .registers 5

    .prologue
    const v3, 0x7f060055

    const/4 v2, -0x3

    .line 1101
    new-instance v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/ViewContactActivity$ViewEntry;-><init>()V

    .line 1102
    .local v0, separator:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    iput v2, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->kind:I

    .line 1103
    const v1, 0x7f060052

    invoke-virtual {p0, v1}, Lcom/android/contacts/ViewContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    .line 1104
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1106
    new-instance v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .end local v0           #separator:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    invoke-direct {v0}, Lcom/android/contacts/ViewContactActivity$ViewEntry;-><init>()V

    .line 1107
    .restart local v0       #separator:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    iput v2, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->kind:I

    .line 1108
    const v1, 0x7f060054

    invoke-virtual {p0, v1}, Lcom/android/contacts/ViewContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    .line 1109
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mSmsEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1111
    new-instance v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .end local v0           #separator:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    invoke-direct {v0}, Lcom/android/contacts/ViewContactActivity$ViewEntry;-><init>()V

    .line 1112
    .restart local v0       #separator:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    iput v2, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->kind:I

    .line 1113
    invoke-virtual {p0, v3}, Lcom/android/contacts/ViewContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    .line 1114
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    iget-boolean v1, p0, Lcom/android/contacts/ViewContactActivity;->MANAGE_SOCIAL_NETWORK:Z

    if-eqz v1, :cond_59

    .line 1118
    new-instance v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .end local v0           #separator:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    invoke-direct {v0}, Lcom/android/contacts/ViewContactActivity$ViewEntry;-><init>()V

    .line 1119
    .restart local v0       #separator:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    iput v2, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->kind:I

    .line 1120
    const v1, 0x7f060101

    invoke-virtual {p0, v1}, Lcom/android/contacts/ViewContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    .line 1121
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mSnsIdEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1125
    :cond_59
    new-instance v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .end local v0           #separator:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    invoke-direct {v0}, Lcom/android/contacts/ViewContactActivity$ViewEntry;-><init>()V

    .line 1126
    .restart local v0       #separator:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    iput v2, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->kind:I

    .line 1127
    const v1, 0x7f060057

    invoke-virtual {p0, v1}, Lcom/android/contacts/ViewContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    .line 1128
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1130
    new-instance v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .end local v0           #separator:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    invoke-direct {v0}, Lcom/android/contacts/ViewContactActivity$ViewEntry;-><init>()V

    .line 1131
    .restart local v0       #separator:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    iput v2, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->kind:I

    .line 1132
    invoke-virtual {p0, v3}, Lcom/android/contacts/ViewContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    .line 1133
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mWebsiteEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1135
    new-instance v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .end local v0           #separator:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    invoke-direct {v0}, Lcom/android/contacts/ViewContactActivity$ViewEntry;-><init>()V

    .line 1136
    .restart local v0       #separator:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    iput v2, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->kind:I

    .line 1137
    const v1, 0x7f0600d7

    invoke-virtual {p0, v1}, Lcom/android/contacts/ViewContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    .line 1138
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mGroupsEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1140
    new-instance v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .end local v0           #separator:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    invoke-direct {v0}, Lcom/android/contacts/ViewContactActivity$ViewEntry;-><init>()V

    .line 1141
    .restart local v0       #separator:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    iput v2, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->kind:I

    .line 1142
    const v1, 0x7f060059

    invoke-virtual {p0, v1}, Lcom/android/contacts/ViewContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    .line 1143
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1145
    new-instance v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .end local v0           #separator:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    invoke-direct {v0}, Lcom/android/contacts/ViewContactActivity$ViewEntry;-><init>()V

    .line 1146
    .restart local v0       #separator:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    iput v2, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->kind:I

    .line 1147
    const v1, 0x7f06005b

    invoke-virtual {p0, v1}, Lcom/android/contacts/ViewContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    .line 1148
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1150
    new-instance v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .end local v0           #separator:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    invoke-direct {v0}, Lcom/android/contacts/ViewContactActivity$ViewEntry;-><init>()V

    .line 1151
    .restart local v0       #separator:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    iput v2, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->kind:I

    .line 1152
    const v1, 0x7f0600d8

    invoke-virtual {p0, v1}, Lcom/android/contacts/ViewContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    .line 1153
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1155
    new-instance v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .end local v0           #separator:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    invoke-direct {v0}, Lcom/android/contacts/ViewContactActivity$ViewEntry;-><init>()V

    .line 1156
    .restart local v0       #separator:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    iput v2, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->kind:I

    .line 1157
    const v1, 0x7f0600d9

    invoke-virtual {p0, v1}, Lcom/android/contacts/ViewContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    .line 1158
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    new-instance v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .end local v0           #separator:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    invoke-direct {v0}, Lcom/android/contacts/ViewContactActivity$ViewEntry;-><init>()V

    .line 1161
    .restart local v0       #separator:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    iput v2, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->kind:I

    .line 1162
    const v1, 0x7f06005c

    invoke-virtual {p0, v1}, Lcom/android/contacts/ViewContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    .line 1163
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mOtherEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1164
    return-void
.end method

.method private constructImToUrl(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 5
    .parameter "host"
    .parameter "data"

    .prologue
    .line 1169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "imto://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1170
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1172
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private dataChanged()V
    .registers 11

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 472
    iput-boolean v7, p0, Lcom/android/contacts/ViewContactActivity;->mIsSystemContact:Z

    .line 473
    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    .line 475
    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 476
    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0xa

    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 477
    iput-boolean v8, p0, Lcom/android/contacts/ViewContactActivity;->mIsSystemContact:Z

    .line 481
    :cond_1f
    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 483
    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity;->mNameView:Landroid/widget/TextView;

    const v4, 0x104000e

    invoke-virtual {p0, v4}, Lcom/android/contacts/ViewContactActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    :goto_38
    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity;->mPhoneticNameView:Landroid/widget/TextView;

    if-eqz v3, :cond_49

    .line 490
    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0x9

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, phoneticName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity;->mPhoneticNameView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    .end local v1           #phoneticName:Ljava/lang/String;
    :cond_49
    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity;->mPhotoView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/contacts/ViewContactActivity;->mUri:Landroid/net/Uri;

    iget v5, p0, Lcom/android/contacts/ViewContactActivity;->mNoPhotoResource:I

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Landroid/provider/Contacts$People;->loadContactPhoto(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 499
    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 500
    .local v2, syncAccount:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/contacts/ViewContactActivity;->mIsSystemContact:Z

    if-ne v3, v8, :cond_84

    .line 501
    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity;->mStarView:Landroid/widget/CheckBox;

    invoke-virtual {v3, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 510
    :goto_66
    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/android/contacts/ViewContactActivity;->buildEntries(Landroid/database/Cursor;)V

    .line 511
    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity;->mAdapter:Lcom/android/contacts/ViewContactActivity$ViewAdapter;

    if-nez v3, :cond_a9

    .line 512
    new-instance v3, Lcom/android/contacts/ViewContactActivity$ViewAdapter;

    iget-object v4, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4}, Lcom/android/contacts/ViewContactActivity$ViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/android/contacts/ViewContactActivity;->mAdapter:Lcom/android/contacts/ViewContactActivity$ViewAdapter;

    .line 513
    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity;->mAdapter:Lcom/android/contacts/ViewContactActivity$ViewAdapter;

    invoke-virtual {p0, v3}, Lcom/android/contacts/ViewContactActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 522
    .end local v0           #name:Ljava/lang/String;
    .end local v2           #syncAccount:Ljava/lang/String;
    :goto_7d
    return-void

    .line 485
    .restart local v0       #name:Ljava/lang/String;
    :cond_7e
    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_38

    .line 502
    .restart local v2       #syncAccount:Ljava/lang/String;
    :cond_84
    const-string v3, "non_syncable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 503
    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity;->mStarView:Landroid/widget/CheckBox;

    invoke-virtual {v3, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_66

    .line 505
    :cond_92
    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity;->mStarView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity;->mStarView:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x6

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v8, :cond_a7

    move v4, v8

    :goto_a3
    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_66

    :cond_a7
    move v4, v7

    goto :goto_a3

    .line 515
    :cond_a9
    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity;->mAdapter:Lcom/android/contacts/ViewContactActivity$ViewAdapter;

    iget-object v4, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v7}, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->setSections(Ljava/util/ArrayList;Z)V

    goto :goto_7d

    .line 518
    .end local v0           #name:Ljava/lang/String;
    .end local v2           #syncAccount:Ljava/lang/String;
    :cond_b1
    const v3, 0x7f060032

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 519
    const-string v3, "ViewContactActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid contact uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/ViewContactActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactActivity;->finish()V

    goto :goto_7d
.end method

.method private getAdnNumberFieldSize()I
    .registers 3

    .prologue
    .line 1080
    const/16 v0, 0x14

    .line 1082
    .local v0, MAX_ADN_NUMBER_FIELD:I
    const/16 v1, 0x14

    return v1
.end method

.method private getAdnRecordSize()I
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 980
    const/4 v3, 0x3

    new-array v1, v3, [I

    .line 981
    .local v1, recordSize:[I
    const/4 v0, 0x0

    .line 985
    .local v0, maxAdnSize:I
    :try_start_5
    const-string v3, "simphonebook"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 987
    .local v2, simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_17

    .line 988
    const/16 v3, 0x6f3a

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_16} :catch_58
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_16} :catch_56

    move-result-object v1

    .line 1000
    .end local v2           #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_17
    :goto_17
    const-string v3, "ViewContactActivity"

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

    .line 1004
    aget v3, v1, v6

    if-eqz v3, :cond_55

    .line 1007
    aget v3, v1, v6

    const/16 v4, 0xe

    sub-int v0, v3, v4

    .line 1011
    :cond_55
    return v0

    .line 993
    :catch_56
    move-exception v3

    goto :goto_17

    .line 991
    :catch_58
    move-exception v3

    goto :goto_17
.end method

.method private getEmptyAdnRecordNumber()I
    .registers 10

    .prologue
    .line 1021
    const/4 v7, 0x0

    .line 1025
    .local v7, emptyAdnNumber:I
    :try_start_1
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v8

    .line 1027
    .local v8, simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v8, :cond_11

    .line 1031
    invoke-interface {v8}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnsRecordsNumber()I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_3e
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_10} :catch_3c

    move-result v7

    .line 1053
    .end local v8           #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_11
    :goto_11
    const/4 v0, 0x0

    .line 1054
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 1057
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_13
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1060
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

    .line 1065
    :goto_25
    if-eqz v0, :cond_29

    if-nez v6, :cond_2b

    :cond_29
    move v1, v7

    .line 1072
    :goto_2a
    return v1

    .line 1070
    :cond_2b
    :try_start_2b
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_35

    move-result v1

    sub-int v1, v7, v1

    .line 1072
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2a

    :catchall_35
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1061
    :catch_3a
    move-exception v1

    goto :goto_25

    .line 1038
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_3c
    move-exception v1

    goto :goto_11

    .line 1036
    :catch_3e
    move-exception v1

    goto :goto_11
.end method

.method private isBarcodeScannerInstalled()Z
    .registers 5

    .prologue
    .line 582
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.zxing.client.android.ENCODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 583
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 585
    .local v1, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_15

    const/4 v2, 0x1

    :goto_14
    return v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_14
.end method

.method private signalError()V
    .registers 1

    .prologue
    .line 1092
    return-void
.end method


# virtual methods
.method buildActionString(ILjava/lang/CharSequence;Z)Ljava/lang/String;
    .registers 8
    .parameter "actionResId"
    .parameter "type"
    .parameter "lowerCase"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1653
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1654
    invoke-virtual {p0, p1}, Lcom/android/contacts/ViewContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1665
    :goto_12
    return-object v0

    .line 1658
    :cond_13
    if-nez p2, :cond_17

    .line 1659
    const-string p2, ""

    .line 1662
    :cond_17
    if-eqz p3, :cond_2a

    .line 1663
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/ViewContactActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 1665
    :cond_2a
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/ViewContactActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 275
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1a

    .line 276
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mObserverRegistered:Z

    if-eqz v0, :cond_13

    .line 277
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mObserverRegistered:Z

    .line 280
    :cond_13
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 281
    iput-object v2, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    .line 283
    :cond_1a
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 284
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactActivity;->finish()V

    .line 285
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 289
    iget-boolean v2, p0, Lcom/android/contacts/ViewContactActivity;->mObserverRegistered:Z

    if-nez v2, :cond_7

    .line 303
    :cond_6
    :goto_6
    return-void

    .line 292
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_3c

    goto :goto_6

    .line 294
    :pswitch_f
    iget-object v2, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 295
    iget-object v2, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x6

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 296
    .local v0, oldStarredState:I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 297
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "starred"

    if-ne v0, v4, :cond_39

    const/4 v3, 0x0

    :goto_28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_6

    :cond_39
    move v3, v4

    .line 297
    goto :goto_28

    .line 292
    nop

    :pswitch_data_3c
    .packed-switch 0x7f050028
        :pswitch_f
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 13
    .parameter "item"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v6, "bad menuInfo"

    const-string v7, "ViewContactActivity"

    .line 808
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_d0

    .line 896
    :cond_e
    :goto_e
    :pswitch_e
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    :goto_12
    return v5

    .line 812
    :pswitch_13
    :try_start_13
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_19
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_19} :catch_3f

    .line 818
    .local v2, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v5, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    iget v6, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-static {v5, v6, v8}, Lcom/android/contacts/ContactEntryAdapter;->getEntry(Ljava/util/ArrayList;IZ)Lcom/android/contacts/ContactEntryAdapter$Entry;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .line 821
    .local v1, entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 822
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "primary_phone"

    iget-wide v6, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 823
    iget-object v5, p0, Lcom/android/contacts/ViewContactActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/android/contacts/ViewContactActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 824
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->dataChanged()V

    move v5, v9

    .line 825
    goto :goto_12

    .line 813
    .end local v1           #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    .end local v2           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v4           #values:Landroid/content/ContentValues;
    :catch_3f
    move-exception v5

    move-object v0, v5

    .line 814
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v5, "ViewContactActivity"

    const-string v5, "bad menuInfo"

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 852
    .end local v0           #e:Ljava/lang/ClassCastException;
    :pswitch_49
    :try_start_49
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_4f
    .catch Ljava/lang/ClassCastException; {:try_start_49 .. :try_end_4f} :catch_64

    .line 858
    .restart local v2       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v5, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    iget v6, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-static {v5, v6, v8}, Lcom/android/contacts/ContactEntryAdapter;->getEntry(Ljava/util/ArrayList;IZ)Lcom/android/contacts/ContactEntryAdapter$Entry;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .line 860
    .restart local v1       #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    if-eqz v1, :cond_62

    .line 861
    iget-object v3, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 862
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_62

    .line 864
    :try_start_5f
    invoke-virtual {p0, v3}, Lcom/android/contacts/ViewContactActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_62
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5f .. :try_end_62} :catch_6e

    .end local v3           #intent:Landroid/content/Intent;
    :cond_62
    :goto_62
    move v5, v9

    .line 871
    goto :goto_12

    .line 853
    .end local v1           #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    .end local v2           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :catch_64
    move-exception v5

    move-object v0, v5

    .line 854
    .restart local v0       #e:Ljava/lang/ClassCastException;
    const-string v5, "ViewContactActivity"

    const-string v5, "bad menuInfo"

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 865
    .end local v0           #e:Ljava/lang/ClassCastException;
    .restart local v1       #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    .restart local v2       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .restart local v3       #intent:Landroid/content/Intent;
    :catch_6e
    move-exception v0

    .line 866
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v5, "ViewContactActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No activity found for intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->signalError()V

    goto :goto_62

    .line 878
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    .end local v2           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_8b
    :try_start_8b
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_91
    .catch Ljava/lang/ClassCastException; {:try_start_8b .. :try_end_91} :catch_c5

    .line 884
    .restart local v2       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v5, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    iget v6, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-static {v5, v6, v8}, Lcom/android/contacts/ContactEntryAdapter;->getEntry(Ljava/util/ArrayList;IZ)Lcom/android/contacts/ContactEntryAdapter$Entry;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .line 886
    .restart local v1       #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    if-eqz v1, :cond_e

    .line 888
    :try_start_9d
    iget-object v5, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v5}, Lcom/android/contacts/ViewContactActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_a2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9d .. :try_end_a2} :catch_a4

    goto/16 :goto_e

    .line 889
    :catch_a4
    move-exception v5

    move-object v0, v5

    .line 890
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v5, "ViewContactActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No activity found for intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->signalError()V

    goto/16 :goto_e

    .line 879
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    .end local v2           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :catch_c5
    move-exception v5

    move-object v0, v5

    .line 880
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v5, "ViewContactActivity"

    const-string v5, "bad menuInfo"

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 808
    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_49
        :pswitch_13
        :pswitch_e
        :pswitch_e
        :pswitch_8b
        :pswitch_8b
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 308
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 312
    invoke-static {p0}, Lcom/android/contacts/FlexibleOptionHelper;->isLinkbookEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->MANAGE_SOCIAL_NETWORK:Z

    .line 314
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mResolver:Landroid/content/ContentResolver;

    .line 315
    sput-object v3, Lcom/android/contacts/ViewContactActivity;->mOwnNumber:Ljava/lang/String;

    .line 317
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/contacts/ViewContactActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 318
    .local v7, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v7, :cond_34

    .line 319
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v6

    .line 320
    .local v6, line1Number:Ljava/lang/String;
    if-eqz v6, :cond_34

    .line 321
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ViewContactActivity;->mOwnNumber:Ljava/lang/String;

    .line 322
    sget-object v0, Lcom/android/contacts/ViewContactActivity;->mOwnNumber:Ljava/lang/String;

    const-string v1, "+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ViewContactActivity;->mOwnNumber:Ljava/lang/String;

    .line 328
    .end local v6           #line1Number:Ljava/lang/String;
    :cond_34
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mUri:Landroid/net/Uri;

    .line 332
    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcom/android/contacts/ViewContactActivity;->setContentView(I)V

    .line 336
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/ContactEntryAdapter;->CONTACT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    .line 337
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 338
    :cond_5e
    const-string v0, "ViewContactActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid contact uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/ViewContactActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactActivity;->finish()V

    .line 390
    :goto_7b
    return-void

    .line 348
    :cond_7c
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 350
    const v0, 0x7f05000e

    invoke-virtual {p0, v0}, Lcom/android/contacts/ViewContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mNameView:Landroid/widget/TextView;

    .line 351
    const v0, 0x7f05003a

    invoke-virtual {p0, v0}, Lcom/android/contacts/ViewContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mPhoneticNameView:Landroid/widget/TextView;

    .line 352
    const v0, 0x7f050013

    invoke-virtual {p0, v0}, Lcom/android/contacts/ViewContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mPhotoView:Landroid/widget/ImageView;

    .line 353
    const v0, 0x7f050028

    invoke-virtual {p0, v0}, Lcom/android/contacts/ViewContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mStarView:Landroid/widget/CheckBox;

    .line 366
    const v0, 0x7f0200a7

    iput v0, p0, Lcom/android/contacts/ViewContactActivity;->mNoPhotoResource:I

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mShowSmsLinksForAllPhones:Z

    .line 374
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mSmsEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->MANAGE_SOCIAL_NETWORK:Z

    if-eqz v0, :cond_d7

    .line 379
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mSnsIdEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_d7
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mWebsiteEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mGroupsEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mBirthdayEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mNoteEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mOtherEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7b
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 15
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const v10, 0x7f06001a

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    const-string v6, "ViewContactActivity"

    .line 595
    :try_start_8
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v3, v0
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_c} :catch_16

    .line 602
    .local v3, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-nez v3, :cond_1f

    .line 603
    const-string v5, "ViewContactActivity"

    const-string v5, "bad menuInfo"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    .end local v3           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_15
    :goto_15
    return-void

    .line 596
    :catch_16
    move-exception v1

    .line 597
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v5, "ViewContactActivity"

    const-string v5, "bad menuInfo"

    invoke-static {v6, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 607
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v3       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_1f
    iget-object v5, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    iget v6, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-static {v5, v6, v7}, Lcom/android/contacts/ContactEntryAdapter;->getEntry(Ljava/util/ArrayList;IZ)Lcom/android/contacts/ContactEntryAdapter$Entry;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .line 609
    .local v2, entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    iget v5, v2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->kind:I

    packed-switch v5, :pswitch_data_a4

    :pswitch_2e
    goto :goto_15

    .line 629
    :pswitch_2f
    iget-object v5, v2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_15

    .line 630
    const/4 v5, 0x6

    const v6, 0x7f060018

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_15

    .line 611
    :pswitch_3b
    iget-boolean v5, p0, Lcom/android/contacts/ViewContactActivity;->mIsSystemContact:Z

    if-eqz v5, :cond_65

    sget-object v5, Lcom/android/contacts/ViewContactActivity;->mOwnNumber:Ljava/lang/String;

    if-eqz v5, :cond_65

    iget-object v5, v2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    if-eqz v5, :cond_65

    .line 612
    iget-object v5, v2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 613
    .local v4, number:Ljava/lang/String;
    const-string v5, "+"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 614
    sget-object v5, Lcom/android/contacts/ViewContactActivity;->mOwnNumber:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 615
    iget v5, v2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->primaryIcon:I

    if-ne v5, v8, :cond_15

    .line 616
    invoke-interface {p1, v7, v9, v7, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_15

    .line 621
    .end local v4           #number:Ljava/lang/String;
    :cond_65
    const v5, 0x7f060016

    invoke-interface {p1, v7, v7, v7, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v6, v2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 622
    const v5, 0x7f060017

    invoke-interface {p1, v7, v7, v7, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v6, v2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->auxIntent:Landroid/content/Intent;

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 623
    iget v5, v2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->primaryIcon:I

    if-ne v5, v8, :cond_15

    .line 624
    invoke-interface {p1, v7, v9, v7, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_15

    .line 635
    :pswitch_85
    iget-object v5, v2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_15

    .line 636
    const/4 v5, 0x5

    const v6, 0x7f060019

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_15

    .line 641
    :pswitch_91
    iget-object v5, v2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_15

    .line 642
    const v5, 0x7f0600c3

    invoke-interface {p1, v7, v7, v7, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v6, v2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_15

    .line 609
    nop

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_85
        :pswitch_2e
        :pswitch_2e
        :pswitch_3b
        :pswitch_91
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 456
    packed-switch p1, :pswitch_data_36

    move-object v0, v2

    .line 467
    :goto_5
    return-object v0

    .line 458
    :pswitch_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mDialogTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_5

    .line 456
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 529
    const v0, 0x7f060012

    invoke-interface {p1, v4, v4, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity;->mUri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x65

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 536
    const/4 v0, 0x3

    const v1, 0x7f060013

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200c7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSimMenu:Landroid/view/MenuItem;

    .line 541
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_5c

    .line 542
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSimMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 548
    :goto_4a
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mIsSystemContact:Z

    if-nez v0, :cond_5b

    .line 549
    const v0, 0x7f060014

    invoke-interface {p1, v4, v5, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 552
    :cond_5b
    return v5

    .line 544
    :cond_5c
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSimMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_4a
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 442
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 444
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1a

    .line 445
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mObserverRegistered:Z

    if-eqz v0, :cond_15

    .line 446
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 447
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mObserverRegistered:Z

    .line 449
    :cond_15
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 451
    :cond_1a
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const-string v7, "android.intent.action.CALL_PRIVILEGED"

    .line 902
    sparse-switch p1, :sswitch_data_80

    .line 940
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    :goto_a
    return v4

    .line 905
    :sswitch_b
    :try_start_b
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 907
    .local v3, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_1d

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1a} :catch_7e

    move-result v4

    if-eqz v4, :cond_6

    .line 915
    .end local v3           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    .line 916
    .local v1, index:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_4e

    .line 917
    iget-object v4, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->getEntry(Ljava/util/ArrayList;IZ)Lcom/android/contacts/ContactEntryAdapter$Entry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .line 918
    .local v0, entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    if-nez v0, :cond_3c

    .line 919
    const-string v4, "ViewContactActivity"

    const-string v5, "Null pointer exception"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    :cond_3a
    :goto_3a
    move v4, v6

    .line 929
    goto :goto_a

    .line 920
    .restart local v0       #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    :cond_3c
    iget v4, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->kind:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3a

    .line 921
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    iget-object v4, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->uri:Landroid/net/Uri;

    invoke-direct {v2, v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 922
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/contacts/ViewContactActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3a

    .line 924
    .end local v0           #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4e
    iget v4, p0, Lcom/android/contacts/ViewContactActivity;->mNumPhoneNumbers:I

    if-eqz v4, :cond_3a

    .line 926
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    iget-object v4, p0, Lcom/android/contacts/ViewContactActivity;->mUri:Landroid/net/Uri;

    invoke-direct {v2, v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 927
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/contacts/ViewContactActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3a

    .line 933
    .end local v1           #index:I
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_5f
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/ViewContactActivity;->mDialogTitle:Ljava/lang/String;

    .line 934
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06001c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/ViewContactActivity;->mDialogMessage:Ljava/lang/String;

    .line 935
    invoke-virtual {p0, v6}, Lcom/android/contacts/ViewContactActivity;->showDialog(I)V

    move v4, v6

    .line 936
    goto :goto_a

    .line 911
    :catch_7e
    move-exception v4

    goto :goto_1d

    .line 902
    :sswitch_data_80
    .sparse-switch
        0x5 -> :sswitch_b
        0x43 -> :sswitch_5f
    .end sparse-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 13
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 946
    iget-object v4, p0, Lcom/android/contacts/ViewContactActivity;->mSections:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-static {v4, p3, v5}, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->getEntry(Ljava/util/ArrayList;IZ)Lcom/android/contacts/ContactEntryAdapter$Entry;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .line 949
    .local v1, entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    iget-boolean v4, p0, Lcom/android/contacts/ViewContactActivity;->mIsSystemContact:Z

    if-eqz v4, :cond_36

    sget-object v4, Lcom/android/contacts/ViewContactActivity;->mOwnNumber:Ljava/lang/String;

    if-eqz v4, :cond_36

    iget-object v4, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    if-eqz v4, :cond_36

    .line 950
    iget v4, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->kind:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1f

    iget v4, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->kind:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_36

    .line 951
    :cond_1f
    iget-object v4, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 952
    .local v3, number:Ljava/lang/String;
    const-string v4, "+"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 953
    sget-object v4, Lcom/android/contacts/ViewContactActivity;->mOwnNumber:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 975
    .end local v3           #number:Ljava/lang/String;
    :goto_35
    return-void

    .line 960
    :cond_36
    if-eqz v1, :cond_61

    .line 961
    iget-object v2, v1, Lcom/android/contacts/ViewContactActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 962
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_5d

    .line 964
    :try_start_3c
    invoke-virtual {p0, v2}, Lcom/android/contacts/ViewContactActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_35

    .line 965
    :catch_40
    move-exception v0

    .line 966
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "ViewContactActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No activity found for intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->signalError()V

    goto :goto_35

    .line 970
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_5d
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->signalError()V

    goto :goto_35

    .line 973
    .end local v2           #intent:Landroid/content/Intent;
    :cond_61
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->signalError()V

    goto :goto_35
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 28
    .parameter "item"

    .prologue
    .line 652
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v23

    packed-switch v23, :pswitch_data_30e

    .line 802
    :cond_7
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v23

    .end local p1
    :goto_b
    return v23

    .line 654
    .restart local p1
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ViewContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f06001b

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity;->mDialogTitle:Ljava/lang/String;

    .line 655
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ViewContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f06001c

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ViewContactActivity;->mDialogMessage:Ljava/lang/String;

    .line 656
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/contacts/ViewContactActivity;->showDialog(I)V

    .line 657
    const/16 v23, 0x1

    goto :goto_b

    .line 663
    :pswitch_3a
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/ViewContactActivity;->getEmptyAdnRecordNumber()I

    move-result v7

    .line 664
    .local v7, emptyAdnRecordNumber:I
    if-nez v7, :cond_55

    .line 665
    const v23, 0x7f0600b5

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 666
    const/16 v23, 0x0

    goto :goto_b

    .line 671
    :cond_55
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 679
    .local v21, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 684
    .local v15, name:Ljava/lang/String;
    const/4 v9, 0x0

    .line 685
    .local v9, entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    const/16 v17, 0x0

    .end local p1
    .local v17, position:I
    :goto_69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_a4

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->primaryIcon:I

    move/from16 v23, v0

    if-lez v23, :cond_a1

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    check-cast v9, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .line 685
    .restart local v9       #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    :cond_a1
    add-int/lit8 v17, v17, 0x1

    goto :goto_69

    .line 691
    :cond_a4
    if-nez v9, :cond_c8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    if-eqz v23, :cond_c8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-lez v23, :cond_c8

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    check-cast v9, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .line 694
    .restart local v9       #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    :cond_c8
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    .line 695
    .local v13, isNameEmpty:Z
    const/16 v23, 0x1

    move v0, v13

    move/from16 v1, v23

    if-eq v0, v1, :cond_e7

    if-eqz v9, :cond_e7

    move-object v0, v9

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_e7

    move-object v0, v9

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_fd

    .line 696
    :cond_e7
    const v23, 0x7f060020

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 697
    const/16 v23, 0x1

    goto/16 :goto_b

    .line 701
    :cond_fd
    if-nez v13, :cond_1cb

    invoke-static {v15}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_1cb

    .line 702
    iget-object v4, v9, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    .line 703
    .local v4, data:Ljava/lang/String;
    const-string v23, "\\-"

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 704
    .local v5, data_str:[Ljava/lang/String;
    const/16 v23, 0x0

    aget-object v16, v5, v23

    .line 705
    .local v16, number:Ljava/lang/String;
    const/4 v10, 0x1

    .local v10, i:I
    :goto_115
    move-object v0, v5

    array-length v0, v0

    move/from16 v23, v0

    move v0, v10

    move/from16 v1, v23

    if-ge v0, v1, :cond_138

    .line 706
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    aget-object v24, v5, v10

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 705
    add-int/lit8 v10, v10, 0x1

    goto :goto_115

    .line 713
    :cond_138
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/ViewContactActivity;->getAdnRecordSize()I

    move-result v14

    .line 714
    .local v14, maxAdnRecordSize:I
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    .line 716
    .local v20, srcByte:[B
    const/4 v11, 0x0

    .local v11, ii:I
    :goto_141
    if-ge v11, v14, :cond_15a

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    move v0, v11

    move/from16 v1, v23

    if-ge v0, v1, :cond_15a

    .line 717
    aget-byte v23, v20, v11

    if-gez v23, :cond_1cf

    .line 721
    const/16 v23, 0x1

    sub-int v23, v14, v23

    div-int/lit8 v14, v23, 0x2

    .line 722
    if-le v11, v14, :cond_15a

    .line 725
    move v14, v11

    .line 731
    :cond_15a
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v23

    move v1, v14

    if-le v0, v1, :cond_1d3

    .line 732
    const-string v23, "tag"

    const/16 v24, 0x0

    move-object v0, v15

    move/from16 v1, v24

    move v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    :goto_178
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v23

    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/ViewContactActivity;->getAdnNumberFieldSize()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_1de

    .line 742
    const-string v23, "number"

    const/16 v24, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/ViewContactActivity;->getAdnNumberFieldSize()I

    move-result v25

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    :goto_1a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v24, "content://icc/adn"

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v18

    .line 751
    .local v18, result:Landroid/net/Uri;
    if-eqz v18, :cond_1ea

    .line 752
    const v23, 0x7f06001f

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 756
    .end local v4           #data:Ljava/lang/String;
    .end local v5           #data_str:[Ljava/lang/String;
    .end local v10           #i:I
    .end local v11           #ii:I
    .end local v14           #maxAdnRecordSize:I
    .end local v16           #number:Ljava/lang/String;
    .end local v18           #result:Landroid/net/Uri;
    .end local v20           #srcByte:[B
    :cond_1cb
    :goto_1cb
    const/16 v23, 0x1

    goto/16 :goto_b

    .line 716
    .restart local v4       #data:Ljava/lang/String;
    .restart local v5       #data_str:[Ljava/lang/String;
    .restart local v10       #i:I
    .restart local v11       #ii:I
    .restart local v14       #maxAdnRecordSize:I
    .restart local v16       #number:Ljava/lang/String;
    .restart local v20       #srcByte:[B
    :cond_1cf
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_141

    .line 734
    :cond_1d3
    const-string v23, "tag"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_178

    .line 744
    :cond_1de
    const-string v23, "number"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a1

    .line 754
    .restart local v18       #result:Landroid/net/Uri;
    :cond_1ea
    const v23, 0x7f060021

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    goto :goto_1cb

    .line 761
    .end local v4           #data:Ljava/lang/String;
    .end local v5           #data_str:[Ljava/lang/String;
    .end local v7           #emptyAdnRecordNumber:I
    .end local v9           #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    .end local v10           #i:I
    .end local v11           #ii:I
    .end local v13           #isNameEmpty:Z
    .end local v14           #maxAdnRecordSize:I
    .end local v15           #name:Ljava/lang/String;
    .end local v16           #number:Ljava/lang/String;
    .end local v17           #position:I
    .end local v18           #result:Landroid/net/Uri;
    .end local v20           #srcByte:[B
    .end local v21           #values:Landroid/content/ContentValues;
    .restart local p1
    :pswitch_1fd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 762
    new-instance v12, Landroid/content/Intent;

    const-string v23, "com.google.zxing.client.android.ENCODE"

    move-object v0, v12

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 763
    .local v12, intent:Landroid/content/Intent;
    const-string v23, "ENCODE_TYPE"

    const-string v24, "CONTACT_TYPE"

    move-object v0, v12

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 764
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 765
    .local v3, bundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 766
    .restart local v15       #name:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_7

    .line 768
    const/16 v19, 0x0

    .line 770
    .local v19, sepAdjust:I
    const-string v23, "name"

    move-object v0, v3

    move-object/from16 v1, v23

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    sub-int v23, v23, v19

    sget-object v24, Lcom/android/contacts/ViewContactActivity;->PHONE_KEYS:[Ljava/lang/String;

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 773
    .local v8, entriesToAdd:I
    const/16 v22, 0x0

    .local v22, x:I
    :goto_25a
    move/from16 v0, v22

    move v1, v8

    if-ge v0, v1, :cond_281

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    add-int v24, v22, v19

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .line 775
    .restart local v9       #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    sget-object v23, Lcom/android/contacts/ViewContactActivity;->PHONE_KEYS:[Ljava/lang/String;

    aget-object v23, v23, v22

    move-object v0, v9

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v3

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    add-int/lit8 v22, v22, 0x1

    goto :goto_25a

    .line 777
    .end local v9           #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    :cond_281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mEmailEntries:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    sub-int v23, v23, v19

    sget-object v24, Lcom/android/contacts/ViewContactActivity;->EMAIL_KEYS:[Ljava/lang/String;

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 778
    const/16 v22, 0x0

    :goto_29a
    move/from16 v0, v22

    move v1, v8

    if-ge v0, v1, :cond_2c1

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mEmailEntries:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    add-int v24, v22, v19

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .line 780
    .restart local v9       #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    sget-object v23, Lcom/android/contacts/ViewContactActivity;->EMAIL_KEYS:[Ljava/lang/String;

    aget-object v23, v23, v22

    move-object v0, v9

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v3

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    add-int/lit8 v22, v22, 0x1

    goto :goto_29a

    .line 782
    .end local v9           #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    :cond_2c1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mPostalEntries:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int/lit8 v24, v19, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_2f2

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity;->mPostalEntries:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .line 784
    .restart local v9       #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    const-string v23, "postal"

    move-object v0, v9

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v3

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    .end local v9           #entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    :cond_2f2
    const-string v23, "ENCODE_DATA"

    move-object v0, v12

    move-object/from16 v1, v23

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 788
    :try_start_2fb
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/contacts/ViewContactActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_301
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2fb .. :try_end_301} :catch_305

    .line 797
    :goto_301
    const/16 v23, 0x1

    goto/16 :goto_b

    .line 789
    :catch_305
    move-exception v6

    .line 794
    .local v6, e:Landroid/content/ActivityNotFoundException;
    const-string v23, "ViewContactActivity"

    const-string v24, "Show barcode menu item was clicked but Barcode Scanner was not installed."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_301

    .line 652
    :pswitch_data_30e
    .packed-switch 0x1
        :pswitch_c
        :pswitch_1fd
        :pswitch_3a
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 426
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 428
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/contacts/ViewContactActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 430
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1f

    .line 431
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mObserverRegistered:Z

    if-eqz v0, :cond_1a

    .line 432
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 433
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mObserverRegistered:Z

    .line 435
    :cond_1a
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 437
    :cond_1f
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 558
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 561
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->isBarcodeScannerInstalled()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 562
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 563
    const v0, 0x7f060011

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200d3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 571
    :cond_1f
    :goto_1f
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_35

    .line 572
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSimMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 577
    :goto_30
    return v3

    .line 567
    :cond_31
    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_1f

    .line 574
    :cond_35
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mSimMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_30
.end method

.method protected onResume()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 395
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 401
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_42

    .line 402
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/ContactEntryAdapter;->CONTACT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    .line 408
    :goto_16
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2b

    .line 409
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mObserverRegistered:Z

    if-nez v0, :cond_28

    .line 410
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/ViewContactActivity;->mObserverRegistered:Z

    .line 413
    :cond_28
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->dataChanged()V

    .line 417
    :cond_2b
    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 418
    .local v6, intentFilter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 419
    const-string v0, "file"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v6}, Lcom/android/contacts/ViewContactActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 421
    return-void

    .line 404
    .end local v6           #intentFilter:Landroid/content/IntentFilter;
    :cond_42
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    goto :goto_16
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1816
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_34

    .line 1827
    :goto_9
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1818
    :pswitch_e
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->pointX:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    aput v1, v0, v3

    .line 1819
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->pointY:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, v0, v3

    .line 1820
    invoke-direct {p0}, Lcom/android/contacts/ViewContactActivity;->Flicking_Intent()V

    goto :goto_9

    .line 1823
    :pswitch_22
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->pointX:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    aput v1, v0, v2

    .line 1824
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity;->pointY:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, v0, v2

    goto :goto_9

    .line 1816
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_22
        :pswitch_e
    .end packed-switch
.end method
