.class public Lcom/lge/sns/profile/ui/FriendView;
.super Landroid/app/Activity;
.source "FriendView.java"

# interfaces
.implements Lcom/lge/sns/profile/IProfileFacade$ProfileCommentUpdateListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/profile/ui/FriendView$ViewCache;,
        Lcom/lge/sns/profile/ui/FriendView$ViewEntry;
    }
.end annotation


# static fields
.field public static final BUILD_MODE_DB:I = 0x1

.field public static final BUILD_MODE_SERVER:I = 0x2

.field private static final MENU_CONTEXT_GO_SERVICE:I = 0x0

.field private static final MENU_CONTEXT_SAVE_PROFILE:I = 0x2

.field private static final MENU_CONTEXT_SEND_MESSAGE:I = 0x1

.field private static final MENU_ITEM_REFRESH:I = 0x0

.field private static final MENU_ITEM_SAVE_CONTACT:I = 0x1

.field private static final POPUP_REFRESH_FRIENDSLIST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FriendView"

.field private static mFLLoader:Lcom/lge/sns/profile/ui/FriendsDataLoader;

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private final AccountManager:Lcom/lge/sns/account/IAccountFacade;

.field private mCurrentAccount:Lcom/lge/sns/account/Account;

.field private mCurrentCredential:Lcom/lge/sns/account/Credential;

.field private mFLRunnableComment:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;

.field private mFLRunnableUpdate:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;

.field private mFriendID:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsRegListener:Z

.field private mLayout:Landroid/widget/LinearLayout;

.field private mProfile:Lcom/lge/sns/profile/Profile;

.field private mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

.field private mRefreshDialog:Landroid/app/ProgressDialog;

.field mServiceEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/sns/profile/ui/FriendView$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSnsID:Ljava/lang/String;

.field private mUserID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/lge/sns/profile/ui/FriendView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendView;->mServiceEntries:Ljava/util/ArrayList;

    .line 65
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendView;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/sns/profile/ui/FriendView;->mIsRegListener:Z

    .line 78
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendView;->AccountManager:Lcom/lge/sns/account/IAccountFacade;

    .line 459
    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/profile/ui/FriendView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/FriendView;->dataChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/sns/profile/ui/FriendView;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendView;->mRefreshDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/sns/profile/ui/FriendView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendView;->mSnsID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/sns/profile/ui/FriendView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendView;->mFriendID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/sns/profile/ui/FriendView;)Lcom/lge/sns/profile/IProfileFacade;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendView;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    return-object v0
.end method

