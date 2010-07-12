.class public Landroid/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;
    .registers 14
    .parameter "offset"
    .parameter "dst"
    .parameter "when"
    .parameter "country"

    .prologue
    .line 44
    if-nez p4, :cond_4

    .line 45
    const/4 p0, 0x0

    .line 110
    .end local p0
    .end local p1
    .end local p2
    :goto_3
    return-object p0

    .line 48
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_4
    const/4 v0, 0x0

    .line 50
    .local v0, best:Ljava/util/TimeZone;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 51
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x10b0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 52
    .local v7, parser:Landroid/content/res/XmlResourceParser;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 54
    .local v6, d:Ljava/util/Date;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 55
    .local v2, current:Ljava/util/TimeZone;
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, currentName:Ljava/lang/String;
    invoke-virtual {v2, p2, p3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    .line 57
    .local v5, currentOffset:I
    invoke-virtual {v2, v6}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v3

    .line 60
    .local v3, currentDst:Z
    :try_start_25
    const-string v1, "timezones"

    .end local v1           #r:Landroid/content/res/Resources;
    invoke-static {v7, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 63
    :cond_2a
    :goto_2a
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 65
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, element:Ljava/lang/String;
    if-eqz v1, :cond_3b

    const-string v8, "timezone"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_9a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25 .. :try_end_38} :catch_7b
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_38} :catch_8a

    move-result v1

    .end local v1           #element:Ljava/lang/String;
    if-nez v1, :cond_40

    .line 107
    :cond_3b
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    move-object p0, v0

    .line 108
    .end local v0           #best:Ljava/util/TimeZone;
    .local p0, best:Ljava/util/TimeZone;
    goto :goto_3

    .line 70
    .restart local v0       #best:Ljava/util/TimeZone;
    .local p0, offset:I
    :cond_40
    const/4 v1, 0x0

    :try_start_41
    const-string v8, "code"

    invoke-interface {v7, v1, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, code:Ljava/lang/String;
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .end local v1           #code:Ljava/lang/String;
    if-eqz v1, :cond_2a

    .line 73
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v8, 0x4

    if-ne v1, v8, :cond_2a

    .line 74
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, maybe:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5b
    .catchall {:try_start_41 .. :try_end_5b} :catchall_9a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_41 .. :try_end_5b} :catch_7b
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_5b} :catch_8a

    move-result v8

    if-eqz v8, :cond_67

    .line 81
    if-ne v5, p0, :cond_67

    if-ne v3, p1, :cond_67

    .line 107
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    move-object p0, v2

    .line 82
    goto :goto_3

    .line 91
    :cond_67
    if-nez v0, :cond_2a

    .line 92
    :try_start_69
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 94
    .local v1, tz:Ljava/util/TimeZone;
    invoke-virtual {v1, p2, p3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    if-ne v8, p0, :cond_2a

    invoke-virtual {v1, v6}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z
    :try_end_76
    .catchall {:try_start_69 .. :try_end_76} :catchall_9a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_69 .. :try_end_76} :catch_7b
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_76} :catch_8a

    move-result v8

    if-ne v8, p1, :cond_2a

    .line 96
    move-object v0, v1

    goto :goto_2a

    .line 102
    .end local v1           #tz:Ljava/util/TimeZone;
    :catch_7b
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 103
    .end local v0           #best:Ljava/util/TimeZone;
    .local p0, best:Ljava/util/TimeZone;
    .local p1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_7e
    const-string p2, "TimeUtils"

    .end local p2
    const-string p3, "Got exception while getting preferred time zone."

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_85
    .catchall {:try_start_7e .. :try_end_85} :catchall_95

    .line 107
    .end local p1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_85
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_3

    .line 104
    .restart local v0       #best:Ljava/util/TimeZone;
    .local p0, offset:I
    .local p1, dst:Z
    .restart local p2
    :catch_8a
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 105
    .end local v0           #best:Ljava/util/TimeZone;
    .local p0, best:Ljava/util/TimeZone;
    .local p1, e:Ljava/io/IOException;
    :try_start_8d
    const-string p2, "TimeUtils"

    .end local p2
    const-string p3, "Got exception while getting preferred time zone."

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_94
    .catchall {:try_start_8d .. :try_end_94} :catchall_95

    goto :goto_85

    .line 107
    .end local p1           #e:Ljava/io/IOException;
    :catchall_95
    move-exception p1

    :goto_96
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    throw p1

    .restart local v0       #best:Ljava/util/TimeZone;
    .local p0, offset:I
    .local p1, dst:Z
    .restart local p2
    :catchall_9a
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #best:Ljava/util/TimeZone;
    .local p0, best:Ljava/util/TimeZone;
    goto :goto_96
.end method

.method public static getTimeZoneDatabaseVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 131
    invoke-static {}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
