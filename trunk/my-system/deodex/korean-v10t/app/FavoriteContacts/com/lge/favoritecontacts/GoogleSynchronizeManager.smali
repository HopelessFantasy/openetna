.class public final Lcom/lge/favoritecontacts/GoogleSynchronizeManager;
.super Ljava/lang/Object;
.source "GoogleSynchronizeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/favoritecontacts/GoogleSynchronizeManager$AutoSyncTimerTask;
    }
.end annotation


# static fields
.field private static AUTO_SYNCHRONIZE:Z = false

.field private static final AUTO_SYNCHRONIZE_CONTACTS:Ljava/lang/String; = "true"

.field private static final AUTO_SYNC_CONTACTS_CHECKVALUES:[Ljava/lang/String; = null

.field private static final AUTO_SYNC_CONTACTS_INDEX:I = 0x1

.field private static final AUTO_SYNC_CONTACTS_PROJECTION:[Ljava/lang/String; = null

.field private static final AUTO_SYNC_NAME_INDEX:I = 0x0

.field private static final AUTO_SYNC_TICKLES_INDEX:I = 0x0

.field private static AUTO_SYNC_TIMER_TASK:Lcom/lge/favoritecontacts/GoogleSynchronizeManager$AutoSyncTimerTask; = null

.field private static final AUTO_SYNC_VALUE_INDEX:I = 0x1

.field private static final NOAUTO_SYNCHRONIZE_CONTACTS:Ljava/lang/String; = "false"

.field private static ORIGINAL_AUTO_SYNCHRONIZE:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    sput-boolean v2, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->AUTO_SYNCHRONIZE:Z

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->ORIGINAL_AUTO_SYNCHRONIZE:Ljava/lang/Boolean;

    .line 21
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "listen_for_tickles"

    aput-object v1, v0, v2

    const-string v1, "sync_provider_contacts"

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->AUTO_SYNC_CONTACTS_CHECKVALUES:[Ljava/lang/String;

    .line 29
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v2

    const-string v1, "value"

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->AUTO_SYNC_CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoSyncStatus()Z
    .registers 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->AUTO_SYNCHRONIZE:Z

    return v0
.end method

.method public static initStatus()V
    .registers 1

    .prologue
    .line 124
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->ORIGINAL_AUTO_SYNCHRONIZE:Ljava/lang/Boolean;

    .line 125
    return-void
.end method

.method public static isAutosync(Landroid/content/ContentResolver;)Z
    .registers 13
    .parameter "resolver"

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "true"

    .line 41
    sget-object v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->ORIGINAL_AUTO_SYNCHRONIZE:Ljava/lang/Boolean;

    if-nez v0, :cond_37

    .line 42
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v9}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->ORIGINAL_AUTO_SYNCHRONIZE:Ljava/lang/Boolean;

    .line 46
    sget-object v1, Landroid/provider/Sync$Settings;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->AUTO_SYNC_CONTACTS_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 48
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_23

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3e

    .line 83
    :cond_23
    :goto_23
    if-eqz v6, :cond_28

    .line 84
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 86
    :cond_28
    sget-object v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->ORIGINAL_AUTO_SYNCHRONIZE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->AUTO_SYNCHRONIZE:Z

    .line 87
    sget-object v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->ORIGINAL_AUTO_SYNCHRONIZE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .end local v6           #cursor:Landroid/database/Cursor;
    :goto_36
    return v0

    .line 44
    :cond_37
    sget-object v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->ORIGINAL_AUTO_SYNCHRONIZE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_36

    .line 53
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_3e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 54
    :cond_44
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 55
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 57
    .local v7, name:Ljava/lang/String;
    sget-object v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->AUTO_SYNC_CONTACTS_CHECKVALUES:[Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 58
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 60
    .local v8, value:Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 61
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 62
    :cond_6a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 63
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 65
    sget-object v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->AUTO_SYNC_CONTACTS_CHECKVALUES:[Ljava/lang/String;

    aget-object v0, v0, v10

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 66
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 68
    const-string v0, "true"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 69
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->ORIGINAL_AUTO_SYNCHRONIZE:Ljava/lang/Boolean;

    goto :goto_23
.end method

.method public static pauseAutoSync_TwoMins(Landroid/content/ContentResolver;)V
    .registers 2
    .parameter "resolver"

    .prologue
    .line 95
    sget-object v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->ORIGINAL_AUTO_SYNCHRONIZE:Ljava/lang/Boolean;

    if-nez v0, :cond_5

    .line 108
    :goto_4
    return-void

    .line 98
    :cond_5
    sget-boolean v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->AUTO_SYNCHRONIZE:Z

    if-eqz v0, :cond_e

    .line 99
    const-string v0, "false"

    invoke-static {p0, v0}, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->setAutoSync(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 101
    :cond_e
    sget-boolean v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->AUTO_SYNCHRONIZE:Z

    if-eqz v0, :cond_21

    sget-object v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->ORIGINAL_AUTO_SYNCHRONIZE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 102
    invoke-static {p0}, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->startTicker(Landroid/content/ContentResolver;)V

    .line 107
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->AUTO_SYNCHRONIZE:Z

    goto :goto_4

    .line 103
    :cond_21
    sget-object v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->ORIGINAL_AUTO_SYNCHRONIZE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->AUTO_SYNC_TIMER_TASK:Lcom/lge/favoritecontacts/GoogleSynchronizeManager$AutoSyncTimerTask;

    if-eqz v0, :cond_1d

    .line 104
    invoke-static {p0}, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->startTicker(Landroid/content/ContentResolver;)V

    goto :goto_1d
.end method

.method private static setAutoSync(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 6
    .parameter "resolver"
    .parameter "settingVelue"

    .prologue
    .line 136
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 138
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v1, "name"

    sget-object v2, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->AUTO_SYNC_CONTACTS_CHECKVALUES:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sget-object v1, Landroid/provider/Sync$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 143
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 144
    return-void
.end method

.method public static startAutoSync(Landroid/content/ContentResolver;)V
    .registers 2
    .parameter "resolver"

    .prologue
    .line 111
    sget-object v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->ORIGINAL_AUTO_SYNCHRONIZE:Ljava/lang/Boolean;

    if-nez v0, :cond_5

    .line 120
    :goto_4
    return-void

    .line 114
    :cond_5
    sget-boolean v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->AUTO_SYNCHRONIZE:Z

    if-nez v0, :cond_19

    sget-object v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->ORIGINAL_AUTO_SYNCHRONIZE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 115
    const-string v0, "true"

    invoke-static {p0, v0}, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->setAutoSync(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->AUTO_SYNCHRONIZE:Z

    .line 119
    :cond_19
    invoke-static {}, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->stopTicker()V

    goto :goto_4
.end method

.method private static startTicker(Landroid/content/ContentResolver;)V
    .registers 2
    .parameter "resolver"

    .prologue
    .line 147
    sget-object v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->AUTO_SYNC_TIMER_TASK:Lcom/lge/favoritecontacts/GoogleSynchronizeManager$AutoSyncTimerTask;

    if-eqz v0, :cond_c

    .line 149
    sget-object v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->AUTO_SYNC_TIMER_TASK:Lcom/lge/favoritecontacts/GoogleSynchronizeManager$AutoSyncTimerTask;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/GoogleSynchronizeManager$AutoSyncTimerTask;->stopShedule()V

    .line 150
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->AUTO_SYNC_TIMER_TASK:Lcom/lge/favoritecontacts/GoogleSynchronizeManager$AutoSyncTimerTask;

    .line 152
    :cond_c
    new-instance v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager$AutoSyncTimerTask;

    invoke-direct {v0, p0}, Lcom/lge/favoritecontacts/GoogleSynchronizeManager$AutoSyncTimerTask;-><init>(Landroid/content/ContentResolver;)V

    sput-object v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->AUTO_SYNC_TIMER_TASK:Lcom/lge/favoritecontacts/GoogleSynchronizeManager$AutoSyncTimerTask;

    .line 153
    sget-object v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->AUTO_SYNC_TIMER_TASK:Lcom/lge/favoritecontacts/GoogleSynchronizeManager$AutoSyncTimerTask;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/GoogleSynchronizeManager$AutoSyncTimerTask;->startSchedule()V

    .line 154
    return-void
.end method

.method private static stopTicker()V
    .registers 1

    .prologue
    .line 157
    sget-object v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->AUTO_SYNC_TIMER_TASK:Lcom/lge/favoritecontacts/GoogleSynchronizeManager$AutoSyncTimerTask;

    if-eqz v0, :cond_c

    .line 159
    sget-object v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->AUTO_SYNC_TIMER_TASK:Lcom/lge/favoritecontacts/GoogleSynchronizeManager$AutoSyncTimerTask;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/GoogleSynchronizeManager$AutoSyncTimerTask;->stopShedule()V

    .line 160
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/favoritecontacts/GoogleSynchronizeManager;->AUTO_SYNC_TIMER_TASK:Lcom/lge/favoritecontacts/GoogleSynchronizeManager$AutoSyncTimerTask;

    .line 162
    :cond_c
    return-void
.end method
