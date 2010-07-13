.class public Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;
.super Landroid/app/ListActivity;
.source "TwitterFriendList.java"

# interfaces
.implements Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$FollowAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_REFRESH:I = 0x3e8

.field static final PAGE_SIZE:I = 0x14

.field public static final RC_SIGNIN:I = 0x2

.field static final STATE_KEY_KEYWORD:Ljava/lang/String; = "keyword"

.field static final STATE_KEY_MODE_FOLLOWER:Ljava/lang/String; = "modeFollower"

.field static final STATE_KEY_MODE_PICK:Ljava/lang/String; = "modePick"

.field static final STATE_KEY_PAGE_NUM:Ljava/lang/String; = "pageNum"


# instance fields
.field allowTab:Z

.field follower:Landroid/widget/Button;

.field following:Landroid/widget/Button;

.field footerView:Landroid/view/View;

.field keyword:Ljava/lang/String;

.field modeFollower:Z

.field modePick:Z

.field next:Landroid/view/View;

.field pageNum:I

.field prev:Landroid/view/View;

.field profileFacade:Lcom/lge/sns/profile/IProfileFacade;

.field searchButton:Landroid/view/View;

.field snsId:Ljava/lang/String;

.field supportAtUser:Z

.field textView:Landroid/widget/TextView;

.field userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 40
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 49
    iput-boolean v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->modePick:Z

    .line 50
    iput-boolean v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->modeFollower:Z

    .line 51
    iput v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->pageNum:I

    .line 55
    iput-boolean v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->allowTab:Z

    .line 56
    iput-boolean v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->supportAtUser:Z

    .line 411
    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;ZZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->updateFooter(ZZ)V

    return-void
.end method

.method private addSnsNameImage()V
    .registers 6

    .prologue
    .line 181
    const v4, 0x7f08000b

    invoke-virtual {p0, v4}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 182
    .local v2, sns_image:Landroid/widget/ImageView;
    const v4, 0x7f08000c

    invoke-virtual {p0, v4}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 183
    .local v3, sns_name:Landroid/widget/TextView;
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v1

    .line 184
    .local v1, accountManager:Lcom/lge/sns/account/IAccountFacade;
    iget-object v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->snsId:Ljava/lang/String;

    invoke-interface {v1, v4}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v0

    .line 185
    .local v0, account:Lcom/lge/sns/account/Account;
    if-eqz v0, :cond_30

    .line 186
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    :cond_30
    return-void
.end method

