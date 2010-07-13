.class public Lcom/lge/newbay/client/impl/NewbayAPI;
.super Ljava/lang/Object;
.source "NewbayAPI.java"


# static fields
.field static final ATTR_ID:Ljava/lang/String; = "id"

.field static final ATTR_SNSID:Ljava/lang/String; = "snsId"

.field public static final CONTENT_TYPE_ATOM:Ljava/lang/String; = "application/atom+xml"

.field public static final CONTENT_TYPE_NEWBAY:Ljava/lang/String; = "application/vnd.newbay.sng.pri+xml"

.field public static final CONTENT_TYPE_URL_ENCODED:Ljava/lang/String; = "application/x-www-form-urlencoded; charset=utf-8"

.field public static final DEFAULT_PAGE_SIZE:I = 0xa

.field public static final HEADER_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HEADER_ACCEPT_RANGE:Ljava/lang/String; = "Accept-Range"

.field public static final HEADER_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final HEADER_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final HEADER_CONTENT_RANGE:Ljava/lang/String; = "Content-Range"

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final HEADER_COOKIE:Ljava/lang/String; = "Cookie"

.field public static final HEADER_ETAG:Ljava/lang/String; = "Etag"

.field public static final HEADER_IF_MODIFIED_SINCE:Ljava/lang/String; = "If-Modified-Since"

.field public static final HEADER_LAST_MODIFIED:Ljava/lang/String; = "Last-Modified"

.field public static final HEADER_LOCATION:Ljava/lang/String; = "Location"

.field public static final HEADER_RANGE:Ljava/lang/String; = "Range"

.field public static final HEADER_SET_COOKIE:Ljava/lang/String; = "Set-Cookie"

.field public static final HEADER_X_HTTP_HETHOD:Ljava/lang/String; = "X-HTTP-Method-Override"

.field public static final KEY_PAGE_NUM:Ljava/lang/String; = "{page.num}"

.field public static final KEY_PAGE_SIZE:Ljava/lang/String; = "{page.size}"

.field public static final KEY_SESSION_TOKEN:Ljava/lang/String; = "{session.token}"

.field public static final KEY_SNSID:Ljava/lang/String; = "{sns.uid}"

.field public static final KEY_SNSID_ARRAY:Ljava/lang/String; = "{sns.uid.array}"

.field public static final KEY_USER_ID:Ljava/lang/String; = "{sns.user.uid}"

#the value of this static final field might be set in the static constructor
.field private static final LENGTH_TIME_MOD:I = 0x0

.field public static final LINK_REL_NEXT:Ljava/lang/String; = "next"

.field public static final LINK_REL_SELF_ORIGNINAL:Ljava/lang/String; = "self-original"

.field public static final LINK_REL_SELF_SMALL:Ljava/lang/String; = "self-small"

.field static final TAG_AUTHOR:Ljava/lang/String; = "author"

.field private static final TAG_AUTHOR_DISPLAYNAME:Ljava/lang/String; = "displayName"

.field private static final TAG_AUTHOR_USERNAME:Ljava/lang/String; = "username"

.field static final TAG_PUBLISHED:Ljava/lang/String; = "published"

.field static final TAG_SUMMARY_NEW:Ljava/lang/String; = "new"

.field static final TAG_UPDATED:Ljava/lang/String; = "updated"

.field private static final TIME_MOD:Ljava/lang/String; = "timeMod"

.field static final XML_HEAD:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

.field static sdf:Ljava/text/SimpleDateFormat;


# instance fields
.field final ctx:Lcom/lge/newbay/client/impl/NewbayContext;

.field responseHandler:Lorg/apache/http/client/ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/client/ResponseHandler",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 166
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE_dd_MMM_yyyy_HH_mm_ss_z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/lge/newbay/client/impl/NewbayAPI;->sdf:Ljava/text/SimpleDateFormat;

    .line 168
    sget-object v0, Lcom/lge/newbay/client/impl/NewbayAPI;->sdf:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 456
    const-string v0, "timeMod"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/lge/newbay/client/impl/NewbayAPI;->LENGTH_TIME_MOD:I

    return-void
.end method

