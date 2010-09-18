.class public Lcom/lge/sns/account/ui/DefaultSnMenu;
.super Lcom/lge/sns/account/ui/SnMenus;
.source "DefaultSnMenu.java"


# instance fields
.field items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/sns/account/Account;)V
    .registers 5
    .parameter "ctx"
    .parameter "account"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/lge/sns/account/ui/SnMenus;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/account/ui/DefaultSnMenu;->items:Ljava/util/List;

    .line 38
    iget-object v0, p0, Lcom/lge/sns/account/ui/DefaultSnMenu;->items:Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/lge/sns/account/ui/DefaultSnMenu;->getHomeItem(Lcom/lge/sns/account/Account;)Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/lge/sns/account/ui/DefaultSnMenu;->items:Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/lge/sns/account/ui/DefaultSnMenu;->getProfileItem(Lcom/lge/sns/account/Account;)Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/lge/sns/account/ui/DefaultSnMenu;->items:Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/lge/sns/account/ui/DefaultSnMenu;->getFriendsItem(Lcom/lge/sns/account/Account;)Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/lge/sns/account/ui/DefaultSnMenu;->items:Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/lge/sns/account/ui/DefaultSnMenu;->getSnMessageItem(Lcom/lge/sns/account/Account;)Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method


# virtual methods
.method protected getFriendsItem(Lcom/lge/sns/account/Account;)Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;
    .registers 10
    .parameter "account"

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v7

    .line 56
    .local v7, snsId:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEARCH"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v6, flIntent:Landroid/content/Intent;
    const-string v0, "vnd.lge.cursor.item/vnd.lge.sns.profile.friends"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v0, "sns_id"

    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const/high16 v0, 0x400

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 60
    new-instance v0, Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;

    const-string v2, "Friends"

    const/4 v3, 0x0

    const v4, 0x7f050014

    const v5, 0x7f020069

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;-><init>(Lcom/lge/sns/account/ui/SnMenus;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;)V

    return-object v0
.end method

.method protected getHomeItem(Lcom/lge/sns/account/Account;)Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;
    .registers 10
    .parameter "account"

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v7

    .line 75
    .local v7, snsId:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 76
    .local v6, homeIntent:Landroid/content/Intent;
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    sget-object v0, Lcom/lge/sns/feed/IFeedFacade;->FEED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 78
    const-string v0, "feed_type"

    sget-object v1, Lcom/lge/sns/feed/Feed;->feedTypeList:[Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v0, "sns_id"

    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const/high16 v0, 0x400

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 82
    new-instance v0, Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;

    const-string v2, "Home"

    const/4 v3, 0x0

    const v4, 0x7f050013

    const v5, 0x7f02006a

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;-><init>(Lcom/lge/sns/account/ui/SnMenus;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;)V

    return-object v0
.end method

.method protected getProfileItem(Lcom/lge/sns/account/Account;)Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;
    .registers 10
    .parameter "account"

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v7

    .line 66
    .local v7, snsId:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.lge.sns.profile.intent.action.VIEW_MYPROFILE"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v6, profileIntent:Landroid/content/Intent;
    const-string v0, "sns_id"

    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const/high16 v0, 0x400

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    new-instance v0, Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;

    const-string v2, "Profile"

    const/4 v3, 0x0

    const v4, 0x7f050027

    const v5, 0x7f02006c

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;-><init>(Lcom/lge/sns/account/ui/SnMenus;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;)V

    return-object v0
.end method

.method public getSnMenuItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lge/sns/account/ui/DefaultSnMenu;->items:Ljava/util/List;

    return-object v0
.end method

.method protected getSnMessageItem(Lcom/lge/sns/account/Account;)Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;
    .registers 10
    .parameter "account"

    .prologue
    .line 45
    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v7

    .line 46
    .local v7, snsId:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .local v6, snmessageIntent:Landroid/content/Intent;
    const-string v0, "vnd.lge.cursor.item/vnd.lge.sns.snmessage.threadlist"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v0, "sns_id"

    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const/high16 v0, 0x400

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 50
    new-instance v0, Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;

    const-string v2, "Inbox"

    const/4 v3, 0x0

    const v4, 0x7f050083

    const v5, 0x7f02006b

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;-><init>(Lcom/lge/sns/account/ui/SnMenus;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;)V

    return-object v0
.end method
