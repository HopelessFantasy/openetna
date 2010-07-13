.class public final Lcom/android/contacts/GroupsListActivity;
.super Landroid/app/ListActivity;
.source "GroupsListActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;,
        Lcom/android/contacts/GroupsListActivity$ViewEntry;,
        Lcom/android/contacts/GroupsListActivity$GroupsListItemCache;,
        Lcom/android/contacts/GroupsListActivity$QueryHandler;,
        Lcom/android/contacts/GroupsListActivity$DeleteClickListener;
    }
.end annotation


# static fields
.field static final DEFAULT_MODE:I = 0x70000005

.field static final DISPLAY_GROUP_INDEX_SOCIAL:I = 0x1

.field static final DISPLAY_GROUP_INDEX_STARRED:I = 0x0

.field static final DRMPHOTO_COLUMN_INDEX:I = 0x6

.field private static final FOCUS_KEY:Ljava/lang/String; = "focused"

.field static final GROUPS_PROJECTION:[Ljava/lang/String; = null

.field static final GROUPS_SIMPLE_PROJECTION:[Ljava/lang/String; = null

.field static final ID_COLUMN_INDEX:I = 0x0

.field private static final LIST_STATE_KEY:Ljava/lang/String; = "liststate"

.field static final MENU_ITEM_ASSIGN_MEMBER:I = 0x4

.field static final MENU_ITEM_DELETE_GROUP:I = 0x3

.field static final MENU_ITEM_EDIT_GROUP:I = 0x2

.field public static final MENU_ITEM_EDIT_SYNC_GTOUP:I = 0x3

.field public static final MENU_ITEM_GROUPS_DELETE:I = 0x4

.field public static final MENU_ITEM_NEW_GROUP:I = 0x2

.field public static final MENU_ITEM_SEARCH:I = 0x1

.field static final MENU_ITEM_VIEW_MEMBERSHIP:I = 0x1

.field static final MODE_MASK_CREATE_NEW:I = 0x10000000

.field static final MODE_MASK_NO_FILTER:I = 0x40000000

.field static final MODE_MASK_PICKER:I = -0x80000000

.field static final MODE_MASK_SHOW_PHOTOS:I = 0x20000000

.field static final MODE_PICK_GROUP:I = -0x3ffffff6

.field static final MODE_PICK_OR_CREATE_GROUP:I = -0x2ffffff1

.field static final MODE_QUERY:I = 0x40000032

.field static final MODE_SHOW_ALL_GROUPS:I = 0x70000005

.field static final MODE_UNKNOWN:I = 0x0

.field static final NAME_COLUMN_INDEX:I = 0x1

.field static final NOTES_COLUMN_INDEX:I = 0x2

.field static final PHOTO_COLUMN_INDEX:I = 0x5

.field private static final QUERY_TOKEN:I = 0x3e

.field static final STARRED_COLUMN_INDEX:I = 0x4

.field private static final SUBACTIVITY_NEW_GROUP:I = 0x1

.field static final SYSTEM_ID_COLUMN_INDEX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GroupsListActivity"

.field private static mGroupsListPicture:Landroid/graphics/Bitmap;


# instance fields
.field private MANAGE_SOCIAL_NETWORK:Z

.field mAdapter:Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;

.field private mCursor:Landroid/database/Cursor;

.field private mGroupObserver:Landroid/database/ContentObserver;

.field mGroupsListEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/GroupsListActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mJustCreated:Z

.field private mListHasFocus:Z

.field private mListState:Landroid/os/Parcelable;

.field private mMode:I

.field private mNumOfAddedStarredGroup:I

.field private mObserver:Landroid/database/ContentObserver;

.field private mQuery:Ljava/lang/String;

.field private mQueryHandler:Lcom/android/contacts/GroupsListActivity$QueryHandler;

.field private mSyncEnabled:Z

.field private final mediaReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 134
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "notes"

    aput-object v1, v0, v4

    const-string v1, "system_id"

    aput-object v1, v0, v5

    const-string v1, "starred"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/contacts/GroupsListActivity;->GROUPS_SIMPLE_PROJECTION:[Ljava/lang/String;

    .line 142
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "notes"

    aput-object v1, v0, v4

    const-string v1, "system_id"

    aput-object v1, v0, v5

    const-string v1, "starred"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "groupphoto_data"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "drmphoto_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/GroupsListActivity;->GROUPS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/GroupsListActivity;->mGroupsListEntries:Ljava/util/ArrayList;

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/GroupsListActivity;->mListState:Landroid/os/Parcelable;

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/GroupsListActivity;->mListHasFocus:Z

    .line 192
    new-instance v0, Lcom/android/contacts/GroupsListActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/GroupsListActivity$1;-><init>(Lcom/android/contacts/GroupsListActivity;)V

    iput-object v0, p0, Lcom/android/contacts/GroupsListActivity;->mediaReceiver:Landroid/content/BroadcastReceiver;

    .line 204
    new-instance v0, Lcom/android/contacts/GroupsListActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/GroupsListActivity$2;-><init>(Lcom/android/contacts/GroupsListActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/GroupsListActivity;->mObserver:Landroid/database/ContentObserver;

    .line 220
    new-instance v0, Lcom/android/contacts/GroupsListActivity$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/GroupsListActivity$3;-><init>(Lcom/android/contacts/GroupsListActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/GroupsListActivity;->mGroupObserver:Landroid/database/ContentObserver;

    .line 1176
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/GroupsListActivity;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/contacts/GroupsListActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/contacts/GroupsListActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/contacts/GroupsListActivity;)Landroid/database/ContentObserver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity;->mObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/GroupsListActivity;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/GroupsListActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/contacts/GroupsListActivity;->mListHasFocus:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/contacts/GroupsListActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/contacts/GroupsListActivity;->mListHasFocus:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/contacts/GroupsListActivity;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1300()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/contacts/GroupsListActivity;->mGroupsListPicture:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/GroupsListActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/contacts/GroupsListActivity;->setEmptyTextLayout(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/GroupsListActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/contacts/GroupsListActivity;->clearGroupEntries()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/GroupsListActivity;)Landroid/database/ContentObserver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity;->mGroupObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/GroupsListActivity;Landroid/database/Cursor;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/contacts/GroupsListActivity;->buildEntries(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/GroupsListActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/contacts/GroupsListActivity;->MANAGE_SOCIAL_NETWORK:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/contacts/GroupsListActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/contacts/GroupsListActivity;->mMode:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/contacts/GroupsListActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/contacts/GroupsListActivity;->buildSnsEntries()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/GroupsListActivity;)Landroid/os/Parcelable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity;->mListState:Landroid/os/Parcelable;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/contacts/GroupsListActivity;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/contacts/GroupsListActivity;->mListState:Landroid/os/Parcelable;

    return-object p1
.end method

.method private final buildEntries(Landroid/database/Cursor;)V
    .registers 13
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    const-string v0, "/members"

    .line 813
    iput v7, p0, Lcom/android/contacts/GroupsListActivity;->mNumOfAddedStarredGroup:I

    .line 816
    :cond_7
    :goto_7
    :pswitch_7
    :try_start_7
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_134

    .line 817
    new-instance v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;

    invoke-direct {v8}, Lcom/android/contacts/GroupsListActivity$ViewEntry;-><init>()V

    .line 818
    .local v8, entry:Lcom/android/contacts/GroupsListActivity$ViewEntry;
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->id:J

    .line 819
    sget-object v0, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->id:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 822
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->name:Ljava/lang/String;

    .line 823
    iget-object v0, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->name:Ljava/lang/String;

    iput-object v0, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->dispName:Ljava/lang/String;

    .line 824
    iget-object v0, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->dispName:Ljava/lang/String;

    if-eqz v0, :cond_3a

    iget-object v0, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->dispName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_43

    .line 825
    :cond_3a
    const v0, 0x104000e

    invoke-virtual {p0, v0}, Lcom/android/contacts/GroupsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->dispName:Ljava/lang/String;

    .line 828
    :cond_43
    const/4 v1, 0x0

    .line 830
    .local v1, numMembersUri:Landroid/net/Uri;
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 831
    .local v9, systemId:Ljava/lang/String;
    const-string v0, "Contacts"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 832
    const/4 v0, 0x2

    iput v0, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->kind:I

    .line 833
    const v0, 0x7f06004d

    invoke-virtual {p0, v0}, Lcom/android/contacts/GroupsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->dispName:Ljava/lang/String;

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://contacts/groups/name/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/members"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 845
    :goto_7c
    invoke-virtual {p0}, Lcom/android/contacts/GroupsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "system_id IS NULL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    .line 849
    iget-object v0, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_a5

    .line 850
    iget-object v0, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/contacts/GroupsListActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 851
    iget-object v0, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numOfMember:I

    .line 855
    :cond_a5
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_117

    .line 856
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->hasPhoto:Z

    .line 862
    :cond_af
    :goto_af
    iget v0, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->kind:I

    packed-switch v0, :pswitch_data_184

    .line 873
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity;->mGroupsListEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b9
    .catchall {:try_start_7 .. :try_end_b9} :catchall_bb

    goto/16 :goto_7

    .line 877
    .end local v1           #numMembersUri:Landroid/net/Uri;
    .end local v8           #entry:Lcom/android/contacts/GroupsListActivity$ViewEntry;
    .end local v9           #systemId:Ljava/lang/String;
    :catchall_bb
    move-exception v0

    throw v0

    .line 835
    .restart local v1       #numMembersUri:Landroid/net/Uri;
    .restart local v8       #entry:Lcom/android/contacts/GroupsListActivity$ViewEntry;
    .restart local v9       #systemId:Ljava/lang/String;
    :cond_bd
    :try_start_bd
    const-string v0, "Starred in Android"

    iget-object v2, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->dispName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 836
    const/4 v0, 0x3

    iput v0, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->kind:I

    .line 837
    const v0, 0x7f06004f

    invoke-virtual {p0, v0}, Lcom/android/contacts/GroupsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->dispName:Ljava/lang/String;

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://contacts/groups/name/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/members"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_7c

    .line 840
    :cond_f3
    const/4 v0, 0x4

    iput v0, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->kind:I

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://contacts/groups/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/members"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_7c

    .line 857
    :cond_117
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_af

    .line 858
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->hasPhoto:Z

    goto :goto_af

    .line 867
    :pswitch_122
    iget v0, p0, Lcom/android/contacts/GroupsListActivity;->mNumOfAddedStarredGroup:I

    if-nez v0, :cond_7

    .line 868
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity;->mGroupsListEntries:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 869
    iget v0, p0, Lcom/android/contacts/GroupsListActivity;->mNumOfAddedStarredGroup:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/GroupsListActivity;->mNumOfAddedStarredGroup:I
    :try_end_132
    .catchall {:try_start_bd .. :try_end_132} :catchall_bb

    goto/16 :goto_7

    .line 883
    .end local v1           #numMembersUri:Landroid/net/Uri;
    .end local v8           #entry:Lcom/android/contacts/GroupsListActivity$ViewEntry;
    .end local v9           #systemId:Ljava/lang/String;
    :cond_134
    iget v0, p0, Lcom/android/contacts/GroupsListActivity;->mMode:I

    const v2, 0x70000005

    if-ne v0, v2, :cond_183

    .line 889
    new-instance v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;

    invoke-direct {v8}, Lcom/android/contacts/GroupsListActivity$ViewEntry;-><init>()V

    .line 890
    .restart local v8       #entry:Lcom/android/contacts/GroupsListActivity$ViewEntry;
    iput v10, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->kind:I

    .line 891
    const-wide/32 v2, 0x1869f

    iput-wide v2, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->id:J

    .line 892
    iput-object v6, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 893
    iput-object v6, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->name:Ljava/lang/String;

    .line 894
    const v0, 0x7f0600e0

    invoke-virtual {p0, v0}, Lcom/android/contacts/GroupsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->dispName:Ljava/lang/String;

    .line 895
    iput-boolean v7, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->hasPhoto:Z

    .line 897
    invoke-virtual {p0}, Lcom/android/contacts/GroupsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Contacts$Groups;->CONTENT_NOGROUP_URI:Landroid/net/Uri;

    new-array v4, v10, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v4, v7

    const-string v5, "system_id IS NULL"

    move-object v7, v6

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    .line 901
    iget-object v0, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_17e

    .line 902
    iget-object v0, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/contacts/GroupsListActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 903
    iget-object v0, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, v8, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numOfMember:I

    .line 906
    :cond_17e
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity;->mGroupsListEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    .end local v8           #entry:Lcom/android/contacts/GroupsListActivity$ViewEntry;
    :cond_183
    return-void

    .line 862
    :pswitch_data_184
    .packed-switch 0x2
        :pswitch_7
        :pswitch_122
    .end packed-switch
.end method

.method private final buildSnsEntries()V
    .registers 14

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x1

    .line 913
    sget-object v0, Lcom/android/contacts/LinkbookAsyncHelper;->mSNAccounts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 914
    .local v9, imax:I
    sub-int v10, v9, v12

    .line 916
    .local v10, index:I
    const/4 v8, 0x0

    .local v8, i:I
    move v11, v10

    .end local v10           #index:I
    .local v11, index:I
    :goto_c
    if-ge v8, v9, :cond_7b

    .line 917
    sget-object v0, Lcom/android/contacts/LinkbookAsyncHelper;->mSNAccounts:Ljava/util/ArrayList;

    sub-int v10, v11, v12

    .end local v11           #index:I
    .restart local v10       #index:I
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;

    .line 918
    .local v6, account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    new-instance v7, Lcom/android/contacts/GroupsListActivity$ViewEntry;

    invoke-direct {v7}, Lcom/android/contacts/GroupsListActivity$ViewEntry;-><init>()V

    .line 919
    .local v7, entry:Lcom/android/contacts/GroupsListActivity$ViewEntry;
    iget-wide v0, v6, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mId:J

    iput-wide v0, v7, Lcom/android/contacts/GroupsListActivity$ViewEntry;->id:J

    .line 920
    iput-object v4, v7, Lcom/android/contacts/GroupsListActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 921
    iget-object v0, v6, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mTitle:Ljava/lang/String;

    iput-object v0, v7, Lcom/android/contacts/GroupsListActivity$ViewEntry;->name:Ljava/lang/String;

    .line 922
    iget-object v0, v6, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mTitle:Ljava/lang/String;

    iput-object v0, v7, Lcom/android/contacts/GroupsListActivity$ViewEntry;->dispName:Ljava/lang/String;

    .line 923
    iput-boolean v12, v7, Lcom/android/contacts/GroupsListActivity$ViewEntry;->hasPhoto:Z

    .line 924
    const/4 v0, 0x5

    iput v0, v7, Lcom/android/contacts/GroupsListActivity$ViewEntry;->kind:I

    .line 927
    invoke-virtual {p0}, Lcom/android/contacts/GroupsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://contacts/people/all/sns_ids/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;->mSnSiteId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const-string v3, "system_id IS NULL"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, v7, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    .line 931
    iget-object v0, v7, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_70

    .line 932
    iget-object v0, v7, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/contacts/GroupsListActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 933
    iget-object v0, v7, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, v7, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numOfMember:I

    .line 935
    :cond_70
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity;->mGroupsListEntries:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/contacts/GroupsListActivity;->mNumOfAddedStarredGroup:I

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 916
    add-int/lit8 v8, v8, 0x1

    move v11, v10

    .end local v10           #index:I
    .restart local v11       #index:I
    goto :goto_c

    .line 937
    .end local v6           #account:Lcom/android/contacts/LinkbookAsyncHelper$LinkbookAccount;
    .end local v7           #entry:Lcom/android/contacts/GroupsListActivity$ViewEntry;
    :cond_7b
    return-void
.end method

.method private clearGroupEntries()V
    .registers 2

    .prologue
    .line 1101
    invoke-direct {p0}, Lcom/android/contacts/GroupsListActivity;->closeNumberOfMembersCursor()V

    .line 1102
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity;->mGroupsListEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1103
    return-void
.end method

.method private closeNumberOfMembersCursor()V
    .registers 5

    .prologue
    .line 1080
    iget-object v2, p0, Lcom/android/contacts/GroupsListActivity;->mGroupsListEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/GroupsListActivity$ViewEntry;

    .line 1081
    .local v0, entry:Lcom/android/contacts/GroupsListActivity$ViewEntry;
    iget-object v2, v0, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1082
    :try_start_1e
    iget-object v2, v0, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/contacts/GroupsListActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_25} :catch_2c

    .line 1084
    :goto_25
    iget-object v2, v0, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 1087
    .end local v0           #entry:Lcom/android/contacts/GroupsListActivity$ViewEntry;
    :cond_2b
    return-void

    .line 1083
    .restart local v0       #entry:Lcom/android/contacts/GroupsListActivity$ViewEntry;
    :catch_2c
    move-exception v2

    goto :goto_25
.end method

.method private getGroupsFilterUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .parameter "filter"

    .prologue
    .line 949
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 950
    sget-object v0, Landroid/provider/Contacts$Groups;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 952
    :goto_10
    return-object v0

    :cond_11
    sget-object v0, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_10
.end method

.method private static getGroupsProjection(I)[Ljava/lang/String;
    .registers 3
    .parameter "mode"

    .prologue
    const/high16 v1, 0x2000

    .line 958
    and-int v0, p0, v1

    if-ne v0, v1, :cond_9

    .line 959
    sget-object v0, Lcom/android/contacts/GroupsListActivity;->GROUPS_PROJECTION:[Ljava/lang/String;

    .line 961
    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Lcom/android/contacts/GroupsListActivity;->GROUPS_SIMPLE_PROJECTION:[Ljava/lang/String;

    goto :goto_8
.end method

.method private static getSortOrder([Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "projectionType"

    .prologue
    .line 967
    const-string v0, "name COLLATE LOCALIZED ASC"

    return-object v0
.end method

.method private numberOfMembersChanged()V
    .registers 4

    .prologue
    .line 1091
    iget-object v2, p0, Lcom/android/contacts/GroupsListActivity;->mGroupsListEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/GroupsListActivity$ViewEntry;

    .line 1092
    .local v0, entry:Lcom/android/contacts/GroupsListActivity$ViewEntry;
    iget-object v2, v0, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1093
    iget-object v2, v0, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    .line 1094
    iget-object v2, v0, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, v0, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numOfMember:I

    goto :goto_6

    .line 1097
    .end local v0           #entry:Lcom/android/contacts/GroupsListActivity$ViewEntry;
    :cond_2c
    return-void
.end method

.method private registerNumberOfMembersContentObserver()V
    .registers 5

    .prologue
    .line 1059
    iget-object v2, p0, Lcom/android/contacts/GroupsListActivity;->mGroupsListEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/GroupsListActivity$ViewEntry;

    .line 1060
    .local v0, entry:Lcom/android/contacts/GroupsListActivity$ViewEntry;
    iget-object v2, v0, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1061
    :try_start_1e
    iget-object v2, v0, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/contacts/GroupsListActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_25} :catch_26

    goto :goto_6

    .line 1062
    :catch_26
    move-exception v2

    goto :goto_6

    .line 1065
    .end local v0           #entry:Lcom/android/contacts/GroupsListActivity$ViewEntry;
    :cond_28
    return-void
.end method

.method private returnPickerResult(Landroid/net/Uri;)V
    .registers 5
    .parameter "uri"

    .prologue
    .line 942
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 943
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/GroupsListActivity;->setResult(ILandroid/content/Intent;)V

    .line 944
    invoke-virtual {p0}, Lcom/android/contacts/GroupsListActivity;->finish()V

    .line 945
    return-void
.end method

.method private setEmptyText()V
    .registers 3

    .prologue
    .line 538
    const v1, 0x7f050005

    invoke-virtual {p0, v1}, Lcom/android/contacts/GroupsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 539
    .local v0, empty:Landroid/widget/TextView;
    const v1, 0x7f0600e1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 540
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 541
    return-void
.end method

.method private setEmptyTextLayout(I)V
    .registers 7
    .parameter "count"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 545
    const v2, 0x7f05000c

    invoke-virtual {p0, v2}, Lcom/android/contacts/GroupsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 546
    .local v0, emptyLayout:Landroid/widget/ScrollView;
    invoke-virtual {p0}, Lcom/android/contacts/GroupsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 547
    .local v1, list:Landroid/widget/ListView;
    if-nez p1, :cond_19

    .line 548
    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 549
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 554
    :goto_18
    return-void

    .line 551
    :cond_19
    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 552
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_18
.end method

.method private startActivityToViewMembership(JLjava/lang/String;I)V
    .registers 7
    .parameter "groupId"
    .parameter "name"
    .parameter "groupKind"

    .prologue
    .line 1049
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.LIST_GROUP_MEMBERSHIP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1050
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.contacts.extra.GROUP_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1051
    const-string v1, "com.android.contacts.extra.GROUP"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1052
    const-string v1, "com.android.contacts.extra.LOCAL_GROUP_KIND"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1053
    const-class v1, Lcom/android/contacts/ContactsListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1054
    invoke-virtual {p0, v0}, Lcom/android/contacts/GroupsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 1055
    return-void
.end method

.method private unregisterNumberOfMembersContentObserver()V
    .registers 5

    .prologue
    .line 1069
    iget-object v2, p0, Lcom/android/contacts/GroupsListActivity;->mGroupsListEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/GroupsListActivity$ViewEntry;

    .line 1070
    .local v0, entry:Lcom/android/contacts/GroupsListActivity$ViewEntry;
    iget-object v2, v0, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1071
    :try_start_1e
    iget-object v2, v0, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/contacts/GroupsListActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_25} :catch_2c

    .line 1073
    :goto_25
    iget-object v2, v0, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    goto :goto_6

    .line 1076
    .end local v0           #entry:Lcom/android/contacts/GroupsListActivity$ViewEntry;
    :cond_2b
    return-void

    .line 1072
    .restart local v0       #entry:Lcom/android/contacts/GroupsListActivity$ViewEntry;
    :catch_2c
    move-exception v2

    goto :goto_25
.end method


# virtual methods
.method doFilter(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "filter"

    .prologue
    const/4 v3, 0x0

    .line 1013
    invoke-virtual {p0}, Lcom/android/contacts/GroupsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1015
    .local v0, resolver:Landroid/content/ContentResolver;
    iget v1, p0, Lcom/android/contacts/GroupsListActivity;->mMode:I

    invoke-static {v1}, Lcom/android/contacts/GroupsListActivity;->getGroupsProjection(I)[Ljava/lang/String;

    move-result-object v2

    .line 1017
    .local v2, groupsProjection:[Ljava/lang/String;
    iget v1, p0, Lcom/android/contacts/GroupsListActivity;->mMode:I

    sparse-switch v1, :sswitch_data_3a

    .line 1026
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filtering not allowed in mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/contacts/GroupsListActivity;->mMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1020
    :sswitch_2b
    invoke-direct {p0, p1}, Lcom/android/contacts/GroupsListActivity;->getGroupsFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v2}, Lcom/android/contacts/GroupsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 1017
    nop

    :sswitch_data_3a
    .sparse-switch
        -0x3ffffff6 -> :sswitch_2b
        0x70000005 -> :sswitch_2b
    .end sparse-switch
.end method

.method getItemForView(Landroid/view/View;)Landroid/database/Cursor;
    .registers 5
    .parameter "view"

    .prologue
    .line 1039
    invoke-virtual {p0}, Lcom/android/contacts/GroupsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1040
    .local v1, listView:Landroid/widget/ListView;
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 1041
    .local v0, index:I
    if-gez v0, :cond_c

    .line 1042
    const/4 v2, 0x0

    .line 1044
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
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 767
    packed-switch p1, :pswitch_data_10

    .line 775
    :cond_3
    :goto_3
    return-void

    .line 769
    :pswitch_4
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 771
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/GroupsListActivity;->returnPickerResult(Landroid/net/Uri;)V

    goto :goto_3

    .line 767
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialogInterface"
    .parameter "which"

    .prologue
    .line 577
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_22

    .line 280
    :goto_8
    return-void

    .line 272
    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.LOCAL_INSERT_AND_ASSIGN"

    sget-object v2, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 273
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/contacts/EditGroupActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 274
    invoke-virtual {p0, v0}, Lcom/android/contacts/GroupsListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    .line 277
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1b
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v3, v1, v3, v2}, Lcom/android/contacts/GroupsListActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_8

    .line 270
    nop

    :pswitch_data_22
    .packed-switch 0x7f05003d
        :pswitch_1b
        :pswitch_9
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 13
    .parameter "item"

    .prologue
    const/4 v9, 0x0

    const-string v10, "com.android.contacts.extra.TITLE_EXTRA"

    .line 706
    :try_start_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_9} :catch_13

    .line 714
    .local v2, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-wide v5, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_1e

    move v5, v9

    .line 761
    .end local v2           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :goto_12
    return v5

    .line 707
    :catch_13
    move-exception v5

    move-object v0, v5

    .line 708
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v5, "GroupsListActivity"

    const-string v6, "bad menuInfo"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v9

    .line 709
    goto :goto_12

    .line 719
    .end local v0           #e:Ljava/lang/ClassCastException;
    .restart local v2       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_1e
    iget-object v5, p0, Lcom/android/contacts/GroupsListActivity;->mGroupsListEntries:Ljava/util/ArrayList;

    iget v6, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/GroupsListActivity$ViewEntry;

    .line 720
    .local v1, entry:Lcom/android/contacts/GroupsListActivity$ViewEntry;
    if-nez v1, :cond_2c

    move v5, v9

    .line 722
    goto :goto_12

    .line 726
    :cond_2c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_ca

    .line 761
    :goto_33
    :pswitch_33
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    goto :goto_12

    .line 731
    :pswitch_38
    iget-wide v5, v1, Lcom/android/contacts/GroupsListActivity$ViewEntry;->id:J

    iget-object v7, v1, Lcom/android/contacts/GroupsListActivity$ViewEntry;->name:Ljava/lang/String;

    iget v8, v1, Lcom/android/contacts/GroupsListActivity$ViewEntry;->kind:I

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/contacts/GroupsListActivity;->startActivityToViewMembership(JLjava/lang/String;I)V

    goto :goto_33

    .line 735
    :pswitch_42
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.contacts.action.LOCAL_ASSIGN_MEMBERS"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 736
    .local v3, intent:Landroid/content/Intent;
    iget v5, v1, Lcom/android/contacts/GroupsListActivity$ViewEntry;->kind:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_68

    .line 737
    const-string v5, "com.android.contacts.extra.TITLE_EXTRA"

    const v5, 0x7f06004f

    invoke-virtual {p0, v5}, Lcom/android/contacts/GroupsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 738
    const-string v5, "starred"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    :goto_5f
    const-class v5, Lcom/android/contacts/SearchActivity;

    invoke-virtual {v3, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 745
    invoke-virtual {p0, v3}, Lcom/android/contacts/GroupsListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_33

    .line 740
    :cond_68
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://contacts/groups/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lcom/android/contacts/GroupsListActivity$ViewEntry;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/no_members/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 741
    .local v4, uri:Landroid/net/Uri;
    const-string v5, "com.android.contacts.extra.TITLE_EXTRA"

    iget-object v5, v1, Lcom/android/contacts/GroupsListActivity$ViewEntry;->dispName:Ljava/lang/String;

    invoke-virtual {v3, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 742
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_5f

    .line 750
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #uri:Landroid/net/Uri;
    :pswitch_92
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f06001b

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0600a4

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/android/contacts/GroupsListActivity$DeleteClickListener;

    iget v8, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget-object v9, v1, Lcom/android/contacts/GroupsListActivity$ViewEntry;->uri:Landroid/net/Uri;

    invoke-direct {v7, p0, v8, v9}, Lcom/android/contacts/GroupsListActivity$DeleteClickListener;-><init>(Lcom/android/contacts/GroupsListActivity;ILandroid/net/Uri;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 757
    const/4 v5, 0x1

    goto/16 :goto_12

    .line 726
    nop

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_38
        :pswitch_33
        :pswitch_92
        :pswitch_42
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 29
    .parameter "icicle"

    .prologue
    .line 285
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 289
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/FlexibleOptionHelper;->isLinkbookEnabled(Landroid/content/Context;)Z

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/GroupsListActivity;->MANAGE_SOCIAL_NETWORK:Z

    .line 291
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/GroupsListActivity;->mMode:I

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/GroupsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200b9

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    sput-object v5, Lcom/android/contacts/GroupsListActivity;->mGroupsListPicture:Landroid/graphics/Bitmap;

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/GroupsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v16

    .line 299
    .local v16, intent:Landroid/content/Intent;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 303
    .local v11, action:Ljava/lang/String;
    const-string v5, "com.android.contacts.extra.TITLE_EXTRA"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 304
    .local v25, title:Ljava/lang/String;
    if-eqz v25, :cond_39

    .line 305
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/contacts/GroupsListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 310
    :cond_39
    const v5, 0x7f03001f

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/GroupsListActivity;->setContentView(I)V

    .line 314
    const-string v5, "com.android.contacts.action.LIST_DEFAULT"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_117

    .line 315
    const v5, 0x70000005

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/GroupsListActivity;->mMode:I

    .line 358
    :cond_52
    :goto_52
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/GroupsListActivity;->mMode:I

    move v5, v0

    if-nez v5, :cond_61

    .line 359
    const v5, 0x70000005

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/GroupsListActivity;->mMode:I

    .line 364
    :cond_61
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/GroupsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v18

    .line 366
    .local v18, list:Landroid/widget/ListView;
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 367
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 368
    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 369
    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 377
    const/4 v5, 0x3

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/GroupsListActivity;->setDefaultKeyMode(I)V

    .line 382
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/GroupsListActivity;->mMode:I

    move v5, v0

    const/high16 v6, 0x1000

    and-int/2addr v5, v6

    const/high16 v6, 0x1000

    if-ne v5, v6, :cond_cc

    .line 383
    const v5, 0x7f050009

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/GroupsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 384
    .local v17, layoutCreate:Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 385
    const v5, 0x7f05003e

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/GroupsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    .line 386
    .local v12, creatNew:Landroid/widget/ImageButton;
    move-object v0, v12

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    const v5, 0x7f05003d

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/GroupsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Button;

    .line 389
    .local v23, search:Landroid/widget/Button;
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    .end local v12           #creatNew:Landroid/widget/ImageButton;
    .end local v17           #layoutCreate:Landroid/widget/LinearLayout;
    .end local v23           #search:Landroid/widget/Button;
    :cond_cc
    new-instance v5, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/GroupsListActivity;->mGroupsListEntries:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;-><init>(Lcom/android/contacts/GroupsListActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/GroupsListActivity;->mAdapter:Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/GroupsListActivity;->mAdapter:Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/GroupsListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 398
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/GroupsListActivity;->setEmptyText()V

    .line 401
    new-instance v5, Lcom/android/contacts/GroupsListActivity$QueryHandler;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/GroupsListActivity$QueryHandler;-><init>(Lcom/android/contacts/GroupsListActivity;Landroid/content/Context;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/GroupsListActivity;->mQueryHandler:Lcom/android/contacts/GroupsListActivity$QueryHandler;

    .line 402
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/GroupsListActivity;->mJustCreated:Z

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/GroupsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    .line 407
    .local v21, resolver:Landroid/content/ContentResolver;
    sget-object v5, Landroid/provider/Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v20

    .line 408
    .local v20, provider:Landroid/content/IContentProvider;
    if-nez v20, :cond_1f6

    .line 409
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/GroupsListActivity;->finish()V

    .line 421
    .end local v18           #list:Landroid/widget/ListView;
    .end local v20           #provider:Landroid/content/IContentProvider;
    .end local v21           #resolver:Landroid/content/ContentResolver;
    :goto_116
    return-void

    .line 316
    :cond_117
    const-string v5, "com.android.contacts.action.LIST_ALL_GROUPS"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_129

    .line 317
    const v5, 0x70000005

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/GroupsListActivity;->mMode:I

    goto/16 :goto_52

    .line 318
    :cond_129
    const-string v5, "android.intent.action.PICK"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14e

    .line 319
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    .line 320
    .local v26, type:Ljava/lang/String;
    const-string v5, "vnd.android.cursor.dir/contactsgroup"

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 321
    const v5, -0x3ffffff6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/GroupsListActivity;->mMode:I

    goto/16 :goto_52

    .line 323
    .end local v26           #type:Ljava/lang/String;
    :cond_14e
    const-string v5, "android.intent.action.GET_CONTENT"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_173

    .line 325
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    .line 326
    .restart local v26       #type:Ljava/lang/String;
    const-string v5, "vnd.android.cursor.item/contactsgroup"

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 327
    const v5, -0x2ffffff1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/GroupsListActivity;->mMode:I

    goto/16 :goto_52

    .line 329
    .end local v26           #type:Ljava/lang/String;
    :cond_173
    const-string v5, "android.intent.action.SEARCH"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_185

    .line 330
    const v5, 0x40000032

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/GroupsListActivity;->mMode:I

    goto/16 :goto_52

    .line 334
    :cond_185
    const-string v5, "android.provider.Contacts.SEARCH_SUGGESTION_CLICKED"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 336
    const/4 v15, -0x1

    .line 337
    .local v15, groupKind:I
    const/16 v19, 0x0

    .line 338
    .local v19, name:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 339
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/GroupsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "name"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "system_id"

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 341
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_1cd

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1cd

    .line 342
    const/4 v5, 0x0

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 343
    const/4 v5, 0x1

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 344
    .local v24, systemId:Ljava/lang/String;
    const-string v5, "Contacts"

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e7

    .line 345
    const/4 v15, 0x2

    .line 351
    :goto_1ca
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 353
    .end local v24           #systemId:Ljava/lang/String;
    :cond_1cd
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, p0

    move-wide v1, v7

    move-object/from16 v3, v19

    move v4, v15

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/contacts/GroupsListActivity;->startActivityToViewMembership(JLjava/lang/String;I)V

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/GroupsListActivity;->finish()V

    goto/16 :goto_116

    .line 346
    .restart local v24       #systemId:Ljava/lang/String;
    :cond_1e7
    const-string v5, "Starred in Android"

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f4

    .line 347
    const/4 v15, 0x3

    goto :goto_1ca

    .line 349
    :cond_1f4
    const/4 v15, 0x4

    goto :goto_1ca

    .line 414
    .end local v6           #uri:Landroid/net/Uri;
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v15           #groupKind:I
    .end local v19           #name:Ljava/lang/String;
    .end local v24           #systemId:Ljava/lang/String;
    .restart local v18       #list:Landroid/widget/ListView;
    .restart local v20       #provider:Landroid/content/IContentProvider;
    .restart local v21       #resolver:Landroid/content/ContentResolver;
    :cond_1f6
    :try_start_1f6
    invoke-interface/range {v20 .. v20}, Landroid/content/IContentProvider;->getSyncAdapter()Landroid/content/ISyncAdapter;

    move-result-object v22

    .line 415
    .local v22, sa:Landroid/content/ISyncAdapter;
    if-eqz v22, :cond_20b

    const/4 v5, 0x1

    :goto_1fd
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/GroupsListActivity;->mSyncEnabled:Z
    :try_end_202
    .catchall {:try_start_1f6 .. :try_end_202} :catchall_21e
    .catch Landroid/os/RemoteException; {:try_start_1f6 .. :try_end_202} :catch_20d

    .line 419
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    goto/16 :goto_116

    .line 415
    :cond_20b
    const/4 v5, 0x0

    goto :goto_1fd

    .line 416
    .end local v22           #sa:Landroid/content/ISyncAdapter;
    :catch_20d
    move-exception v5

    move-object v14, v5

    .line 417
    .local v14, e:Landroid/os/RemoteException;
    const/4 v5, 0x0

    :try_start_210
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/GroupsListActivity;->mSyncEnabled:Z
    :try_end_215
    .catchall {:try_start_210 .. :try_end_215} :catchall_21e

    .line 419
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    goto/16 :goto_116

    .end local v14           #e:Landroid/os/RemoteException;
    :catchall_21e
    move-exception v5

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    throw v5
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 16
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const v11, 0x7f0600bc

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/high16 v5, -0x8000

    const/4 v8, 0x0

    .line 647
    iget v4, p0, Lcom/android/contacts/GroupsListActivity;->mMode:I

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_e

    .line 699
    :cond_d
    :goto_d
    return-void

    .line 654
    :cond_e
    :try_start_e
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v3, v0
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_12} :catch_4f

    .line 662
    .local v3, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-wide v4, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_d

    .line 667
    iget-object v4, p0, Lcom/android/contacts/GroupsListActivity;->mGroupsListEntries:Ljava/util/ArrayList;

    iget v5, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/GroupsListActivity$ViewEntry;

    .line 668
    .local v2, entry:Lcom/android/contacts/GroupsListActivity$ViewEntry;
    if-eqz v2, :cond_d

    .line 674
    iget-object v4, v2, Lcom/android/contacts/GroupsListActivity$ViewEntry;->dispName:Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 677
    const/4 v4, 0x1

    const v5, 0x7f0600bb

    invoke-interface {p1, v8, v4, v8, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 680
    iget v4, v2, Lcom/android/contacts/GroupsListActivity$ViewEntry;->kind:I

    packed-switch v4, :pswitch_data_76

    goto :goto_d

    .line 690
    :pswitch_38
    const v4, 0x7f0600be

    invoke-interface {p1, v8, v10, v8, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 692
    invoke-interface {p1, v8, v9, v8, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.EDIT"

    iget-object v7, v2, Lcom/android/contacts/GroupsListActivity$ViewEntry;->uri:Landroid/net/Uri;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_d

    .line 655
    .end local v2           #entry:Lcom/android/contacts/GroupsListActivity$ViewEntry;
    .end local v3           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :catch_4f
    move-exception v1

    .line 656
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v4, "GroupsListActivity"

    const-string v5, "bad menuInfo"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 682
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v2       #entry:Lcom/android/contacts/GroupsListActivity$ViewEntry;
    .restart local v3       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :pswitch_58
    const v4, 0x7f0600be

    invoke-interface {p1, v8, v10, v8, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 684
    invoke-interface {p1, v8, v9, v8, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.EDIT"

    iget-object v7, v2, Lcom/android/contacts/GroupsListActivity$ViewEntry;->uri:Landroid/net/Uri;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 687
    const/4 v4, 0x3

    const v5, 0x7f0600bd

    invoke-interface {p1, v8, v4, v8, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_d

    .line 680
    :pswitch_data_76
    .packed-switch 0x3
        :pswitch_38
        :pswitch_58
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/high16 v2, -0x8000

    const/4 v3, 0x0

    .line 584
    iget v1, p0, Lcom/android/contacts/GroupsListActivity;->mMode:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    move v1, v3

    .line 620
    :goto_9
    return v1

    .line 589
    :cond_a
    const/4 v1, 0x1

    const v2, 0x7f06000b

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108004f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 593
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.LOCAL_INSERT_AND_ASSIGN"

    sget-object v2, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 594
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/contacts/EditGroupActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 595
    const/4 v1, 0x2

    const v2, 0x7f0600ba

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080033

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x6e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 601
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.DELETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 602
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/contactsgroup"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    const/4 v1, 0x4

    const v2, 0x7f06009c

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 608
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/android/contacts/GroupsListActivity;->mSyncEnabled:Z

    invoke-static {p0, p1, v1, v2}, Lcom/android/contacts/FlexibleOptionHelper;->addSyncMenuItem(Landroid/content/Context;Landroid/view/Menu;IZ)V

    .line 620
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_9
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 524
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 526
    invoke-direct {p0}, Lcom/android/contacts/GroupsListActivity;->closeNumberOfMembersCursor()V

    .line 527
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1e

    .line 528
    :try_start_a
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/contacts/GroupsListActivity;->mGroupObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_1f

    .line 530
    :goto_11
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 531
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 534
    :cond_1e
    return-void

    .line 529
    :catch_1f
    move-exception v0

    goto :goto_11
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 780
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 14
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const v6, -0x2ffffff1

    .line 787
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/android/contacts/GroupsListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 789
    .local v1, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Lcom/android/contacts/GroupsListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 792
    const-wide/16 v4, -0x1

    cmp-long v4, p4, v4

    if-eqz v4, :cond_49

    .line 793
    iget v4, p0, Lcom/android/contacts/GroupsListActivity;->mMode:I

    const/high16 v5, -0x8000

    and-int/2addr v4, v5

    if-nez v4, :cond_34

    .line 794
    iget-object v4, p0, Lcom/android/contacts/GroupsListActivity;->mGroupsListEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/GroupsListActivity$ViewEntry;

    .line 795
    .local v0, entry:Lcom/android/contacts/GroupsListActivity$ViewEntry;
    iget-wide v4, v0, Lcom/android/contacts/GroupsListActivity$ViewEntry;->id:J

    iget-object v6, v0, Lcom/android/contacts/GroupsListActivity$ViewEntry;->name:Ljava/lang/String;

    iget v7, v0, Lcom/android/contacts/GroupsListActivity$ViewEntry;->kind:I

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/contacts/GroupsListActivity;->startActivityToViewMembership(JLjava/lang/String;I)V

    .line 807
    .end local v0           #entry:Lcom/android/contacts/GroupsListActivity$ViewEntry;
    :cond_33
    :goto_33
    return-void

    .line 796
    :cond_34
    iget v4, p0, Lcom/android/contacts/GroupsListActivity;->mMode:I

    const v5, -0x3ffffff6

    if-eq v4, v5, :cond_3f

    iget v4, p0, Lcom/android/contacts/GroupsListActivity;->mMode:I

    if-ne v4, v6, :cond_33

    .line 798
    :cond_3f
    sget-object v4, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 799
    .local v3, uri:Landroid/net/Uri;
    invoke-direct {p0, v3}, Lcom/android/contacts/GroupsListActivity;->returnPickerResult(Landroid/net/Uri;)V

    goto :goto_33

    .line 801
    .end local v3           #uri:Landroid/net/Uri;
    :cond_49
    iget v4, p0, Lcom/android/contacts/GroupsListActivity;->mMode:I

    if-ne v4, v6, :cond_5b

    .line 802
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.INSERT"

    sget-object v5, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 803
    .local v2, newContact:Landroid/content/Intent;
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/contacts/GroupsListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_33

    .line 805
    .end local v2           #newContact:Landroid/content/Intent;
    :cond_5b
    invoke-virtual {p0}, Lcom/android/contacts/GroupsListActivity;->signalError()V

    goto :goto_33
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 626
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    move v0, v1

    .line 637
    :goto_a
    return v0

    .line 634
    :pswitch_b
    invoke-virtual {p0, v2, v1, v2, v1}, Lcom/android/contacts/GroupsListActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 635
    const/4 v0, 0x1

    goto :goto_a

    .line 626
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_b
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 483
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 484
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity;->mediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/contacts/GroupsListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 486
    invoke-direct {p0}, Lcom/android/contacts/GroupsListActivity;->unregisterNumberOfMembersContentObserver()V

    .line 487
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_23

    .line 488
    :try_start_17
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/contacts/GroupsListActivity;->mGroupObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_24

    .line 490
    :goto_1e
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 492
    :cond_23
    return-void

    .line 489
    :catch_24
    move-exception v0

    goto :goto_1e
.end method

.method protected onRestart()V
    .registers 2

    .prologue
    .line 497
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 501
    invoke-virtual {p0}, Lcom/android/contacts/GroupsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getTextFilter()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 502
    invoke-virtual {p0}, Lcom/android/contacts/GroupsListActivity;->startAsyncQuery()V

    .line 504
    :cond_14
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 568
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 570
    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/GroupsListActivity;->mListState:Landroid/os/Parcelable;

    .line 571
    const-string v0, "focused"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/GroupsListActivity;->mListHasFocus:Z

    .line 572
    return-void
.end method

.method protected onResume()V
    .registers 6

    .prologue
    .line 426
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 430
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 431
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 432
    const-string v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 433
    iget-object v3, p0, Lcom/android/contacts/GroupsListActivity;->mediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/contacts/GroupsListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 437
    iget-boolean v3, p0, Lcom/android/contacts/GroupsListActivity;->MANAGE_SOCIAL_NETWORK:Z

    if-eqz v3, :cond_20

    .line 438
    invoke-static {p0}, Lcom/android/contacts/LinkbookAsyncHelper;->loadAccountList(Landroid/content/Context;)Z

    .line 455
    :cond_20
    iget-boolean v3, p0, Lcom/android/contacts/GroupsListActivity;->mJustCreated:Z

    if-eqz v3, :cond_40

    .line 456
    invoke-virtual {p0}, Lcom/android/contacts/GroupsListActivity;->startAsyncQuery()V

    .line 466
    :cond_27
    :goto_27
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/contacts/GroupsListActivity;->mJustCreated:Z

    .line 470
    invoke-virtual {p0}, Lcom/android/contacts/GroupsListActivity;->getParent()Landroid/app/Activity;

    move-result-object v2

    .line 471
    .local v2, parent:Landroid/app/Activity;
    if-eqz v2, :cond_3f

    instance-of v3, v2, Lcom/android/contacts/DialtactsActivity;

    if-eqz v3, :cond_3f

    .line 472
    check-cast v2, Lcom/android/contacts/DialtactsActivity;

    .end local v2           #parent:Landroid/app/Activity;
    invoke-virtual {v2}, Lcom/android/contacts/DialtactsActivity;->getAndClearFilterKeyEvent()Landroid/view/KeyEvent;

    move-result-object v0

    .line 473
    .local v0, event:Landroid/view/KeyEvent;
    if-eqz v0, :cond_3f

    .line 474
    invoke-virtual {p0, v0}, Lcom/android/contacts/GroupsListActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 478
    .end local v0           #event:Landroid/view/KeyEvent;
    :cond_3f
    return-void

    .line 458
    :cond_40
    invoke-direct {p0}, Lcom/android/contacts/GroupsListActivity;->registerNumberOfMembersContentObserver()V

    .line 459
    invoke-direct {p0}, Lcom/android/contacts/GroupsListActivity;->numberOfMembersChanged()V

    .line 460
    iget-object v3, p0, Lcom/android/contacts/GroupsListActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_27

    iget-object v3, p0, Lcom/android/contacts/GroupsListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_27

    .line 461
    iget-object v3, p0, Lcom/android/contacts/GroupsListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    .line 462
    :try_start_57
    iget-object v3, p0, Lcom/android/contacts/GroupsListActivity;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/contacts/GroupsListActivity;->mGroupObserver:Landroid/database/ContentObserver;

    invoke-interface {v3, v4}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5e} :catch_5f

    goto :goto_27

    .line 463
    :catch_5f
    move-exception v3

    goto :goto_27
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 559
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 561
    const-string v0, "liststate"

    iget-object v1, p0, Lcom/android/contacts/GroupsListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 562
    const-string v0, "focused"

    iget-object v1, p0, Lcom/android/contacts/GroupsListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 563
    return-void
.end method

.method protected onStop()V
    .registers 4

    .prologue
    .line 509
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 511
    iget-object v1, p0, Lcom/android/contacts/GroupsListActivity;->mAdapter:Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->setLoading(Z)V

    .line 512
    iget-object v1, p0, Lcom/android/contacts/GroupsListActivity;->mAdapter:Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 514
    iget v1, p0, Lcom/android/contacts/GroupsListActivity;->mMode:I

    const v2, 0x40000032

    if-ne v1, v2, :cond_21

    .line 516
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/android/contacts/GroupsListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 517
    .local v0, searchManager:Landroid/app/SearchManager;
    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    .line 519
    .end local v0           #searchManager:Landroid/app/SearchManager;
    :cond_21
    return-void
.end method

.method signalError()V
    .registers 1

    .prologue
    .line 1035
    return-void
.end method

.method startAsyncQuery()V
    .registers 9

    .prologue
    const/16 v1, 0x3e

    const/4 v2, 0x0

    .line 972
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity;->mAdapter:Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->setLoading(Z)V

    .line 975
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity;->mQueryHandler:Lcom/android/contacts/GroupsListActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/contacts/GroupsListActivity$QueryHandler;->cancelOperation(I)V

    .line 977
    iget v0, p0, Lcom/android/contacts/GroupsListActivity;->mMode:I

    invoke-static {v0}, Lcom/android/contacts/GroupsListActivity;->getGroupsProjection(I)[Ljava/lang/String;

    move-result-object v4

    .line 980
    .local v4, groupsProjection:[Ljava/lang/String;
    iget v0, p0, Lcom/android/contacts/GroupsListActivity;->mMode:I

    sparse-switch v0, :sswitch_data_4e

    .line 1000
    const-string v0, "GroupsListActivity"

    const-string v1, "invalid mode to query"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :goto_20
    return-void

    .line 983
    :sswitch_21
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity;->mQueryHandler:Lcom/android/contacts/GroupsListActivity$QueryHandler;

    sget-object v3, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/contacts/GroupsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/GroupsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 990
    :sswitch_2f
    invoke-virtual {p0}, Lcom/android/contacts/GroupsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "query"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/GroupsListActivity;->mQuery:Ljava/lang/String;

    .line 991
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity;->mQueryHandler:Lcom/android/contacts/GroupsListActivity$QueryHandler;

    iget-object v3, p0, Lcom/android/contacts/GroupsListActivity;->mQuery:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/contacts/GroupsListActivity;->getGroupsFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v5, "system_id IS NULL"

    invoke-static {v4}, Lcom/android/contacts/GroupsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/GroupsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 980
    :sswitch_data_4e
    .sparse-switch
        -0x3ffffff6 -> :sswitch_21
        0x40000032 -> :sswitch_2f
        0x70000005 -> :sswitch_21
    .end sparse-switch
.end method