.method public constructor <init>(Lcom/lge/newbay/client/impl/NewbayContext;)V
    .registers 3
    .parameter "ctx"

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lcom/lge/newbay/client/impl/NewbayAPI$1;

    invoke-direct {v0, p0}, Lcom/lge/newbay/client/impl/NewbayAPI$1;-><init>(Lcom/lge/newbay/client/impl/NewbayAPI;)V

    iput-object v0, p0, Lcom/lge/newbay/client/impl/NewbayAPI;->responseHandler:Lorg/apache/http/client/ResponseHandler;

    .line 121
    iput-object p1, p0, Lcom/lge/newbay/client/impl/NewbayAPI;->ctx:Lcom/lge/newbay/client/impl/NewbayContext;

    .line 122
    return-void
.end method

.method protected static getAtomFeed(Lorg/apache/http/HttpResponse;)Lcom/lge/feed/atom/AtomFeed;
    .registers 2
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 392
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/newbay/client/impl/NewbayAPI;->getAtomFeed(Lorg/apache/http/HttpResponse;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    return-object v0
.end method

.method protected static getAtomFeed(Lorg/apache/http/HttpResponse;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/atom/AtomFeed;
    .registers 8
    .parameter "response"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 396
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 397
    .local v1, entity:Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_36

    .line 399
    :try_start_6
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_3d

    move-result-object v2

    .line 401
    .local v2, is:Ljava/io/InputStream;
    :try_start_a
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 402
    .local v3, xpp:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, charset:Ljava/lang/String;
    if-nez v0, :cond_1a

    .line 404
    const-string v0, "UTF-8"

    .line 406
    :cond_1a
    invoke-interface {v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 407
    const-string v4, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 408
    if-eqz v3, :cond_30

    .line 409
    invoke-static {v3, p1}, Lcom/lge/newbay/client/impl/NewbayAPI;->getAtomFeed(Lorg/xmlpull/v1/XmlPullParser;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/atom/AtomFeed;
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_38

    move-result-object v4

    .line 412
    :try_start_29
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_3d

    .line 415
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 418
    .end local v0           #charset:Ljava/lang/String;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :goto_2f
    return-object v4

    .line 412
    .restart local v0       #charset:Ljava/lang/String;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :cond_30
    :try_start_30
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3d

    .line 415
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 418
    .end local v0           #charset:Ljava/lang/String;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :cond_36
    const/4 v4, 0x0

    goto :goto_2f

    .line 412
    .restart local v2       #is:Ljava/io/InputStream;
    :catchall_38
    move-exception v4

    :try_start_39
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v4
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_3d

    .line 415
    .end local v2           #is:Ljava/io/InputStream;
    :catchall_3d
    move-exception v4

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    throw v4
.end method

.method protected static getAtomFeed(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/atom/AtomFeed;
    .registers 2
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 422
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/newbay/client/impl/NewbayAPI;->getAtomFeed(Lorg/xmlpull/v1/XmlPullParser;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    return-object v0
.end method

.method protected static getAtomFeed(Lorg/xmlpull/v1/XmlPullParser;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/atom/AtomFeed;
    .registers 3
    .parameter "xpp"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 426
    if-nez p1, :cond_7

    .line 427
    invoke-static {p0}, Lcom/lge/newbay/client/impl/XppUtil;->getAtomFeed(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    .line 429
    :goto_6
    return-object v0

    :cond_7
    invoke-static {p0, p1}, Lcom/lge/newbay/client/impl/XppUtil;->getAtomFeed(Lorg/xmlpull/v1/XmlPullParser;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    goto :goto_6
.end method

.method private parseTimeModString(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .parameter "contentRangeStr"

    .prologue
    .line 458
    sget v0, Lcom/lge/newbay/client/impl/NewbayAPI;->LENGTH_TIME_MOD:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 459
    const-string v0, "[/-]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected consume(Lorg/apache/http/HttpResponse;)V
    .registers 3
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 330
    .local v0, entity:Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_9

    .line 331
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 333
    :cond_9
    return-void
.end method

.method protected createHttpDelete(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpDelete;
    .registers 3
    .parameter "uri"

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/newbay/client/impl/NewbayAPI;->createHttpDelete(Ljava/lang/String;Z)Lorg/apache/http/client/methods/HttpDelete;

    move-result-object v0

    return-object v0
.end method

.method protected createHttpDelete(Ljava/lang/String;Z)Lorg/apache/http/client/methods/HttpDelete;
    .registers 4
    .parameter "uri"
    .parameter "secure"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/lge/newbay/client/impl/NewbayAPI;->ctx:Lcom/lge/newbay/client/impl/NewbayContext;

    invoke-virtual {v0, p1, p2}, Lcom/lge/newbay/client/impl/NewbayContext;->createHttpDelete(Ljava/lang/String;Z)Lorg/apache/http/client/methods/HttpDelete;

    move-result-object v0

    return-object v0
.end method

.method protected createHttpGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;
    .registers 3
    .parameter "uri"

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/newbay/client/impl/NewbayAPI;->createHttpGet(Ljava/lang/String;Z)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    return-object v0
.end method

.method protected createHttpGet(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;
    .registers 5
    .parameter "uri"
    .parameter "acceptType"

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/NewbayAPI;->createHttpGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 138
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    if-eqz p2, :cond_b

    .line 139
    const-string v1, "Accept"

    invoke-virtual {v0, v1, p2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_b
    return-object v0
.end method

.method protected createHttpGet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/http/client/methods/HttpGet;
    .registers 13
    .parameter "uri"
    .parameter "acceptType"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 171
    const/4 v1, 0x0

    .line 172
    .local v1, httpGet:Lorg/apache/http/client/methods/HttpGet;
    if-eqz p3, :cond_94

    .line 173
    if-nez p4, :cond_12

    .line 176
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 177
    .local v0, cal:Ljava/util/Calendar;
    const/4 v6, 0x5

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 178
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p4

    .line 180
    .end local v0           #cal:Ljava/util/Calendar;
    :cond_12
    sget-object v6, Lcom/lge/newbay/client/impl/NewbayAPI;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, timeFrom:Ljava/lang/String;
    sget-object v6, Lcom/lge/newbay/client/impl/NewbayAPI;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, p4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 183
    .local v5, timeTo:Ljava/lang/String;
    const/16 v6, 0x2b

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 184
    .local v3, p:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_2c

    .line 185
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 187
    :cond_2c
    const/16 v6, 0x2b

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 188
    const/4 v6, -0x1

    if-eq v3, v6, :cond_3a

    .line 189
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 191
    :cond_3a
    const/16 v6, 0x3f

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_72

    .line 192
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&deltaRangeFrom="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&deltaRangeTo="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 197
    :goto_64
    invoke-virtual {p0, p1, p2}, Lcom/lge/newbay/client/impl/NewbayAPI;->createHttpGet(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v1

    .line 198
    invoke-static {p3}, Lcom/lge/util/DateParser;->formatRFC822(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, ifModifiedSince:Ljava/lang/String;
    const-string v6, "If-Modified-Since"

    invoke-virtual {v1, v6, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .end local v2           #ifModifiedSince:Ljava/lang/String;
    .end local v3           #p:I
    .end local v4           #timeFrom:Ljava/lang/String;
    .end local v5           #timeTo:Ljava/lang/String;
    :goto_71
    return-object v1

    .line 194
    .restart local v3       #p:I
    .restart local v4       #timeFrom:Ljava/lang/String;
    .restart local v5       #timeTo:Ljava/lang/String;
    :cond_72
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "?deltaRangeFrom="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&deltaRangeTo="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_64

    .line 206
    .end local v3           #p:I
    .end local v4           #timeFrom:Ljava/lang/String;
    .end local v5           #timeTo:Ljava/lang/String;
    :cond_94
    invoke-virtual {p0, p1, p2}, Lcom/lge/newbay/client/impl/NewbayAPI;->createHttpGet(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v1

    goto :goto_71
.end method

.method protected createHttpGet(Ljava/lang/String;Z)Lorg/apache/http/client/methods/HttpGet;
    .registers 4
    .parameter "uri"
    .parameter "secure"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lge/newbay/client/impl/NewbayAPI;->ctx:Lcom/lge/newbay/client/impl/NewbayContext;

    invoke-virtual {v0, p1, p2}, Lcom/lge/newbay/client/impl/NewbayContext;->createHttpGet(Ljava/lang/String;Z)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    return-object v0
.end method

.method protected createHttpHead(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpHead;
    .registers 3
    .parameter "uri"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/lge/newbay/client/impl/NewbayAPI;->ctx:Lcom/lge/newbay/client/impl/NewbayContext;

    invoke-virtual {v0, p1}, Lcom/lge/newbay/client/impl/NewbayContext;->createHttpHead(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpHead;

    move-result-object v0

    return-object v0
.end method

.method protected createHttpPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .registers 3
    .parameter "uri"

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/newbay/client/impl/NewbayAPI;->createHttpPost(Ljava/lang/String;Z)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    return-object v0
.end method

.method protected createHttpPost(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .registers 5
    .parameter "uri"
    .parameter "contentType"

    .prologue
    .line 220
    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/NewbayAPI;->createHttpPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 221
    .local v0, httpPost:Lorg/apache/http/client/methods/HttpPost;
    if-eqz p2, :cond_b

    .line 222
    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_b
    return-object v0
.end method

.method protected createHttpPost(Ljava/lang/String;Z)Lorg/apache/http/client/methods/HttpPost;
    .registers 4
    .parameter "uri"
    .parameter "secure"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/lge/newbay/client/impl/NewbayAPI;->ctx:Lcom/lge/newbay/client/impl/NewbayContext;

    invoke-virtual {v0, p1, p2}, Lcom/lge/newbay/client/impl/NewbayContext;->createHttpPost(Ljava/lang/String;Z)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    return-object v0
.end method

.method protected createHttpPut(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .registers 3
    .parameter "uri"

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/newbay/client/impl/NewbayAPI;->createHttpPut(Ljava/lang/String;Z)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    return-object v0
.end method

.method protected createHttpPut(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .registers 5
    .parameter "uri"
    .parameter "contentType"

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/NewbayAPI;->createHttpPut(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 240
    .local v0, httpPut:Lorg/apache/http/client/methods/HttpPost;
    if-eqz p2, :cond_b

    .line 241
    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_b
    return-object v0
.end method

.method protected createHttpPut(Ljava/lang/String;Z)Lorg/apache/http/client/methods/HttpPost;
    .registers 6
    .parameter "uri"
    .parameter "secure"

    .prologue
    .line 229
    iget-object v1, p0, Lcom/lge/newbay/client/impl/NewbayAPI;->ctx:Lcom/lge/newbay/client/impl/NewbayContext;

    invoke-virtual {v1, p1, p2}, Lcom/lge/newbay/client/impl/NewbayContext;->createHttpPost(Ljava/lang/String;Z)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 230
    .local v0, post:Lorg/apache/http/client/methods/HttpPost;
    const-string v1, "X-HTTP-Method-Override"

    const-string v2, "PUT"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-object v0
.end method

.method protected encrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, Lcom/lge/newbay/client/impl/NewbayAPI;->ctx:Lcom/lge/newbay/client/impl/NewbayContext;

    invoke-virtual {v0, p1}, Lcom/lge/newbay/client/impl/NewbayContext;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected executeRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .registers 5
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/NewbayAPI;->getHttpResponse(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/newbay/client/impl/NewbayAPI;->consume(Lorg/apache/http/HttpResponse;)V

    .line 262
    iget-object v1, p0, Lcom/lge/newbay/client/impl/NewbayAPI;->ctx:Lcom/lge/newbay/client/impl/NewbayContext;

    invoke-virtual {v1}, Lcom/lge/newbay/client/impl/NewbayContext;->closeIdle()V
    :try_end_c
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_0 .. :try_end_c} :catch_d

    .line 270
    :goto_c
    return-void

    .line 263
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 264
    .local v0, e:Lorg/apache/http/client/HttpResponseException;
    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1f8

    if-eq v1, v2, :cond_1f

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x198

    if-ne v1, v2, :cond_27

    .line 265
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/NewbayAPI;->getHttpResponse(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/newbay/client/impl/NewbayAPI;->consume(Lorg/apache/http/HttpResponse;)V

    goto :goto_c

    .line 267
    :cond_27
    throw v0
.end method

.method protected findLink(Lcom/lge/feed/atom/AtomFeed;Ljava/lang/String;)Lcom/lge/feed/atom/Link;
    .registers 8
    .parameter "feed"
    .parameter "rel"

    .prologue
    .line 524
    if-eqz p1, :cond_24

    .line 525
    invoke-virtual {p1}, Lcom/lge/feed/atom/AtomFeed;->getOtherLinks()Ljava/util/List;

    move-result-object v3

    .line 526
    .local v3, links:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Link;>;"
    if-eqz v3, :cond_24

    .line 527
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 528
    .local v1, l:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v1, :cond_24

    .line 529
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/feed/atom/Link;

    .line 530
    .local v2, link:Lcom/lge/feed/atom/Link;
    invoke-virtual {v2}, Lcom/lge/feed/atom/Link;->getRel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    move-object v4, v2

    .line 536
    .end local v0           #i:I
    .end local v1           #l:I
    .end local v2           #link:Lcom/lge/feed/atom/Link;
    .end local v3           #links:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Link;>;"
    :goto_20
    return-object v4

    .line 528
    .restart local v0       #i:I
    .restart local v1       #l:I
    .restart local v2       #link:Lcom/lge/feed/atom/Link;
    .restart local v3       #links:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Link;>;"
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 536
    .end local v0           #i:I
    .end local v1           #l:I
    .end local v2           #link:Lcom/lge/feed/atom/Link;
    .end local v3           #links:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Link;>;"
    :cond_24
    const/4 v4, 0x0

    goto :goto_20
.end method

.method protected getContext()Lcom/lge/newbay/client/impl/NewbayContext;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lge/newbay/client/impl/NewbayAPI;->ctx:Lcom/lge/newbay/client/impl/NewbayContext;

    return-object v0
.end method

.method protected getDeltaControl(Lorg/apache/http/HttpResponse;)Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;
    .registers 8
    .parameter "response"

    .prologue
    const/4 v5, 0x1

    .line 434
    new-instance v1, Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;

    invoke-direct {v1}, Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;-><init>()V

    .line 435
    .local v1, control:Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;
    const-string v4, "Last-Modified"

    invoke-virtual {p0, p1, v4}, Lcom/lge/newbay/client/impl/NewbayAPI;->getHeaderString(Lorg/apache/http/HttpMessage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, lastMofifiedStr:Ljava/lang/String;
    const-string v4, "Content-Range"

    invoke-virtual {p0, p1, v4}, Lcom/lge/newbay/client/impl/NewbayAPI;->getHeaderString(Lorg/apache/http/HttpMessage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, contentRangeStr:Ljava/lang/String;
    if-eqz v2, :cond_1b

    .line 438
    invoke-static {v2}, Lcom/lge/util/DateParser;->parseRFC822(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;->setLastModified(Ljava/util/Date;)V

    .line 440
    :cond_1b
    if-eqz v0, :cond_44

    const-string v4, "timeMod"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 441
    invoke-direct {p0, v0}, Lcom/lge/newbay/client/impl/NewbayAPI;->parseTimeModString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 442
    .local v3, timeModStr:[Ljava/lang/String;
    if-eqz v3, :cond_44

    .line 443
    array-length v4, v3

    if-lez v4, :cond_44

    .line 444
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Lcom/lge/util/DateParser;->parseRFC822(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;->setTimeModeFrom(Ljava/util/Date;)V

    .line 445
    array-length v4, v3

    if-le v4, v5, :cond_44

    .line 446
    aget-object v4, v3, v5

    invoke-static {v4}, Lcom/lge/util/DateParser;->parseRFC822(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;->setTimeModeTo(Ljava/util/Date;)V

    .line 451
    .end local v3           #timeModStr:[Ljava/lang/String;
    :cond_44
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;->setStatusCode(I)V

    .line 452
    return-object v1
.end method

.method protected getFirstHeader(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Lorg/apache/http/Header;
    .registers 6
    .parameter "request"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, header:Lorg/apache/http/Header;
    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/NewbayAPI;->getHttpResponse(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 291
    .local v1, response:Lorg/apache/http/HttpResponse;
    if-eqz p2, :cond_b

    .line 292
    invoke-interface {v1, p2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 294
    :cond_b
    invoke-virtual {p0, v1}, Lcom/lge/newbay/client/impl/NewbayAPI;->consume(Lorg/apache/http/HttpResponse;)V

    .line 295
    iget-object v2, p0, Lcom/lge/newbay/client/impl/NewbayAPI;->ctx:Lcom/lge/newbay/client/impl/NewbayContext;

    invoke-virtual {v2}, Lcom/lge/newbay/client/impl/NewbayContext;->closeIdle()V

    .line 296
    return-object v0
.end method

.method protected getFirstHeaders(Lorg/apache/http/client/methods/HttpUriRequest;[Ljava/lang/String;)[Lorg/apache/http/Header;
    .registers 7
    .parameter "request"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, headers:[Lorg/apache/http/Header;
    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/NewbayAPI;->getHttpResponse(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 276
    .local v2, response:Lorg/apache/http/HttpResponse;
    if-eqz p2, :cond_19

    .line 277
    array-length v3, p2

    new-array v0, v3, [Lorg/apache/http/Header;

    .line 278
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    array-length v3, p2

    if-ge v1, v3, :cond_19

    .line 279
    aget-object v3, p2, v1

    invoke-interface {v2, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    aput-object v3, v0, v1

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 282
    .end local v1           #i:I
    :cond_19
    invoke-virtual {p0, v2}, Lcom/lge/newbay/client/impl/NewbayAPI;->consume(Lorg/apache/http/HttpResponse;)V

    .line 283
    iget-object v3, p0, Lcom/lge/newbay/client/impl/NewbayAPI;->ctx:Lcom/lge/newbay/client/impl/NewbayContext;

    invoke-virtual {v3}, Lcom/lge/newbay/client/impl/NewbayContext;->closeIdle()V

    .line 284
    return-object v0
.end method

.method protected getHeaderString(Lorg/apache/http/HttpMessage;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "httpMessage"
    .parameter "key"

    .prologue
    .line 495
    invoke-interface {p1, p2}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 496
    .local v0, header:Lorg/apache/http/Header;
    if-eqz v0, :cond_11

    .line 497
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 498
    .local v1, locationString:Ljava/lang/String;
    if-eqz v1, :cond_11

    .line 499
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 502
    .end local v1           #locationString:Ljava/lang/String;
    :goto_10
    return-object v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10
.end method

.method protected getHttpResponse(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 9
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    :try_start_0
    iget-object v4, p0, Lcom/lge/newbay/client/impl/NewbayAPI;->ctx:Lcom/lge/newbay/client/impl/NewbayContext;

    invoke-virtual {v4, p1}, Lcom/lge/newbay/client/impl/NewbayContext;->getAuthorizationString(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, authorizationString:Ljava/lang/String;
    const-string v4, "Authorization"

    invoke-interface {p1, v4, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v4, p0, Lcom/lge/newbay/client/impl/NewbayAPI;->ctx:Lcom/lge/newbay/client/impl/NewbayContext;

    invoke-virtual {v4}, Lcom/lge/newbay/client/impl/NewbayContext;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v4

    invoke-interface {v4, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 306
    .local v1, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    .line 307
    .local v3, statusLine:Lorg/apache/http/StatusLine;
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 309
    .local v2, statusCode:I
    const/16 v4, 0x1f8

    if-eq v2, v4, :cond_25

    const/16 v4, 0x198

    if-ne v2, v4, :cond_37

    .line 310
    :cond_25
    iget-object v4, p0, Lcom/lge/newbay/client/impl/NewbayAPI;->ctx:Lcom/lge/newbay/client/impl/NewbayContext;

    invoke-virtual {v4}, Lcom/lge/newbay/client/impl/NewbayContext;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v4

    invoke-interface {v4, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 311
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    .line 312
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 314
    :cond_37
    const/16 v4, 0x12c

    if-lt v2, v4, :cond_61

    .line 315
    invoke-virtual {p0, v1}, Lcom/lge/newbay/client/impl/NewbayAPI;->consume(Lorg/apache/http/HttpResponse;)V

    .line 316
    const/16 v4, 0x191

    if-ne v2, v4, :cond_53

    .line 317
    new-instance v4, Lcom/lge/newbay/client/HttpUnauthorizatedException;

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/lge/newbay/client/HttpUnauthorizatedException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4c
    .catchall {:try_start_0 .. :try_end_4c} :catchall_4c

    .line 324
    .end local v0           #authorizationString:Ljava/lang/String;
    .end local v1           #response:Lorg/apache/http/HttpResponse;
    .end local v2           #statusCode:I
    .end local v3           #statusLine:Lorg/apache/http/StatusLine;
    :catchall_4c
    move-exception v4

    iget-object v5, p0, Lcom/lge/newbay/client/impl/NewbayAPI;->ctx:Lcom/lge/newbay/client/impl/NewbayContext;

    invoke-virtual {v5}, Lcom/lge/newbay/client/impl/NewbayContext;->closeIdle()V

    throw v4

    .line 319
    .restart local v0       #authorizationString:Ljava/lang/String;
    .restart local v1       #response:Lorg/apache/http/HttpResponse;
    .restart local v2       #statusCode:I
    .restart local v3       #statusLine:Lorg/apache/http/StatusLine;
    :cond_53
    :try_start_53
    new-instance v4, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_61
    .catchall {:try_start_53 .. :try_end_61} :catchall_4c

    .line 324
    :cond_61
    iget-object v4, p0, Lcom/lge/newbay/client/impl/NewbayAPI;->ctx:Lcom/lge/newbay/client/impl/NewbayContext;

    invoke-virtual {v4}, Lcom/lge/newbay/client/impl/NewbayContext;->closeIdle()V

    return-object v1
.end method

.method protected getHttpResponseAsAtomFeed(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/lge/feed/atom/AtomFeed;
    .registers 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 366
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/newbay/client/impl/NewbayAPI;->getHttpResponseAsAtomFeed(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v0

    return-object v0
.end method

.method protected getHttpResponseAsAtomFeed(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/atom/AtomFeed;
    .registers 5
    .parameter "request"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 371
    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/NewbayAPI;->getHttpResponseAsXml(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 372
    .local v0, xpp:Lorg/xmlpull/v1/XmlPullParser;
    if-eqz v0, :cond_b

    .line 373
    invoke-static {v0, p2}, Lcom/lge/newbay/client/impl/NewbayAPI;->getAtomFeed(Lorg/xmlpull/v1/XmlPullParser;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v1

    .line 375
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method protected getHttpResponseAsAtomFeedContainer(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/lge/newbay/client/AtomFeedContainer;
    .registers 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 380
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/newbay/client/impl/NewbayAPI;->getHttpResponseAsAtomFeedContainer(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v0

    return-object v0
.end method

.method protected getHttpResponseAsAtomFeedContainer(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/newbay/client/AtomFeedContainer;
    .registers 7
    .parameter "request"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/lge/feed/parser/FeedParseException;
        }
    .end annotation

    .prologue
    .line 385
    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/NewbayAPI;->getHttpResponse(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 386
    .local v2, response:Lorg/apache/http/HttpResponse;
    invoke-static {v2, p2}, Lcom/lge/newbay/client/impl/NewbayAPI;->getAtomFeed(Lorg/apache/http/HttpResponse;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v1

    .line 387
    .local v1, feed:Lcom/lge/feed/atom/AtomFeed;
    invoke-virtual {p0, v2}, Lcom/lge/newbay/client/impl/NewbayAPI;->getDeltaControl(Lorg/apache/http/HttpResponse;)Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;

    move-result-object v0

    .line 388
    .local v0, control:Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;
    new-instance v3, Lcom/lge/newbay/client/AtomFeedContainer;

    invoke-direct {v3, v1, v0}, Lcom/lge/newbay/client/AtomFeedContainer;-><init>(Lcom/lge/feed/atom/AtomFeed;Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;)V

    return-object v3
.end method

.method protected getHttpResponseAsString(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;
    .registers 6
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    iget-object v2, p0, Lcom/lge/newbay/client/impl/NewbayAPI;->ctx:Lcom/lge/newbay/client/impl/NewbayContext;

    invoke-virtual {v2, p1}, Lcom/lge/newbay/client/impl/NewbayContext;->getAuthorizationString(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, authorizationString:Ljava/lang/String;
    const-string v2, "Authorization"

    invoke-interface {p1, v2, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :try_start_b
    iget-object v2, p0, Lcom/lge/newbay/client/impl/NewbayAPI;->ctx:Lcom/lge/newbay/client/impl/NewbayContext;

    invoke-virtual {v2}, Lcom/lge/newbay/client/impl/NewbayContext;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/newbay/client/impl/NewbayAPI;->responseHandler:Lorg/apache/http/client/ResponseHandler;

    invoke-interface {v2, p1, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_46
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_b .. :try_end_19} :catch_1f

    .line 348
    iget-object v3, p0, Lcom/lge/newbay/client/impl/NewbayAPI;->ctx:Lcom/lge/newbay/client/impl/NewbayContext;

    invoke-virtual {v3}, Lcom/lge/newbay/client/impl/NewbayContext;->closeIdle()V

    :goto_1e
    return-object v2

    .line 341
    :catch_1f
    move-exception v2

    move-object v1, v2

    .line 342
    .local v1, e:Lorg/apache/http/client/HttpResponseException;
    :try_start_21
    invoke-virtual {v1}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v2

    const/16 v3, 0x1f8

    if-eq v2, v3, :cond_31

    invoke-virtual {v1}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v2

    const/16 v3, 0x198

    if-ne v2, v3, :cond_45

    .line 343
    :cond_31
    iget-object v2, p0, Lcom/lge/newbay/client/impl/NewbayAPI;->ctx:Lcom/lge/newbay/client/impl/NewbayContext;

    invoke-virtual {v2}, Lcom/lge/newbay/client/impl/NewbayContext;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/newbay/client/impl/NewbayAPI;->responseHandler:Lorg/apache/http/client/ResponseHandler;

    invoke-interface {v2, p1, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_3f
    .catchall {:try_start_21 .. :try_end_3f} :catchall_46

    .line 348
    iget-object v3, p0, Lcom/lge/newbay/client/impl/NewbayAPI;->ctx:Lcom/lge/newbay/client/impl/NewbayContext;

    invoke-virtual {v3}, Lcom/lge/newbay/client/impl/NewbayContext;->closeIdle()V

    goto :goto_1e

    .line 345
    :cond_45
    :try_start_45
    throw v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    .line 348
    .end local v1           #e:Lorg/apache/http/client/HttpResponseException;
    :catchall_46
    move-exception v2

    iget-object v3, p0, Lcom/lge/newbay/client/impl/NewbayAPI;->ctx:Lcom/lge/newbay/client/impl/NewbayContext;

    invoke-virtual {v3}, Lcom/lge/newbay/client/impl/NewbayContext;->closeIdle()V

    throw v2
.end method

.method protected getHttpResponseAsXml(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/xmlpull/v1/XmlPullParser;
    .registers 6
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 354
    const/4 v1, 0x0

    .line 355
    .local v1, xpp:Lorg/xmlpull/v1/XmlPullParser;
    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/NewbayAPI;->getHttpResponseAsString(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, response:Ljava/lang/String;
    if-eqz v0, :cond_1d

    .line 357
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 358
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 359
    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 361
    :cond_1d
    return-object v1
.end method

.method protected getLocationId(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    .registers 8
    .parameter "request"
    .parameter "lastSegment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    iget-object v3, p0, Lcom/lge/newbay/client/impl/NewbayAPI;->ctx:Lcom/lge/newbay/client/impl/NewbayContext;

    monitor-enter v3

    .line 508
    :try_start_3
    const-string v4, "Location"

    invoke-virtual {p0, p1, v4}, Lcom/lge/newbay/client/impl/NewbayAPI;->getFirstHeader(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 509
    .local v0, header:Lorg/apache/http/Header;
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_2d

    .line 510
    if-eqz v0, :cond_30

    .line 511
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 512
    .local v2, location:Ljava/lang/String;
    if-eqz v2, :cond_2b

    if-eqz p2, :cond_2b

    .line 513
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 514
    .local v1, index:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2b

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2b

    .line 515
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .end local v1           #index:I
    :cond_2b
    move-object v3, v2

    .line 520
    .end local v2           #location:Ljava/lang/String;
    :goto_2c
    return-object v3

    .line 509
    .end local v0           #header:Lorg/apache/http/Header;
    :catchall_2d
    move-exception v4

    :try_start_2e
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v4

    .line 520
    .restart local v0       #header:Lorg/apache/http/Header;
    :cond_30
    const/4 v3, 0x0

    goto :goto_2c
.end method

.method protected parseAuthor(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;
    .registers 9
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 469
    new-instance v1, Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;

    invoke-direct {v1}, Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;-><init>()V

    .line 470
    .local v1, author:Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    .line 471
    .local v4, l:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_a
    if-ge v3, v4, :cond_22

    .line 472
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, attrName:Ljava/lang/String;
    const-string v6, "id"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 474
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;->setId(Ljava/lang/String;)V

    .line 471
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 478
    .end local v0           #attrName:Ljava/lang/String;
    :cond_22
    const/4 v2, 0x0

    .line 479
    .local v2, eventType:I
    :cond_23
    :goto_23
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    const/4 v6, 0x3

    if-eq v2, v6, :cond_55

    .line 480
    const/4 v6, 0x2

    if-ne v2, v6, :cond_23

    .line 481
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 482
    .local v5, tagName:Ljava/lang/String;
    const-string v6, "username"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 483
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;->setUserName(Ljava/lang/String;)V

    goto :goto_23

    .line 484
    :cond_41
    const-string v6, "displayName"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 485
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;->setDisplayName(Ljava/lang/String;)V

    goto :goto_23

    .line 487
    :cond_51
    invoke-static {p1}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_23

    .line 491
    .end local v5           #tagName:Ljava/lang/String;
    :cond_55
    return-object v1
.end method
