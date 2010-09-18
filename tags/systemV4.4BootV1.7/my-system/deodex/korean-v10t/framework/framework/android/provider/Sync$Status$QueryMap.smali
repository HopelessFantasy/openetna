.class public Landroid/provider/Sync$Status$QueryMap;
.super Landroid/content/ContentQueryMap;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Sync$Status;
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

    .line 355
    sget-object v1, Landroid/provider/Sync$Status;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "_id"

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    .line 357
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 7
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 360
    invoke-virtual {p0}, Landroid/provider/Sync$Status$QueryMap;->getRows()Ljava/util/Map;

    move-result-object v1

    .line 361
    .local v1, rows:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 362
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "account"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "authority"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object v3, v2

    .line 367
    .end local v2           #values:Landroid/content/ContentValues;
    :goto_31
    return-object v3

    :cond_32
    const/4 v3, 0x0

    goto :goto_31
.end method
