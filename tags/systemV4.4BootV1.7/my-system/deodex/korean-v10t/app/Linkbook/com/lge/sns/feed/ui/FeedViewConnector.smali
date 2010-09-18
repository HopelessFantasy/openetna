.class public Lcom/lge/sns/feed/ui/FeedViewConnector;
.super Landroid/app/Activity;
.source "FeedViewConnector.java"

# interfaces
.implements Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;


# static fields
.field private static final DIALOG_REFRESH:I = 0x3e8

.field private static snsManager:Lcom/lge/sns/SnsManager;


# instance fields
.field private feed:Lcom/lge/sns/feed/Feed;

.field private feedFacade:Lcom/lge/sns/feed/IFeedFacade;

.field private snsId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/feed/ui/FeedViewConnector;->snsManager:Lcom/lge/sns/SnsManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, -0x1

    .line 42
    const/4 v2, 0x1

    if-ne p1, v2, :cond_10

    .line 43
    if-ne p2, v3, :cond_f

    .line 44
    iget-object v2, p0, Lcom/lge/sns/feed/ui/FeedViewConnector;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    iget-object v3, p0, Lcom/lge/sns/feed/ui/FeedViewConnector;->feed:Lcom/lge/sns/feed/Feed;

    invoke-interface {v2, v3, p0}, Lcom/lge/sns/feed/IFeedFacade;->getFeedDataAsync(Lcom/lge/sns/feed/Feed;Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;)Z

    .line 55
    :cond_f
    :goto_f
    return-void

    .line 46
    :cond_10
    const/4 v2, 0x2

    if-ne p1, v2, :cond_f

    .line 47
    if-ne p2, v3, :cond_f

    .line 48
    const-string v2, "feed_id"

    invoke-virtual {p3, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 49
    .local v0, feedId:J
    cmp-long v2, v0, v4

    if-lez v2, :cond_f

    .line 50
    iget-object v2, p0, Lcom/lge/sns/feed/ui/FeedViewConnector;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    invoke-interface {v2, v0, v1}, Lcom/lge/sns/feed/IFeedFacade;->removeFeed(J)Lcom/lge/sns/feed/Feed;

    .line 51
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/FeedViewConnector;->finish()V

    goto :goto_f
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v1, 0x7f03000f

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/FeedViewConnector;->setContentView(I)V

    .line 31
    sget-object v1, Lcom/lge/sns/feed/ui/FeedViewConnector;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v1, p0}, Lcom/lge/sns/SnsManager;->getFeeds(Landroid/content/Context;)Lcom/lge/sns/feed/IFeedFacade;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/feed/ui/FeedViewConnector;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    .line 33
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/FeedViewConnector;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 34
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_32

    .line 35
    iget-object v1, p0, Lcom/lge/sns/feed/ui/FeedViewConnector;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    invoke-interface {v1, v0}, Lcom/lge/sns/feed/IFeedFacade;->getFeed(Landroid/net/Uri;)Lcom/lge/sns/feed/Feed;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/feed/ui/FeedViewConnector;->feed:Lcom/lge/sns/feed/Feed;

    .line 36
    iget-object v1, p0, Lcom/lge/sns/feed/ui/FeedViewConnector;->feed:Lcom/lge/sns/feed/Feed;

    invoke-virtual {v1}, Lcom/lge/sns/feed/Feed;->getSnsId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/feed/ui/FeedViewConnector;->snsId:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/lge/sns/feed/ui/FeedViewConnector;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    iget-object v2, p0, Lcom/lge/sns/feed/ui/FeedViewConnector;->feed:Lcom/lge/sns/feed/Feed;

    invoke-interface {v1, v2, p0}, Lcom/lge/sns/feed/IFeedFacade;->getFeedDataAsync(Lcom/lge/sns/feed/Feed;Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;)Z

    .line 39
    :cond_32
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 58
    packed-switch p1, :pswitch_data_2a

    .line 73
    const/4 v1, 0x0

    :goto_4
    return-object v1

    .line 60
    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 61
    .local v0, refreshDialog:Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 62
    const v1, 0x7f050009

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/FeedViewConnector;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 63
    const/4 v1, -0x1

    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/FeedViewConnector;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/sns/feed/ui/FeedViewConnector$1;

    invoke-direct {v3, p0}, Lcom/lge/sns/feed/ui/FeedViewConnector$1;-><init>(Lcom/lge/sns/feed/ui/FeedViewConnector;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    move-object v1, v0

    .line 69
    goto :goto_4

    .line 58
    :pswitch_data_2a
    .packed-switch 0x3e8
        :pswitch_5
    .end packed-switch
.end method

.method public onFeedDataUpdateFail(Lcom/lge/sns/SnsException;)V
    .registers 5
    .parameter "e"

    .prologue
    .line 113
    instance-of v1, p1, Lcom/lge/sns/UnauthorizatedException;

    if-eqz v1, :cond_1f

    .line 114
    new-instance v1, Lcom/lge/sns/feed/ui/FeedViewConnector$5;

    invoke-direct {v1, p0}, Lcom/lge/sns/feed/ui/FeedViewConnector$5;-><init>(Lcom/lge/sns/feed/ui/FeedViewConnector;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/FeedViewConnector;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    iget-object v2, p0, Lcom/lge/sns/feed/ui/FeedViewConnector;->snsId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/lge/sns/feed/ui/FeedViewConnector;->startActivityForResult(Landroid/content/Intent;I)V

    .line 130
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1e
    return-void

    .line 123
    :cond_1f
    new-instance v1, Lcom/lge/sns/feed/ui/FeedViewConnector$6;

    invoke-direct {v1, p0}, Lcom/lge/sns/feed/ui/FeedViewConnector$6;-><init>(Lcom/lge/sns/feed/ui/FeedViewConnector;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/FeedViewConnector;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1e
.end method

.method public onFeedDataUpdateFinished(JLjava/lang/String;Landroid/net/Uri;)V
    .registers 7
    .parameter "feedId"
    .parameter "feedType"
    .parameter "dataUri"

    .prologue
    .line 85
    new-instance v1, Lcom/lge/sns/feed/ui/FeedViewConnector$3;

    invoke-direct {v1, p0}, Lcom/lge/sns/feed/ui/FeedViewConnector$3;-><init>(Lcom/lge/sns/feed/ui/FeedViewConnector;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/FeedViewConnector;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 91
    if-eqz p4, :cond_2d

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 95
    const-string v1, "FR"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 96
    const-string v1, "feed_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 97
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/lge/sns/feed/ui/FeedViewConnector;->startActivityForResult(Landroid/content/Intent;I)V

    .line 110
    .end local v0           #intent:Landroid/content/Intent;
    :goto_25
    return-void

    .line 99
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_26
    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/FeedViewConnector;->startActivity(Landroid/content/Intent;)V

    .line 100
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/FeedViewConnector;->finish()V

    goto :goto_25

    .line 104
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2d
    new-instance v1, Lcom/lge/sns/feed/ui/FeedViewConnector$4;

    invoke-direct {v1, p0}, Lcom/lge/sns/feed/ui/FeedViewConnector$4;-><init>(Lcom/lge/sns/feed/ui/FeedViewConnector;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/feed/ui/FeedViewConnector;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_25
.end method

.method public onFeedDataUpdateStarted()V
    .registers 2

    .prologue
    .line 77
    new-instance v0, Lcom/lge/sns/feed/ui/FeedViewConnector$2;

    invoke-direct {v0, p0}, Lcom/lge/sns/feed/ui/FeedViewConnector$2;-><init>(Lcom/lge/sns/feed/ui/FeedViewConnector;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/feed/ui/FeedViewConnector;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method