.method private final buildEntries()V
    .registers 9

    .prologue
    .line 312
    iget-object v4, p0, Lcom/lge/sns/profile/ui/FriendView;->mServiceEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 313
    const/4 v3, 0x0

    .line 315
    .local v3, pcl:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/ProfileComment;>;"
    iget-boolean v4, p0, Lcom/lge/sns/profile/ui/FriendView;->mIsRegListener:Z

    if-eqz v4, :cond_5a

    .line 316
    iget-object v4, p0, Lcom/lge/sns/profile/ui/FriendView;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v5, p0, Lcom/lge/sns/profile/ui/FriendView;->mProfile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getId()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Lcom/lge/sns/profile/IProfileFacade;->getProfileCommentList(JLcom/lge/sns/profile/IProfileFacade$ProfileCommentUpdateListener;)Ljava/util/List;

    move-result-object v3

    .line 320
    :goto_17
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 321
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/lge/sns/profile/ProfileComment;>;"
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_67

    .line 323
    new-instance v0, Lcom/lge/sns/profile/ui/FriendView$ViewEntry;

    invoke-direct {v0}, Lcom/lge/sns/profile/ui/FriendView$ViewEntry;-><init>()V

    .line 324
    .local v0, entry:Lcom/lge/sns/profile/ui/FriendView$ViewEntry;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/sns/profile/ProfileComment;

    .line 326
    .local v2, pc:Lcom/lge/sns/profile/ProfileComment;
    invoke-virtual {v2}, Lcom/lge/sns/profile/ProfileComment;->getUserName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/lge/sns/profile/ui/FriendView$ViewEntry;->name:Ljava/lang/String;

    .line 327
    invoke-virtual {v2}, Lcom/lge/sns/profile/ProfileComment;->getUserName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/lge/sns/profile/ui/FriendView$ViewEntry;->dispName:Ljava/lang/String;

    .line 328
    invoke-virtual {v2}, Lcom/lge/sns/profile/ProfileComment;->getPublished()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/lge/sns/profile/ui/FriendView$ViewEntry;->date:J

    .line 329
    invoke-virtual {v2}, Lcom/lge/sns/profile/ProfileComment;->getComment()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/lge/sns/profile/ui/FriendView$ViewEntry;->data:Ljava/lang/String;

    .line 330
    invoke-virtual {v2}, Lcom/lge/sns/profile/ProfileComment;->getProfileId()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/lge/sns/profile/ui/FriendView$ViewEntry;->profileId:J

    .line 331
    invoke-virtual {v2}, Lcom/lge/sns/profile/ProfileComment;->getId()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/lge/sns/profile/ui/FriendView$ViewEntry;->id:J

    .line 333
    iget-object v4, p0, Lcom/lge/sns/profile/ui/FriendView;->mServiceEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 318
    .end local v0           #entry:Lcom/lge/sns/profile/ui/FriendView$ViewEntry;
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/lge/sns/profile/ProfileComment;>;"
    .end local v2           #pc:Lcom/lge/sns/profile/ProfileComment;
    :cond_5a
    iget-object v4, p0, Lcom/lge/sns/profile/ui/FriendView;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v5, p0, Lcom/lge/sns/profile/ui/FriendView;->mProfile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getId()J

    move-result-wide v5

    invoke-interface {v4, v5, v6, p0}, Lcom/lge/sns/profile/IProfileFacade;->getProfileCommentList(JLcom/lge/sns/profile/IProfileFacade$ProfileCommentUpdateListener;)Ljava/util/List;

    move-result-object v3

    goto :goto_17

    .line 335
    .restart local v1       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/lge/sns/profile/ProfileComment;>;"
    :cond_67
    return-void
.end method

