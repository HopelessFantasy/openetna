.class public Landroid/provider/Sync$Active$QueryMap;
.super Landroid/content/ContentQueryMap;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Sync$Active;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryMap"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;ZLandroid/os/Handler;)V
    .registers 10
    .parameter "contentResolver"
    .parameter "keepUpdated"
    .parameter "handlerForUpdateNotifications"

    .prologue
    const/4 v2, 0x0

    .line 435
    sget-object v1, Landroid/provider/Sync$Active;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "_id"

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    .line 437
    return-void
.end method


# virtual methods
.method public getActiveSyncInfo()Landroid/content/ContentValues;
    .registers 5

    .prologue
    .line 440
    invoke-virtual {p0}, Landroid/provider/Sync$Active$QueryMap;->getRows()Ljava/util/Map;

    move-result-object v1

    .line 441
    .local v1, rows:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .local v2, values:Landroid/content/ContentValues;
    move-object v3, v2

    .line 444
    .end local v2           #values:Landroid/content/ContentValues;
    :goto_19
    return-object v3

    :cond_1a
    const/4 v3, 0x0

    goto :goto_19
.end method

.method public getSyncStartTime()J
    .registers 4

    .prologue
    .line 458
    invoke-virtual {p0}, Landroid/provider/Sync$Active$QueryMap;->getActiveSyncInfo()Landroid/content/ContentValues;

    move-result-object v0

    .line 459
    .local v0, values:Landroid/content/ContentValues;
    if-nez v0, :cond_9

    const-wide/16 v1, -0x1

    :goto_8
    return-wide v1

    :cond_9
    const-string v1, "startTime"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_8
.end method

.method public getSyncingAccount()Ljava/lang/String;
    .registers 3

    .prologue
    .line 448
    invoke-virtual {p0}, Landroid/provider/Sync$Active$QueryMap;->getActiveSyncInfo()Landroid/content/ContentValues;

    move-result-object v0

    .line 449
    .local v0, values:Landroid/content/ContentValues;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public getSyncingAuthority()Ljava/lang/String;
    .registers 3

    .prologue
    .line 453
    invoke-virtual {p0}, Landroid/provider/Sync$Active$QueryMap;->getActiveSyncInfo()Landroid/content/ContentValues;

    move-result-object v0

    .line 454
    .local v0, values:Landroid/content/ContentValues;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    const-string v1, "authority"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method
