.class public Lcom/lge/newbay/client/impl/DefaultSessonTokenInitializer;
.super Ljava/lang/Object;
.source "DefaultSessonTokenInitializer.java"

# interfaces
.implements Lcom/lge/newbay/client/ISessonTokenInitializer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSessionToken(Lcom/lge/newbay/client/impl/NewbayContext;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "ctx"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/newbay/client/NewbayConnectException;
        }
    .end annotation

    .prologue
    .line 23
    :try_start_0
    invoke-static {p1, p2}, Lcom/lge/newbay/client/impl/Auth;->getSessionToken(Lcom/lge/newbay/client/impl/NewbayContext;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 24
    :catch_5
    move-exception v0

    .line 25
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/lge/newbay/client/NewbayConnectException;

    const-string v2, "unable to get session token from Newbay Server"

    invoke-direct {v1, v2}, Lcom/lge/newbay/client/NewbayConnectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
