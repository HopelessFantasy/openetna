.class public Lcom/lge/newbay/client/impl/Setting;
.super Lcom/lge/newbay/client/impl/NewbayAPI;
.source "Setting.java"

# interfaces
.implements Lcom/lge/newbay/client/ISetting;


# static fields
.field static final ATTR_ALERT_TIME_RANGE_FROM:Ljava/lang/String; = "from"

.field static final ATTR_ALERT_TIME_RANGE_TO:Ljava/lang/String; = "to"

.field static final ATTR_FEATURE_CHANNEL:Ljava/lang/String; = "channel"

.field static final ATTR_FEATURE_CODE:Ljava/lang/String; = "code"

.field static final ATTR_FEATURE_SNS_NOTIFICATION_ENABLED:Ljava/lang/String; = "notificationEnabled"

.field static final ATTR_FEATURE_SNS_PREFERRED_ENABLED:Ljava/lang/String; = "preferredEnabled"

.field static final ATTR_FEATURE_SNS_UID:Ljava/lang/String; = "uid"

.field static final KEY_ALERT_ID:Ljava/lang/String; = "{alert.id}"

.field static final TAG_ALERT:Ljava/lang/String; = "alert"

.field static final TAG_ALERT_CHANNEL:Ljava/lang/String; = "channel"

.field static final TAG_ALERT_DESCRIPTION:Ljava/lang/String; = "description"

.field static final TAG_ALERT_NAME:Ljava/lang/String; = "name"

.field static final TAG_ALERT_PAUSED:Ljava/lang/String; = "paused"

.field static final TAG_ALERT_PERIOD:Ljava/lang/String; = "period"

.field static final TAG_ALERT_RESOURCE:Ljava/lang/String; = "resource"

.field static final TAG_ALERT_RESOURCES:Ljava/lang/String; = "resources"

.field static final TAG_ALERT_RESOURCE_USERFILTER:Ljava/lang/String; = "userFilter"

.field static final TAG_ALERT_RESOURCE_USERFILTER_USER:Ljava/lang/String; = "user"

.field static final TAG_ALERT_TIME_RANGE:Ljava/lang/String; = "timeRange"

.field static final TAG_FEATURE:Ljava/lang/String; = "feature"

.field static final TAG_FEATURES:Ljava/lang/String; = "features"

.field static final TAG_SNS:Ljava/lang/String; = "sns"

.field static final URI_ALERT:Ljava/lang/String; = "/sng/user/{session.token}/alert/{alert.id}"

.field static final URI_CREATE_ALERT:Ljava/lang/String; = "/sng/user/{session.token}/alert/create"

.field static final URI_FEATURES:Ljava/lang/String; = "/sng/user/{session.token}/config/features"

.field static final URI_GET_ALERTS:Ljava/lang/String; = "/sng/user/{session.token}/alerts"


# direct methods
.method public constructor <init>(Lcom/lge/newbay/client/impl/NewbayContext;)V
    .registers 2
    .parameter "connection"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/NewbayAPI;-><init>(Lcom/lge/newbay/client/impl/NewbayContext;)V

    .line 71
    return-void
.end method