.method private getFooterView()Landroid/view/View;
    .registers 5

    .prologue
    .line 370
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 371
    .local v0, mInflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030034

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private loadContent(Z)V
    .registers 15
    .parameter "retry"

    .prologue
    const v12, 0x7f05000d

    const/16 v5, 0x14

    const/4 v6, 0x1

    const v1, 0x7f03004a

    .line 274
    const/4 v7, 0x0

    .line 275
    .local v7, adapter:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$FollowAdapter;
    iget-boolean v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->modeFollower:Z

    if-nez v0, :cond_74

    .line 278
    :try_start_e
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->snsId:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->keyword:Ljava/lang/String;

    iget v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->pageNum:I

    const/16 v5, 0x14

    invoke-interface/range {v0 .. v5}, Lcom/lge/sns/profile/IProfileFacade;->getFollowing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;

    move-result-object v11

    .line 279
    .local v11, pc:Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;
    if-eqz v11, :cond_3c

    .line 280
    new-instance v8, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$FollowAdapter;

    const v0, 0x7f03004a

    invoke-virtual {v11}, Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;->getEntryList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v8, p0, p0, v0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$FollowAdapter;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;Landroid/content/Context;ILjava/util/List;)V

    .end local v7           #adapter:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$FollowAdapter;
    .local v8, adapter:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$FollowAdapter;
    move-object v7, v8

    .line 284
    .end local v8           #adapter:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$FollowAdapter;
    .restart local v7       #adapter:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$FollowAdapter;
    :goto_2d
    invoke-virtual {v11}, Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;->hasPrev()Z

    move-result v0

    invoke-virtual {v11}, Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;->hasNext()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->updateFooter(ZZ)V
    :try_end_38
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_e .. :try_end_38} :catch_4b
    .catch Lcom/lge/sns/SnsException; {:try_start_e .. :try_end_38} :catch_6a

    .line 304
    .end local v11           #pc:Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;
    :goto_38
    invoke-virtual {p0, v7}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 305
    :goto_3b
    return-void

    .line 282
    .restart local v11       #pc:Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;
    :cond_3c
    :try_start_3c
    new-instance v8, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$FollowAdapter;

    const v0, 0x7f03004a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v8, p0, p0, v0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$FollowAdapter;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;Landroid/content/Context;ILjava/util/List;)V
    :try_end_49
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_3c .. :try_end_49} :catch_4b
    .catch Lcom/lge/sns/SnsException; {:try_start_3c .. :try_end_49} :catch_6a

    .end local v7           #adapter:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$FollowAdapter;
    .restart local v8       #adapter:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$FollowAdapter;
    move-object v7, v8

    .end local v8           #adapter:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$FollowAdapter;
    .restart local v7       #adapter:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$FollowAdapter;
    goto :goto_2d

    .line 285
    .end local v11           #pc:Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;
    :catch_4b
    move-exception v0

    move-object v9, v0

    .line 286
    .local v9, e:Lcom/lge/sns/UnauthorizatedException;
    if-eqz p1, :cond_62

    .line 287
    new-instance v10, Landroid/content/Intent;

    const-string v0, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    .local v10, intent:Landroid/content/Intent;
    const-string v0, "sns_id"

    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->snsId:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const/4 v0, 0x2

    invoke-virtual {p0, v10, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_38

    .line 291
    .end local v10           #intent:Landroid/content/Intent;
    :cond_62
    invoke-static {p0, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3b

    .line 294
    .end local v9           #e:Lcom/lge/sns/UnauthorizatedException;
    :catch_6a
    move-exception v0

    move-object v9, v0

    .line 295
    .local v9, e:Lcom/lge/sns/SnsException;
    invoke-static {p0, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3b

    .line 300
    .end local v9           #e:Lcom/lge/sns/SnsException;
    :cond_74
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->showDialog(I)V

    .line 301
    new-instance v7, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$FollowAdapter;

    .end local v7           #adapter:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$FollowAdapter;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v7, p0, p0, v1, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$FollowAdapter;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;Landroid/content/Context;ILjava/util/List;)V

    .line 302
    .restart local v7       #adapter:Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$FollowAdapter;
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->snsId:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->keyword:Ljava/lang/String;

    iget v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->pageNum:I

    move-object v6, p0

    invoke-interface/range {v0 .. v6}, Lcom/lge/sns/profile/IProfileFacade;->getFollower(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;)V

    goto :goto_38
.end method

.method private restore(Landroid/os/Bundle;)V
    .registers 7
    .parameter "state"

    .prologue
    const-string v4, "pageNum"

    const-string v3, "modePick"

    const-string v2, "modeFollower"

    const-string v1, "keyword"

    .line 216
    if-eqz p1, :cond_4a

    .line 217
    const-string v0, "modePick"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 218
    const-string v0, "modePick"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->modePick:Z

    .line 220
    :cond_1a
    const-string v0, "modeFollower"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 221
    const-string v0, "modeFollower"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->modeFollower:Z

    .line 223
    :cond_2a
    const-string v0, "keyword"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 224
    const-string v0, "keyword"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->keyword:Ljava/lang/String;

    .line 226
    :cond_3a
    const-string v0, "pageNum"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 227
    const-string v0, "pageNum"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->pageNum:I

    .line 230
    :cond_4a
    return-void
.end method

.method private updateFooter(ZZ)V
    .registers 7
    .parameter "hasPrev"
    .parameter "hasNext"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 319
    if-eqz p1, :cond_21

    .line 320
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->prev:Landroid/view/View;

    const v1, 0x7f020084

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 321
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->prev:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 326
    :goto_11
    if-eqz p2, :cond_2f

    .line 327
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->next:Landroid/view/View;

    const v1, 0x7f020086

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 328
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->next:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 333
    :goto_20
    return-void

    .line 323
    :cond_21
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->prev:Landroid/view/View;

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 324
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->prev:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_11

    .line 330
    :cond_2f
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->next:Landroid/view/View;

    const v1, 0x7f020085

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 331
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->next:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_20
.end method

.method private updateTab()V
    .registers 4

    .prologue
    const v2, 0x7f02000c

    const v1, 0x7f02000a

    .line 308
    iget-boolean v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->modeFollower:Z

    if-nez v0, :cond_15

    .line 309
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->following:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 310
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->follower:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 315
    :goto_14
    return-void

    .line 312
    :cond_15
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->following:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 313
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->follower:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_14
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getPageNum()I
    .registers 2

    .prologue
    .line 347
    iget v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->pageNum:I

    return v0
.end method

.method public isModeFollower()Z
    .registers 2

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->modeFollower:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 264
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    .line 265
    packed-switch p1, :pswitch_data_c

    .line 271
    :cond_6
    :goto_6
    return-void

    .line 267
    :pswitch_7
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->loadContent(Z)V

    goto :goto_6

    .line 265
    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f030049

    const/16 v10, 0x8

    const/4 v9, 0x7

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 67
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->getParent()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_12b

    .line 69
    invoke-virtual {p0, v9}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->requestWindowFeature(I)Z

    .line 70
    invoke-virtual {p0, v6}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x7f030002

    invoke-virtual {v5, v9, v6}, Landroid/view/Window;->setFeatureInt(II)V

    .line 76
    :goto_21
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    .line 78
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 79
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, action:Ljava/lang/String;
    const-string v5, "com.lge.sns.profile.intent.action.VIEW_TWITTER_FOLLOWER"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_130

    .line 81
    iput-boolean v8, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->modePick:Z

    .line 82
    iput-boolean v7, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->modeFollower:Z

    .line 94
    :cond_3f
    :goto_3f
    const-string v5, "sns_id"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->snsId:Ljava/lang/String;

    .line 95
    const-string v5, "user_id"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->userId:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->getParent()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_58

    .line 98
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->addSnsNameImage()V

    .line 100
    :cond_58
    iget-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->userId:Ljava/lang/String;

    if-nez v5, :cond_6c

    .line 101
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v0

    .line 102
    .local v0, accountFacade:Lcom/lge/sns/account/IAccountFacade;
    iget-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->snsId:Ljava/lang/String;

    invoke-interface {v0, v5}, Lcom/lge/sns/account/IAccountFacade;->getUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->userId:Ljava/lang/String;

    .line 104
    .end local v0           #accountFacade:Lcom/lge/sns/account/IAccountFacade;
    :cond_6c
    const-string v5, "allow_tab"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->allowTab:Z

    .line 105
    const-string v5, "at_user_name"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->supportAtUser:Z

    .line 106
    invoke-direct {p0, p1}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->restore(Landroid/os/Bundle;)V

    .line 108
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->getFooterView()Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->footerView:Landroid/view/View;

    .line 109
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->footerView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 111
    const v5, 0x7f0800cf

    invoke-virtual {p0, v5}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 112
    .local v2, atUserName:Landroid/view/View;
    const v5, 0x7f08002a

    invoke-virtual {p0, v5}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->searchButton:Landroid/view/View;

    .line 114
    const v5, 0x7f0800d1

    invoke-virtual {p0, v5}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->following:Landroid/widget/Button;

    .line 115
    const v5, 0x7f0800d2

    invoke-virtual {p0, v5}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->follower:Landroid/widget/Button;

    .line 116
    const v5, 0x7f08008b

    invoke-virtual {p0, v5}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->prev:Landroid/view/View;

    .line 117
    const v5, 0x7f08008c

    invoke-virtual {p0, v5}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->next:Landroid/view/View;

    .line 118
    const v5, 0x7f080029

    invoke-virtual {p0, v5}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->textView:Landroid/widget/TextView;

    .line 120
    iget-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->searchButton:Landroid/view/View;

    new-instance v6, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$1;

    invoke-direct {v6, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$1;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-boolean v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->modePick:Z

    if-eqz v5, :cond_15a

    iget-boolean v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->supportAtUser:Z

    if-eqz v5, :cond_15a

    .line 129
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 130
    new-instance v5, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$2;

    invoke-direct {v5, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$2;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    :goto_ee
    const v5, 0x7f0800d0

    invoke-virtual {p0, v5}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 145
    .local v4, tab:Landroid/view/View;
    iget-boolean v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->allowTab:Z

    if-eqz v5, :cond_15e

    .line 146
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->following:Landroid/widget/Button;

    new-instance v6, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$3;

    invoke-direct {v6, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$3;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->follower:Landroid/widget/Button;

    new-instance v6, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$4;

    invoke-direct {v6, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$4;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    :goto_110
    iget-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->prev:Landroid/view/View;

    new-instance v6, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$5;

    invoke-direct {v6, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$5;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->next:Landroid/view/View;

    new-instance v6, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$6;

    invoke-direct {v6, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$6;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->updateTab()V

    .line 177
    invoke-direct {p0, v7}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->loadContent(Z)V

    .line 178
    return-void

    .line 73
    .end local v1           #action:Ljava/lang/String;
    .end local v2           #atUserName:Landroid/view/View;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #tab:Landroid/view/View;
    :cond_12b
    invoke-virtual {p0, v6}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->setContentView(I)V

    goto/16 :goto_21

    .line 83
    .restart local v1       #action:Ljava/lang/String;
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_130
    const-string v5, "com.lge.sns.profile.intent.action.VIEW_TWITTER_FOLLOWING"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13e

    .line 84
    iput-boolean v8, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->modePick:Z

    .line 85
    iput-boolean v8, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->modeFollower:Z

    goto/16 :goto_3f

    .line 86
    :cond_13e
    const-string v5, "com.lge.sns.profile.intent.action.PICK_TWITTER_FOLLOWER"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14c

    .line 87
    iput-boolean v7, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->modePick:Z

    .line 88
    iput-boolean v7, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->modeFollower:Z

    goto/16 :goto_3f

    .line 89
    :cond_14c
    const-string v5, "com.lge.sns.profile.intent.action.PICK_TWITTER_FOLLOWING"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 90
    iput-boolean v7, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->modePick:Z

    .line 91
    iput-boolean v8, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->modeFollower:Z

    goto/16 :goto_3f

    .line 141
    .restart local v2       #atUserName:Landroid/view/View;
    :cond_15a
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_ee

    .line 162
    .restart local v4       #tab:Landroid/view/View;
    :cond_15e
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_110
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 244
    packed-switch p1, :pswitch_data_2a

    .line 259
    const/4 v1, 0x0

    :goto_4
    return-object v1

    .line 246
    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 247
    .local v0, refreshDialog:Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 248
    const v1, 0x7f050009

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 249
    const/4 v1, -0x1

    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$7;

    invoke-direct {v3, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$7;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    move-object v1, v0

    .line 255
    goto :goto_4

    .line 244
    :pswitch_data_2a
    .packed-switch 0x3e8
        :pswitch_5
    .end packed-switch
.end method

.method public onFirendEntryLoadFinished()V
    .registers 2

    .prologue
    .line 388
    new-instance v0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$9;

    invoke-direct {v0, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$9;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 393
    return-void
.end method

.method public onFirendEntryLoadStarted(ZZ)V
    .registers 4
    .parameter "hasPrev"
    .parameter "hasNext"

    .prologue
    .line 396
    new-instance v0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$10;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;ZZ)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 401
    return-void
.end method

.method public onFirendEntryLoaded(Lcom/lge/sns/profile/FriendEntry;)V
    .registers 3
    .parameter "profile"

    .prologue
    .line 404
    new-instance v0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$11;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$11;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;Lcom/lge/sns/profile/FriendEntry;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 409
    return-void
.end method

.method public onFriendEntryLoadError(Ljava/lang/Exception;)V
    .registers 3
    .parameter "e"

    .prologue
    .line 375
    instance-of v0, p1, Lcom/lge/sns/UnauthorizatedException;

    if-eqz v0, :cond_c

    .line 376
    new-instance v0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$8;

    invoke-direct {v0, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList$8;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 385
    :cond_c
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 12
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const-string v5, "user_id"

    const-string v4, "sns_id"

    .line 192
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/profile/FriendEntry;

    .line 193
    .local v1, p:Lcom/lge/sns/profile/FriendEntry;
    iget-boolean v3, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->modePick:Z

    if-nez v3, :cond_2b

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.lge.sns.profile.intent.action.VIEW_TWITTER_PROFILE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "sns_id"

    invoke-virtual {v1}, Lcom/lge/sns/profile/FriendEntry;->getSnsId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string v3, "user_id"

    invoke-virtual {v1}, Lcom/lge/sns/profile/FriendEntry;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->startActivity(Landroid/content/Intent;)V

    .line 208
    .end local v0           #intent:Landroid/content/Intent;
    :goto_2a
    return-void

    .line 199
    :cond_2b
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 200
    .local v2, result:Landroid/content/Intent;
    const-string v3, "sns_id"

    invoke-virtual {v1}, Lcom/lge/sns/profile/FriendEntry;->getSnsId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string v3, "user_id"

    invoke-virtual {v1}, Lcom/lge/sns/profile/FriendEntry;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v3, "friend_userid"

    invoke-virtual {v1}, Lcom/lge/sns/profile/FriendEntry;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v3, "user_name"

    invoke-virtual {v1}, Lcom/lge/sns/profile/FriendEntry;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string v3, "display_name"

    invoke-virtual {v1}, Lcom/lge/sns/profile/FriendEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->setResult(ILandroid/content/Intent;)V

    .line 206
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->finish()V

    goto :goto_2a
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "state"

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 212
    invoke-direct {p0, p1}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->restore(Landroid/os/Bundle;)V

    .line 213
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 234
    const-string v0, "modePick"

    iget-boolean v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->modePick:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 235
    const-string v0, "modeFollower"

    iget-boolean v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->modeFollower:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 236
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->keyword:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 237
    const-string v0, "keyword"

    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->keyword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_1c
    const-string v0, "pageNum"

    iget v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->pageNum:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .registers 4
    .parameter "keyword"

    .prologue
    const/4 v1, 0x1

    .line 360
    invoke-static {p1}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->keyword:Ljava/lang/String;

    .line 365
    :goto_a
    iput v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->pageNum:I

    .line 366
    invoke-direct {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->loadContent(Z)V

    .line 367
    return-void

    .line 363
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->keyword:Ljava/lang/String;

    goto :goto_a
.end method

.method public setModeFollower(Z)V
    .registers 3
    .parameter "modeFollower"

    .prologue
    const/4 v0, 0x1

    .line 340
    iput-boolean p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->modeFollower:Z

    .line 341
    iput v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->pageNum:I

    .line 342
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->updateTab()V

    .line 343
    invoke-direct {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->loadContent(Z)V

    .line 344
    return-void
.end method

.method public setPageNum(I)V
    .registers 3
    .parameter "pageNum"

    .prologue
    .line 351
    iput p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->pageNum:I

    .line 352
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterFriendList;->loadContent(Z)V

    .line 353
    return-void
.end method
