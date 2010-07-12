.class public Landroid/provider/Im$ProviderSettings$QueryMap;
.super Landroid/content/ContentQueryMap;
.source "Im.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Im$ProviderSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryMap"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mProviderId:J


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;JZLandroid/os/Handler;)V
    .registers 13
    .parameter "contentResolver"
    .parameter "providerId"
    .parameter "keepUpdated"
    .parameter "handlerForUpdateNotifications"

    .prologue
    const/4 v4, 0x0

    const-string v6, "name"

    .line 1771
    sget-object v1, Landroid/provider/Im$ProviderSettings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "name"

    aput-object v6, v2, v0

    const/4 v0, 0x1

    const-string v3, "value"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provider="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "name"

    invoke-direct {p0, v0, v6, p4, p5}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    .line 1777
    iput-object p1, p0, Landroid/provider/Im$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    .line 1778
    iput-wide p2, p0, Landroid/provider/Im$ProviderSettings$QueryMap;->mProviderId:J

    .line 1779
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .registers 5
    .parameter "name"
    .parameter "def"

    .prologue
    .line 1924
    invoke-virtual {p0, p1}, Landroid/provider/Im$ProviderSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1925
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

.method private getInteger(Ljava/lang/String;I)I
    .registers 5
    .parameter "name"
    .parameter "def"

    .prologue
    .line 1950
    invoke-virtual {p0, p1}, Landroid/provider/Im$ProviderSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1951
    .local v0, values:Landroid/content/ContentValues;
    if-eqz v0, :cond_11

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_10
    return v1

    :cond_11
    move v1, p2

    goto :goto_10
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "name"
    .parameter "def"

    .prologue
    .line 1937
    invoke-virtual {p0, p1}, Landroid/provider/Im$ProviderSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1938
    .local v0, values:Landroid/content/ContentValues;
    if-eqz v0, :cond_d

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_c
    return-object v1

    :cond_d
    move-object v1, p2

    goto :goto_c
.end method


# virtual methods
.method public getAutomaticallyConnectToGTalkServer()Z
    .registers 3

    .prologue
    .line 1796
    const-string v0, "gtalk_auto_connect"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/provider/Im$ProviderSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getEnableNotification()Z
    .registers 3

    .prologue
    .line 1835
    const-string v0, "enable_notification"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/provider/Im$ProviderSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getEnableRingtone()Z
    .registers 3

    .prologue
    .line 1873
    const-string v0, "ringtone"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/provider/Im$ProviderSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHideOfflineContacts()Z
    .registers 3

    .prologue
    .line 1816
    const-string v0, "hide_offline_contacts"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/provider/Im$ProviderSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getRingtoneURI()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1893
    const-string v0, "ringtone_uri"

    const-string v1, "content://settings/system/notification_sound"

    invoke-direct {p0, v0, v1}, Landroid/provider/Im$ProviderSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShowMobileIndicator()Z
    .registers 3

    .prologue
    .line 1911
    const-string v0, "mobile_indicator"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/provider/Im$ProviderSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVibrate()Z
    .registers 3

    .prologue
    .line 1854
    const-string v0, "vibrate"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/provider/Im$ProviderSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAutomaticallyConnectToGTalkServer(Z)V
    .registers 5
    .parameter "autoConnect"

    .prologue
    .line 1787
    iget-object v0, p0, Landroid/provider/Im$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Landroid/provider/Im$ProviderSettings$QueryMap;->mProviderId:J

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Im$ProviderSettings;->setAutomaticallyConnectGTalk(Landroid/content/ContentResolver;JZ)V

    .line 1789
    return-void
.end method

.method public setEnableNotification(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 1826
    iget-object v0, p0, Landroid/provider/Im$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Landroid/provider/Im$ProviderSettings$QueryMap;->mProviderId:J

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Im$ProviderSettings;->setEnableNotification(Landroid/content/ContentResolver;JZ)V

    .line 1827
    return-void
.end method

.method public setEnableRingtone(Z)V
    .registers 5
    .parameter "ringtone"

    .prologue
    .line 1864
    iget-object v0, p0, Landroid/provider/Im$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Landroid/provider/Im$ProviderSettings$QueryMap;->mProviderId:J

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Im$ProviderSettings;->setEnableRingtone(Landroid/content/ContentResolver;JZ)V

    .line 1865
    return-void
.end method

.method public setHideOfflineContacts(Z)V
    .registers 5
    .parameter "hideOfflineContacts"

    .prologue
    .line 1806
    iget-object v0, p0, Landroid/provider/Im$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Landroid/provider/Im$ProviderSettings$QueryMap;->mProviderId:J

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Im$ProviderSettings;->setHideOfflineContacts(Landroid/content/ContentResolver;JZ)V

    .line 1808
    return-void
.end method

.method public setRingtoneURI(Ljava/lang/String;)V
    .registers 5
    .parameter "ringtoneUri"

    .prologue
    .line 1884
    iget-object v0, p0, Landroid/provider/Im$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Landroid/provider/Im$ProviderSettings$QueryMap;->mProviderId:J

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Im$ProviderSettings;->setRingtoneURI(Landroid/content/ContentResolver;JLjava/lang/String;)V

    .line 1885
    return-void
.end method

.method public setShowMobileIndicator(Z)V
    .registers 5
    .parameter "showMobile"

    .prologue
    .line 1902
    iget-object v0, p0, Landroid/provider/Im$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Landroid/provider/Im$ProviderSettings$QueryMap;->mProviderId:J

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Im$ProviderSettings;->setShowMobileIndicator(Landroid/content/ContentResolver;JZ)V

    .line 1903
    return-void
.end method

.method public setVibrate(Z)V
    .registers 5
    .parameter "vibrate"

    .prologue
    .line 1845
    iget-object v0, p0, Landroid/provider/Im$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Landroid/provider/Im$ProviderSettings$QueryMap;->mProviderId:J

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Im$ProviderSettings;->setVibrate(Landroid/content/ContentResolver;JZ)V

    .line 1846
    return-void
.end method
