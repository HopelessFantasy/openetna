.class public Lcom/lge/favoritecontacts/FavoriteContacts;
.super Landroid/app/Activity;
.source "FavoriteContacts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;,
        Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;,
        Lcom/lge/favoritecontacts/FavoriteContacts$FCTouch;,
        Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;,
        Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;
    }
.end annotation


# static fields
.field private static final CALL_CONTACT:I = 0xbcf

.field private static final EDIT_CONTACT:I = 0xbce

.field private static final EMAIL_CONTACT:I = 0xbd1

.field public static final FAVORITE_ASSIGNMEM:I = 0x7d2

.field public static final FAVORITE_POPUP:I = 0x7d0

.field public static final FAVORITE_PREFS:Ljava/lang/String; = "favorite_contacts_prefs"

.field public static final LANDSCAPE_ORI:I = 0x1

.field private static final MENU_CHANGE_RENDER_TO_GRID:I = 0x2

.field private static final MENU_CHANGE_RENDER_TO_WHEEL:I = 0x3

.field private static final MENU_GRP_ID:I = 0x0

.field private static final MENU_IN_EDITMODE:I = 0x1

.field private static final MSG_CONTACT:I = 0xbd0

.field public static final NO_FAVE_POPUP:I = 0x7d1

.field private static final PHOTO_PICKED_WITH_DATA:I = 0xbcd

.field private static final POPUP_CLOSE_APP:I = 0x68

.field public static final POPUP_RESULT_CALL:I = 0x9c43

.field public static final POPUP_RESULT_EDIT:I = 0x9c42

.field public static final POPUP_RESULT_EMAIL:I = 0x9c46

.field public static final POPUP_RESULT_ERROR:I = 0x9c40

.field public static final POPUP_RESULT_MSG:I = 0x9c44

.field public static final POPUP_RESULT_NOTHING:I = 0x9c41

.field public static final POPUP_RESULT_PHOTO:I = 0x9c45

.field public static final PORTRAIT_ORI:I = 0x0

.field private static final STATEKEY_RENDER:Ljava/lang/String; = "render_flag"

.field private static final STATEKEY_SELECTID:Ljava/lang/String; = "select_id"

.field private static final STATEKEY_STARTPOINT:Ljava/lang/String; = "start_point"

.field public static final SYNCHRONIZING_ACTION:Ljava/lang/String; = "favoriteContacts.synchronizing.action.ALLDIE"


# instance fields
.field private mCheckTimeTask:Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;

.field private mDBListenerCursor:Landroid/database/Cursor;

.field private mDBObserver:Landroid/database/ContentObserver;

.field private mFavoriteContactsView:Lcom/lge/favoritecontacts/FavoriteContactsView;

.field private mGestureDetector:Lcom/lge/favoritecontacts/FavoriteContacts$FCTouch;

.field private mListStartPoint:I

.field private mLoadingDialog:Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;

.field mMenu:Landroid/view/Menu;

.field private mMenuItemChangeToGrid:Landroid/view/MenuItem;

.field private mMenuItemChangeToWheel:Landroid/view/MenuItem;

.field private mMenuItemDoneEditMode:Landroid/view/MenuItem;

.field private mMenuItemEditMode:Landroid/view/MenuItem;

.field private mOrderingThread:Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;

.field private mPhotoList:Lcom/lge/render/PhotoList;

.field private mPhotoMgr:Lcom/lge/render/PhotoMgr;

.field private mPortRenderFlag:I

.field private mRenderer:Lcom/lge/render/EssentialRenderer;

.field private mStartActivityIntent:Landroid/content/Intent;

.field private mbDBChanged:Z

.field private mbExistPopup:Z

.field private mbFavoriteChanged:Z

.field private mbNoContacts:Z

.field private mbNoStarredGroup:Z

.field private mbNoStarredMembers:Z

.field private mbRegisterObserver:Z

.field private mbRunDetailPopup:Z

.field private mbStartActivity:Z

.field private mbStarted:Z

.field private mbSynchronizePopup:Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;

.field private mbSynchronizing:Z

.field private mbWillFinish:Z

.field private final mediaReceiver:Landroid/content/BroadcastReceiver;

.field private miNowOrientation:I

.field private miStartActivityFlag:I

