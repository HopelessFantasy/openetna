.class public final Landroid/provider/Sync$Settings;
.super Ljava/lang/Object;
.source "Sync.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Sync$SettingsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Sync$Settings$QueryMap;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final PROJECTION:[Ljava/lang/String; = null

.field public static final SETTING_LISTEN_FOR_TICKLES:Ljava/lang/String; = "listen_for_tickles"

.field public static final SETTING_SYNC_PROVIDER_PREFIX:Ljava/lang/String; = "sync_provider_"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 491
    const-string v0, "content://sync/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Sync$Settings;->CONTENT_URI:Landroid/net/Uri;

    .line 500
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Sync$Settings;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    return-void
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .registers 10
    .parameter "contentResolver"
    .parameter "name"
    .parameter "def"

    .prologue
    const/4 v0, 0x1

    .line 532
    sget-object v1, Landroid/provider/Sync$Settings;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Sync$Settings;->PROJECTION:[Ljava/lang/String;

    const-string v3, "name=?"

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 539
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_30

    :try_start_14
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 540
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_29

    move-result v0

    .line 543
    if-eqz v6, :cond_28

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 545
    :cond_28
    :goto_28
    return v0

    .line 543
    :catchall_29
    move-exception v0

    if-eqz v6, :cond_2f

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2f
    throw v0

    :cond_30
    if-eqz v6, :cond_35

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_35
    move v0, p2

    .line 545
    goto :goto_28
.end method

.method private static putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .registers 6
    .parameter "contentResolver"
    .parameter "name"
    .parameter "val"

    .prologue
    .line 515
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 516
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v1, "value"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    sget-object v1, Landroid/provider/Sync$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 520
    return-void
.end method

.method public static setListenForNetworkTickles(Landroid/content/ContentResolver;Z)V
    .registers 3
    .parameter "contentResolver"
    .parameter "flag"

    .prologue
    .line 569
    const-string v0, "listen_for_tickles"

    invoke-static {p0, v0, p1}, Landroid/provider/Sync$Settings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 570
    return-void
.end method

.method public static setSyncProviderAutomatically(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .registers 5
    .parameter "contentResolver"
    .parameter "providerName"
    .parameter "sync"

    .prologue
    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sync_provider_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/provider/Sync$Settings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 559
    return-void
.end method
