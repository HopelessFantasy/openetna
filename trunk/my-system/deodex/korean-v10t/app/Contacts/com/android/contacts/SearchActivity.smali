.class public Lcom/android/contacts/SearchActivity;
.super Landroid/app/Activity;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/SearchActivity$SearchItemListAdapter;,
        Lcom/android/contacts/SearchActivity$SearchListItemCache;,
        Lcom/android/contacts/SearchActivity$QueryHandler;,
        Lcom/android/contacts/SearchActivity$ExcludeContactsListener;,
        Lcom/android/contacts/SearchActivity$AssignContactsListener;,
        Lcom/android/contacts/SearchActivity$DeleteGroupsListener;,
        Lcom/android/contacts/SearchActivity$DeleteContactsListener;
    }
.end annotation


# static fields
.field static final CONTACTS_EMAIL_PROJECTION:[Ljava/lang/String; = null

.field static final CONTACTS_PHONE_EMAIL_PROJECTION:[Ljava/lang/String; = null

.field static final CONTACTS_PHONE_PROJECTION:[Ljava/lang/String; = null

.field static final DEFAULT_MODE:I = -0x7ffffff6

.field private static final DELETE_CONTACTS_TOKEN:I = 0x36

.field static final EMAIL_COLUMN_INDEX:I = 0x2

.field static final GROUPS_PROJECTION:[Ljava/lang/String; = null

.field static final GROUP_ID_COLUMN_INDEX:I = 0x0

.field static final GROUP_NAME_COLUMN_INDEX:I = 0x1

.field static final ID_COLUMN_INDEX:I = 0x0

.field private static final INSERT_CONTACTS_TOKEN:I = 0x35

.field static final LABEL_COLUMN_INDEX:I = 0x4

.field public static final LOCAL_ASSIGN_MEMBERS_ACTION:Ljava/lang/String; = "com.android.contacts.action.LOCAL_ASSIGN_MEMBERS"

.field public static final LOCAL_EXCLUDE_MEMBERS_ACTION:Ljava/lang/String; = "com.android.contacts.action.LOCAL_EXCLUDE_MEMBERS"

.field public static final LOCAL_SEND_MESSAGE_ACTION:Ljava/lang/String; = "com.android.contacts.action.LOCAL_SEND_MESSAGE"

.field public static final MENU_ITEM_MARK_ALL:I = 0x1

.field public static final MENU_ITEM_UNMARK_ALL:I = 0x2

.field static final MODE_ASSIGN_CONTACTS:I = -0x7fffffec

.field static final MODE_DELETE_CONTACTS:I = -0x7ffffff1

.field static final MODE_EXCLUDE_CONTACTS:I = -0x7fffffe7

.field static final MODE_MASK_MULTI_PICKER:I = -0x80000000

.field static final MODE_MASK_NO_FILTER:I = 0x40000000

.field static final MODE_QUERY_PICK_AND_SEND:I = -0x7ffffff6

.field static final MODE_QUERY_PICK_TO_SEND:I = -0x7ffffffb

.field static final MODE_UNKNOWN:I = 0x0

.field static final NAME_COLUMN:Ljava/lang/String; = "display_name"

.field static final NAME_COLUMN_INDEX:I = 0x1

.field static final NUMBER_COLUMN_INDEX:I = 0x2

.field private static final NUMBER_OF_RECIPIENTS_MAX_SIZE:I = 0x14

.field static final PRIMARY_EMAIL_ID_COLUMN_INDEX:I = 0x3

.field static final PRIMARY_PHONE_ID_COLUMN_INDEX:I = 0x5

.field private static final QUERY_MODE_GROUPS:I = 0x2

.field private static final QUERY_MODE_MAILTO:I = 0x3

.field private static final QUERY_MODE_NONSTARRED:I = 0x6

.field private static final QUERY_MODE_PEOPLE:I = 0x1

.field private static final QUERY_MODE_STARRED:I = 0x5

.field private static final QUERY_MODE_TEL:I = 0x4

.field private static final QUERY_TOKEN:I = 0x34

.field private static final RECIPIENT_MAX_LENGTH:I = 0x138

.field static final SORT_STRING:Ljava/lang/String; = "sort_string"

.field static final SYSTEM_ID_COLUMN_INDEX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SearchActivity"

.field static final TYPE_COLUMN_INDEX:I = 0x3

.field private static final UPDATE_CONTACTS_TOKEN:I = 0x37


# instance fields
.field mAdapter:Lcom/android/contacts/SearchActivity$SearchItemListAdapter;

.field private mCursor:Landroid/database/Cursor;

.field private mDeletingCount:I

.field private mDoneButton:Landroid/widget/Button;

.field private mJustCreated:Z

.field private mList:Landroid/widget/ListView;

.field private mMode:I

.field private mObserver:Landroid/database/ContentObserver;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mQueryHandler:Lcom/android/contacts/SearchActivity$QueryHandler;

.field private mQueryMode:I

.field private mSelectableItems:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "_id"

    .line 110
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v7, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "email_data"

    aput-object v1, v0, v5

    const-string v1, "primary_email"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "sort_string"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/SearchActivity;->CONTACTS_EMAIL_PROJECTION:[Ljava/lang/String;

    .line 118
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

    const-string v2, "primary_phone"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sort_string"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/SearchActivity;->CONTACTS_PHONE_PROJECTION:[Ljava/lang/String;

    .line 128
    const/16 v0, 0x9

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

    const-string v2, "primary_phone"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "email_data"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "primary_email"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sort_string"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/SearchActivity;->CONTACTS_PHONE_EMAIL_PROJECTION:[Ljava/lang/String;

    .line 152
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v7, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "system_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/contacts/SearchActivity;->GROUPS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 186
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/SearchActivity;->mQueryMode:I

    .line 197
    new-instance v0, Lcom/android/contacts/SearchActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/SearchActivity$1;-><init>(Lcom/android/contacts/SearchActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/SearchActivity;->mObserver:Landroid/database/ContentObserver;

    .line 1055
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/SearchActivity;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/contacts/SearchActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/contacts/SearchActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/contacts/SearchActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/contacts/SearchActivity;->mQueryMode:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/SearchActivity;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/SearchActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/contacts/SearchActivity;->setEmptyTextLayout(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/contacts/SearchActivity;)Landroid/database/ContentObserver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/SearchActivity;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/SearchActivity;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/SearchActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/contacts/SearchActivity;->mDeletingCount:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/contacts/SearchActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/contacts/SearchActivity;->mDeletingCount:I

    return p1
.end method

.method static synthetic access$708(Lcom/android/contacts/SearchActivity;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/contacts/SearchActivity;->mDeletingCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/contacts/SearchActivity;->mDeletingCount:I

    return v0
.end method

.method static synthetic access$710(Lcom/android/contacts/SearchActivity;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/contacts/SearchActivity;->mDeletingCount:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/contacts/SearchActivity;->mDeletingCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/contacts/SearchActivity;)Lcom/android/contacts/SearchActivity$QueryHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mQueryHandler:Lcom/android/contacts/SearchActivity$QueryHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/SearchActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mDoneButton:Landroid/widget/Button;

    return-object v0
.end method

.method private static getSortOrder([Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "projectionType"

    .prologue
    .line 632
    sget-object v0, Lcom/android/contacts/SearchActivity;->GROUPS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 633
    const-string v0, "name COLLATE LOCALIZED ASC"

    .line 635
    :goto_a
    return-object v0

    :cond_b
    const-string v0, "display_name COLLATE LOCALIZED ASC"

    goto :goto_a
.end method

.method private makePickerResultForModeMailTo()Ljava/lang/String;
    .registers 14

    .prologue
    const/16 v12, 0x138

    const/4 v11, 0x0

    .line 693
    const/4 v5, 0x0

    .line 694
    .local v5, isAdded:Z
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 695
    .local v2, emails:Ljava/lang/StringBuffer;
    iget-object v9, p0, Lcom/android/contacts/SearchActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v7

    .line 696
    .local v7, sba:Landroid/util/SparseBooleanArray;
    iget-object v9, p0, Lcom/android/contacts/SearchActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getCount()I

    move-result v4

    .line 697
    .local v4, imax:I
    const/4 v6, 0x0

    .line 699
    .local v6, numOfItems:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_17
    if-ge v3, v4, :cond_6c

    .line 700
    invoke-virtual {v7, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_5c

    .line 701
    iget v9, p0, Lcom/android/contacts/SearchActivity;->mSelectableItems:I

    const/4 v10, -0x1

    if-le v9, v10, :cond_3a

    iget v9, p0, Lcom/android/contacts/SearchActivity;->mSelectableItems:I

    if-lt v6, v9, :cond_3a

    .line 702
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->clear()V

    .line 703
    const v9, 0x7f06012b

    invoke-static {p0, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 704
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 724
    :goto_39
    return-object v9

    .line 706
    :cond_3a
    iget-object v9, p0, Lcom/android/contacts/SearchActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v9, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 707
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v9, 0x2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 708
    .local v1, email:Ljava/lang/String;
    if-eqz v1, :cond_5c

    .line 709
    if-eqz v5, :cond_50

    .line 710
    const/16 v9, 0x2c

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 712
    :cond_50
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v9, v12, :cond_5f

    .line 713
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 718
    :goto_59
    const/4 v5, 0x1

    .line 719
    add-int/lit8 v6, v6, 0x1

    .line 699
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #email:Ljava/lang/String;
    :cond_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 715
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v1       #email:Ljava/lang/String;
    :cond_5f
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-direct {v8, v9, v11, v12}, Ljava/lang/String;-><init>([BII)V

    .line 716
    .local v8, shortEmail:Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_59

    .line 723
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #email:Ljava/lang/String;
    .end local v8           #shortEmail:Ljava/lang/String;
    :cond_6c
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->clear()V

    .line 724
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_39
.end method

.method private makePickerResultForModeTel()Ljava/lang/String;
    .registers 16

    .prologue
    const/16 v14, 0x138

    const/4 v13, 0x0

    .line 642
    const/4 v5, 0x0

    .line 643
    .local v5, isAdded:Z
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 644
    .local v8, phoneNumbers:Ljava/lang/StringBuffer;
    iget-object v11, p0, Lcom/android/contacts/SearchActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v11}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v9

    .line 645
    .local v9, sba:Landroid/util/SparseBooleanArray;
    iget-object v11, p0, Lcom/android/contacts/SearchActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v11}, Landroid/widget/ListView;->getCount()I

    move-result v3

    .line 646
    .local v3, imax:I
    const/4 v6, 0x0

    .line 648
    .local v6, numOfItems:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v3, :cond_8d

    .line 649
    invoke-virtual {v9, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    if-eqz v11, :cond_75

    .line 650
    iget v11, p0, Lcom/android/contacts/SearchActivity;->mSelectableItems:I

    const/4 v12, -0x1

    if-le v11, v12, :cond_3a

    iget v11, p0, Lcom/android/contacts/SearchActivity;->mSelectableItems:I

    if-lt v6, v11, :cond_3a

    .line 651
    const v11, 0x7f06012b

    invoke-static {p0, v11, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 652
    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->clear()V

    .line 653
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 686
    :goto_39
    return-object v11

    .line 655
    :cond_3a
    iget-object v11, p0, Lcom/android/contacts/SearchActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v11, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 657
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_42
    const-string v11, "number"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 658
    .local v4, index:I
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_42 .. :try_end_4b} :catch_78

    move-result-object v7

    .line 662
    .end local v4           #index:I
    .local v7, number:Ljava/lang/String;
    :goto_4c
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5c

    .line 664
    :try_start_52
    const-string v11, "email_data"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 665
    .restart local v4       #index:I
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_52 .. :try_end_5b} :catch_7c

    move-result-object v7

    .line 670
    .end local v4           #index:I
    :cond_5c
    :goto_5c
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_75

    .line 671
    if-eqz v5, :cond_69

    .line 672
    const/16 v11, 0x3b

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 674
    :cond_69
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v11, v14, :cond_80

    .line 675
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 680
    :goto_72
    const/4 v5, 0x1

    .line 681
    add-int/lit8 v6, v6, 0x1

    .line 648
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v7           #number:Ljava/lang/String;
    :cond_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 659
    .restart local v0       #cursor:Landroid/database/Cursor;
    :catch_78
    move-exception v11

    move-object v1, v11

    .line 660
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const/4 v7, 0x0

    .restart local v7       #number:Ljava/lang/String;
    goto :goto_4c

    .line 666
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_7c
    move-exception v11

    move-object v1, v11

    .line 667
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const/4 v7, 0x0

    goto :goto_5c

    .line 677
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_80
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-direct {v10, v11, v13, v14}, Ljava/lang/String;-><init>([BII)V

    .line 678
    .local v10, shortNumber:Ljava/lang/String;
    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_72

    .line 685
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v7           #number:Ljava/lang/String;
    .end local v10           #shortNumber:Ljava/lang/String;
    :cond_8d
    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->clear()V

    .line 686
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_39
.end method

.method private setCustomTitle(Ljava/lang/String;)V
    .registers 6
    .parameter "title"

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/android/contacts/SearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x7

    const v3, 0x7f03000a

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 430
    const v1, 0x7f050017

    invoke-virtual {p0, v1}, Lcom/android/contacts/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 431
    .local v0, tv:Landroid/widget/TextView;
    if-eqz p1, :cond_19

    .line 432
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    :cond_19
    const v1, 0x7f050018

    invoke-virtual {p0, v1}, Lcom/android/contacts/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/contacts/SearchActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 435
    iget-object v1, p0, Lcom/android/contacts/SearchActivity;->mProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 436
    return-void
.end method

.method private setEmptyText()V
    .registers 4

    .prologue
    .line 528
    const v1, 0x7f050005

    invoke-virtual {p0, v1}, Lcom/android/contacts/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 529
    .local v0, empty:Landroid/widget/TextView;
    iget v1, p0, Lcom/android/contacts/SearchActivity;->mQueryMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1a

    .line 530
    const v1, 0x7f0600e1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 534
    :goto_14
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 535
    return-void

    .line 532
    :cond_1a
    const v1, 0x7f060046

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_14
.end method

.method private setEmptyTextLayout(I)V
    .registers 7
    .parameter "count"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 539
    const v2, 0x7f05000c

    invoke-virtual {p0, v2}, Lcom/android/contacts/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 540
    .local v0, emptyLayout:Landroid/widget/ScrollView;
    invoke-virtual {p0}, Lcom/android/contacts/SearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 541
    .local v1, list:Landroid/widget/ListView;
    if-nez p1, :cond_19

    .line 542
    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 543
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 548
    :goto_18
    return-void

    .line 545
    :cond_19
    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 546
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_18
.end method

.method private showConfirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V
    .registers 8
    .parameter "title"
    .parameter "message"
    .parameter "listener"

    .prologue
    .line 772
    iget v1, p0, Lcom/android/contacts/SearchActivity;->mMode:I

    const v2, -0x7fffffec

    if-ne v1, v2, :cond_33

    const v1, 0x108009b

    move v0, v1

    .line 774
    .local v0, iconId:I
    :goto_b
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 782
    return-void

    .line 772
    .end local v0           #iconId:I
    :cond_33
    const v1, 0x1080027

    move v0, v1

    goto :goto_b
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 15
    .parameter "v"

    .prologue
    const v11, 0x7f06001b

    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string v12, "android.intent.action.SENDTO"

    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f050046

    if-eq v6, v7, :cond_15

    .line 214
    invoke-virtual {p0}, Lcom/android/contacts/SearchActivity;->finish()V

    .line 300
    :cond_14
    :goto_14
    return-void

    .line 219
    :cond_15
    iget-object v6, p0, Lcom/android/contacts/SearchActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v4

    .line 220
    .local v4, sba:Landroid/util/SparseBooleanArray;
    const/4 v3, 0x0

    .line 221
    .local v3, isChecked:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1d
    iget-object v6, p0, Lcom/android/contacts/SearchActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    if-ge v1, v6, :cond_2c

    .line 222
    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 223
    const/4 v3, 0x1

    .line 227
    :cond_2c
    if-nez v3, :cond_38

    .line 228
    invoke-virtual {p0, v8}, Lcom/android/contacts/SearchActivity;->setResult(I)V

    .line 229
    invoke-virtual {p0}, Lcom/android/contacts/SearchActivity;->finish()V

    goto :goto_14

    .line 221
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 233
    :cond_38
    iget v6, p0, Lcom/android/contacts/SearchActivity;->mMode:I

    sparse-switch v6, :sswitch_data_134

    .line 297
    const-string v6, "SearchActivity"

    const-string v7, "invalid mode!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 237
    :sswitch_45
    const/4 v2, 0x0

    .line 238
    .local v2, intent:Landroid/content/Intent;
    iget v6, p0, Lcom/android/contacts/SearchActivity;->mQueryMode:I

    if-ne v6, v10, :cond_5b

    .line 239
    invoke-direct {p0}, Lcom/android/contacts/SearchActivity;->makePickerResultForModeTel()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, contactData:Ljava/lang/String;
    :goto_4e
    if-nez v0, :cond_60

    .line 244
    const v6, 0x7f06012b

    invoke-static {p0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_14

    .line 241
    .end local v0           #contactData:Ljava/lang/String;
    :cond_5b
    invoke-direct {p0}, Lcom/android/contacts/SearchActivity;->makePickerResultForModeMailTo()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #contactData:Ljava/lang/String;
    goto :goto_4e

    .line 247
    :cond_60
    if-eqz v0, :cond_eb

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_eb

    .line 248
    iget v6, p0, Lcom/android/contacts/SearchActivity;->mMode:I

    const v7, -0x7ffffffb

    if-ne v6, v7, :cond_98

    .line 249
    iget v6, p0, Lcom/android/contacts/SearchActivity;->mQueryMode:I

    if-ne v6, v10, :cond_89

    .line 250
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 251
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v6, "phone"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    :goto_81
    const/4 v6, -0x1

    invoke-virtual {p0, v6, v2}, Lcom/android/contacts/SearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 273
    :goto_85
    invoke-virtual {p0}, Lcom/android/contacts/SearchActivity;->finish()V

    goto :goto_14

    .line 253
    :cond_89
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 254
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v6, "email"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_81

    .line 257
    :cond_98
    iget v6, p0, Lcom/android/contacts/SearchActivity;->mMode:I

    const v7, -0x7ffffff6

    if-ne v6, v7, :cond_e7

    .line 258
    iget v6, p0, Lcom/android/contacts/SearchActivity;->mQueryMode:I

    if-ne v6, v10, :cond_c5

    .line 259
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "smsto:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 260
    .local v5, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v6, "android.intent.action.SENDTO"

    invoke-direct {v2, v12, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 261
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/contacts/SearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_85

    .line 263
    .end local v5           #uri:Landroid/net/Uri;
    :cond_c5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mailto:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 264
    .restart local v5       #uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v6, "android.intent.action.SENDTO"

    invoke-direct {v2, v12, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 265
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/contacts/SearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_85

    .line 268
    .end local v5           #uri:Landroid/net/Uri;
    :cond_e7
    invoke-virtual {p0, v8}, Lcom/android/contacts/SearchActivity;->setResult(I)V

    goto :goto_85

    .line 271
    :cond_eb
    invoke-virtual {p0, v8}, Lcom/android/contacts/SearchActivity;->setResult(I)V

    goto :goto_85

    .line 276
    .end local v0           #contactData:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_ef
    iget v6, p0, Lcom/android/contacts/SearchActivity;->mQueryMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_101

    .line 277
    const v6, 0x7f0600a5

    new-instance v7, Lcom/android/contacts/SearchActivity$DeleteContactsListener;

    invoke-direct {v7, p0, v9}, Lcom/android/contacts/SearchActivity$DeleteContactsListener;-><init>(Lcom/android/contacts/SearchActivity;Lcom/android/contacts/SearchActivity$1;)V

    invoke-direct {p0, v11, v6, v7}, Lcom/android/contacts/SearchActivity;->showConfirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_14

    .line 280
    :cond_101
    iget v6, p0, Lcom/android/contacts/SearchActivity;->mQueryMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_14

    .line 281
    const v6, 0x7f0600a6

    new-instance v7, Lcom/android/contacts/SearchActivity$DeleteGroupsListener;

    invoke-direct {v7, p0, v9}, Lcom/android/contacts/SearchActivity$DeleteGroupsListener;-><init>(Lcom/android/contacts/SearchActivity;Lcom/android/contacts/SearchActivity$1;)V

    invoke-direct {p0, v11, v6, v7}, Lcom/android/contacts/SearchActivity;->showConfirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_14

    .line 287
    :sswitch_113
    const v6, 0x7f0600a2

    const v7, 0x7f0600a7

    new-instance v8, Lcom/android/contacts/SearchActivity$AssignContactsListener;

    invoke-direct {v8, p0, v9}, Lcom/android/contacts/SearchActivity$AssignContactsListener;-><init>(Lcom/android/contacts/SearchActivity;Lcom/android/contacts/SearchActivity$1;)V

    invoke-direct {p0, v6, v7, v8}, Lcom/android/contacts/SearchActivity;->showConfirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_14

    .line 292
    :sswitch_123
    const v6, 0x7f0600a3

    const v7, 0x7f0600a8

    new-instance v8, Lcom/android/contacts/SearchActivity$ExcludeContactsListener;

    invoke-direct {v8, p0, v9}, Lcom/android/contacts/SearchActivity$ExcludeContactsListener;-><init>(Lcom/android/contacts/SearchActivity;Lcom/android/contacts/SearchActivity$1;)V

    invoke-direct {p0, v6, v7, v8}, Lcom/android/contacts/SearchActivity;->showConfirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_14

    .line 233
    nop

    :sswitch_data_134
    .sparse-switch
        -0x7ffffffb -> :sswitch_45
        -0x7ffffff6 -> :sswitch_45
        -0x7ffffff1 -> :sswitch_ef
        -0x7fffffec -> :sswitch_113
        -0x7fffffe7 -> :sswitch_123
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "icicle"

    .prologue
    const/4 v9, 0x7

    const/4 v6, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v5, -0x1

    .line 305
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 309
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/contacts/SearchActivity;->mMode:I

    .line 310
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/contacts/SearchActivity;->mCursor:Landroid/database/Cursor;

    .line 311
    iput v5, p0, Lcom/android/contacts/SearchActivity;->mSelectableItems:I

    .line 315
    invoke-virtual {p0}, Lcom/android/contacts/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 316
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.DELETE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 321
    invoke-virtual {p0, v9}, Lcom/android/contacts/SearchActivity;->requestWindowFeature(I)Z

    .line 322
    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, contentType:Ljava/lang/String;
    if-eqz v1, :cond_aa

    const-string v4, "vnd.android.cursor.dir/person"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 324
    iput v8, p0, Lcom/android/contacts/SearchActivity;->mQueryMode:I

    .line 328
    :goto_33
    const v4, -0x7ffffff1

    iput v4, p0, Lcom/android/contacts/SearchActivity;->mMode:I

    .line 356
    .end local v1           #contentType:Ljava/lang/String;
    :cond_38
    :goto_38
    iget v4, p0, Lcom/android/contacts/SearchActivity;->mMode:I

    if-nez v4, :cond_46

    .line 357
    const-string v4, "SearchActivity"

    const-string v5, "unknown action!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {p0}, Lcom/android/contacts/SearchActivity;->finish()V

    .line 362
    :cond_46
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/SearchActivity;->mUri:Landroid/net/Uri;

    .line 363
    iget-object v4, p0, Lcom/android/contacts/SearchActivity;->mUri:Landroid/net/Uri;

    if-nez v4, :cond_54

    .line 364
    sget-object v4, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/contacts/SearchActivity;->mUri:Landroid/net/Uri;

    .line 369
    :cond_54
    const v4, 0x7f03002b

    invoke-virtual {p0, v4}, Lcom/android/contacts/SearchActivity;->setContentView(I)V

    .line 373
    const-string v4, "com.android.contacts.extra.TITLE_EXTRA"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, title:Ljava/lang/String;
    const v4, 0x7f050046

    invoke-virtual {p0, v4}, Lcom/android/contacts/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/contacts/SearchActivity;->mDoneButton:Landroid/widget/Button;

    .line 375
    iget-object v4, p0, Lcom/android/contacts/SearchActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    iget v4, p0, Lcom/android/contacts/SearchActivity;->mMode:I

    sparse-switch v4, :sswitch_data_1a6

    .line 404
    :cond_75
    :goto_75
    const v4, 0x7f050047

    invoke-virtual {p0, v4}, Lcom/android/contacts/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/contacts/SearchActivity;->mList:Landroid/widget/ListView;

    .line 405
    iget-object v4, p0, Lcom/android/contacts/SearchActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 406
    iget-object v4, p0, Lcom/android/contacts/SearchActivity;->mList:Landroid/widget/ListView;

    new-instance v5, Lcom/android/contacts/SearchActivity$2;

    invoke-direct {v5, p0}, Lcom/android/contacts/SearchActivity$2;-><init>(Lcom/android/contacts/SearchActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 412
    new-instance v4, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;

    invoke-direct {v4, p0, p0}, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;-><init>(Lcom/android/contacts/SearchActivity;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/contacts/SearchActivity;->mAdapter:Lcom/android/contacts/SearchActivity$SearchItemListAdapter;

    .line 413
    iget-object v4, p0, Lcom/android/contacts/SearchActivity;->mList:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/contacts/SearchActivity;->mAdapter:Lcom/android/contacts/SearchActivity$SearchItemListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 420
    invoke-direct {p0}, Lcom/android/contacts/SearchActivity;->setEmptyText()V

    .line 423
    new-instance v4, Lcom/android/contacts/SearchActivity$QueryHandler;

    invoke-direct {v4, p0, p0}, Lcom/android/contacts/SearchActivity$QueryHandler;-><init>(Lcom/android/contacts/SearchActivity;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/contacts/SearchActivity;->mQueryHandler:Lcom/android/contacts/SearchActivity$QueryHandler;

    .line 424
    iput-boolean v8, p0, Lcom/android/contacts/SearchActivity;->mJustCreated:Z

    .line 425
    return-void

    .line 326
    .end local v3           #title:Ljava/lang/String;
    .restart local v1       #contentType:Ljava/lang/String;
    :cond_aa
    iput v7, p0, Lcom/android/contacts/SearchActivity;->mQueryMode:I

    goto :goto_33

    .line 329
    .end local v1           #contentType:Ljava/lang/String;
    :cond_ad
    const-string v4, "com.android.contacts.action.MULTI_PICK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bd

    const-string v4, "com.android.contacts.action.LOCAL_SEND_MESSAGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_114

    .line 331
    :cond_bd
    const-string v4, "phone"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_104

    .line 332
    iput v6, p0, Lcom/android/contacts/SearchActivity;->mQueryMode:I

    .line 336
    :cond_c7
    :goto_c7
    const-string v4, "com.android.contacts.action.MULTI_PICK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_110

    const v4, -0x7ffffffb

    :goto_d2
    iput v4, p0, Lcom/android/contacts/SearchActivity;->mMode:I

    .line 338
    const-string v4, "AvailableSize"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/contacts/SearchActivity;->mSelectableItems:I

    .line 339
    iget v4, p0, Lcom/android/contacts/SearchActivity;->mQueryMode:I

    if-ne v4, v6, :cond_e8

    iget v4, p0, Lcom/android/contacts/SearchActivity;->mSelectableItems:I

    if-ne v4, v5, :cond_e8

    .line 340
    const/16 v4, 0x14

    iput v4, p0, Lcom/android/contacts/SearchActivity;->mSelectableItems:I

    .line 342
    :cond_e8
    const-string v4, "SearchActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>>>> mSelectableItems : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/contacts/SearchActivity;->mSelectableItems:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38

    .line 333
    :cond_104
    const-string v4, "email"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c7

    .line 334
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/contacts/SearchActivity;->mQueryMode:I

    goto :goto_c7

    .line 336
    :cond_110
    const v4, -0x7ffffff6

    goto :goto_d2

    .line 343
    :cond_114
    const-string v4, "com.android.contacts.action.LOCAL_ASSIGN_MEMBERS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_124

    const-string v4, "com.android.contacts.action.LOCAL_EXCLUDE_MEMBERS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 345
    :cond_124
    invoke-virtual {p0, v9}, Lcom/android/contacts/SearchActivity;->requestWindowFeature(I)Z

    .line 346
    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 347
    .restart local v1       #contentType:Ljava/lang/String;
    if-eqz v1, :cond_147

    const-string v4, "starred"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_147

    .line 348
    const/4 v4, 0x5

    iput v4, p0, Lcom/android/contacts/SearchActivity;->mQueryMode:I

    .line 352
    :goto_138
    const-string v4, "com.android.contacts.action.LOCAL_ASSIGN_MEMBERS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14b

    const v4, -0x7fffffec

    :goto_143
    iput v4, p0, Lcom/android/contacts/SearchActivity;->mMode:I

    goto/16 :goto_38

    .line 350
    :cond_147
    const/4 v4, 0x6

    iput v4, p0, Lcom/android/contacts/SearchActivity;->mQueryMode:I

    goto :goto_138

    .line 352
    :cond_14b
    const v4, -0x7fffffe7

    goto :goto_143

    .line 378
    .end local v1           #contentType:Ljava/lang/String;
    .restart local v3       #title:Ljava/lang/String;
    :sswitch_14f
    iget-object v4, p0, Lcom/android/contacts/SearchActivity;->mDoneButton:Landroid/widget/Button;

    const v5, 0x7f0600b9

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_75

    .line 381
    :sswitch_159
    iget-object v4, p0, Lcom/android/contacts/SearchActivity;->mDoneButton:Landroid/widget/Button;

    const v5, 0x7f0600b8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 382
    if-eqz v3, :cond_75

    .line 383
    invoke-virtual {p0, v3}, Lcom/android/contacts/SearchActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_75

    .line 387
    :sswitch_168
    iget v4, p0, Lcom/android/contacts/SearchActivity;->mQueryMode:I

    if-ne v4, v7, :cond_180

    .line 388
    const v4, 0x7f06009c

    invoke-virtual {p0, v4}, Lcom/android/contacts/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/contacts/SearchActivity;->setCustomTitle(Ljava/lang/String;)V

    .line 392
    :goto_176
    iget-object v4, p0, Lcom/android/contacts/SearchActivity;->mDoneButton:Landroid/widget/Button;

    const v5, 0x7f0600c7

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_75

    .line 390
    :cond_180
    const v4, 0x7f06009b

    invoke-virtual {p0, v4}, Lcom/android/contacts/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/contacts/SearchActivity;->setCustomTitle(Ljava/lang/String;)V

    goto :goto_176

    .line 395
    :sswitch_18b
    invoke-direct {p0, v3}, Lcom/android/contacts/SearchActivity;->setCustomTitle(Ljava/lang/String;)V

    .line 396
    iget-object v4, p0, Lcom/android/contacts/SearchActivity;->mDoneButton:Landroid/widget/Button;

    const v5, 0x7f0600a2

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_75

    .line 399
    :sswitch_198
    invoke-direct {p0, v3}, Lcom/android/contacts/SearchActivity;->setCustomTitle(Ljava/lang/String;)V

    .line 400
    iget-object v4, p0, Lcom/android/contacts/SearchActivity;->mDoneButton:Landroid/widget/Button;

    const v5, 0x7f0600a3

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_75

    .line 376
    nop

    :sswitch_data_1a6
    .sparse-switch
        -0x7ffffffb -> :sswitch_14f
        -0x7ffffff6 -> :sswitch_159
        -0x7ffffff1 -> :sswitch_168
        -0x7fffffec -> :sswitch_18b
        -0x7fffffe7 -> :sswitch_198
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 493
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 495
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1b

    .line 496
    :try_start_7
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/contacts/SearchActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_1c

    .line 498
    :goto_e
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 499
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 502
    :cond_1b
    return-void

    .line 497
    :catch_1c
    move-exception v0

    goto :goto_e
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 750
    iget-object v2, p0, Lcom/android/contacts/SearchActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 752
    .local v1, sba:Landroid/util/SparseBooleanArray;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_30

    .line 767
    const/4 v2, 0x0

    :goto_f
    return v2

    .line 754
    :pswitch_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    iget-object v2, p0, Lcom/android/contacts/SearchActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 755
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 754
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 757
    :cond_1f
    iget-object v2, p0, Lcom/android/contacts/SearchActivity;->mAdapter:Lcom/android/contacts/SearchActivity$SearchItemListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;->notifyDataSetChanged()V

    move v2, v3

    .line 758
    goto :goto_f

    .line 762
    .end local v0           #i:I
    :pswitch_26
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 763
    iget-object v2, p0, Lcom/android/contacts/SearchActivity;->mAdapter:Lcom/android/contacts/SearchActivity$SearchItemListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;->notifyDataSetChanged()V

    move v2, v3

    .line 764
    goto :goto_f

    .line 752
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_10
        :pswitch_26
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 458
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 460
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_21

    .line 461
    :try_start_f
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/contacts/SearchActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_22

    .line 463
    :goto_16
    invoke-virtual {p0}, Lcom/android/contacts/SearchActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_21

    .line 464
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 467
    :cond_21
    return-void

    .line 462
    :catch_22
    move-exception v0

    goto :goto_16
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 732
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 734
    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0600c5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200d1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 738
    const/4 v0, 0x2

    invoke-interface {p1, v2, v0, v2, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0600c6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200cb

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 742
    return v3
.end method

.method protected onRestart()V
    .registers 2

    .prologue
    .line 472
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 476
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getTextFilter()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 477
    invoke-virtual {p0}, Lcom/android/contacts/SearchActivity;->startAsyncQuery()V

    .line 479
    :cond_12
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 519
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 520
    const-string v0, "deletingcount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/SearchActivity;->mDeletingCount:I

    .line 521
    iget v0, p0, Lcom/android/contacts/SearchActivity;->mDeletingCount:I

    if-lez v0, :cond_15

    .line 522
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 524
    :cond_15
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 441
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 443
    iget-boolean v0, p0, Lcom/android/contacts/SearchActivity;->mJustCreated:Z

    if-eqz v0, :cond_e

    .line 444
    invoke-virtual {p0}, Lcom/android/contacts/SearchActivity;->startAsyncQuery()V

    .line 452
    :cond_a
    :goto_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/SearchActivity;->mJustCreated:Z

    .line 453
    return-void

    .line 446
    :cond_e
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_a

    .line 447
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 448
    :try_start_1f
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/contacts/SearchActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_26} :catch_27

    goto :goto_a

    .line 449
    :catch_27
    move-exception v0

    goto :goto_a
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 512
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 513
    const-string v0, "deletingcount"

    iget v1, p0, Lcom/android/contacts/SearchActivity;->mDeletingCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 514
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 484
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 486
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mAdapter:Lcom/android/contacts/SearchActivity$SearchItemListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;->setLoading(Z)V

    .line 487
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mAdapter:Lcom/android/contacts/SearchActivity$SearchItemListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 488
    return-void
.end method

.method startAsyncQuery()V
    .registers 9

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    const/16 v1, 0x34

    const/4 v2, 0x0

    const-string v5, "system_id IS NULL"

    .line 552
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mAdapter:Lcom/android/contacts/SearchActivity$SearchItemListAdapter;

    invoke-virtual {v0, v3}, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;->setLoading(Z)V

    .line 555
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mQueryHandler:Lcom/android/contacts/SearchActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/contacts/SearchActivity$QueryHandler;->cancelOperation(I)V

    .line 558
    iget v0, p0, Lcom/android/contacts/SearchActivity;->mMode:I

    sparse-switch v0, :sswitch_data_de

    .line 625
    const-string v0, "SearchActivity"

    const-string v1, "invalid mode to query"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_1d
    :goto_1d
    return-void

    .line 561
    :sswitch_1e
    iget v0, p0, Lcom/android/contacts/SearchActivity;->mQueryMode:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_36

    .line 562
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mQueryHandler:Lcom/android/contacts/SearchActivity$QueryHandler;

    iget-object v3, p0, Lcom/android/contacts/SearchActivity;->mUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/contacts/SearchActivity;->CONTACTS_EMAIL_PROJECTION:[Ljava/lang/String;

    const-string v5, "system_id IS NULL AND primary_email IS NOT NULL"

    sget-object v6, Lcom/android/contacts/SearchActivity;->CONTACTS_EMAIL_PROJECTION:[Ljava/lang/String;

    invoke-static {v6}, Lcom/android/contacts/SearchActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/SearchActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 567
    :cond_36
    iget v0, p0, Lcom/android/contacts/SearchActivity;->mQueryMode:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1d

    .line 568
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mQueryHandler:Lcom/android/contacts/SearchActivity$QueryHandler;

    iget-object v3, p0, Lcom/android/contacts/SearchActivity;->mUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/contacts/SearchActivity;->CONTACTS_PHONE_EMAIL_PROJECTION:[Ljava/lang/String;

    const-string v5, "system_id IS NULL AND primary_phone IS NOT NULL OR primary_email IS NOT NULL"

    sget-object v6, Lcom/android/contacts/SearchActivity;->CONTACTS_PHONE_EMAIL_PROJECTION:[Ljava/lang/String;

    invoke-static {v6}, Lcom/android/contacts/SearchActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/SearchActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 578
    :sswitch_4e
    iget v0, p0, Lcom/android/contacts/SearchActivity;->mQueryMode:I

    if-ne v0, v3, :cond_65

    .line 579
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mQueryHandler:Lcom/android/contacts/SearchActivity$QueryHandler;

    sget-object v3, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/contacts/SearchActivity;->CONTACTS_PHONE_EMAIL_PROJECTION:[Ljava/lang/String;

    const-string v6, "system_id IS NULL"

    sget-object v6, Lcom/android/contacts/SearchActivity;->CONTACTS_PHONE_EMAIL_PROJECTION:[Ljava/lang/String;

    invoke-static {v6}, Lcom/android/contacts/SearchActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/SearchActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 583
    :cond_65
    iget v0, p0, Lcom/android/contacts/SearchActivity;->mQueryMode:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1d

    .line 584
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mQueryHandler:Lcom/android/contacts/SearchActivity$QueryHandler;

    sget-object v3, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/contacts/SearchActivity;->GROUPS_PROJECTION:[Ljava/lang/String;

    const-string v5, "system_id IS NULL AND name!=\'Starred in Android\'"

    sget-object v6, Lcom/android/contacts/SearchActivity;->GROUPS_PROJECTION:[Ljava/lang/String;

    invoke-static {v6}, Lcom/android/contacts/SearchActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/SearchActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 593
    :sswitch_7d
    iget v0, p0, Lcom/android/contacts/SearchActivity;->mQueryMode:I

    if-ne v0, v4, :cond_94

    .line 594
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mQueryHandler:Lcom/android/contacts/SearchActivity$QueryHandler;

    sget-object v3, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/contacts/SearchActivity;->CONTACTS_PHONE_EMAIL_PROJECTION:[Ljava/lang/String;

    const-string v5, "system_id IS NULL AND (_sync_account!=\'non_syncable\' OR _sync_account IS NULL) AND starred=0"

    sget-object v6, Lcom/android/contacts/SearchActivity;->CONTACTS_PHONE_EMAIL_PROJECTION:[Ljava/lang/String;

    invoke-static {v6}, Lcom/android/contacts/SearchActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/SearchActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 601
    :cond_94
    iget v0, p0, Lcom/android/contacts/SearchActivity;->mQueryMode:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_1d

    .line 602
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mQueryHandler:Lcom/android/contacts/SearchActivity$QueryHandler;

    iget-object v3, p0, Lcom/android/contacts/SearchActivity;->mUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/contacts/SearchActivity;->CONTACTS_PHONE_EMAIL_PROJECTION:[Ljava/lang/String;

    const-string v6, "system_id IS NULL"

    sget-object v6, Lcom/android/contacts/SearchActivity;->CONTACTS_PHONE_EMAIL_PROJECTION:[Ljava/lang/String;

    invoke-static {v6}, Lcom/android/contacts/SearchActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/SearchActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 609
    :sswitch_ad
    iget v0, p0, Lcom/android/contacts/SearchActivity;->mQueryMode:I

    if-ne v0, v4, :cond_c5

    .line 610
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mQueryHandler:Lcom/android/contacts/SearchActivity$QueryHandler;

    sget-object v3, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/contacts/SearchActivity;->CONTACTS_PHONE_EMAIL_PROJECTION:[Ljava/lang/String;

    const-string v5, "system_id IS NULL AND (_sync_account!=\'non_syncable\' OR _sync_account IS NULL) AND starred=1"

    sget-object v6, Lcom/android/contacts/SearchActivity;->CONTACTS_PHONE_EMAIL_PROJECTION:[Ljava/lang/String;

    invoke-static {v6}, Lcom/android/contacts/SearchActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/SearchActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 617
    :cond_c5
    iget v0, p0, Lcom/android/contacts/SearchActivity;->mQueryMode:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_1d

    .line 618
    iget-object v0, p0, Lcom/android/contacts/SearchActivity;->mQueryHandler:Lcom/android/contacts/SearchActivity$QueryHandler;

    iget-object v3, p0, Lcom/android/contacts/SearchActivity;->mUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/contacts/SearchActivity;->CONTACTS_PHONE_EMAIL_PROJECTION:[Ljava/lang/String;

    const-string v6, "system_id IS NULL"

    sget-object v6, Lcom/android/contacts/SearchActivity;->CONTACTS_PHONE_EMAIL_PROJECTION:[Ljava/lang/String;

    invoke-static {v6}, Lcom/android/contacts/SearchActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/SearchActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 558
    :sswitch_data_de
    .sparse-switch
        -0x7ffffffb -> :sswitch_1e
        -0x7ffffff6 -> :sswitch_1e
        -0x7ffffff1 -> :sswitch_4e
        -0x7fffffec -> :sswitch_7d
        -0x7fffffe7 -> :sswitch_ad
    .end sparse-switch
.end method
