.class public Lcom/lge/sns/profile/ui/twitter/TwitterHome;
.super Landroid/app/ListActivity;
.source "TwitterHome.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/profile/ui/twitter/TwitterHome$TweetAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_REFRESH:I = 0x3e8

.field private static MAX_TWEET:I = 0x0

.field private static final MENU_ID_NEW_TWEET:I = 0x1

.field private static final MENU_ID_NEW_TWEET_AT:I = 0x2

.field private static final MENU_ID_REFRESH:I = 0x0

.field public static final RC_INIT_SIGNIN:I = 0x1

.field public static final RC_REFREASH_SIGNIN:I = 0x2

.field private static snsManager:Lcom/lge/sns/SnsManager;


# instance fields
.field private profileFacade:Lcom/lge/sns/profile/IProfileFacade;

.field private snsId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/16 v0, 0x64

    sput v0, Lcom/lge/sns/profile/ui/twitter/TwitterHome;->MAX_TWEET:I

    .line 41
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/profile/ui/twitter/TwitterHome;->snsManager:Lcom/lge/sns/SnsManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 221
    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/profile/ui/twitter/TwitterHome;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterHome;->snsId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 32
    sget v0, Lcom/lge/sns/profile/ui/twitter/TwitterHome;->MAX_TWEET:I

    return v0
.end method

.method static synthetic access$200(Lcom/lge/sns/profile/ui/twitter/TwitterHome;)Lcom/lge/sns/profile/IProfileFacade;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterHome;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    return-object v0
.end method

.method private newTweet()V
    .registers 1

    .prologue
    .line 220
    return-void
.end method

.method private newTweetAt()V
    .registers 1

    .prologue
    .line 215
    return-void
.end method

.method private refreshContent(Z)V
    .registers 4
    .parameter "retry"

    .prologue
    .line 115
    new-instance v0, Lcom/lge/sns/profile/ui/twitter/TwitterHome$2;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/profile/ui/twitter/TwitterHome$2;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterHome;Z)V

    .line 149
    .local v0, t:Ljava/lang/Thread;
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterHome;->showDialog(I)V

    .line 150
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 151
    return-void
.end method

.method private updateContent(Z)V
    .registers 4
    .parameter "retry"

    .prologue
    .line 76
    new-instance v0, Lcom/lge/sns/profile/ui/twitter/TwitterHome$1;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/profile/ui/twitter/TwitterHome$1;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterHome;Z)V

    .line 110
    .local v0, t:Ljava/lang/Thread;
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterHome;->showDialog(I)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 112
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 173
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    .line 174
    packed-switch p1, :pswitch_data_10

    .line 184
    :cond_7
    :goto_7
    return-void

    .line 176
    :pswitch_8
    invoke-direct {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterHome;->updateContent(Z)V

    goto :goto_7

    .line 180
    :pswitch_c
    invoke-direct {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterHome;->refreshContent(Z)V

    goto :goto_7

    .line 174
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_8
        :pswitch_c
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v1, 0x7f030009

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterHome;->setContentView(I)V

    .line 49
    sget-object v1, Lcom/lge/sns/profile/ui/twitter/TwitterHome;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v1, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterHome;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    .line 51
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterHome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 52
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterHome;->snsId:Ljava/lang/String;

    .line 53
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterHome;->updateContent(Z)V

    .line 55
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 154
    packed-switch p1, :pswitch_data_2a

    .line 169
    const/4 v1, 0x0

    :goto_4
    return-object v1

    .line 156
    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 157
    .local v0, refreshDialog:Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 158
    const v1, 0x7f050009

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterHome;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 159
    const/4 v1, -0x1

    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/twitter/TwitterHome;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/sns/profile/ui/twitter/TwitterHome$3;

    invoke-direct {v3, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterHome$3;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterHome;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    move-object v1, v0

    .line 165
    goto :goto_4

    .line 154
    :pswitch_data_2a
    .packed-switch 0x3e8
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const v4, 0x108003e

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 187
    const v0, 0x7f05000e

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterHome;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 189
    const v0, 0x7f0500b5

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterHome;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 191
    const/4 v0, 0x2

    const v1, 0x7f0500b6

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterHome;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 194
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 198
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 210
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 200
    :pswitch_a
    invoke-direct {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterHome;->refreshContent(Z)V

    move v0, v1

    .line 201
    goto :goto_9

    .line 203
    :pswitch_f
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterHome;->newTweet()V

    move v0, v1

    .line 204
    goto :goto_9

    .line 206
    :pswitch_14
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterHome;->newTweetAt()V

    move v0, v1

    .line 207
    goto :goto_9

    .line 198
    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_a
        :pswitch_f
        :pswitch_14
    .end packed-switch
.end method