.field private mlSelectContactID:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 91
    iput-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbExistPopup:Z

    .line 93
    iput-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbRunDetailPopup:Z

    .line 97
    iput v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->miNowOrientation:I

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPortRenderFlag:I

    .line 104
    iput v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mListStartPoint:I

    .line 111
    iput-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbStarted:Z

    .line 112
    iput-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbNoContacts:Z

    .line 113
    iput-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbNoStarredGroup:Z

    .line 114
    iput-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbNoStarredMembers:Z

    .line 115
    iput-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbFavoriteChanged:Z

    .line 116
    iput-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbWillFinish:Z

    .line 124
    iput-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbDBChanged:Z

    .line 126
    iput-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbSynchronizing:Z

    .line 130
    new-instance v0, Lcom/lge/favoritecontacts/FavoriteContacts$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lge/favoritecontacts/FavoriteContacts$1;-><init>(Lcom/lge/favoritecontacts/FavoriteContacts;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mDBObserver:Landroid/database/ContentObserver;

    .line 157
    iput-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbRegisterObserver:Z

    .line 159
    iput-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbStartActivity:Z

    .line 163
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mlSelectContactID:J

    .line 170
    new-instance v0, Lcom/lge/favoritecontacts/FavoriteContacts$2;

    invoke-direct {v0, p0}, Lcom/lge/favoritecontacts/FavoriteContacts$2;-><init>(Lcom/lge/favoritecontacts/FavoriteContacts;)V

    iput-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mediaReceiver:Landroid/content/BroadcastReceiver;

    .line 1346
    return-void
.end method

.method static synthetic access$002(Lcom/lge/favoritecontacts/FavoriteContacts;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbDBChanged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lge/favoritecontacts/FavoriteContacts;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mDBListenerCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mCheckTimeTask:Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/lge/favoritecontacts/FavoriteContacts;Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;)Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mCheckTimeTask:Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/lge/favoritecontacts/FavoriteContacts;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->getStarredContactsCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lge/favoritecontacts/FavoriteContacts;Landroid/database/Cursor;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/lge/favoritecontacts/FavoriteContacts;->recreateList(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/lge/favoritecontacts/FavoriteContacts;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->endGSynchronizing()V

    return-void
.end method

.method static synthetic access$1400(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/render/PhotoList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoList:Lcom/lge/render/PhotoList;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/lge/favoritecontacts/FavoriteContacts;Lcom/lge/render/PhotoList;)Lcom/lge/render/PhotoList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoList:Lcom/lge/render/PhotoList;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/lge/favoritecontacts/FavoriteContacts;JJJ)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p6}, Lcom/lge/favoritecontacts/FavoriteContacts;->changeOrder(JJJ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mLoadingDialog:Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lge/favoritecontacts/FavoriteContacts;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mListStartPoint:I

    return v0
.end method

.method static synthetic access$200(Lcom/lge/favoritecontacts/FavoriteContacts;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbSynchronizing:Z

    return v0
.end method

.method static synthetic access$202(Lcom/lge/favoritecontacts/FavoriteContacts;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbSynchronizing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lge/favoritecontacts/FavoriteContacts;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->isGSynchronizing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/lge/favoritecontacts/FavoriteContacts;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->startGSynchronizing()V

    return-void
.end method

.method static synthetic access$500(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/render/PhotoMgr;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoMgr:Lcom/lge/render/PhotoMgr;

    return-object v0
.end method

.method static synthetic access$502(Lcom/lge/favoritecontacts/FavoriteContacts;Lcom/lge/render/PhotoMgr;)Lcom/lge/render/PhotoMgr;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoMgr:Lcom/lge/render/PhotoMgr;

    return-object p1
.end method

.method static synthetic access$600(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/favoritecontacts/FavoriteContacts$FCTouch;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mGestureDetector:Lcom/lge/favoritecontacts/FavoriteContacts$FCTouch;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/render/EssentialRenderer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mRenderer:Lcom/lge/render/EssentialRenderer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/favoritecontacts/FavoriteContacts;)Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbSynchronizePopup:Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;

    return-object v0
.end method

.method private changeOrder(JJJ)V
    .registers 14
    .parameter "uid"
    .parameter "GMid"
    .parameter "dstOrder"

    .prologue
    const/4 v5, 0x0

    const-string v6, "Favorite Contacts"

    const-string v4, "/"

    .line 718
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 720
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "member_position"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 721
    const-string v2, "Favorite Contacts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "order="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "groupmembership"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 724
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "Favorite Contacts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  === uri  is  ===  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 726
    return-void
.end method

.method private createList(Landroid/database/Cursor;)V
    .registers 4
    .parameter "cursor"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mLoadingDialog:Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;->setMax(I)V

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbExistPopup:Z

    .line 273
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mLoadingDialog:Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;->show()V

    .line 274
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoMgr:Lcom/lge/render/PhotoMgr;

    if-eqz v0, :cond_1e

    .line 275
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoMgr:Lcom/lge/render/PhotoMgr;

    invoke-virtual {v0}, Lcom/lge/render/PhotoMgr;->getDataLoader()Lcom/lge/favoritecontacts/DataLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/DataLoader;->destroyDataLoader()V

    .line 278
    :cond_1e
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mOrderingThread:Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;

    if-eqz v0, :cond_2a

    .line 279
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mOrderingThread:Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->onDestroy()V

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mOrderingThread:Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;

    .line 283
    :cond_2a
    new-instance v0, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;

    invoke-direct {v0, p0}, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;-><init>(Lcom/lge/favoritecontacts/FavoriteContacts;)V

    iput-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mOrderingThread:Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;

    .line 284
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mOrderingThread:Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;

    invoke-virtual {v0, p1}, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->setCursor(Landroid/database/Cursor;)V

    .line 286
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mOrderingThread:Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->start()V

    .line 287
    return-void
.end method

.method private destroyOrderingThread()V
    .registers 2

    .prologue
    .line 780
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mOrderingThread:Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;

    if-eqz v0, :cond_c

    .line 781
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mOrderingThread:Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->onDestroy()V

    .line 782
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mOrderingThread:Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;

    .line 784
    :cond_c
    return-void
.end method

.method private endGSynchronizing()V
    .registers 2

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbSynchronizing:Z

    if-eqz v0, :cond_c

    .line 373
    new-instance v0, Lcom/lge/favoritecontacts/FavoriteContacts$4;

    invoke-direct {v0, p0}, Lcom/lge/favoritecontacts/FavoriteContacts$4;-><init>(Lcom/lge/favoritecontacts/FavoriteContacts;)V

    invoke-virtual {p0, v0}, Lcom/lge/favoritecontacts/FavoriteContacts;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 400
    :cond_c
    return-void
.end method

.method private getStarredContactsCursor()Landroid/database/Cursor;
    .registers 12

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    const-string v10, "_id"

    .line 625
    invoke-direct {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->registDBObserver()V

    .line 627
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v10, v2, v8

    const-string v3, "system_id"

    aput-object v3, v2, v7

    const-string v3, "system_id IS NULL"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 632
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_5a

    .line 633
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2f

    .line 634
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 635
    iput-boolean v7, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbNoContacts:Z

    move-object v0, v6

    .line 694
    :goto_2e
    return-object v0

    .line 638
    :cond_2f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 639
    iput-boolean v8, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbNoContacts:Z

    .line 648
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v10, v2, v8

    const-string v3, "name"

    aput-object v3, v2, v7

    const-string v3, "name = \'Starred in Android\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 653
    if-eqz v6, :cond_a4

    .line 654
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_61

    .line 655
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 656
    iput-boolean v7, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbNoStarredGroup:Z

    move-object v0, v6

    .line 657
    goto :goto_2e

    .line 642
    :cond_5a
    iput-boolean v7, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbWillFinish:Z

    .line 643
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->finish()V

    move-object v0, v4

    .line 644
    goto :goto_2e

    .line 660
    :cond_61
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 661
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 662
    iput-boolean v8, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbNoStarredGroup:Z

    .line 676
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$GroupMembership;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v2, v8

    const-string v3, "person"

    aput-object v3, v2, v7

    const-string v3, "member_position"

    aput-object v3, v2, v9

    const/4 v3, 0x3

    const-string v5, "_id"

    aput-object v10, v2, v3

    const-string v3, "name=\'Starred in Android\'"

    const-string v5, "member_position"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 684
    if-eqz v6, :cond_af

    .line 685
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_ab

    .line 686
    iput-boolean v7, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbNoStarredMembers:Z

    move-object v0, v6

    .line 687
    goto :goto_2e

    .line 664
    :cond_9a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 665
    iput-boolean v7, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbWillFinish:Z

    .line 666
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->finish()V

    move-object v0, v6

    .line 667
    goto :goto_2e

    .line 670
    :cond_a4
    iput-boolean v7, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbWillFinish:Z

    .line 671
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->finish()V

    move-object v0, v4

    .line 672
    goto :goto_2e

    .line 689
    :cond_ab
    iput-boolean v8, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbNoStarredMembers:Z

    move-object v0, v6

    .line 690
    goto :goto_2e

    .line 692
    :cond_af
    iput-boolean v7, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbWillFinish:Z

    .line 693
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->finish()V

    move-object v0, v4

    .line 694
    goto/16 :goto_2e
.end method

.method private isGSynchronizing()Z
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 304
    const/4 v7, 0x0

    .line 306
    .local v7, isSyncing:Z
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Sync$Active;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 308
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1b

    .line 309
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 310
    const/4 v7, 0x1

    .line 312
    :cond_18
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 315
    :cond_1b
    return v7
.end method

.method private recreateList(Landroid/database/Cursor;)V
    .registers 6
    .parameter "cursor"

    .prologue
    .line 290
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mRenderer:Lcom/lge/render/EssentialRenderer;

    invoke-virtual {v3}, Lcom/lge/render/EssentialRenderer;->getRenderFlag()I

    move-result v1

    .line 291
    .local v1, flag:I
    const/16 v3, 0x8

    if-ne v1, v3, :cond_10

    .line 292
    invoke-static {}, Lcom/lge/render/EffectRenderer;->getRenderFlag()I

    move-result v3

    and-int/lit16 v1, v3, 0xff

    .line 294
    :cond_10
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mRenderer:Lcom/lge/render/EssentialRenderer;

    invoke-virtual {v3, v1}, Lcom/lge/render/EssentialRenderer;->getRenderAtt(I)Lcom/lge/render/RendererAttribute;

    move-result-object v2

    .line 295
    .local v2, ra:Lcom/lge/render/RendererAttribute;
    invoke-interface {v2}, Lcom/lge/render/RendererAttribute;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, Tag:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mRenderer:Lcom/lge/render/EssentialRenderer;

    invoke-virtual {v3, v0}, Lcom/lge/render/EssentialRenderer;->setNoRender(Ljava/lang/String;)V

    .line 297
    invoke-direct {p0, p1}, Lcom/lge/favoritecontacts/FavoriteContacts;->createList(Landroid/database/Cursor;)V

    .line 298
    return-void
.end method

.method private registDBObserver()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 700
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mDBListenerCursor:Landroid/database/Cursor;

    if-nez v0, :cond_27

    .line 701
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$GroupMembership;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "name=\'Starred in Android\'"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mDBListenerCursor:Landroid/database/Cursor;

    .line 707
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mDBListenerCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_27

    .line 709
    iget-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbRegisterObserver:Z

    if-nez v0, :cond_27

    .line 710
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbRegisterObserver:Z

    .line 711
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mDBListenerCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mDBObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 715
    :cond_27
    return-void
.end method

.method private restoreRenderStatus()V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const-string v7, "render_flag"

    .line 763
    const/4 v1, 0x0

    .line 764
    .local v1, mode:I
    const-string v2, "favorite_contacts_prefs"

    invoke-virtual {p0, v2, v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 767
    .local v0, Savepref:Landroid/content/SharedPreferences;
    const-string v2, "Favorite Contacts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ==== saved Renderer is ====  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "render_flag"

    invoke-interface {v0, v7, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const-string v2, "render_flag"

    invoke-interface {v0, v7, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPortRenderFlag:I

    .line 771
    iget v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPortRenderFlag:I

    if-eq v2, v6, :cond_3c

    iget v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPortRenderFlag:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3c

    .line 773
    iput v6, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPortRenderFlag:I

    .line 775
    :cond_3c
    const-string v2, "start_point"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mListStartPoint:I

    .line 776
    const-string v2, "select_id"

    const-wide/16 v3, -0x1

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mlSelectContactID:J

    .line 777
    return-void
.end method

.method private saveRenderStatus()V
    .registers 11

    .prologue
    const-string v9, "select_id"

    .line 729
    iget-object v6, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoMgr:Lcom/lge/render/PhotoMgr;

    if-eqz v6, :cond_72

    iget-object v6, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoList:Lcom/lge/render/PhotoList;

    if-eqz v6, :cond_72

    iget-object v6, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mRenderer:Lcom/lge/render/EssentialRenderer;

    if-eqz v6, :cond_72

    .line 730
    const/4 v3, 0x0

    .line 731
    .local v3, mode:I
    const-string v6, "favorite_contacts_prefs"

    invoke-virtual {p0, v6, v3}, Lcom/lge/favoritecontacts/FavoriteContacts;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 733
    .local v5, willsavepref:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 735
    .local v1, editer:Landroid/content/SharedPreferences$Editor;
    const-string v6, "Favorite Contacts"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ==== saving  Renderer is ====  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPortRenderFlag:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const-string v6, "render_flag"

    iget v7, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPortRenderFlag:I

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 739
    iget-object v6, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v6}, Lcom/lge/render/PhotoList;->getMovingCount()I

    move-result v4

    .line 740
    .local v4, movingCount:I
    iget v6, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->miNowOrientation:I

    if-nez v6, :cond_59

    iget v6, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPortRenderFlag:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_59

    .line 742
    iget-object v6, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v6}, Lcom/lge/render/PhotoList;->getCount()I

    move-result v0

    .line 743
    .local v0, count:I
    iget-object v6, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoMgr:Lcom/lge/render/PhotoMgr;

    invoke-virtual {v6}, Lcom/lge/render/PhotoMgr;->getCenterIdx()I

    move-result v6

    sub-int/2addr v4, v6

    .line 745
    if-gez v4, :cond_59

    .line 746
    add-int/2addr v4, v0

    .line 749
    .end local v0           #count:I
    :cond_59
    const-string v6, "start_point"

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 751
    iget-object v6, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoMgr:Lcom/lge/render/PhotoMgr;

    invoke-virtual {v6}, Lcom/lge/render/PhotoMgr;->getSelectedItem()Lcom/lge/render/FCPhotoItem;

    move-result-object v2

    .line 752
    .local v2, item:Lcom/lge/render/FCPhotoItem;
    if-eqz v2, :cond_73

    .line 753
    const-string v6, "select_id"

    invoke-virtual {v2}, Lcom/lge/render/FCPhotoItem;->getUID()J

    move-result-wide v6

    invoke-interface {v1, v9, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 758
    :goto_6f
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 760
    .end local v1           #editer:Landroid/content/SharedPreferences$Editor;
    .end local v2           #item:Lcom/lge/render/FCPhotoItem;
    .end local v3           #mode:I
    .end local v4           #movingCount:I
    .end local v5           #willsavepref:Landroid/content/SharedPreferences;
    :cond_72
    return-void

    .line 755
    .restart local v1       #editer:Landroid/content/SharedPreferences$Editor;
    .restart local v2       #item:Lcom/lge/render/FCPhotoItem;
    .restart local v3       #mode:I
    .restart local v4       #movingCount:I
    .restart local v5       #willsavepref:Landroid/content/SharedPreferences;
    :cond_73
    const-string v6, "select_id"

    iget-wide v6, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mlSelectContactID:J

    invoke-interface {v1, v9, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_6f
.end method

.method private setRenderAtt()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x4

    .line 608
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mRenderer:Lcom/lge/render/EssentialRenderer;

    iget v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->miNowOrientation:I

    invoke-virtual {v0, v1}, Lcom/lge/render/EssentialRenderer;->changedOrientation(I)V

    .line 609
    iget v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->miNowOrientation:I

    if-nez v0, :cond_15

    .line 610
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mRenderer:Lcom/lge/render/EssentialRenderer;

    iget v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPortRenderFlag:I

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/EssentialRenderer;->prepareRendererAtt(II)V

    .line 621
    :goto_14
    return-void

    .line 612
    :cond_15
    iget v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->miNowOrientation:I

    if-ne v0, v3, :cond_1f

    .line 613
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mRenderer:Lcom/lge/render/EssentialRenderer;

    invoke-virtual {v0, v2, v2}, Lcom/lge/render/EssentialRenderer;->prepareRendererAtt(II)V

    goto :goto_14

    .line 617
    :cond_1f
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mRenderer:Lcom/lge/render/EssentialRenderer;

    invoke-virtual {v0, v3, v2}, Lcom/lge/render/EssentialRenderer;->prepareRendererAtt(II)V

    goto :goto_14
.end method

.method private startGSynchronizing()V
    .registers 10

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 322
    iget-boolean v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbSynchronizing:Z

    if-nez v3, :cond_90

    .line 323
    iput-boolean v7, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbSynchronizing:Z

    .line 325
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mOrderingThread:Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;

    if-eqz v3, :cond_14

    .line 326
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mOrderingThread:Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;

    invoke-virtual {v3}, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->onDestroy()V

    .line 327
    iput-object v6, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mOrderingThread:Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;

    .line 330
    :cond_14
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mLoadingDialog:Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;

    invoke-virtual {v3}, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 331
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mLoadingDialog:Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;

    invoke-virtual {v3}, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;->dismiss()V

    .line 333
    :cond_21
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoMgr:Lcom/lge/render/PhotoMgr;

    if-eqz v3, :cond_2e

    .line 335
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoMgr:Lcom/lge/render/PhotoMgr;

    invoke-virtual {v3}, Lcom/lge/render/PhotoMgr;->getDataLoader()Lcom/lge/favoritecontacts/DataLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/favoritecontacts/DataLoader;->flushLoadingEvent()V

    .line 338
    :cond_2e
    invoke-direct {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->saveRenderStatus()V

    .line 339
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mRenderer:Lcom/lge/render/EssentialRenderer;

    invoke-virtual {v3}, Lcom/lge/render/EssentialRenderer;->getRenderFlag()I

    move-result v1

    .line 340
    .local v1, flag:I
    const/16 v3, 0x8

    if-ne v1, v3, :cond_41

    .line 341
    invoke-static {}, Lcom/lge/render/EffectRenderer;->getRenderFlag()I

    move-result v3

    and-int/lit16 v1, v3, 0xff

    .line 343
    :cond_41
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mRenderer:Lcom/lge/render/EssentialRenderer;

    invoke-virtual {v3, v1}, Lcom/lge/render/EssentialRenderer;->getRenderAtt(I)Lcom/lge/render/RendererAttribute;

    move-result-object v2

    .line 344
    .local v2, ra:Lcom/lge/render/RendererAttribute;
    invoke-interface {v2}, Lcom/lge/render/RendererAttribute;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, Tag:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mRenderer:Lcom/lge/render/EssentialRenderer;

    invoke-virtual {v3, v0}, Lcom/lge/render/EssentialRenderer;->setNoRender(Ljava/lang/String;)V

    .line 347
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbSynchronizePopup:Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;

    if-nez v3, :cond_79

    .line 348
    new-instance v3, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;

    invoke-direct {v3, p0, p0}, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;-><init>(Lcom/lge/favoritecontacts/FavoriteContacts;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbSynchronizePopup:Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;

    .line 349
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbSynchronizePopup:Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;

    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050018

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbSynchronizePopup:Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;

    invoke-virtual {v3, v7}, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;->setIndeterminate(Z)V

    .line 353
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbSynchronizePopup:Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;

    invoke-virtual {v3}, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 358
    :cond_79
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbSynchronizePopup:Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;

    invoke-virtual {v3}, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;->show()V

    .line 360
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mCheckTimeTask:Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;

    if-eqz v3, :cond_84

    .line 361
    iput-object v6, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mCheckTimeTask:Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;

    .line 363
    :cond_84
    new-instance v3, Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;

    invoke-direct {v3, p0, v6}, Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;-><init>(Lcom/lge/favoritecontacts/FavoriteContacts;Lcom/lge/favoritecontacts/FavoriteContacts$1;)V

    iput-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mCheckTimeTask:Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;

    .line 364
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mCheckTimeTask:Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;

    invoke-virtual {v3}, Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;->scheduleTask()V

    .line 366
    .end local v0           #Tag:Ljava/lang/String;
    .end local v1           #flag:I
    .end local v2           #ra:Lcom/lge/render/RendererAttribute;
    :cond_90
    return-void
.end method


# virtual methods
.method public EraseFavoriteContact(J)I
    .registers 8
    .parameter "personID"

    .prologue
    const/4 v4, 0x0

    .line 552
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 553
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "starred"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 554
    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 555
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public changeOrder()V
    .registers 13

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 584
    invoke-static {}, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->getAutoSyncStatus()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 585
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->pauseAutoSync_TwoMins(Landroid/content/ContentResolver;)V

    .line 588
    :cond_10
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v0}, Lcom/lge/render/PhotoList;->getSeleData()[J

    move-result-object v8

    .line 589
    .local v8, seleData:[J
    aget-wide v1, v8, v9

    aget-wide v3, v8, v11

    aget-wide v5, v8, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/lge/favoritecontacts/FavoriteContacts;->changeOrder(JJJ)V

    .line 591
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v0}, Lcom/lge/render/PhotoList;->getChangeData()[J

    move-result-object v7

    .line 592
    .local v7, changeData:[J
    :goto_26
    aget-wide v0, v7, v9

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3f

    .line 593
    aget-wide v1, v7, v9

    aget-wide v3, v7, v11

    aget-wide v5, v7, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/lge/favoritecontacts/FavoriteContacts;->changeOrder(JJJ)V

    .line 594
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v0}, Lcom/lge/render/PhotoList;->getChangeData()[J

    move-result-object v7

    goto :goto_26

    .line 596
    :cond_3f
    return-void
.end method

.method public checkFavoriteContactsState()Z
    .registers 2

    .prologue
    .line 562
    iget-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbNoContacts:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbNoStarredMembers:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbNoStarredGroup:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public endLoading()V
    .registers 4

    .prologue
    .line 414
    const-string v0, "FavoriteContacts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ====  End Loading ===== DataLoader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mLoadingDialog:Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;

    invoke-virtual {v2}, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;->FCisShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mOrderingThread:Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;

    if-eqz v0, :cond_2a

    .line 417
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mOrderingThread:Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->onDestroy()V

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mOrderingThread:Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;

    .line 421
    :cond_2a
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mLoadingDialog:Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;->FCisShowing()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 422
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mLoadingDialog:Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;->dismiss()V

    .line 423
    invoke-direct {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->setRenderAtt()V

    .line 430
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mRenderer:Lcom/lge/render/EssentialRenderer;

    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoMgr:Lcom/lge/render/PhotoMgr;

    invoke-virtual {v0, v1}, Lcom/lge/render/EssentialRenderer;->completeRenderAtt(Lcom/lge/render/PhotoMgr;)V

    .line 432
    :cond_41
    return-void
.end method

.method public getFavoriteContactsView()Lcom/lge/favoritecontacts/FavoriteContactsView;
    .registers 2

    .prologue
    .line 599
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mFavoriteContactsView:Lcom/lge/favoritecontacts/FavoriteContactsView;

    return-object v0
.end method

.method public getOrientaion()I
    .registers 2

    .prologue
    .line 406
    iget v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->miNowOrientation:I

    return v0
.end method

.method public isPreparedOtherActi()Z
    .registers 2

    .prologue
    .line 540
    iget-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbStartActivity:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 16
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v10, 0x4b

    const/4 v9, 0x1

    const/4 v7, 0x0

    const-string v11, "FavoriteContacts"

    const-string v8, "Favorite Contacts"

    .line 1046
    const-string v6, "Favorite Contacts"

    const-string v6, "  ==  On onActivityResult =="

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    iget-boolean v6, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbSynchronizing:Z

    if-nez v6, :cond_1c

    .line 1050
    sparse-switch p1, :sswitch_data_116

    .line 1168
    iput-boolean v7, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbNoContacts:Z

    .line 1169
    iput-boolean v7, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbNoStarredMembers:Z

    .line 1170
    iput-boolean v9, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbFavoriteChanged:Z

    .line 1174
    :cond_1c
    :goto_1c
    :pswitch_1c
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1175
    return-void

    .line 1052
    :sswitch_20
    packed-switch p2, :pswitch_data_12c

    goto :goto_1c

    .line 1055
    :pswitch_24
    iput-boolean v7, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbFavoriteChanged:Z

    .line 1056
    iput-boolean v7, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbNoContacts:Z

    .line 1057
    iput-boolean v7, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbNoStarredMembers:Z

    .line 1058
    iput-boolean v9, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbDBChanged:Z

    goto :goto_1c

    .line 1065
    :pswitch_2d
    if-nez p3, :cond_3a

    .line 1066
    iget-boolean v6, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbStarted:Z

    if-eqz v6, :cond_1c

    .line 1067
    iput-boolean v7, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbNoContacts:Z

    .line 1068
    iput-boolean v7, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbNoStarredMembers:Z

    .line 1069
    iput-boolean v9, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbFavoriteChanged:Z

    goto :goto_1c

    .line 1072
    :cond_3a
    iget-object v6, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoMgr:Lcom/lge/render/PhotoMgr;

    invoke-virtual {v6}, Lcom/lge/render/PhotoMgr;->getSelectedItem()Lcom/lge/render/FCPhotoItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/render/FCPhotoItem;->getUID()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mlSelectContactID:J

    .line 1073
    const/16 v6, 0xbcd

    invoke-virtual {p0, p3, v6}, Lcom/lge/favoritecontacts/FavoriteContacts;->prepareStartApp(Landroid/content/Intent;I)V

    goto :goto_1c

    .line 1079
    :pswitch_4c
    const/16 v6, 0xbce

    invoke-virtual {p0, p3, v6}, Lcom/lge/favoritecontacts/FavoriteContacts;->prepareStartApp(Landroid/content/Intent;I)V

    goto :goto_1c

    .line 1083
    :pswitch_52
    const/16 v6, 0xbcf

    invoke-virtual {p0, p3, v6}, Lcom/lge/favoritecontacts/FavoriteContacts;->prepareStartApp(Landroid/content/Intent;I)V

    goto :goto_1c

    .line 1087
    :pswitch_58
    const/16 v6, 0xbd0

    invoke-virtual {p0, p3, v6}, Lcom/lge/favoritecontacts/FavoriteContacts;->prepareStartApp(Landroid/content/Intent;I)V

    goto :goto_1c

    .line 1091
    :pswitch_5e
    const/16 v6, 0xbd1

    invoke-virtual {p0, p3, v6}, Lcom/lge/favoritecontacts/FavoriteContacts;->prepareStartApp(Landroid/content/Intent;I)V

    goto :goto_1c

    .line 1098
    :sswitch_64
    if-eqz p3, :cond_1c

    .line 1099
    const-string v6, "FavoriteContacts"

    const-string v6, " ==== Photo Picked Up ==== "

    invoke-static {v11, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1101
    .local v2, extras:Landroid/os/Bundle;
    sget-object v6, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v7, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mlSelectContactID:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1103
    .local v3, personUri:Landroid/net/Uri;
    if-eqz v2, :cond_a1

    .line 1104
    const-string v6, "FavoriteContacts"

    const-string v6, " ==== Photo Picked Up Exist Data ==== "

    invoke-static {v11, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    const-string v6, "data"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1107
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_a5

    .line 1108
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1109
    .local v5, stream:Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v6, v10, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1110
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-static {v6, v3, v7}, Landroid/provider/Contacts$People;->setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B)V

    .line 1130
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v5           #stream:Ljava/io/ByteArrayOutputStream;
    :cond_a1
    :goto_a1
    iput-boolean v9, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbFavoriteChanged:Z

    goto/16 :goto_1c

    .line 1114
    .restart local v0       #b:Landroid/graphics/Bitmap;
    :cond_a5
    const-string v6, "drm_file"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1115
    .local v1, drmFilename:Ljava/lang/String;
    if-eqz v1, :cond_a1

    .line 1116
    const-string v6, "drm_data"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 1117
    .local v4, photo:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_a1

    .line 1118
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1119
    .restart local v5       #stream:Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v4, v6, v10, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1122
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-static {v6, v3, v1, v7}, Landroid/provider/Contacts$People;->setDrmPhotoDataWithFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[B)V

    goto :goto_a1

    .line 1137
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #drmFilename:Ljava/lang/String;
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v3           #personUri:Landroid/net/Uri;
    .end local v4           #photo:Landroid/graphics/Bitmap;
    .end local v5           #stream:Ljava/io/ByteArrayOutputStream;
    :sswitch_cd
    iget-boolean v6, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbStarted:Z

    if-eqz v6, :cond_1c

    .line 1138
    iput-boolean v7, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbNoContacts:Z

    .line 1139
    iput-boolean v7, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbNoStarredMembers:Z

    .line 1140
    iput-boolean v9, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbFavoriteChanged:Z

    goto/16 :goto_1c

    .line 1147
    :sswitch_d9
    const/16 v6, -0xc8

    if-ne p2, v6, :cond_e4

    .line 1148
    iput-boolean v9, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbWillFinish:Z

    .line 1149
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->finish()V

    goto/16 :goto_1c

    .line 1150
    :cond_e4
    const/16 v6, -0x12c

    if-ne p2, v6, :cond_f1

    .line 1151
    const-string v6, "Favorite Contacts"

    const-string v6, " ===  Edit Contacts Result =====  Starred  Nothing"

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 1154
    :cond_f1
    const/16 v6, -0x190

    if-ne p2, v6, :cond_fe

    .line 1155
    const-string v6, "Favorite Contacts"

    const-string v6, " ===  Edit Contacts Result =====  Starred  Unknown"

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 1158
    :cond_fe
    iget-boolean v6, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbStarted:Z

    if-eqz v6, :cond_1c

    const/16 v6, 0x7d2

    if-ne p2, v6, :cond_1c

    .line 1159
    const-string v6, "Favorite Contacts"

    const-string v6, " ===  Edit Contacts Result =====  Starred  Chagne"

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    iput-boolean v7, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbNoContacts:Z

    .line 1162
    iput-boolean v7, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbNoStarredMembers:Z

    .line 1163
    iput-boolean v9, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbFavoriteChanged:Z

    goto/16 :goto_1c

    .line 1050
    nop

    :sswitch_data_116
    .sparse-switch
        0x7d0 -> :sswitch_20
        0x7d1 -> :sswitch_d9
        0x7d2 -> :sswitch_cd
        0xbcd -> :sswitch_64
        0xbce -> :sswitch_cd
    .end sparse-switch

    .line 1052
    :pswitch_data_12c
    .packed-switch 0x9c40
        :pswitch_24
        :pswitch_1c
        :pswitch_4c
        :pswitch_52
        :pswitch_58
        :pswitch_2d
        :pswitch_5e
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 186
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 188
    new-instance v3, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;

    invoke-direct {v3, p0, p0}, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;-><init>(Lcom/lge/favoritecontacts/FavoriteContacts;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mLoadingDialog:Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;

    .line 189
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mLoadingDialog:Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;

    invoke-virtual {v3, p0}, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 191
    invoke-virtual {p0, v5}, Lcom/lge/favoritecontacts/FavoriteContacts;->requestWindowFeature(I)Z

    .line 194
    invoke-static {p0}, Lcom/lge/render/FCImageFactory;->setImage(Landroid/content/Context;)V

    .line 197
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 198
    .local v2, windmgr:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getOrientation()I

    move-result v3

    iput v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->miNowOrientation:I

    .line 202
    invoke-direct {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->restoreRenderStatus()V

    .line 204
    iget v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->miNowOrientation:I

    if-nez v3, :cond_4d

    .line 205
    iget v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPortRenderFlag:I

    packed-switch v3, :pswitch_data_a4

    .line 213
    const-string v0, "GRID_RENDERER"

    .line 220
    .local v0, Tag:Ljava/lang/String;
    :goto_32
    new-instance v3, Lcom/lge/render/EssentialRenderer;

    invoke-direct {v3, p0}, Lcom/lge/render/EssentialRenderer;-><init>(Lcom/lge/favoritecontacts/FavoriteContacts;)V

    iput-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mRenderer:Lcom/lge/render/EssentialRenderer;

    .line 221
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mRenderer:Lcom/lge/render/EssentialRenderer;

    invoke-virtual {v3, v0}, Lcom/lge/render/EssentialRenderer;->setNoRender(Ljava/lang/String;)V

    .line 223
    invoke-direct {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->getStarredContactsCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 224
    .local v1, cursor:Landroid/database/Cursor;
    iget-boolean v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbWillFinish:Z

    if-eqz v3, :cond_57

    .line 258
    :cond_46
    :goto_46
    return-void

    .line 207
    .end local v0           #Tag:Ljava/lang/String;
    .end local v1           #cursor:Landroid/database/Cursor;
    :pswitch_47
    const-string v0, "GRID_RENDERER"

    .line 208
    .restart local v0       #Tag:Ljava/lang/String;
    goto :goto_32

    .line 210
    .end local v0           #Tag:Ljava/lang/String;
    :pswitch_4a
    const-string v0, "WHEEL_RENDERER"

    .line 211
    .restart local v0       #Tag:Ljava/lang/String;
    goto :goto_32

    .line 216
    .end local v0           #Tag:Ljava/lang/String;
    :cond_4d
    iget v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->miNowOrientation:I

    if-ne v3, v5, :cond_54

    .line 217
    const-string v0, "LAND_RENDERER"

    .restart local v0       #Tag:Ljava/lang/String;
    goto :goto_32

    .line 219
    .end local v0           #Tag:Ljava/lang/String;
    :cond_54
    const-string v0, "GRID_RENDERER"

    .restart local v0       #Tag:Ljava/lang/String;
    goto :goto_32

    .line 227
    .restart local v1       #cursor:Landroid/database/Cursor;
    :cond_57
    const v3, 0x7f030001

    invoke-virtual {p0, v3}, Lcom/lge/favoritecontacts/FavoriteContacts;->setContentView(I)V

    .line 228
    const v3, 0x7f07000d

    invoke-virtual {p0, v3}, Lcom/lge/favoritecontacts/FavoriteContacts;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lge/favoritecontacts/FavoriteContactsView;

    iput-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mFavoriteContactsView:Lcom/lge/favoritecontacts/FavoriteContactsView;

    .line 230
    invoke-direct {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->isGSynchronizing()Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 231
    invoke-direct {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->startGSynchronizing()V

    .line 237
    :goto_71
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mFavoriteContactsView:Lcom/lge/favoritecontacts/FavoriteContactsView;

    iget-object v4, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mRenderer:Lcom/lge/render/EssentialRenderer;

    invoke-virtual {v3, v4}, Lcom/lge/favoritecontacts/FavoriteContactsView;->setRenderer(Lcom/lge/render/EssentialRenderer;)V

    .line 239
    new-instance v3, Lcom/lge/favoritecontacts/FavoriteContacts$FCTouch;

    iget-object v4, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mRenderer:Lcom/lge/render/EssentialRenderer;

    invoke-direct {v3, p0, v4}, Lcom/lge/favoritecontacts/FavoriteContacts$FCTouch;-><init>(Lcom/lge/favoritecontacts/FavoriteContacts;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mGestureDetector:Lcom/lge/favoritecontacts/FavoriteContacts$FCTouch;

    .line 240
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mGestureDetector:Lcom/lge/favoritecontacts/FavoriteContacts$FCTouch;

    invoke-virtual {v3, v5}, Lcom/lge/favoritecontacts/FavoriteContacts$FCTouch;->setIsLongpressEnabled(Z)V

    .line 242
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mFavoriteContactsView:Lcom/lge/favoritecontacts/FavoriteContactsView;

    new-instance v4, Lcom/lge/favoritecontacts/FavoriteContacts$3;

    invoke-direct {v4, p0}, Lcom/lge/favoritecontacts/FavoriteContacts$3;-><init>(Lcom/lge/favoritecontacts/FavoriteContacts;)V

    invoke-virtual {v3, v4}, Lcom/lge/favoritecontacts/FavoriteContactsView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 253
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->checkFavoriteContactsState()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 254
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mLoadingDialog:Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;

    invoke-virtual {v3}, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;->dismiss()V

    .line 256
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->popupNoFaveContactState()V

    goto :goto_46

    .line 235
    :cond_9f
    invoke-direct {p0, v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->createList(Landroid/database/Cursor;)V

    goto :goto_71

    .line 205
    nop

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_47
        :pswitch_4a
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 976
    packed-switch p1, :pswitch_data_48

    .line 998
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 978
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Notification"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f05000c

    invoke-virtual {p0, v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f05000a

    invoke-virtual {p0, v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lge/favoritecontacts/FavoriteContacts$6;

    invoke-direct {v2, p0}, Lcom/lge/favoritecontacts/FavoriteContacts$6;-><init>(Lcom/lge/favoritecontacts/FavoriteContacts;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {p0, v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lge/favoritecontacts/FavoriteContacts$5;

    invoke-direct {v2, p0}, Lcom/lge/favoritecontacts/FavoriteContacts$5;-><init>(Lcom/lge/favoritecontacts/FavoriteContacts;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_4

    .line 976
    nop

    :pswitch_data_48
    .packed-switch 0x68
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const v4, 0x7f050004

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1015
    const-string v0, "Favorite Contacts"

    const-string v1, "  ==  On onCreateOptionsMenu =="

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1017
    const v0, 0x7f050002

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02001f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemEditMode:Landroid/view/MenuItem;

    .line 1020
    const v0, 0x7f050003

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemDoneEditMode:Landroid/view/MenuItem;

    .line 1023
    iget v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->miNowOrientation:I

    if-nez v0, :cond_51

    .line 1024
    const/4 v0, 0x2

    invoke-interface {p1, v2, v0, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemChangeToGrid:Landroid/view/MenuItem;

    .line 1026
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemChangeToGrid:Landroid/view/MenuItem;

    const v1, 0x7f020020

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1027
    const/4 v0, 0x3

    invoke-interface {p1, v2, v0, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemChangeToWheel:Landroid/view/MenuItem;

    .line 1029
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemChangeToWheel:Landroid/view/MenuItem;

    const v1, 0x7f020021

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1032
    :cond_51
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenu:Landroid/view/Menu;

    .line 1033
    return v3
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 816
    invoke-direct {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->destroyOrderingThread()V

    .line 818
    const-string v0, "Favorite Contacts"

    const-string v1, "  ==  On Destroy =="

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mLoadingDialog:Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;->FCisShowing()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 821
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mLoadingDialog:Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;->dismiss()V

    .line 824
    :cond_1e
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbSynchronizePopup:Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbSynchronizePopup:Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;->FCisShowing()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 825
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbSynchronizePopup:Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;->dismiss()V

    .line 828
    :cond_35
    iget-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbSynchronizing:Z

    if-eqz v0, :cond_56

    .line 829
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbSynchronizePopup:Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 830
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbSynchronizePopup:Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgressDialog;->dismiss()V

    .line 832
    :cond_46
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mCheckTimeTask:Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;

    if-eqz v0, :cond_4f

    .line 833
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mCheckTimeTask:Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;->stopScheduleTask()V

    .line 835
    :cond_4f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mCheckTimeTask:Lcom/lge/favoritecontacts/FavoriteContacts$FCGSynchronizeCheckTimeTask;

    .line 836
    iput-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbDBChanged:Z

    .line 837
    iput-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbSynchronizing:Z

    .line 840
    :cond_56
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoMgr:Lcom/lge/render/PhotoMgr;

    if-eqz v0, :cond_66

    .line 841
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoMgr:Lcom/lge/render/PhotoMgr;

    invoke-virtual {v0}, Lcom/lge/render/PhotoMgr;->getDataLoader()Lcom/lge/favoritecontacts/DataLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/DataLoader;->destroyDataLoader()V

    .line 842
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 845
    :cond_66
    iget-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbRegisterObserver:Z

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mDBListenerCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_77

    .line 846
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mDBListenerCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mDBObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 847
    iput-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbRegisterObserver:Z

    .line 850
    :cond_77
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mDBListenerCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_80

    .line 851
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mDBListenerCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 852
    :cond_80
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 853
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialogInterface"

    .prologue
    .line 1180
    const-string v0, "Favorite Contacts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ===  onDismiss ===== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbExistPopup:Z

    .line 1183
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 798
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1c

    .line 799
    iget-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbExistPopup:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbSynchronizing:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mRenderer:Lcom/lge/render/EssentialRenderer;

    invoke-virtual {v0}, Lcom/lge/render/EssentialRenderer;->getRenderMode()I

    move-result v0

    const/high16 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 801
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mRenderer:Lcom/lge/render/EssentialRenderer;

    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lge/render/EssentialRenderer;->setRenderMode(I)V

    .line 809
    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0

    .line 805
    :cond_1e
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1d
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/high16 v4, 0x1

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 949
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_48

    :goto_c
    move v0, v2

    .line 970
    :goto_d
    return v0

    .line 951
    :pswitch_e
    iput v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPortRenderFlag:I

    .line 952
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mRenderer:Lcom/lge/render/EssentialRenderer;

    invoke-virtual {v0, v1}, Lcom/lge/render/EssentialRenderer;->requestchangedRender(I)V

    .line 953
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoMgr:Lcom/lge/render/PhotoMgr;

    invoke-virtual {v0}, Lcom/lge/render/PhotoMgr;->getDataLoader()Lcom/lge/favoritecontacts/DataLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/DataLoader;->resumeLoad()V

    goto :goto_c

    .line 956
    :pswitch_1f
    iput v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPortRenderFlag:I

    .line 957
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mRenderer:Lcom/lge/render/EssentialRenderer;

    invoke-virtual {v0, v3}, Lcom/lge/render/EssentialRenderer;->requestchangedRender(I)V

    .line 958
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoMgr:Lcom/lge/render/PhotoMgr;

    invoke-virtual {v0}, Lcom/lge/render/PhotoMgr;->getDataLoader()Lcom/lge/favoritecontacts/DataLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/DataLoader;->resumeLoad()V

    goto :goto_c

    .line 961
    :pswitch_30
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mRenderer:Lcom/lge/render/EssentialRenderer;

    invoke-virtual {v0}, Lcom/lge/render/EssentialRenderer;->getRenderMode()I

    move-result v0

    if-ne v0, v4, :cond_41

    .line 962
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mRenderer:Lcom/lge/render/EssentialRenderer;

    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lge/render/EssentialRenderer;->setRenderMode(I)V

    :goto_3f
    move v0, v2

    .line 966
    goto :goto_d

    .line 964
    :cond_41
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mRenderer:Lcom/lge/render/EssentialRenderer;

    invoke-virtual {v0, v4}, Lcom/lge/render/EssentialRenderer;->setRenderMode(I)V

    goto :goto_3f

    .line 949
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_30
        :pswitch_e
        :pswitch_1f
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 858
    iget-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbRunDetailPopup:Z

    if-nez v0, :cond_e

    .line 859
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->startAutoSync(Landroid/content/ContentResolver;)V

    .line 860
    invoke-static {}, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->initStatus()V

    .line 863
    :cond_e
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mOrderingThread:Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;

    if-eqz v0, :cond_30

    .line 864
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mOrderingThread:Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;->onDestroy()V

    .line 865
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mOrderingThread:Lcom/lge/favoritecontacts/FavoriteContacts$FCOrderingThread;

    .line 866
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbDBChanged:Z

    .line 867
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mLoadingDialog:Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;->FCisShowing()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 868
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mLoadingDialog:Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/FavoriteContacts$FCProgress;->dismiss()V

    .line 872
    :cond_30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbRunDetailPopup:Z

    .line 874
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lge/favoritecontacts/FavoriteContacts;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 878
    const-string v0, "Favorite Contacts"

    const-string v1, "  ==  On Pause ==   "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 880
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 1039
    const-string v0, "Favorite Contacts"

    const-string v1, "  ==  On onPrepareOptionsMenu =="

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->setChangeRenderMenu()V

    .line 1041
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 884
    const-string v2, "Favorite Contacts"

    const-string v3, "  ==  On Resume =="

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 888
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->isAutosync(Landroid/content/ContentResolver;)Z

    .line 891
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 893
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 894
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 895
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 897
    iget-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbWillFinish:Z

    if-nez v2, :cond_8a

    .line 898
    iget-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbDBChanged:Z

    if-nez v2, :cond_34

    iget-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbFavoriteChanged:Z

    if-eqz v2, :cond_70

    :cond_34
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->isPreparedOtherActi()Z

    move-result v2

    if-nez v2, :cond_70

    iget-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbSynchronizing:Z

    if-nez v2, :cond_70

    .line 899
    invoke-direct {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->getStarredContactsCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 900
    .local v0, c:Landroid/database/Cursor;
    iget-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbWillFinish:Z

    if-eqz v2, :cond_47

    .line 945
    .end local v0           #c:Landroid/database/Cursor;
    :goto_46
    return-void

    .line 903
    .restart local v0       #c:Landroid/database/Cursor;
    :cond_47
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->checkFavoriteContactsState()Z

    move-result v2

    if-nez v2, :cond_ce

    .line 904
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v3}, Lcom/lge/render/PhotoList;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_a6

    .line 905
    iget-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbDBChanged:Z

    if-eqz v2, :cond_90

    .line 906
    invoke-direct {p0, v0}, Lcom/lge/favoritecontacts/FavoriteContacts;->recreateList(Landroid/database/Cursor;)V

    .line 929
    :cond_60
    :goto_60
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->checkFavoriteContactsState()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 930
    if-eqz v0, :cond_6b

    .line 931
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 933
    :cond_6b
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->popupNoFaveContactState()V

    .line 935
    :cond_6e
    iput-boolean v6, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbFavoriteChanged:Z

    .line 937
    .end local v0           #c:Landroid/database/Cursor;
    :cond_70
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mFavoriteContactsView:Lcom/lge/favoritecontacts/FavoriteContactsView;

    invoke-virtual {v2}, Lcom/lge/favoritecontacts/FavoriteContactsView;->onResume()V

    .line 938
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoMgr:Lcom/lge/render/PhotoMgr;

    if-eqz v2, :cond_8a

    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoMgr:Lcom/lge/render/PhotoMgr;

    invoke-virtual {v2}, Lcom/lge/render/PhotoMgr;->getDataLoader()Lcom/lge/favoritecontacts/DataLoader;

    move-result-object v2

    if-eqz v2, :cond_8a

    .line 939
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoMgr:Lcom/lge/render/PhotoMgr;

    invoke-virtual {v2}, Lcom/lge/render/PhotoMgr;->getDataLoader()Lcom/lge/favoritecontacts/DataLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/favoritecontacts/DataLoader;->resumeLoad()V

    .line 942
    :cond_8a
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbStarted:Z

    .line 943
    iput-boolean v6, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbDBChanged:Z

    goto :goto_46

    .line 907
    .restart local v0       #c:Landroid/database/Cursor;
    :cond_90
    iget-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbFavoriteChanged:Z

    if-eqz v2, :cond_a2

    .line 908
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoMgr:Lcom/lge/render/PhotoMgr;

    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mRenderer:Lcom/lge/render/EssentialRenderer;

    iget-wide v4, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mlSelectContactID:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/lge/render/PhotoMgr;->removeSelectItem(Lcom/lge/render/EssentialRenderer;J)V

    .line 910
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mlSelectContactID:J

    goto :goto_60

    .line 912
    :cond_a2
    invoke-direct {p0, v0}, Lcom/lge/favoritecontacts/FavoriteContacts;->recreateList(Landroid/database/Cursor;)V

    goto :goto_60

    .line 914
    :cond_a6
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v3}, Lcom/lge/render/PhotoList;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_ca

    .line 915
    iget-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbDBChanged:Z

    if-eqz v2, :cond_ba

    .line 916
    invoke-direct {p0, v0}, Lcom/lge/favoritecontacts/FavoriteContacts;->recreateList(Landroid/database/Cursor;)V

    goto :goto_60

    .line 917
    :cond_ba
    iget-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbFavoriteChanged:Z

    if-eqz v2, :cond_c6

    .line 918
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoMgr:Lcom/lge/render/PhotoMgr;

    iget-wide v3, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mlSelectContactID:J

    invoke-virtual {v2, v3, v4}, Lcom/lge/render/PhotoMgr;->updateSelectItem(J)V

    goto :goto_60

    .line 920
    :cond_c6
    invoke-direct {p0, v0}, Lcom/lge/favoritecontacts/FavoriteContacts;->recreateList(Landroid/database/Cursor;)V

    goto :goto_60

    .line 923
    :cond_ca
    invoke-direct {p0, v0}, Lcom/lge/favoritecontacts/FavoriteContacts;->recreateList(Landroid/database/Cursor;)V

    goto :goto_60

    .line 925
    :cond_ce
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v2}, Lcom/lge/render/PhotoList;->getCount()I

    move-result v2

    if-lez v2, :cond_60

    .line 926
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mPhotoMgr:Lcom/lge/render/PhotoMgr;

    invoke-virtual {v2}, Lcom/lge/render/PhotoMgr;->clearContacts()V

    goto :goto_60
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 1003
    const-string v0, "Favorite Contacts"

    const-string v1, "  ==  On onSaveInstanceState =="

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_10

    .line 1006
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->close()V

    .line 1008
    :cond_10
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1009
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 791
    const-string v0, "Favorite Contacts"

    const-string v1, "  ==  On Stop =="

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-direct {p0}, Lcom/lge/favoritecontacts/FavoriteContacts;->saveRenderStatus()V

    .line 793
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 794
    return-void
.end method

.method public popupNoFaveContactState()V
    .registers 4

    .prologue
    .line 570
    iget-object v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mFavoriteContactsView:Lcom/lge/favoritecontacts/FavoriteContactsView;

    invoke-virtual {v1}, Lcom/lge/favoritecontacts/FavoriteContactsView;->onPause()V

    .line 572
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lge/favoritecontacts/NoFavePopup;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 573
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "no_contacts"

    iget-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbNoContacts:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 574
    const-string v1, "no_favorite"

    iget-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbNoStarredMembers:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 575
    const-string v1, "no_favegrp"

    iget-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbNoStarredGroup:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 576
    const/16 v1, 0x7d1

    invoke-virtual {p0, v0, v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->startActivityForResult(Landroid/content/Intent;I)V

    .line 577
    return-void
.end method

.method public prepareStartApp(Landroid/content/Intent;I)V
    .registers 4
    .parameter "data"
    .parameter "reqflag"

    .prologue
    .line 519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbStartActivity:Z

    .line 520
    iput p2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->miStartActivityFlag:I

    .line 521
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mStartActivityIntent:Landroid/content/Intent;

    .line 522
    return-void
.end method

.method public setChangeRenderMenu()V
    .registers 8

    .prologue
    const/high16 v6, 0x2

    const/high16 v5, 0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 438
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemEditMode:Landroid/view/MenuItem;

    if-eqz v2, :cond_36

    .line 439
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mRenderer:Lcom/lge/render/EssentialRenderer;

    invoke-virtual {v2}, Lcom/lge/render/EssentialRenderer;->getRenderMode()I

    move-result v0

    .line 441
    .local v0, mode:I
    iget v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->miNowOrientation:I

    if-nez v2, :cond_bb

    .line 442
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mRenderer:Lcom/lge/render/EssentialRenderer;

    invoke-virtual {v2}, Lcom/lge/render/EssentialRenderer;->getRendererTag()Ljava/lang/String;

    move-result-object v1

    .line 444
    .local v1, tag:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbNoContacts:Z

    if-nez v2, :cond_22

    iget-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbNoStarredMembers:Z

    if-eqz v2, :cond_37

    .line 445
    :cond_22
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemEditMode:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 446
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemDoneEditMode:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 447
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemChangeToWheel:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 448
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemChangeToGrid:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 505
    .end local v0           #mode:I
    .end local v1           #tag:Ljava/lang/String;
    :cond_36
    :goto_36
    return-void

    .line 449
    .restart local v0       #mode:I
    .restart local v1       #tag:Ljava/lang/String;
    :cond_37
    const-string v2, "WHEEL_RENDERER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 450
    if-ne v0, v6, :cond_56

    .line 451
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemEditMode:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 452
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemDoneEditMode:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 461
    :goto_4b
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemChangeToWheel:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 462
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemChangeToGrid:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_36

    .line 453
    :cond_56
    if-ne v0, v5, :cond_63

    .line 454
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemEditMode:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 455
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemDoneEditMode:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4b

    .line 457
    :cond_63
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemEditMode:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 458
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemDoneEditMode:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4b

    .line 463
    :cond_6e
    const-string v2, "GRID_RENDERER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 464
    if-ne v0, v6, :cond_8d

    .line 465
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemEditMode:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 466
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemDoneEditMode:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 474
    :goto_82
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemChangeToWheel:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 475
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemChangeToGrid:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_36

    .line 467
    :cond_8d
    if-ne v0, v5, :cond_9a

    .line 468
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemEditMode:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 469
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemDoneEditMode:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_82

    .line 471
    :cond_9a
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemEditMode:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 472
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemDoneEditMode:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_82

    .line 477
    :cond_a5
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemEditMode:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 478
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemDoneEditMode:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 479
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemChangeToWheel:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 480
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemChangeToGrid:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_36

    .line 483
    .end local v1           #tag:Ljava/lang/String;
    :cond_bb
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mRenderer:Lcom/lge/render/EssentialRenderer;

    invoke-virtual {v2}, Lcom/lge/render/EssentialRenderer;->getRendererTag()Ljava/lang/String;

    move-result-object v1

    .line 485
    .restart local v1       #tag:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbNoContacts:Z

    if-nez v2, :cond_c9

    iget-boolean v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbNoStarredMembers:Z

    if-eqz v2, :cond_d5

    .line 486
    :cond_c9
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemEditMode:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 487
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemDoneEditMode:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_36

    .line 488
    :cond_d5
    const-string v2, "LAND_RENDERER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    .line 489
    if-ne v0, v6, :cond_eb

    .line 490
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemEditMode:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 491
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemDoneEditMode:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_36

    .line 492
    :cond_eb
    if-ne v0, v5, :cond_f9

    .line 493
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemEditMode:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 494
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemDoneEditMode:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_36

    .line 496
    :cond_f9
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemEditMode:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 497
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemDoneEditMode:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_36

    .line 500
    :cond_105
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemEditMode:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 501
    iget-object v2, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mMenuItemDoneEditMode:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_36
.end method

.method public setDetailpopup_startActivity_status()V
    .registers 2

    .prologue
    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbRunDetailPopup:Z

    .line 510
    return-void
.end method

.method public setNoFavorite()V
    .registers 2

    .prologue
    .line 580
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbNoStarredMembers:Z

    .line 581
    return-void
.end method

.method public startOtherActi()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 528
    iget-boolean v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbStartActivity:Z

    if-eqz v0, :cond_15

    .line 529
    iput-boolean v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbStartActivity:Z

    .line 530
    iput-boolean v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mbDBChanged:Z

    .line 531
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mFavoriteContactsView:Lcom/lge/favoritecontacts/FavoriteContactsView;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/FavoriteContactsView;->onPause()V

    .line 532
    iget-object v0, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->mStartActivityIntent:Landroid/content/Intent;

    iget v1, p0, Lcom/lge/favoritecontacts/FavoriteContacts;->miStartActivityFlag:I

    invoke-virtual {p0, v0, v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->startActivityForResult(Landroid/content/Intent;I)V

    .line 534
    :cond_15
    return-void
.end method
