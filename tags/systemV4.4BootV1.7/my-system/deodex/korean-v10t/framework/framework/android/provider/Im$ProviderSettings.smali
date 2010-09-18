.class public Landroid/provider/Im$ProviderSettings;
.super Ljava/lang/Object;
.source "Im.java"

# interfaces
.implements Landroid/provider/Im$ProviderSettingsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Im;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProviderSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Im$ProviderSettings$QueryMap;
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android-dir/im-providerSettings"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final LAST_RMQ_RECEIVED:Ljava/lang/String; = "last_rmq_rec"

.field public static final SETTING_AUTOMATICALLY_CONNECT_GTALK:Ljava/lang/String; = "gtalk_auto_connect"

.field public static final SETTING_AUTOMATICALLY_START_SERVICE:Ljava/lang/String; = "auto_start_service"

.field public static final SETTING_ENABLE_NOTIFICATION:Ljava/lang/String; = "enable_notification"

.field public static final SETTING_HIDE_OFFLINE_CONTACTS:Ljava/lang/String; = "hide_offline_contacts"

.field public static final SETTING_RINGTONE:Ljava/lang/String; = "ringtone"

.field public static final SETTING_RINGTONE_DEFAULT:Ljava/lang/String; = "content://settings/system/notification_sound"

.field public static final SETTING_RINGTONE_URI:Ljava/lang/String; = "ringtone_uri"

.field public static final SETTING_SHOW_MOBILE_INDICATOR:Ljava/lang/String; = "mobile_indicator"

.field public static final SETTING_VIBRATE:Ljava/lang/String; = "vibrate"

.field public static final SHOW_OFFLINE_CONTACTS:Ljava/lang/String; = "show_offline_contacts"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1499
    const-string v0, "content://im/providerSettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Im$ProviderSettings;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1494
    return-void
.end method

