.class public Lcom/lge/sns/account/ui/myspace/MyspaceSnMenu;
.super Lcom/lge/sns/account/ui/DefaultSnMenu;
.source "MyspaceSnMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/sns/account/Account;)V
    .registers 3
    .parameter "ctx"
    .parameter "account"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/account/ui/DefaultSnMenu;-><init>(Landroid/content/Context;Lcom/lge/sns/account/Account;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected getHomeItem(Lcom/lge/sns/account/Account;)Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;
    .registers 10
    .parameter "account"

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v7

    .line 37
    .local v7, snsId:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 38
    .local v6, homeIntent:Landroid/content/Intent;
    const-string v0, "com.lge.sns.feed.intent.action.VIEW_MYSPACE_HOME"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v0, "sns_id"

    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const/high16 v0, 0x400

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 42
    new-instance v0, Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;

    const-string v2, "Home"

    const/4 v3, 0x0

    const v4, 0x7f050013

    const v5, 0x7f02006a

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/lge/sns/account/ui/SnMenus$SnMenuItem;-><init>(Lcom/lge/sns/account/ui/SnMenus;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;)V

    return-object v0
.end method