.method private getAlert(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/ISetting$Alert;
    .registers 6
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, alert:Lcom/lge/newbay/client/ISetting$Alert;
    const/4 v1, 0x0

    .line 287
    .local v1, eventType:I
    if-eqz p1, :cond_23

    .line 288
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_23

    .line 289
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 290
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, tagName:Ljava/lang/String;
    const-string v3, "alert"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 292
    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/Setting;->parseAlert(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/ISetting$Alert;

    move-result-object v0

    goto :goto_4

    .line 294
    :cond_1f
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 300
    .end local v2           #tagName:Ljava/lang/String;
    :cond_23
    return-object v0
.end method

.method private getAttributeString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "xpp"
    .parameter "attr"

    .prologue
    .line 422
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 423
    .local v2, l:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v2, :cond_19

    .line 424
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, attrName:Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 426
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 429
    .end local v0           #attrName:Ljava/lang/String;
    :goto_15
    return-object v3

    .line 423
    .restart local v0       #attrName:Ljava/lang/String;
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 429
    .end local v0           #attrName:Ljava/lang/String;
    :cond_19
    const/4 v3, 0x0

    goto :goto_15
.end method

.method private getFeatures(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .registers 6
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ISetting$Feature;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/ISetting$Feature;>;"
    const/4 v0, 0x0

    .line 82
    .local v0, eventType:I
    if-eqz p1, :cond_23

    .line 83
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_23

    .line 84
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 85
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, tagName:Ljava/lang/String;
    const-string v3, "features"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 87
    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/Setting;->parseFeatures(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v1

    goto :goto_4

    .line 89
    :cond_1f
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 94
    .end local v2           #tagName:Ljava/lang/String;
    :cond_23
    return-object v1
.end method

.method private parseAlert(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/ISetting$Alert;
    .registers 11
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 304
    new-instance v0, Lcom/lge/newbay/client/ISetting$Alert;

    invoke-direct {v0}, Lcom/lge/newbay/client/ISetting$Alert;-><init>()V

    .line 305
    .local v0, alert:Lcom/lge/newbay/client/ISetting$Alert;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    .line 306
    .local v4, l:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_b
    if-ge v3, v4, :cond_26

    .line 307
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, attrName:Ljava/lang/String;
    const-string v6, "id"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 309
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-static {v6, v7}, Lcom/lge/util/Util;->getLastSegment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lge/newbay/client/ISetting$Alert;->setId(Ljava/lang/String;)V

    .line 313
    .end local v1           #attrName:Ljava/lang/String;
    :cond_26
    const/4 v2, 0x0

    .line 314
    .local v2, eventType:I
    :cond_27
    :goto_27
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    const/4 v6, 0x3

    if-eq v2, v6, :cond_ad

    .line 315
    const/4 v6, 0x2

    if-ne v2, v6, :cond_27

    .line 316
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 317
    .local v5, tagName:Ljava/lang/String;
    const-string v6, "name"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 318
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lge/newbay/client/ISetting$Alert;->setName(Ljava/lang/String;)V

    goto :goto_27

    .line 306
    .end local v2           #eventType:I
    .end local v5           #tagName:Ljava/lang/String;
    .restart local v1       #attrName:Ljava/lang/String;
    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 319
    .end local v1           #attrName:Ljava/lang/String;
    .restart local v2       #eventType:I
    .restart local v5       #tagName:Ljava/lang/String;
    :cond_48
    const-string v6, "description"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 320
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lge/newbay/client/ISetting$Alert;->setDescription(Ljava/lang/String;)V

    goto :goto_27

    .line 321
    :cond_58
    const-string v6, "paused"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 322
    invoke-static {p1, v8}, Lcom/lge/newbay/client/impl/XppUtil;->getNextBoolean(Lorg/xmlpull/v1/XmlPullParser;Z)Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/lge/newbay/client/ISetting$Alert;->setPaused(Z)V

    goto :goto_27

    .line 323
    :cond_68
    const-string v6, "period"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    .line 324
    invoke-static {p1, v8}, Lcom/lge/newbay/client/impl/XppUtil;->getNextInt(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/lge/newbay/client/ISetting$Alert;->setPeriod(I)V

    goto :goto_27

    .line 325
    :cond_78
    const-string v6, "timeRange"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_88

    .line 326
    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/Setting;->parseTimeRange(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/ISetting$TimeRange;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lge/newbay/client/ISetting$Alert;->setTimeRange(Lcom/lge/newbay/client/ISetting$TimeRange;)V

    goto :goto_27

    .line 327
    :cond_88
    const-string v6, "channel"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_98

    .line 328
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lge/newbay/client/ISetting$Alert;->setChannel(Ljava/lang/String;)V

    goto :goto_27

    .line 329
    :cond_98
    const-string v6, "resources"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a8

    .line 330
    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/Setting;->parseResources(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lge/newbay/client/ISetting$Alert;->setResources(Ljava/util/List;)V

    goto :goto_27

    .line 332
    :cond_a8
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_27

    .line 336
    .end local v5           #tagName:Ljava/lang/String;
    :cond_ad
    return-object v0
.end method

.method private parseFeature(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/ISetting$Feature;
    .registers 10
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v2, Lcom/lge/newbay/client/ISetting$Feature;

    invoke-direct {v2}, Lcom/lge/newbay/client/ISetting$Feature;-><init>()V

    .line 115
    .local v2, feature:Lcom/lge/newbay/client/ISetting$Feature;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    .line 116
    .local v4, l:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_a
    if-ge v3, v4, :cond_32

    .line 117
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, attrName:Ljava/lang/String;
    const-string v7, "code"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 119
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/lge/newbay/client/ISetting$Feature;->setCode(Ljava/lang/String;)V

    .line 116
    :cond_1f
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 120
    :cond_22
    const-string v7, "channel"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 121
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/lge/newbay/client/ISetting$Feature;->setChannel(Ljava/lang/String;)V

    goto :goto_1f

    .line 125
    .end local v0           #attrName:Ljava/lang/String;
    :cond_32
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/newbay/client/ISetting$Sns;>;"
    const/4 v1, 0x0

    .line 127
    .local v1, eventType:I
    :cond_38
    :goto_38
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    const/4 v7, 0x3

    if-eq v1, v7, :cond_5a

    .line 128
    const/4 v7, 0x2

    if-ne v1, v7, :cond_38

    .line 129
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 130
    .local v6, tagName:Ljava/lang/String;
    const-string v7, "sns"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 131
    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/Setting;->parseSns(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/ISetting$Sns;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 133
    :cond_56
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_38

    .line 137
    .end local v6           #tagName:Ljava/lang/String;
    :cond_5a
    invoke-virtual {v2, v5}, Lcom/lge/newbay/client/ISetting$Feature;->setSns(Ljava/util/List;)V

    .line 138
    return-object v2
.end method

.method private parseFeatures(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .registers 6
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ISetting$Feature;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/newbay/client/ISetting$Feature;>;"
    const/4 v0, 0x0

    .line 100
    .local v0, eventType:I
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_28

    .line 101
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 102
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, tagName:Ljava/lang/String;
    const-string v3, "feature"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 104
    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/Setting;->parseFeature(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/ISetting$Feature;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 106
    :cond_24
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 110
    .end local v2           #tagName:Ljava/lang/String;
    :cond_28
    return-object v1
.end method

.method private parseResource(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/ISetting$Resource;
    .registers 9
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    new-instance v4, Lcom/lge/newbay/client/ISetting$Resource;

    invoke-direct {v4}, Lcom/lge/newbay/client/ISetting$Resource;-><init>()V

    .line 373
    .local v4, resource:Lcom/lge/newbay/client/ISetting$Resource;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 374
    .local v3, l:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v3, :cond_1f

    .line 375
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, attrName:Ljava/lang/String;
    const-string v6, "id"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 377
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/ISetting$Resource;->setId(Ljava/lang/String;)V

    .line 381
    .end local v0           #attrName:Ljava/lang/String;
    :cond_1f
    const/4 v1, 0x0

    .line 382
    .local v1, eventType:I
    :cond_20
    :goto_20
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    const/4 v6, 0x3

    if-eq v1, v6, :cond_45

    .line 383
    const/4 v6, 0x2

    if-ne v1, v6, :cond_20

    .line 384
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 385
    .local v5, tagName:Ljava/lang/String;
    const-string v6, "userFilter"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 386
    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/Setting;->parseUserFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/ISetting$UserFilter;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/ISetting$Resource;->setUserFilter(Lcom/lge/newbay/client/ISetting$UserFilter;)V

    goto :goto_20

    .line 374
    .end local v1           #eventType:I
    .end local v5           #tagName:Ljava/lang/String;
    .restart local v0       #attrName:Ljava/lang/String;
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 388
    .end local v0           #attrName:Ljava/lang/String;
    .restart local v1       #eventType:I
    .restart local v5       #tagName:Ljava/lang/String;
    :cond_41
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_20

    .line 392
    .end local v5           #tagName:Ljava/lang/String;
    :cond_45
    return-object v4
.end method

.method private parseResources(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .registers 6
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ISetting$Resource;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/ISetting$Resource;>;"
    const/4 v0, 0x0

    .line 358
    .local v0, eventType:I
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_28

    .line 359
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 360
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, tagName:Ljava/lang/String;
    const-string v3, "resource"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 362
    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/Setting;->parseResource(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/ISetting$Resource;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 364
    :cond_24
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 368
    .end local v2           #tagName:Ljava/lang/String;
    :cond_28
    return-object v1
.end method

.method private parseSns(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/ISetting$Sns;
    .registers 8
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v3, Lcom/lge/newbay/client/ISetting$Sns;

    invoke-direct {v3}, Lcom/lge/newbay/client/ISetting$Sns;-><init>()V

    .line 143
    .local v3, sns:Lcom/lge/newbay/client/ISetting$Sns;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 144
    .local v2, l:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v2, :cond_38

    .line 145
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, attrName:Ljava/lang/String;
    const-string v4, "uid"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 147
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/newbay/client/ISetting$Sns;->setId(Ljava/lang/String;)V

    .line 144
    :cond_1f
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 148
    :cond_22
    const-string v4, "notificationEnabled"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 149
    const-string v4, "true"

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lge/newbay/client/ISetting$Sns;->setNotificationEnabled(Z)V

    goto :goto_1f

    .line 152
    .end local v0           #attrName:Ljava/lang/String;
    :cond_38
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 153
    return-object v3
.end method

.method private parseTimeRange(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/ISetting$TimeRange;
    .registers 7
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    new-instance v3, Lcom/lge/newbay/client/ISetting$TimeRange;

    invoke-direct {v3}, Lcom/lge/newbay/client/ISetting$TimeRange;-><init>()V

    .line 341
    .local v3, tr:Lcom/lge/newbay/client/ISetting$TimeRange;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 342
    .local v2, l:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v2, :cond_3a

    .line 343
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, attrName:Ljava/lang/String;
    const-string v4, "from"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 345
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/util/DateParser;->parseW3CTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/newbay/client/ISetting$TimeRange;->setFrom(Ljava/util/Date;)V

    .line 342
    :cond_23
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 346
    :cond_26
    const-string v4, "to"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 347
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/util/DateParser;->parseW3CTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/newbay/client/ISetting$TimeRange;->setTo(Ljava/util/Date;)V

    goto :goto_23

    .line 350
    .end local v0           #attrName:Ljava/lang/String;
    :cond_3a
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 351
    return-object v3
.end method

.method private parseUserFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/ISetting$UserFilter;
    .registers 12
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v9, "id"

    .line 396
    new-instance v6, Lcom/lge/newbay/client/ISetting$UserFilter;

    invoke-direct {v6}, Lcom/lge/newbay/client/ISetting$UserFilter;-><init>()V

    .line 397
    .local v6, uf:Lcom/lge/newbay/client/ISetting$UserFilter;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 398
    .local v3, l:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    if-ge v2, v3, :cond_27

    .line 399
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, attrName:Ljava/lang/String;
    const-string v7, "id"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 401
    const-string v7, "true"

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/lge/newbay/client/ISetting$UserFilter;->setExclude(Z)V

    .line 405
    .end local v0           #attrName:Ljava/lang/String;
    :cond_27
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 407
    .local v1, eventType:I
    :cond_2d
    :goto_2d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    const/4 v7, 0x3

    if-eq v1, v7, :cond_54

    .line 408
    const/4 v7, 0x2

    if-ne v1, v7, :cond_2d

    .line 409
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 410
    .local v5, tagName:Ljava/lang/String;
    const-string v7, "user"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 411
    const-string v7, "id"

    invoke-direct {p0, p1, v9}, Lcom/lge/newbay/client/impl/Setting;->getAttributeString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 398
    .end local v1           #eventType:I
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #tagName:Ljava/lang/String;
    .restart local v0       #attrName:Ljava/lang/String;
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 413
    .end local v0           #attrName:Ljava/lang/String;
    .restart local v1       #eventType:I
    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #tagName:Ljava/lang/String;
    :cond_50
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2d

    .line 417
    .end local v5           #tagName:Ljava/lang/String;
    :cond_54
    invoke-virtual {v6, v4}, Lcom/lge/newbay/client/ISetting$UserFilter;->setUsers(Ljava/util/List;)V

    .line 418
    return-object v6
.end method

.method private toAlertXml(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/lge/newbay/client/ISetting$TimeRange;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 15
    .parameter "id"
    .parameter "name"
    .parameter "description"
    .parameter "paused"
    .parameter "period"
    .parameter "timeRange"
    .parameter "channel"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI",
            "Lcom/lge/newbay/client/ISetting$TimeRange;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ISetting$Resource;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 206
    .local p8, resources:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/ISetting$Resource;>;"
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 207
    .local v3, sb:Ljava/lang/StringBuffer;
    const-string v4, "<alert namespace=\"http://www.newbay.com/sng/sns/user/alert\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    if-eqz p1, :cond_1d

    .line 209
    const-string v4, " id=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    :cond_1d
    const-string v4, ">\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    if-eqz p2, :cond_33

    .line 213
    const-string v4, "\t<name>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</name>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    :cond_33
    if-eqz p3, :cond_44

    .line 216
    const-string v4, "\t<description>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</description>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    :cond_44
    const-string v4, "\t<paused>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</paused>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    const-string v4, "\t<period>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</period>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    const-string v4, "\t<timeRange from=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p6}, Lcom/lge/newbay/client/ISetting$TimeRange;->getFrom()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/util/DateParser;->formatW3CTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\" to=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p6}, Lcom/lge/newbay/client/ISetting$TimeRange;->getTo()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/util/DateParser;->formatW3CTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\"/>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    const-string v4, "\t<channel>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</channel>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    const-string v4, "\t<resources>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    if-eqz p8, :cond_b6

    .line 225
    const-string v0, "\t\t"

    .line 226
    .local v0, dTab:Ljava/lang/String;
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v2

    .line 227
    .local v2, l:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a8
    if-ge v1, v2, :cond_b6

    .line 228
    invoke-interface {p8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/newbay/client/ISetting$Resource;

    invoke-direct {p0, v3, v0, v4}, Lcom/lge/newbay/client/impl/Setting;->toResourceXML(Ljava/lang/StringBuffer;Ljava/lang/String;Lcom/lge/newbay/client/ISetting$Resource;)V

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_a8

    .line 231
    .end local v0           #dTab:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #l:I
    :cond_b6
    const-string v4, "\t</resources>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    const-string v4, "</alert>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private toFeatureXml(Ljava/lang/StringBuffer;Ljava/lang/String;Lcom/lge/newbay/client/ISetting$Feature;)V
    .registers 10
    .parameter "sb"
    .parameter "space"
    .parameter "feature"

    .prologue
    .line 178
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "<feature code=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p3}, Lcom/lge/newbay/client/ISetting$Feature;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\" channel=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p3}, Lcom/lge/newbay/client/ISetting$Feature;->getChannel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\">\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    invoke-virtual {p3}, Lcom/lge/newbay/client/ISetting$Feature;->getSns()Ljava/util/List;

    move-result-object v3

    .line 180
    .local v3, sns:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/ISetting$Sns;>;"
    if-eqz v3, :cond_51

    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, dSpace:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 183
    .local v2, l:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_43
    if-ge v1, v2, :cond_51

    .line 184
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/newbay/client/ISetting$Sns;

    invoke-direct {p0, p1, v0, v4}, Lcom/lge/newbay/client/impl/Setting;->toXml(Ljava/lang/StringBuffer;Ljava/lang/String;Lcom/lge/newbay/client/ISetting$Sns;)V

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 187
    .end local v0           #dSpace:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #l:I
    :cond_51
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</feature>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    return-void
.end method

.method private toFeaturesXml(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ISetting$Feature;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, features:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/ISetting$Feature;>;"
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 165
    .local v3, sb:Ljava/lang/StringBuffer;
    const-string v4, "\n<features xmlns=\"http://www.newbay.com/sng/config/features\">\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    if-eqz p1, :cond_23

    .line 167
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 168
    .local v2, l:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    if-ge v1, v2, :cond_23

    .line 169
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/newbay/client/ISetting$Feature;

    .line 170
    .local v0, feature:Lcom/lge/newbay/client/ISetting$Feature;
    const-string v4, "\t"

    invoke-direct {p0, v3, v4, v0}, Lcom/lge/newbay/client/impl/Setting;->toFeatureXml(Ljava/lang/StringBuffer;Ljava/lang/String;Lcom/lge/newbay/client/ISetting$Feature;)V

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 173
    .end local v0           #feature:Lcom/lge/newbay/client/ISetting$Feature;
    .end local v1           #i:I
    .end local v2           #l:I
    :cond_23
    const-string v4, "</features>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private toResourceXML(Ljava/lang/StringBuffer;Ljava/lang/String;Lcom/lge/newbay/client/ISetting$Resource;)V
    .registers 13
    .parameter "sb"
    .parameter "tab"
    .parameter "resource"

    .prologue
    const-string v8, "\t"

    .line 237
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "<resource id=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p3}, Lcom/lge/newbay/client/ISetting$Resource;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\">\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    invoke-virtual {p3}, Lcom/lge/newbay/client/ISetting$Resource;->getUserFilter()Lcom/lge/newbay/client/ISetting$UserFilter;

    move-result-object v4

    .line 239
    .local v4, uf:Lcom/lge/newbay/client/ISetting$UserFilter;
    if-eqz v4, :cond_96

    .line 240
    invoke-virtual {v4}, Lcom/lge/newbay/client/ISetting$UserFilter;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 241
    .local v5, users:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_96

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_96

    .line 242
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, dTab:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "<userFilter"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    invoke-virtual {v4}, Lcom/lge/newbay/client/ISetting$UserFilter;->isExclude()Z

    move-result v6

    if-eqz v6, :cond_52

    .line 245
    const-string v6, " exclude=\"true\""

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    :cond_52
    const-string v6, ">\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, tTab:Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 251
    .local v2, l:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_6f
    if-ge v1, v2, :cond_8d

    .line 252
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "<user id=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\"/>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    .line 254
    :cond_8d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "</userFilter>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    .end local v0           #dTab:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #l:I
    .end local v3           #tTab:Ljava/lang/String;
    .end local v5           #users:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_96
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "</resource>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    return-void
.end method

.method private toXml(Ljava/lang/StringBuffer;Ljava/lang/String;Lcom/lge/newbay/client/ISetting$Sns;)V
    .registers 6
    .parameter "sb"
    .parameter "space"
    .parameter "sns"

    .prologue
    .line 191
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "<sns uid=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p3}, Lcom/lge/newbay/client/ISetting$Sns;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\" preferredEnabled=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p3}, Lcom/lge/newbay/client/ISetting$Sns;->isPreferredEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\" notificationEnabled=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p3}, Lcom/lge/newbay/client/ISetting$Sns;->isNotificationEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\"/>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    return-void
.end method


# virtual methods
.method public createAlert(Ljava/lang/String;Ljava/lang/String;ZILcom/lge/newbay/client/ISetting$TimeRange;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 19
    .parameter "name"
    .parameter "description"
    .parameter "paused"
    .parameter "period"
    .parameter "timeRange"
    .parameter "channel"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI",
            "Lcom/lge/newbay/client/ISetting$TimeRange;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ISetting$Resource;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    .local p7, resources:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/ISetting$Resource;>;"
    const-string v0, "/sng/user/{session.token}/alert/create"

    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Setting;->createHttpPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v9

    .line 200
    .local v9, httpPost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v10, Lorg/apache/http/entity/StringEntity;

    iget-object v0, p0, Lcom/lge/newbay/client/impl/Setting;->ctx:Lcom/lge/newbay/client/impl/NewbayContext;

    invoke-virtual {v0}, Lcom/lge/newbay/client/impl/NewbayContext;->getHost()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/lge/newbay/client/impl/Setting;->toAlertXml(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/lge/newbay/client/ISetting$TimeRange;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 201
    const/4 v0, 0x1

    invoke-virtual {p0, v9, v0}, Lcom/lge/newbay/client/impl/Setting;->getLocationId(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deleteAlert(Ljava/lang/String;)V
    .registers 6
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    const-string v2, "/sng/user/{session.token}/alert/{alert.id}"

    const-string v3, "{alert.id}"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, uri:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/lge/newbay/client/impl/Setting;->createHttpDelete(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpDelete;

    move-result-object v0

    .line 273
    .local v0, httpDelete:Lorg/apache/http/client/methods/HttpDelete;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Setting;->executeRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 274
    return-void
.end method

.method public getAlert(Ljava/lang/String;)Lcom/lge/newbay/client/ISetting$Alert;
    .registers 7
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 277
    const-string v3, "/sng/user/{session.token}/alert/{alert.id}"

    const-string v4, "{alert.id}"

    invoke-virtual {v3, v4, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, uri:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/lge/newbay/client/impl/Setting;->createHttpGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 279
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const-string v3, "Accept"

    const-string v4, "application/atom+xml"

    invoke-virtual {v0, v3, v4}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Setting;->getHttpResponseAsXml(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 281
    .local v2, xpp:Lorg/xmlpull/v1/XmlPullParser;
    invoke-direct {p0, v2}, Lcom/lge/newbay/client/impl/Setting;->getAlert(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/ISetting$Alert;

    move-result-object v3

    return-object v3
.end method

.method public getAlerts()Lcom/lge/feed/atom/AtomFeed;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 433
    const-string v1, "/sng/user/{session.token}/alerts"

    invoke-virtual {p0, v1}, Lcom/lge/newbay/client/impl/Setting;->createHttpGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 434
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const-string v1, "Accept"

    const-string v2, "application/atom+xml"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Setting;->getHttpResponseAsAtomFeed(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v1

    return-object v1
.end method

.method public getFeatures()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ISetting$Feature;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 74
    const-string v2, "/sng/user/{session.token}/config/features"

    invoke-virtual {p0, v2}, Lcom/lge/newbay/client/impl/Setting;->createHttpGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 75
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Setting;->getHttpResponseAsXml(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 76
    .local v1, xpp:Lorg/xmlpull/v1/XmlPullParser;
    invoke-direct {p0, v1}, Lcom/lge/newbay/client/impl/Setting;->getFeatures(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public updateAlert(Lcom/lge/newbay/client/ISetting$Alert;)V
    .registers 14
    .parameter "alert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    const-string v0, "/sng/user/{session.token}/alert/{alert.id}"

    const-string v1, "{alert.id}"

    invoke-virtual {p1}, Lcom/lge/newbay/client/ISetting$Alert;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 263
    .local v10, uri:Ljava/lang/String;
    const-string v0, "application/vnd.newbay.sng.pri+xml"

    invoke-virtual {p0, v10, v0}, Lcom/lge/newbay/client/impl/Setting;->createHttpPut(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v9

    .line 264
    .local v9, httpPut:Lorg/apache/http/client/methods/HttpPost;
    new-instance v11, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p1}, Lcom/lge/newbay/client/ISetting$Alert;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lge/newbay/client/ISetting$Alert;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lge/newbay/client/ISetting$Alert;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/lge/newbay/client/ISetting$Alert;->isPaused()Z

    move-result v4

    invoke-virtual {p1}, Lcom/lge/newbay/client/ISetting$Alert;->getPeriod()I

    move-result v5

    invoke-virtual {p1}, Lcom/lge/newbay/client/ISetting$Alert;->getTimeRange()Lcom/lge/newbay/client/ISetting$TimeRange;

    move-result-object v6

    invoke-virtual {p1}, Lcom/lge/newbay/client/ISetting$Alert;->getChannel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/lge/newbay/client/ISetting$Alert;->getResources()Ljava/util/List;

    move-result-object v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/lge/newbay/client/impl/Setting;->toAlertXml(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/lge/newbay/client/ISetting$TimeRange;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 267
    invoke-virtual {p0, v9}, Lcom/lge/newbay/client/impl/Setting;->executeRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 268
    return-void
.end method

.method public updateFeatures(Ljava/util/List;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ISetting$Feature;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    .local p1, features:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/ISetting$Feature;>;"
    const-string v1, "/sng/user/{session.token}/config/features"

    const-string v2, "application/vnd.newbay.sng.pri+xml"

    invoke-virtual {p0, v1, v2}, Lcom/lge/newbay/client/impl/Setting;->createHttpPut(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 159
    .local v0, httpPut:Lorg/apache/http/client/methods/HttpPost;
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/Setting;->toFeaturesXml(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 160
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Setting;->executeRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 161
    return-void
.end method
