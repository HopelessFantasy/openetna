.class public Lcom/lge/sns/account/ui/twitter/TwitterSnMenu;
.super Lcom/lge/sns/account/ui/SnMenus;
.source "TwitterSnMenu.java"


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
    .line 41
    invoke-direct {p0, p1}, Lcom/lge/sns/account/ui/SnMenus;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/account/ui/twitter/TwitterSnMenu;->items:Ljava/util/List;

    .line 42
    iget-object v0, p0, Lcom/lge/sns/account/ui/twitter/TwitterSnMenu;->items:Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/lge/sns/account/ui/twitter/TwitterSnMenu;->getHomeItem(Lcom/lge/sns/account/Account;)Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/lge/sns/account/ui/twitter/TwitterSnMenu;->items:Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/lge/sns/account/ui/twitter/TwitterSnMenu;->getAtItem(Lcom/lge/sns/account/Account;)Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/lge/sns/account/ui/twitter/TwitterSnMenu;->items:Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/lge/sns/account/ui/twitter/TwitterSnMenu;->getProfileItem(Lcom/lge/sns/account/Account;)Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/lge/sns/account/ui/twitter/TwitterSnMenu;->items:Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/lge/sns/account/ui/twitter/TwitterSnMenu;->getSnMessageItem(Lcom/lge/sns/account/Account;)Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method


# virtual methods
.method protected getAtItem(Lcom/lge/sns/account/Account;)Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;
    .registers 14
    .parameter "account"

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v9

    .line 69
    .local v9, snsId:Ljava/lang/String;
    const-string v11, ""

    .line 71
    .local v11, userName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getCredential()Lcom/lge/sns/account/Credential;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/sns/account/Credential;->getUid()Ljava/lang/String;

    move-result-object v10

    .line 72
    .local v10, userId:Ljava/lang/String;
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/sns/account/ui/twitter/TwitterSnMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v8

    .line 74
    .local v8, profileFacade:Lcom/lge/sns/profile/IProfileFacade;
    :try_start_1a
    invoke-interface {v8, v9, v10}, Lcom/lge/sns/profile/IProfileFacade;->getProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;

    move-result-object v7

    .line 75
    .local v7, profile:Lcom/lge/sns/profile/Profile;
    invoke-virtual {v7}, Lcom/lge/sns/profile/Profile;->getUserName()Ljava/lang/String;
    :try_end_21
    .catch Lcom/lge/sns/SnsException; {:try_start_1a .. :try_end_21} :catch_56

    move-result-object v11

    .line 80
    .end local v7           #profile:Lcom/lge/sns/profile/Profile;
    :goto_22
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v6, atIntent:Landroid/content/Intent;
    const-string v0, "com.lge.sns.profile.intent.action.VIEW_TWITTER_TWEET_AT_LIST"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v0, "sns_id"

    invoke-virtual {v6, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const/high16 v0, 0x400

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    new-instance v0, Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;

    const-string v2, "At"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f020071

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;-><init>(Lcom/lge/sns/account/ui/SnMenus;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;)V

    return-object v0

    .line 76
    .end local v6           #atIntent:Landroid/content/Intent;
    :catch_56
    move-exception v0

    goto :goto_22
.end method

.method protected getHomeItem(Lcom/lge/sns/account/Account;)Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;
    .registers 10
    .parameter "account"

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v7

    .line 90
    .local v7, snsId:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v6, homeIntent:Landroid/content/Intent;
    const-string v0, "com.lge.sns.profile.intent.action.VIEW_TWITTER_TWEET_LIST"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v0, "sns_id"

    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const/high16 v0, 0x400

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 95
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
    .line 59
    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, snsId:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.lge.sns.profile.intent.action.VIEW_TWITTER_PROFILE"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v6, profileIntent:Landroid/content/Intent;
    const-string v0, "sns_id"

    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const/high16 v0, 0x400

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 63
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
    .line 100
    iget-object v0, p0, Lcom/lge/sns/account/ui/twitter/TwitterSnMenu;->items:Ljava/util/List;

    return-object v0
.end method

.method protected getSnMessageItem(Lcom/lge/sns/account/Account;)Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;
    .registers 10
    .parameter "account"

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v7

    .line 50
    .local v7, snsId:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v6, snmessageIntent:Landroid/content/Intent;
    const-string v0, "vnd.lge.cursor.item/vnd.lge.sns.snmessage.inbox"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v0, "sns_id"

    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const/high16 v0, 0x400

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 54
    new-instance v0, Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;

    const-string v2, "Inbox"

    const/4 v3, 0x0

    const v4, 0x7f050083

    const v5, 0x7f02006b

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;-><init>(Lcom/lge/sns/account/ui/SnMenus;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;)V

    return-object v0
.end method