.method private buildOtherViews(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V
    .registers 7
    .parameter "layout"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/sns/profile/ui/FriendView$ViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p2, section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/sns/profile/ui/FriendView$ViewEntry;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/profile/ui/FriendView$ViewEntry;

    .line 371
    .local v0, entry:Lcom/lge/sns/profile/ui/FriendView$ViewEntry;
    invoke-direct {p0, v0}, Lcom/lge/sns/profile/ui/FriendView;->buildViewForEntry(Lcom/lge/sns/profile/ui/FriendView$ViewEntry;)Landroid/view/View;

    move-result-object v2

    .line 372
    .local v2, view:Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 374
    .end local v0           #entry:Lcom/lge/sns/profile/ui/FriendView$ViewEntry;
    .end local v2           #view:Landroid/view/View;
    :cond_18
    return-void
.end method

.method private buildView()V
    .registers 3

    .prologue
    .line 362
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendView;->mLayout:Landroid/widget/LinearLayout;

    .line 363
    .local v0, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 365
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendView;->mServiceEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/lge/sns/profile/ui/FriendView;->buildOtherViews(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V

    .line 366
    return-void
.end method

.method private buildViewForEntry(Lcom/lge/sns/profile/ui/FriendView$ViewEntry;)Landroid/view/View;
    .registers 14
    .parameter "entry"

    .prologue
    .line 377
    iget-object v9, p0, Lcom/lge/sns/profile/ui/FriendView;->mLayout:Landroid/widget/LinearLayout;

    .line 383
    .local v9, parent:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendView;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030018

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v9, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 384
    .local v11, view:Landroid/view/View;
    const v2, 0x7f080041

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 385
    .local v8, name:Landroid/widget/TextView;
    const v2, 0x7f080043

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 386
    .local v7, data:Landroid/widget/TextView;
    const v2, 0x7f080042

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 389
    .local v10, time:Landroid/widget/TextView;
    if-eqz v8, :cond_34

    .line 390
    iget-object v2, p1, Lcom/lge/sns/profile/ui/FriendView$ViewEntry;->name:Ljava/lang/String;

    if-eqz v2, :cond_54

    .line 391
    iget-object v2, p1, Lcom/lge/sns/profile/ui/FriendView$ViewEntry;->dispName:Ljava/lang/String;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    :cond_34
    :goto_34
    if-eqz v7, :cond_3f

    .line 399
    iget-object v2, p1, Lcom/lge/sns/profile/ui/FriendView$ViewEntry;->data:Ljava/lang/String;

    if-eqz v2, :cond_3f

    .line 400
    iget-object v2, p1, Lcom/lge/sns/profile/ui/FriendView$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    :cond_3f
    if-eqz v10, :cond_53

    .line 406
    iget-wide v0, p1, Lcom/lge/sns/profile/ui/FriendView$ViewEntry;->date:J

    .line 407
    .local v0, date:J
    const/high16 v6, 0x4

    .line 409
    .local v6, flags:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    .end local v0           #date:J
    .end local v6           #flags:I
    :cond_53
    return-object v11

    .line 393
    :cond_54
    const-string v2, "Unknown"

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_34
.end method

.method private dataChanged()V
    .registers 1

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/FriendView;->buildEntries()V

    .line 307
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/FriendView;->buildView()V

    .line 308
    return-void
.end method

.method private findFriendProfile(Lcom/lge/sns/profile/ProfileComment;)Lcom/lge/sns/profile/ui/FriendView$ViewEntry;
    .registers 9
    .parameter "profileComment"

    .prologue
    const/4 v6, 0x0

    .line 475
    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendView;->mServiceEntries:Ljava/util/ArrayList;

    if-nez v2, :cond_7

    move-object v2, v6

    .line 487
    :goto_6
    return-object v2

    .line 478
    :cond_7
    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendView;->mServiceEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 479
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/lge/sns/profile/ui/FriendView$ViewEntry;>;"
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 481
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/profile/ui/FriendView$ViewEntry;

    .line 483
    .local v0, entry:Lcom/lge/sns/profile/ui/FriendView$ViewEntry;
    iget-wide v2, v0, Lcom/lge/sns/profile/ui/FriendView$ViewEntry;->id:J

    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileComment;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_d

    move-object v2, v0

    .line 484
    goto :goto_6

    .end local v0           #entry:Lcom/lge/sns/profile/ui/FriendView$ViewEntry;
    :cond_25
    move-object v2, v6

    .line 487
    goto :goto_6
.end method

.method private postComment()V
    .registers 3

    .prologue
    .line 300
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/FriendView;->showDialog(I)V

    .line 301
    sget-object v0, Lcom/lge/sns/profile/ui/FriendView;->mFLLoader:Lcom/lge/sns/profile/ui/FriendsDataLoader;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendView;->mFLRunnableComment:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/ui/FriendsDataLoader;->addEvent(Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;)V

    .line 302
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 282
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_28

    .line 296
    :goto_7
    :pswitch_7
    return-void

    .line 285
    :pswitch_8
    const v1, 0x7f08003c

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/FriendView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 286
    .local v0, ll:Landroid/widget/LinearLayout;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 287
    const v1, 0x7f08003e

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/FriendView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #ll:Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 288
    .restart local v0       #ll:Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7

    .line 291
    .end local v0           #ll:Landroid/widget/LinearLayout;
    :pswitch_24
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/FriendView;->postComment()V

    goto :goto_7

    .line 282
    :pswitch_data_28
    .packed-switch 0x7f08003d
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_24
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 440
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 448
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    :pswitch_d
    move v0, v1

    .line 442
    goto :goto_c

    :pswitch_f
    move v0, v1

    .line 444
    goto :goto_c

    :pswitch_11
    move v0, v1

    .line 446
    goto :goto_c

    .line 440
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_d
        :pswitch_f
        :pswitch_11
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 20
    .parameter "icicle"

    .prologue
    .line 91
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const/4 v15, 0x7

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/ui/FriendView;->requestWindowFeature(I)Z

    .line 95
    const v15, 0x7f030017

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/ui/FriendView;->setContentView(I)V

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sns/profile/ui/FriendView;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x7

    const v17, 0x7f030045

    invoke-virtual/range {v15 .. v17}, Landroid/view/Window;->setFeatureInt(II)V

    .line 100
    const v15, 0x7f08002f

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/ui/FriendView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 101
    .local v13, titleIcon:Landroid/widget/ImageView;
    const v15, 0x7f020052

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    const v15, 0x7f080068

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/ui/FriendView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 104
    .local v12, title:Landroid/widget/TextView;
    const v15, 0x7f050007

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(I)V

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sns/profile/ui/FriendView;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 110
    .local v8, intent:Landroid/content/Intent;
    const-string v15, "sns_id"

    invoke-virtual {v8, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sns/profile/ui/FriendView;->mSnsID:Ljava/lang/String;

    .line 111
    const-string v15, "user_id"

    invoke-virtual {v8, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sns/profile/ui/FriendView;->mUserID:Ljava/lang/String;

    .line 112
    const-string v15, "friends_id"

    invoke-virtual {v8, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sns/profile/ui/FriendView;->mFriendID:Ljava/lang/String;

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/ui/FriendView;->AccountManager:Lcom/lge/sns/account/IAccountFacade;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/ui/FriendView;->mSnsID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sns/profile/ui/FriendView;->mCurrentAccount:Lcom/lge/sns/account/Account;

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/ui/FriendView;->mCurrentAccount:Lcom/lge/sns/account/Account;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/lge/sns/account/Account;->getCredential()Lcom/lge/sns/account/Credential;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sns/profile/ui/FriendView;->mCurrentCredential:Lcom/lge/sns/account/Credential;

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/ui/FriendView;->mCurrentCredential:Lcom/lge/sns/account/Credential;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/lge/sns/account/Credential;->getUid()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sns/profile/ui/FriendView;->mUserID:Ljava/lang/String;

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/ui/FriendView;->mUserID:Ljava/lang/String;

    move-object v15, v0

    if-nez v15, :cond_9f

    .line 123
    :cond_9f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/ui/FriendView;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/ui/FriendView;->mSnsID:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/ui/FriendView;->mFriendID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-interface/range {v15 .. v17}, Lcom/lge/sns/profile/IProfileFacade;->getProfileFromDB(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sns/profile/ui/FriendView;->mProfile:Lcom/lge/sns/profile/Profile;

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/ui/FriendView;->mProfile:Lcom/lge/sns/profile/Profile;

    move-object v15, v0

    if-nez v15, :cond_c4

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sns/profile/ui/FriendView;->finish()V

    .line 223
    .end local p1
    :goto_c3
    return-void

    .line 131
    .restart local p1
    :cond_c4
    const v15, 0x7f080037

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/ui/FriendView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 132
    .local v9, name:Landroid/widget/TextView;
    const v15, 0x7f080038

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/ui/FriendView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 133
    .local v7, date:Landroid/widget/TextView;
    const v15, 0x7f08003a

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/ui/FriendView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 134
    .local v11, status:Landroid/widget/TextView;
    const v15, 0x7f080039

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/ui/FriendView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 136
    .local v10, photo:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/ui/FriendView;->mProfile:Lcom/lge/sns/profile/Profile;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/lge/sns/profile/Profile;->getUserName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/ui/FriendView;->mProfile:Lcom/lge/sns/profile/Profile;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/lge/sns/profile/Profile;->getStatus()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/ui/FriendView;->mProfile:Lcom/lge/sns/profile/Profile;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/lge/sns/profile/Profile;->getProfileUpdated()Ljava/util/Date;

    move-result-object v15

    if-eqz v15, :cond_127

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/ui/FriendView;->mProfile:Lcom/lge/sns/profile/Profile;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/lge/sns/profile/Profile;->getProfileUpdated()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :cond_127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/ui/FriendView;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/ui/FriendView;->mProfile:Lcom/lge/sns/profile/Profile;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/profile/ui/FriendView;->mProfile:Lcom/lge/sns/profile/Profile;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v15 .. v17}, Lcom/lge/sns/profile/IProfileFacade;->getProfileAvatar(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 142
    .local v4, avatar:[B
    if-nez v4, :cond_1c7

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sns/profile/ui/FriendView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f02005f

    invoke-static/range {v15 .. v16}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 150
    :goto_154
    invoke-static/range {p0 .. p0}, Lcom/lge/sns/profile/ui/FriendsDataLoader;->getFriendsDataLoader(Ljava/lang/Object;)Lcom/lge/sns/profile/ui/FriendsDataLoader;

    move-result-object v15

    sput-object v15, Lcom/lge/sns/profile/ui/FriendView;->mFLLoader:Lcom/lge/sns/profile/ui/FriendsDataLoader;

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sns/profile/ui/FriendView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sns/profile/ui/FriendView;->mInflater:Landroid/view/LayoutInflater;

    .line 152
    const v15, 0x7f08003b

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/ui/FriendView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sns/profile/ui/FriendView;->mLayout:Landroid/widget/LinearLayout;

    .line 155
    const v15, 0x7f08003d

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/ui/FriendView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 156
    .local v6, btn:Landroid/widget/Button;
    move-object v0, v6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const v15, 0x7f080040

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/ui/FriendView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #btn:Landroid/widget/Button;
    check-cast v6, Landroid/widget/Button;

    .line 158
    .restart local v6       #btn:Landroid/widget/Button;
    move-object v0, v6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    new-instance v14, Lcom/lge/sns/profile/ui/FriendView$1;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/sns/profile/ui/FriendView$1;-><init>(Lcom/lge/sns/profile/ui/FriendView;)V

    .line 175
    .local v14, updateCallBack:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;
    new-instance v15, Lcom/lge/sns/profile/ui/FriendView$2;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/lge/sns/profile/ui/FriendView$2;-><init>(Lcom/lge/sns/profile/ui/FriendView;Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;)V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sns/profile/ui/FriendView;->mFLRunnableUpdate:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;

    .line 190
    new-instance v3, Lcom/lge/sns/profile/ui/FriendView$3;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/sns/profile/ui/FriendView$3;-><init>(Lcom/lge/sns/profile/ui/FriendView;)V

    .line 208
    .local v3, CommentCallBack:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;
    new-instance v15, Lcom/lge/sns/profile/ui/FriendView$4;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lcom/lge/sns/profile/ui/FriendView$4;-><init>(Lcom/lge/sns/profile/ui/FriendView;Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;)V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/sns/profile/ui/FriendView;->mFLRunnableComment:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;

    goto/16 :goto_c3

    .line 146
    .end local v3           #CommentCallBack:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;
    .end local v6           #btn:Landroid/widget/Button;
    .end local v14           #updateCallBack:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;
    .restart local p1
    :cond_1c7
    const/4 v15, 0x0

    move-object v0, v4

    array-length v0, v0

    move/from16 v16, v0

    move-object v0, v4

    move v1, v15

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 147
    .local v5, b:Landroid/graphics/Bitmap;
    invoke-virtual {v10, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_154
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 11
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v6, 0x0

    .line 421
    :try_start_1
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v3, v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_5} :catch_a

    .line 427
    .local v3, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v4, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-gez v4, :cond_13

    .line 436
    .end local v3           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local p0
    :goto_9
    return-void

    .line 422
    .restart local p0
    :catch_a
    move-exception v1

    .line 423
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v4, "FriendView"

    const-string v5, "bad menuInfo"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 430
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v3       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_13
    iget v2, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 431
    .local v2, id:I
    iget-object v4, p0, Lcom/lge/sns/profile/ui/FriendView;->mServiceEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/sns/profile/ui/FriendView$ViewEntry;

    iget-object v4, p0, Lcom/lge/sns/profile/ui/FriendView$ViewEntry;->name:Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 433
    const/4 v4, 0x1

    const v5, 0x7f050084

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 434
    const/4 v4, 0x2

    const v5, 0x7f050015

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_9
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 256
    packed-switch p1, :pswitch_data_3c

    .line 274
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 259
    :pswitch_8
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendView;->mRefreshDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_38

    .line 261
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendView;->mRefreshDialog:Landroid/app/ProgressDialog;

    .line 262
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendView;->mRefreshDialog:Landroid/app/ProgressDialog;

    const-string v1, "Please wait while Update Friends"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendView;->mRefreshDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 264
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendView;->mRefreshDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 265
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendView;->mRefreshDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x1

    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/FriendView;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/sns/profile/ui/FriendView$5;

    invoke-direct {v3, p0}, Lcom/lge/sns/profile/ui/FriendView$5;-><init>(Lcom/lge/sns/profile/ui/FriendView;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 272
    :cond_38
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendView;->mRefreshDialog:Landroid/app/ProgressDialog;

    goto :goto_7

    .line 256
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 339
    const v0, 0x7f05000e

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 341
    const/4 v0, 0x1

    const v1, 0x7f050015

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 342
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 248
    sget-object v0, Lcom/lge/sns/profile/ui/FriendView;->mFLLoader:Lcom/lge/sns/profile/ui/FriendsDataLoader;

    invoke-virtual {v0, p0}, Lcom/lge/sns/profile/ui/FriendsDataLoader;->unregObj(Ljava/lang/Object;)V

    .line 249
    iget-boolean v0, p0, Lcom/lge/sns/profile/ui/FriendView;->mIsRegListener:Z

    if-eqz v0, :cond_e

    .line 250
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendView;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    invoke-interface {v0, p0}, Lcom/lge/sns/profile/IProfileFacade;->removeProfileCommentUpdateListener(Lcom/lge/sns/profile/IProfileFacade$ProfileCommentUpdateListener;)V

    .line 251
    :cond_e
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 252
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 347
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_24

    .line 358
    const/4 v1, 0x0

    :goto_9
    return v1

    .line 349
    :pswitch_a
    invoke-virtual {p0, v3}, Lcom/lge/sns/profile/ui/FriendView;->showDialog(I)V

    .line 350
    sget-object v1, Lcom/lge/sns/profile/ui/FriendView;->mFLLoader:Lcom/lge/sns/profile/ui/FriendsDataLoader;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendView;->mFLRunnableUpdate:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;

    invoke-virtual {v1, v2}, Lcom/lge/sns/profile/ui/FriendsDataLoader;->addEvent(Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;)V

    move v1, v3

    .line 351
    goto :goto_9

    .line 354
    :pswitch_16
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendView;->mProfile:Lcom/lge/sns/profile/Profile;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendView;->AccountManager:Lcom/lge/sns/account/IAccountFacade;

    invoke-static {p0, v1, v2}, Lcom/lge/sns/profile/ui/FriendsList;->getSaveProfileToContactIntent(Landroid/content/Context;Lcom/lge/sns/profile/Profile;Lcom/lge/sns/account/IAccountFacade;)Landroid/content/Intent;

    move-result-object v0

    .line 355
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/FriendView;->startActivity(Landroid/content/Intent;)V

    move v1, v3

    .line 356
    goto :goto_9

    .line 347
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_a
        :pswitch_16
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendView;->mRefreshDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendView;->mRefreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 241
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendView;->mRefreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 243
    :cond_11
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 244
    return-void
.end method

.method public onProfileCommentAdded(Lcom/lge/sns/profile/ProfileComment;)V
    .registers 4
    .parameter "profileComment"

    .prologue
    .line 492
    const-string v0, "FriendView"

    const-string v1, " ==== onProfileCommentAdded  ==== "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    return-void
.end method

.method public onProfileCommentRemoved(Lcom/lge/sns/profile/ProfileComment;)V
    .registers 5
    .parameter "profileComment"

    .prologue
    .line 517
    const-string v1, "FriendView"

    const-string v2, " ==== onProfileCommentRemoved  ==== "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendView;->mServiceEntries:Ljava/util/ArrayList;

    if-nez v1, :cond_c

    .line 532
    :cond_b
    :goto_b
    return-void

    .line 522
    :cond_c
    invoke-direct {p0, p1}, Lcom/lge/sns/profile/ui/FriendView;->findFriendProfile(Lcom/lge/sns/profile/ProfileComment;)Lcom/lge/sns/profile/ui/FriendView$ViewEntry;

    move-result-object v0

    .line 523
    .local v0, entry:Lcom/lge/sns/profile/ui/FriendView$ViewEntry;
    if-eqz v0, :cond_b

    .line 525
    sget-object v1, Lcom/lge/sns/profile/ui/FriendView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/lge/sns/profile/ui/FriendView$6;

    invoke-direct {v2, p0, v0}, Lcom/lge/sns/profile/ui/FriendView$6;-><init>(Lcom/lge/sns/profile/ui/FriendView;Lcom/lge/sns/profile/ui/FriendView$ViewEntry;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 228
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 230
    sget-object v0, Lcom/lge/sns/profile/ui/FriendView;->mFLLoader:Lcom/lge/sns/profile/ui/FriendsDataLoader;

    invoke-virtual {v0}, Lcom/lge/sns/profile/ui/FriendsDataLoader;->onResume()V

    .line 231
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/FriendView;->buildEntries()V

    .line 232
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/FriendView;->buildView()V

    .line 233
    return-void
.end method
