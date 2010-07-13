.class public Lcom/lge/sns/account/ui/SnMenuFactory;
.super Ljava/lang/Object;
.source "SnMenuFactory.java"


# static fields
.field static cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/lge/sns/account/Account;",
            "Lcom/lge/sns/account/ui/SnMenus;",
            ">;"
        }
    .end annotation
.end field

.field static final prop:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/account/ui/SnMenuFactory;->prop:Ljava/util/HashMap;

    .line 27
    sget-object v0, Lcom/lge/sns/account/ui/SnMenuFactory;->prop:Ljava/util/HashMap;

    const-string v1, "FB"

    const-class v2, Lcom/lge/sns/account/ui/facebook/FacebookSnMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/lge/sns/account/ui/SnMenuFactory;->prop:Ljava/util/HashMap;

    const-string v1, "MS"

    const-class v2, Lcom/lge/sns/account/ui/myspace/MyspaceSnMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/lge/sns/account/ui/SnMenuFactory;->prop:Ljava/util/HashMap;

    const-string v1, "BB"

    const-class v2, Lcom/lge/sns/account/ui/bebo/BeboSnMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/lge/sns/account/ui/SnMenuFactory;->prop:Ljava/util/HashMap;

    const-string v1, "TW"

    const-class v2, Lcom/lge/sns/account/ui/twitter/TwitterSnMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/account/ui/SnMenuFactory;->cache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSnMenus(Landroid/content/Context;Lcom/lge/sns/account/Account;)Lcom/lge/sns/account/ui/SnMenus;
    .registers 10
    .parameter "ctx"
    .parameter "account"

    .prologue
    .line 35
    sget-object v5, Lcom/lge/sns/account/ui/SnMenuFactory;->cache:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/sns/account/ui/SnMenus;

    .line 36
    .local v4, menus:Lcom/lge/sns/account/ui/SnMenus;
    if-nez v4, :cond_41

    .line 37
    sget-object v5, Lcom/lge/sns/account/ui/SnMenuFactory;->prop:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 38
    .local v1, className:Ljava/lang/String;
    if-eqz v1, :cond_4a

    .line 40
    :try_start_18
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 41
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Lcom/lge/sns/account/Account;

    aput-object v7, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 42
    .local v2, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #menus:Lcom/lge/sns/account/ui/SnMenus;
    check-cast v4, Lcom/lge/sns/account/ui/SnMenus;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3c} :catch_42

    .line 49
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .restart local v4       #menus:Lcom/lge/sns/account/ui/SnMenus;
    :goto_3c
    sget-object v5, Lcom/lge/sns/account/ui/SnMenuFactory;->cache:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .end local v1           #className:Ljava/lang/String;
    :cond_41
    return-object v4

    .line 43
    .end local v4           #menus:Lcom/lge/sns/account/ui/SnMenus;
    .restart local v1       #className:Ljava/lang/String;
    :catch_42
    move-exception v5

    move-object v3, v5

    .line 44
    .local v3, e:Ljava/lang/Exception;
    new-instance v4, Lcom/lge/sns/account/ui/DefaultSnMenu;

    invoke-direct {v4, p0, p1}, Lcom/lge/sns/account/ui/DefaultSnMenu;-><init>(Landroid/content/Context;Lcom/lge/sns/account/Account;)V

    .line 45
    .restart local v4       #menus:Lcom/lge/sns/account/ui/SnMenus;
    goto :goto_3c

    .line 47
    .end local v3           #e:Ljava/lang/Exception;
    :cond_4a
    new-instance v4, Lcom/lge/sns/account/ui/DefaultSnMenu;

    .end local v4           #menus:Lcom/lge/sns/account/ui/SnMenus;
    invoke-direct {v4, p0, p1}, Lcom/lge/sns/account/ui/DefaultSnMenu;-><init>(Landroid/content/Context;Lcom/lge/sns/account/Account;)V

    .restart local v4       #menus:Lcom/lge/sns/account/ui/SnMenus;
    goto :goto_3c
.end method
