.class public Lcom/lge/sns/profile/ui/twitter/TwitterAt;
.super Landroid/app/ListActivity;
.source "TwitterAt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/profile/ui/twitter/TwitterAt$TweetAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_REFRESH:I = 0x3e8

.field private static MAX_TWEET:I = 0x0

.field private static final MENU_ID_NEW_TWEET:I = 0x1

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
    .line 37
    const/16 v0, 0x64

    sput v0, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->MAX_TWEET:I

    .line 40
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->snsManager:Lcom/lge/sns/SnsManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 226
    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/profile/ui/twitter/TwitterAt;Z)Ljava/util/List;
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->getAtTweet(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/sns/profile/ui/twitter/TwitterAt;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->snsId:Ljava/lang/String;

    return-object v0
.end method

.method private getAtTweet(Z)Ljava/util/List;
    .registers 11
    .parameter "force"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/profile/ProfileStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v0, atTweets:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/ProfileStatus;>;"
    iget-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v6, p0, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->snsId:Ljava/lang/String;

    const/4 v7, 0x1

    sget v8, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->MAX_TWEET:I

    invoke-interface {v5, v6, v7, v8, p1}, Lcom/lge/sns/profile/IProfileFacade;->getFriendStatusHistory(Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v4

    .line 158
    .local v4, tweets:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/ProfileStatus;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/sns/profile/ProfileStatus;

    .line 159
    .local v2, ps:Lcom/lge/sns/profile/ProfileStatus;
    invoke-virtual {v2}, Lcom/lge/sns/profile/ProfileStatus;->getStatus()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, ststus:Ljava/lang/String;
    if-eqz v3, :cond_14

    const-string v5, "@"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 161
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 164
    .end local v2           #ps:Lcom/lge/sns/profile/ProfileStatus;
    .end local v3           #ststus:Ljava/lang/String;
    :cond_32
    return-object v0
.end method

.method private newTweet()V
    .registers 1

    .prologue
    .line 224
    return-void
.end method

.method private refreshContent(Z)V
    .registers 4
    .parameter "retry"

    .prologue
    .line 116
    new-instance v0, Lcom/lge/sns/profile/ui/twitter/TwitterAt$2;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/profile/ui/twitter/TwitterAt$2;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterAt;Z)V

    .line 151
    .local v0, t:Ljava/lang/Thread;
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->showDialog(I)V

    .line 152
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 153
    return-void
.end method

.method private updateContent(Z)V
    .registers 4
    .parameter "retry"

    .prologue
    .line 75
    new-instance v0, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterAt;Z)V

    .line 110
    .local v0, t:Ljava/lang/Thread;
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->showDialog(I)V

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

    .line 187
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    .line 188
    packed-switch p1, :pswitch_data_10

    .line 198
    :cond_7
    :goto_7
    return-void

    .line 190
    :pswitch_8
    invoke-direct {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->updateContent(Z)V

    goto :goto_7

    .line 194
    :pswitch_c
    invoke-direct {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->refreshContent(Z)V

    goto :goto_7

    .line 188
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
    .line 45
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v1, 0x7f030009

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->setContentView(I)V

    .line 48
    sget-object v1, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v1, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    .line 50
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 51
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->snsId:Ljava/lang/String;

    .line 52
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->updateContent(Z)V

    .line 54
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 168
    packed-switch p1, :pswitch_data_2a

    .line 183
    const/4 v1, 0x0

    :goto_4
    return-object v1

    .line 170
    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 171
    .local v0, refreshDialog:Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 172
    const v1, 0x7f050009

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 173
    const/4 v1, -0x1

    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/sns/profile/ui/twitter/TwitterAt$3;

    invoke-direct {v3, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterAt$3;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterAt;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    move-object v1, v0

    .line 179
    goto :goto_4

    .line 168
    :pswitch_data_2a
    .packed-switch 0x3e8
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 201
    const v0, 0x7f05000e

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 203
    const v0, 0x7f0500b5

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 205
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 209
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 218
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 211
    :pswitch_a
    invoke-direct {p0, v1}, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->refreshContent(Z)V

    move v0, v1

    .line 212
    goto :goto_9

    .line 214
    :pswitch_f
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->newTweet()V

    move v0, v1

    .line 215
    goto :goto_9

    .line 209
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_a
        :pswitch_f
    .end packed-switch
.end method
