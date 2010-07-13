.class public Lcom/lge/newbay/client/impl/Community;
.super Lcom/lge/newbay/client/impl/NewbayAPI;
.source "Community.java"

# interfaces
.implements Lcom/lge/newbay/client/ICommunity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/newbay/client/impl/Community$1;
    }
.end annotation


# static fields
.field private static final ATTR_SNS_ACTIVE:Ljava/lang/String; = "active"

.field private static final ATTR_SNS_FEATURES_FEATURE_ALERTABLE:Ljava/lang/String; = "alertable"

.field private static final ATTR_SNS_FEATURES_FEATURE_PROTECTED:Ljava/lang/String; = "protected"

.field private static final ATTR_SNS_FEATURE_CODE:Ljava/lang/String; = "code"

.field private static final ATTR_SNS_FEATURE_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_SNS_FEATURE_VALUE:Ljava/lang/String; = "value"

.field private static final ATTR_SNS_ID:Ljava/lang/String; = "id"

.field private static final PARAM_STORE_CREDENTIALS:Ljava/lang/String; = "storeCredentials"

.field private static final PARAM_USER_NAME:Ljava/lang/String; = "username"

.field private static final PARAM_USER_PASSWORD:Ljava/lang/String; = "password"

.field private static final TAG_SNS:Ljava/lang/String; = "sns"

.field private static final TAG_SNS_AUTH:Ljava/lang/String; = "snsAuth"

.field private static final TAG_SNS_AUTH_TOKEN:Ljava/lang/String; = "token"

.field private static final TAG_SNS_AUTH_TOKEN_VALIDATION_TIME:Ljava/lang/String; = "tokenValidationTime"

.field private static final TAG_SNS_AUTH_UID:Ljava/lang/String; = "uid"

.field private static final TAG_SNS_FEATURES:Ljava/lang/String; = "features"

.field private static final TAG_SNS_FEATURES_FEATURE:Ljava/lang/String; = "feature"

.field private static final TAG_SNS_FEATURES_FEATURE_RESTRICTIONS:Ljava/lang/String; = "restrictions"

.field private static final TAG_SNS_FEATURES_FEATURE_RESTRICTIONS_RESTRICTION:Ljava/lang/String; = "restriction"

.field private static final TAG_SNS_NAME:Ljava/lang/String; = "name"

.field private static final TAG_SNS_TYPE:Ljava/lang/String; = "type"

.field private static final TAG_SNS_URL:Ljava/lang/String; = "url"

.field static final URI_AUTHENTICATE:Ljava/lang/String; = "/sng/user/{session.token}/sns/{sns.uid}/auth"

.field static final URI_COMMUNITIES:Ljava/lang/String; = "/sng/snss"

.field static final URI_USER_AUTHENTICATED:Ljava/lang/String; = "/sng/user/{session.token}/snss/sessions"

.field static final URI_USER_FEATURES:Ljava/lang/String; = "/sng/sns/{sns.uid}?v=2"


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