.method public static getBooleanValue(Landroid/content/ContentResolver;JLjava/lang/String;)Z
    .registers 8
    .parameter "cr"
    .parameter "providerId"
    .parameter "settingName"

    .prologue
    const/4 v3, 0x0

    .line 1606
    const/4 v1, 0x0

    .line 1607
    .local v1, ret:Z
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Im$ProviderSettings;->getSettingValue(Landroid/content/ContentResolver;JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1608
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_13

    .line 1609
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    move v1, v2

    .line 1610
    :goto_10
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1612
    :cond_13
    return v1

    :cond_14
    move v1, v3

    .line 1609
    goto :goto_10
.end method

.method private static getSettingValue(Landroid/content/ContentResolver;JLjava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .parameter "cr"
    .parameter "providerId"
    .parameter "settingName"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 1616
    sget-object v0, Landroid/provider/Im$ProviderSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "value"

    aput-object v0, v2, v7

    const-string v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p3, v4, v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1618
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_27

    .line 1619
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_27

    .line 1620
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    .line 1624
    :goto_26
    return-object v0

    :cond_27
    move-object v0, v6

    goto :goto_26
.end method

.method public static getStringValue(Landroid/content/ContentResolver;JLjava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "cr"
    .parameter "providerId"
    .parameter "settingName"

    .prologue
    .line 1587
    const/4 v1, 0x0

    .line 1588
    .local v1, ret:Ljava/lang/String;
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Im$ProviderSettings;->getSettingValue(Landroid/content/ContentResolver;JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1589
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_f

    .line 1590
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1591
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1594
    :cond_f
    return-object v1
.end method

.method public static putBooleanValue(Landroid/content/ContentResolver;JLjava/lang/String;Z)V
    .registers 8
    .parameter "cr"
    .parameter "providerId"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1655
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1656
    .local v0, v:Landroid/content/ContentValues;
    const-string v1, "provider"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1657
    const-string v1, "name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    const-string v1, "value"

    invoke-static {p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    sget-object v1, Landroid/provider/Im$ProviderSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1661
    return-void
.end method

.method public static putLongValue(Landroid/content/ContentResolver;JLjava/lang/String;J)V
    .registers 9
    .parameter "cr"
    .parameter "providerId"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1637
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1638
    .local v0, v:Landroid/content/ContentValues;
    const-string v1, "provider"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1639
    const-string v1, "name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    const-string v1, "value"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1642
    sget-object v1, Landroid/provider/Im$ProviderSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1643
    return-void
.end method

.method public static putStringValue(Landroid/content/ContentResolver;JLjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "cr"
    .parameter "providerId"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1673
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1674
    .local v0, v:Landroid/content/ContentValues;
    const-string v1, "provider"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1675
    const-string v1, "name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    const-string v1, "value"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    sget-object v1, Landroid/provider/Im$ProviderSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1679
    return-void
.end method

.method public static queryProviderSettings(Landroid/content/ContentResolver;J)Ljava/util/HashMap;
    .registers 13
    .parameter "cr"
    .parameter "providerId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 1561
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1563
    .local v7, settings:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v8

    const-string v0, "value"

    aput-object v0, v2, v9

    .line 1564
    .local v2, projection:[Ljava/lang/String;
    sget-object v0, Landroid/provider/Im$ProviderSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1565
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_24

    move-object v0, v3

    .line 1575
    :goto_23
    return-object v0

    .line 1569
    :cond_24
    :goto_24
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1570
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    .line 1573
    :cond_36
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v7

    .line 1575
    goto :goto_23
.end method

.method public static setAutomaticallyConnectGTalk(Landroid/content/ContentResolver;JZ)V
    .registers 5
    .parameter "contentResolver"
    .parameter "providerId"
    .parameter "autoConnect"

    .prologue
    .line 1690
    const-string v0, "gtalk_auto_connect"

    invoke-static {p0, p1, p2, v0, p3}, Landroid/provider/Im$ProviderSettings;->putBooleanValue(Landroid/content/ContentResolver;JLjava/lang/String;Z)V

    .line 1692
    return-void
.end method

.method public static setEnableNotification(Landroid/content/ContentResolver;JZ)V
    .registers 5
    .parameter "contentResolver"
    .parameter "providerId"
    .parameter "enable"

    .prologue
    .line 1714
    const-string v0, "enable_notification"

    invoke-static {p0, p1, p2, v0, p3}, Landroid/provider/Im$ProviderSettings;->putBooleanValue(Landroid/content/ContentResolver;JLjava/lang/String;Z)V

    .line 1715
    return-void
.end method

.method public static setEnableRingtone(Landroid/content/ContentResolver;JZ)V
    .registers 5
    .parameter "contentResolver"
    .parameter "providerId"
    .parameter "ringtone"

    .prologue
    .line 1737
    const-string v0, "ringtone"

    invoke-static {p0, p1, p2, v0, p3}, Landroid/provider/Im$ProviderSettings;->putBooleanValue(Landroid/content/ContentResolver;JLjava/lang/String;Z)V

    .line 1738
    return-void
.end method

.method public static setHideOfflineContacts(Landroid/content/ContentResolver;JZ)V
    .registers 5
    .parameter "contentResolver"
    .parameter "providerId"
    .parameter "hideOfflineContacts"

    .prologue
    .line 1702
    const-string v0, "hide_offline_contacts"

    invoke-static {p0, p1, p2, v0, p3}, Landroid/provider/Im$ProviderSettings;->putBooleanValue(Landroid/content/ContentResolver;JLjava/lang/String;Z)V

    .line 1704
    return-void
.end method

.method public static setRingtoneURI(Landroid/content/ContentResolver;JLjava/lang/String;)V
    .registers 5
    .parameter "contentResolver"
    .parameter "providerId"
    .parameter "ringtoneUri"

    .prologue
    .line 1750
    const-string v0, "ringtone_uri"

    invoke-static {p0, p1, p2, v0, p3}, Landroid/provider/Im$ProviderSettings;->putStringValue(Landroid/content/ContentResolver;JLjava/lang/String;Ljava/lang/String;)V

    .line 1751
    return-void
.end method

.method public static setShowMobileIndicator(Landroid/content/ContentResolver;JZ)V
    .registers 5
    .parameter "contentResolver"
    .parameter "providerId"
    .parameter "showMobileIndicator"

    .prologue
    .line 1761
    const-string v0, "mobile_indicator"

    invoke-static {p0, p1, p2, v0, p3}, Landroid/provider/Im$ProviderSettings;->putBooleanValue(Landroid/content/ContentResolver;JLjava/lang/String;Z)V

    .line 1763
    return-void
.end method

.method public static setVibrate(Landroid/content/ContentResolver;JZ)V
    .registers 5
    .parameter "contentResolver"
    .parameter "providerId"
    .parameter "vibrate"

    .prologue
    .line 1725
    const-string v0, "vibrate"

    invoke-static {p0, p1, p2, v0, p3}, Landroid/provider/Im$ProviderSettings;->putBooleanValue(Landroid/content/ContentResolver;JLjava/lang/String;Z)V

    .line 1726
    return-void
.end method
