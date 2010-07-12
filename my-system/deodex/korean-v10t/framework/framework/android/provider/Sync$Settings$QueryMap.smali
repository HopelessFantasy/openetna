.class public Landroid/provider/Sync$Settings$QueryMap;
.super Landroid/content/ContentQueryMap;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Sync$Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryMap"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;ZLandroid/os/Handler;)V
    .registers 10
    .parameter "contentResolver"
    .parameter "keepUpdated"
    .parameter "handlerForUpdateNotifications"

    .prologue
    const/4 v2, 0x0

    .line 577
    sget-object v1, Landroid/provider/Sync$Settings;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "name"

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    .line 579
    iput-object p1, p0, Landroid/provider/Sync$Settings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    .line 580
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .registers 5
    .parameter "name"
    .parameter "def"

    .prologue
    .line 628
    invoke-virtual {p0, p1}, Landroid/provider/Sync$Settings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 629
    .local v0, values:Landroid/content/ContentValues;
    if-eqz v0, :cond_11

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_10
    return v1

    :cond_11
    move v1, p2

    goto :goto_10
.end method


# virtual methods
.method public getListenForNetworkTickles()Z
    .registers 3

    .prologue
    .line 616
    const-string v0, "listen_for_tickles"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/provider/Sync$Settings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSyncProviderAutomatically(Ljava/lang/String;)Z
    .registers 4
    .parameter "providerName"

    .prologue
    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sync_provider_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/provider/Sync$Settings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setListenForNetworkTickles(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 607
    iget-object v0, p0, Landroid/provider/Sync$Settings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Landroid/provider/Sync$Settings;->setListenForNetworkTickles(Landroid/content/ContentResolver;Z)V

    .line 608
    return-void
.end method

.method public setSyncProviderAutomatically(Ljava/lang/String;Z)V
    .registers 4
    .parameter "providerName"
    .parameter "sync"

    .prologue
    .line 598
    iget-object v0, p0, Landroid/provider/Sync$Settings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Landroid/provider/Sync$Settings;->setSyncProviderAutomatically(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 599
    return-void
.end method