.method private createSnsAuth(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/ICommunity$SnsAuth;
    .registers 6
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v1, 0x0

    .line 138
    .local v1, snsAuth:Lcom/lge/newbay/client/ICommunity$SnsAuth;
    const/4 v0, 0x0

    .line 139
    .local v0, eventType:I
    if-eqz p1, :cond_23

    .line 140
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_23

    .line 141
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 142
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, tagName:Ljava/lang/String;
    const-string v3, "snsAuth"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 144
    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/Community;->parseSnsAuth(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/ICommunity$SnsAuth;

    move-result-object v1

    goto :goto_4

    .line 146
    :cond_1f
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 151
    .end local v2           #tagName:Ljava/lang/String;
    :cond_23
    return-object v1
.end method

.method private createSnsFeatures(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/ICommunity$SnsFeatures;
    .registers 6
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    const/4 v1, 0x0

    .line 176
    .local v1, snsFeatures:Lcom/lge/newbay/client/ICommunity$SnsFeatures;
    const/4 v0, 0x0

    .line 177
    .local v0, eventType:I
    if-eqz p1, :cond_23

    .line 178
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_23

    .line 179
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 180
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, tagName:Ljava/lang/String;
    const-string v3, "sns"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 182
    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/Community;->parseSnsFeatures(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/ICommunity$SnsFeatures;

    move-result-object v1

    goto :goto_4

    .line 184
    :cond_1f
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 189
    .end local v2           #tagName:Ljava/lang/String;
    :cond_23
    return-object v1
.end method

.method private parseFeature(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/ICommunity$Feature;
    .registers 10
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v7, "true"

    .line 241
    new-instance v2, Lcom/lge/newbay/client/ICommunity$Feature;

    invoke-direct {v2}, Lcom/lge/newbay/client/ICommunity$Feature;-><init>()V

    .line 242
    .local v2, feature:Lcom/lge/newbay/client/ICommunity$Feature;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    .line 243
    .local v4, l:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_c
    if-ge v3, v4, :cond_60

    .line 244
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, attrName:Ljava/lang/String;
    const-string v6, "code"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 246
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/lge/newbay/client/ICommunity$Feature;->setCode(Ljava/lang/String;)V

    .line 243
    :cond_21
    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 247
    :cond_24
    const-string v6, "name"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 248
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/lge/newbay/client/ICommunity$Feature;->setName(Ljava/lang/String;)V

    goto :goto_21

    .line 249
    :cond_34
    const-string v6, "alertable"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 250
    const-string v6, "true"

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/lge/newbay/client/ICommunity$Feature;->setAlertable(Z)V

    goto :goto_21

    .line 251
    :cond_4a
    const-string v6, "protected"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 252
    const-string v6, "true"

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/lge/newbay/client/ICommunity$Feature;->setFeatureProtected(Z)V

    goto :goto_21

    .line 255
    .end local v0           #attrName:Ljava/lang/String;
    :cond_60
    const/4 v1, 0x0

    .line 256
    .local v1, eventType:I
    :cond_61
    :goto_61
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    const/4 v6, 0x3

    if-eq v1, v6, :cond_83

    .line 257
    const/4 v6, 0x2

    if-ne v1, v6, :cond_61

    .line 258
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 259
    .local v5, tagName:Ljava/lang/String;
    const-string v6, "restrictions"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7f

    .line 260
    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/Community;->parseRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/lge/newbay/client/ICommunity$Feature;->setRestrictions(Ljava/util/List;)V

    goto :goto_61

    .line 262
    :cond_7f
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_61

    .line 266
    .end local v5           #tagName:Ljava/lang/String;
    :cond_83
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
            "Lcom/lge/newbay/client/ICommunity$Feature;",
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
    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v1, features:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/ICommunity$Feature;>;"
    const/4 v0, 0x0

    .line 227
    .local v0, eventType:I
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_28

    .line 228
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 229
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, tagName:Ljava/lang/String;
    const-string v3, "feature"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 231
    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/Community;->parseFeature(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/ICommunity$Feature;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 233
    :cond_24
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 237
    .end local v2           #tagName:Ljava/lang/String;
    :cond_28
    return-object v1
.end method

.method private parseRestriction(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/ICommunity$Restriction;
    .registers 7
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    new-instance v3, Lcom/lge/newbay/client/ICommunity$Restriction;

    invoke-direct {v3}, Lcom/lge/newbay/client/ICommunity$Restriction;-><init>()V

    .line 287
    .local v3, restriction:Lcom/lge/newbay/client/ICommunity$Restriction;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 288
    .local v2, l:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v2, :cond_42

    .line 289
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, attrName:Ljava/lang/String;
    const-string v4, "code"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 291
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/newbay/client/ICommunity$Restriction;->setCode(Ljava/lang/String;)V

    .line 288
    :cond_1f
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 292
    :cond_22
    const-string v4, "name"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 293
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/newbay/client/ICommunity$Restriction;->setName(Ljava/lang/String;)V

    goto :goto_1f

    .line 294
    :cond_32
    const-string v4, "value"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 295
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/newbay/client/ICommunity$Restriction;->setValue(Ljava/lang/String;)V

    goto :goto_1f

    .line 298
    .end local v0           #attrName:Ljava/lang/String;
    :cond_42
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 299
    return-object v3
.end method

.method private parseRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .registers 6
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ICommunity$Restriction;",
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
    .line 270
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v1, restrictions:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/ICommunity$Restriction;>;"
    const/4 v0, 0x0

    .line 272
    .local v0, eventType:I
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_28

    .line 273
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 274
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, tagName:Ljava/lang/String;
    const-string v3, "restriction"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 276
    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/Community;->parseRestriction(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/ICommunity$Restriction;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 278
    :cond_24
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 282
    .end local v2           #tagName:Ljava/lang/String;
    :cond_28
    return-object v1
.end method

.method private parseSnsAuth(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/ICommunity$SnsAuth;
    .registers 9
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    new-instance v1, Lcom/lge/newbay/client/ICommunity$SnsAuth;

    invoke-direct {v1}, Lcom/lge/newbay/client/ICommunity$SnsAuth;-><init>()V

    .line 156
    .local v1, snsAuth:Lcom/lge/newbay/client/ICommunity$SnsAuth;
    const/4 v0, 0x0

    .line 157
    .local v0, eventType:I
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4f

    .line 158
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 159
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, tagName:Ljava/lang/String;
    const-string v3, "token"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 161
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lge/newbay/client/ICommunity$SnsAuth;->setToken(Ljava/lang/String;)V

    goto :goto_6

    .line 162
    :cond_24
    const-string v3, "uid"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 163
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lge/newbay/client/ICommunity$SnsAuth;->setUid(Ljava/lang/String;)V

    goto :goto_6

    .line 164
    :cond_34
    const-string v3, "tokenValidationTime"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 165
    const-wide/16 v3, 0x0

    invoke-static {p1, v3, v4}, Lcom/lge/newbay/client/impl/XppUtil;->getNextLong(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Lcom/lge/newbay/client/ICommunity$SnsAuth;->setTokenValidationTime(J)V

    goto :goto_6

    .line 167
    :cond_4b
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 171
    .end local v2           #tagName:Ljava/lang/String;
    :cond_4f
    return-object v1
.end method

.method private parseSnsFeatures(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/ICommunity$SnsFeatures;
    .registers 11
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 193
    new-instance v4, Lcom/lge/newbay/client/ICommunity$SnsFeatures;

    invoke-direct {v4}, Lcom/lge/newbay/client/ICommunity$SnsFeatures;-><init>()V

    .line 194
    .local v4, snsFeatures:Lcom/lge/newbay/client/ICommunity$SnsFeatures;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 195
    .local v3, l:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v3, :cond_3e

    .line 196
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, attrName:Ljava/lang/String;
    const-string v6, "id"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 198
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/ICommunity$SnsFeatures;->setId(Ljava/lang/String;)V

    .line 195
    :cond_20
    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 199
    :cond_23
    const-string v6, "active"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 200
    const-string v6, "false"

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3c

    const/4 v6, 0x1

    :goto_38
    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/ICommunity$SnsFeatures;->setActivated(Z)V

    goto :goto_20

    :cond_3c
    const/4 v6, 0x0

    goto :goto_38

    .line 203
    .end local v0           #attrName:Ljava/lang/String;
    :cond_3e
    const/4 v1, 0x0

    .line 204
    .local v1, eventType:I
    :cond_3f
    :goto_3f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    const/4 v6, 0x3

    if-eq v1, v6, :cond_90

    .line 205
    if-ne v1, v8, :cond_3f

    .line 206
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, tagName:Ljava/lang/String;
    const-string v6, "name"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 208
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/ICommunity$SnsFeatures;->setName(Ljava/lang/String;)V

    goto :goto_3f

    .line 209
    :cond_5c
    const-string v6, "type"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 210
    invoke-static {p1, v8}, Lcom/lge/newbay/client/impl/XppUtil;->getNextInt(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/ICommunity$SnsFeatures;->setType(I)V

    goto :goto_3f

    .line 211
    :cond_6c
    const-string v6, "url"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 212
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/ICommunity$SnsFeatures;->setUrl(Ljava/lang/String;)V

    goto :goto_3f

    .line 213
    :cond_7c
    const-string v6, "features"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 214
    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/Community;->parseFeatures(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/newbay/client/ICommunity$SnsFeatures;->setFeatures(Ljava/util/List;)V

    goto :goto_3f

    .line 216
    :cond_8c
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3f

    .line 221
    .end local v5           #tagName:Ljava/lang/String;
    :cond_90
    return-object v4
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/lge/newbay/client/ICommunity$SnsAuth;
    .registers 14
    .parameter "snsId"
    .parameter "userName"
    .parameter "password"
    .parameter "storeCredentials"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const-string v8, "UTF-8"

    .line 75
    const-string v5, "/sng/user/{session.token}/sns/{sns.uid}/auth"

    const-string v6, "{sns.uid}"

    invoke-virtual {v5, v6, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/lge/newbay/client/impl/Community;->getContext()Lcom/lge/newbay/client/impl/NewbayContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/newbay/client/impl/NewbayContext;->isSecure()Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/lge/newbay/client/impl/Community;->createHttpPost(Ljava/lang/String;Z)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v2

    .line 76
    .local v2, httpPost:Lorg/apache/http/client/methods/HttpPost;
    const-string v5, "Accept"

    const-string v6, "application/vnd.newbay.sng.pri+xml"

    invoke-virtual {v2, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v3, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "username"

    invoke-virtual {p0, p2}, Lcom/lge/newbay/client/impl/Community;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "password"

    invoke-virtual {p0, p3}, Lcom/lge/newbay/client/impl/Community;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "storeCredentials"

    if-eqz p4, :cond_64

    const-string v7, "true"

    :goto_46
    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v1, v3, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 82
    .local v1, entry:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 85
    invoke-virtual {p0, v2}, Lcom/lge/newbay/client/impl/Community;->getHttpResponseAsXml(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 86
    .local v4, xpp:Lorg/xmlpull/v1/XmlPullParser;
    invoke-direct {p0, v4}, Lcom/lge/newbay/client/impl/Community;->createSnsAuth(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/ICommunity$SnsAuth;

    move-result-object v0

    .line 87
    .local v0, auth:Lcom/lge/newbay/client/ICommunity$SnsAuth;
    return-object v0

    .line 80
    .end local v0           #auth:Lcom/lge/newbay/client/ICommunity$SnsAuth;
    .end local v1           #entry:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v4           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :cond_64
    const-string v7, "false"

    goto :goto_46
.end method

.method public deactivate(Ljava/lang/String;)V
    .registers 5
    .parameter "snsId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    const-string v1, "/sng/user/{session.token}/sns/{sns.uid}/auth"

    const-string v2, "{sns.uid}"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/newbay/client/impl/Community;->createHttpDelete(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpDelete;

    move-result-object v0

    .line 92
    .local v0, httpDelete:Lorg/apache/http/client/methods/HttpDelete;
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Community;->executeRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 93
    return-void
.end method

.method public getCommunities(Lcom/lge/newbay/client/ICommunity$CommunityState;)Lcom/lge/feed/atom/AtomFeed;
    .registers 6
    .parameter "active"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 106
    const/4 v1, 0x0

    .line 107
    .local v1, uri:Ljava/lang/String;
    sget-object v2, Lcom/lge/newbay/client/impl/Community$1;->$SwitchMap$com$lge$newbay$client$ICommunity$CommunityState:[I

    invoke-virtual {p1}, Lcom/lge/newbay/client/ICommunity$CommunityState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_24

    .line 115
    const-string v1, "/sng/snss"

    .line 118
    :goto_e
    invoke-virtual {p0, v1}, Lcom/lge/newbay/client/impl/Community;->createHttpGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 119
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const-string v2, "Accept"

    const-string v3, "application/atom+xml"

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Community;->getHttpResponseAsAtomFeed(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v2

    return-object v2

    .line 109
    .end local v0           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    :pswitch_1e
    const-string v1, "/sng/snss?active=true"

    .line 110
    goto :goto_e

    .line 112
    :pswitch_21
    const-string v1, "/sng/snss?active=false"

    .line 113
    goto :goto_e

    .line 107
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_21
    .end packed-switch
.end method

.method public getFeatures(Ljava/lang/String;)Lcom/lge/newbay/client/ICommunity$SnsFeatures;
    .registers 6
    .parameter "snsId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 130
    const-string v2, "/sng/sns/{sns.uid}?v=2"

    const-string v3, "{sns.uid}"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/newbay/client/impl/Community;->createHttpGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 131
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const-string v2, "Accept"

    const-string v3, "application/vnd.newbay.sng.pri+xml"

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Community;->getHttpResponseAsXml(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 133
    .local v1, xpp:Lorg/xmlpull/v1/XmlPullParser;
    invoke-direct {p0, v1}, Lcom/lge/newbay/client/impl/Community;->createSnsFeatures(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/ICommunity$SnsFeatures;

    move-result-object v2

    return-object v2
.end method

.method public getSnsAuth(Ljava/lang/String;)Lcom/lge/newbay/client/ICommunity$SnsAuth;
    .registers 6
    .parameter "snsId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 98
    const-string v2, "/sng/user/{session.token}/sns/{sns.uid}/auth"

    const-string v3, "{sns.uid}"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/newbay/client/impl/Community;->createHttpGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 99
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const-string v2, "Accept"

    const-string v3, "application/vnd.newbay.sng.pri+xml"

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Community;->getHttpResponseAsXml(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 101
    .local v1, xpp:Lorg/xmlpull/v1/XmlPullParser;
    invoke-direct {p0, v1}, Lcom/lge/newbay/client/impl/Community;->createSnsAuth(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/ICommunity$SnsAuth;

    move-result-object v2

    return-object v2
.end method

.method public getUserAuthenticated()Lcom/lge/feed/atom/AtomFeed;
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
    .line 124
    const-string v1, "/sng/user/{session.token}/snss/sessions"

    invoke-virtual {p0, v1}, Lcom/lge/newbay/client/impl/Community;->createHttpGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 125
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const-string v1, "Accept"

    const-string v2, "application/atom+xml"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/Community;->getHttpResponseAsAtomFeed(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v1

    return-object v1
.end method
