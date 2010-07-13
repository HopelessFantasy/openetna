.class public Lcom/lge/sns/service/update/AutoUpdateFactory;
.super Ljava/lang/Object;
.source "AutoUpdateFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoUpdater(Landroid/content/Context;Lcom/lge/sns/account/Account;)Lcom/lge/sns/service/update/AutoUpdater;
    .registers 4
    .parameter "ctx"
    .parameter "account"

    .prologue
    .line 9
    const-string v0, "TW"

    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 10
    new-instance v0, Lcom/lge/sns/service/update/TwitterUpdater;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/service/update/TwitterUpdater;-><init>(Landroid/content/Context;Lcom/lge/sns/account/Account;)V

    .line 12
    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Lcom/lge/sns/service/update/DefaultUpdater;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/service/update/DefaultUpdater;-><init>(Landroid/content/Context;Lcom/lge/sns/account/Account;)V

    goto :goto_11
.end method
