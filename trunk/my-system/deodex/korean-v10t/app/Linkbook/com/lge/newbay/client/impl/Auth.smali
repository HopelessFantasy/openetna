.class public Lcom/lge/newbay/client/impl/Auth;
.super Ljava/lang/Object;
.source "Auth.java"


# static fields
.field static final HEADER_NEWBAY_USER_UID:Ljava/lang/String; = "X-Newbay-User-Uid"

.field static final PARAM_USER_PASSWORD:Ljava/lang/String; = "userPassword"

.field static final URI_AUTH:Ljava/lang/String; = "/sng/auth"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSessionToken(Lcom/lge/newbay/client/impl/NewbayContext;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "ctx"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v3, 0x0

    .line 54
    .local v3, token:Ljava/lang/String;
    const-string v0, "/sng/auth"

    invoke-virtual {p0}, Lcom/lge/newbay/client/impl/NewbayContext;->isSecure()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/newbay/client/impl/NewbayContext;->createHttpPost(Ljava/lang/String;Z)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 56
    .local v0, httpPost:Lorg/apache/http/client/methods/HttpPost;
    if-eqz p1, :cond_2a

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "userPassword"

    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/NewbayContext;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .end local p1
    invoke-direct {v2, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance p1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "UTF-8"

    invoke-direct {p1, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 62
    .end local v1           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_2a
    const-string p1, "X-Newbay-User-Uid"

    invoke-virtual {p0}, Lcom/lge/newbay/client/impl/NewbayContext;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string p1, "Authorization"

    invoke-virtual {p0, v0}, Lcom/lge/newbay/client/impl/NewbayContext;->getAuthorizationString(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/lge/newbay/client/impl/NewbayContext;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 65
    .local p1, response:Lorg/apache/http/HttpResponse;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 66
    .local v1, sl:Lorg/apache/http/StatusLine;
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 67
    .local v2, statusCode:I
    sparse-switch v2, :sswitch_data_c8

    move v0, v2

    .end local v2           #statusCode:I
    .local v0, statusCode:I
    move-object p0, p1

    .end local p1           #response:Lorg/apache/http/HttpResponse;
    .local p0, response:Lorg/apache/http/HttpResponse;
    move-object p1, v1

    .line 80
    .end local v1           #sl:Lorg/apache/http/StatusLine;
    .local p1, sl:Lorg/apache/http/StatusLine;
    :cond_52
    const/16 v1, 0x12c

    if-lt v0, v1, :cond_86

    .line 81
    new-instance p0, Lorg/apache/http/client/HttpResponseException;

    .end local p0           #response:Lorg/apache/http/HttpResponse;
    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object p1

    .end local p1           #sl:Lorg/apache/http/StatusLine;
    invoke-direct {p0, v0, p1}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 69
    .local v0, httpPost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v1       #sl:Lorg/apache/http/StatusLine;
    .restart local v2       #statusCode:I
    .local p0, ctx:Lcom/lge/newbay/client/impl/NewbayContext;
    .local p1, response:Lorg/apache/http/HttpResponse;
    :sswitch_60
    invoke-virtual {p0}, Lcom/lge/newbay/client/impl/NewbayContext;->getMssidn()Ljava/lang/String;

    move-result-object p1

    .line 70
    .local p1, mssidn:Ljava/lang/String;
    const-string v1, "X-Newbay-User-Uid"

    .end local v1           #sl:Lorg/apache/http/StatusLine;
    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    .line 71
    const-string v1, "X-Newbay-User-Uid"

    invoke-virtual {v0, v1, p1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .end local p1           #mssidn:Ljava/lang/String;
    :sswitch_6e
    invoke-virtual {p0}, Lcom/lge/newbay/client/impl/NewbayContext;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object p0

    .end local p0           #ctx:Lcom/lge/newbay/client/impl/NewbayContext;
    invoke-interface {p0, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    .line 74
    .local p0, response:Lorg/apache/http/HttpResponse;
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    .line 75
    .local p1, sl:Lorg/apache/http/StatusLine;
    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 76
    .end local v2           #statusCode:I
    .local v0, statusCode:I
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_52

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_52

    .line 85
    :cond_86
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    .line 86
    .local p0, entity:Lorg/apache/http/HttpEntity;
    if-eqz p0, :cond_c6

    .line 88
    :try_start_8c
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p1

    .end local p1           #sl:Lorg/apache/http/StatusLine;
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 89
    .local v0, xpp:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_97
    .catchall {:try_start_8c .. :try_end_97} :catchall_b8

    move-result-object p1

    .line 91
    .local p1, is:Ljava/io/InputStream;
    :try_start_98
    invoke-static {p0}, Lorg/apache/http/util/EntityUtils;->getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 92
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 93
    if-eqz v0, :cond_c4

    .line 94
    invoke-static {v0}, Lcom/lge/newbay/client/impl/Auth;->getSessionToken(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    :try_end_aa
    .catchall {:try_start_98 .. :try_end_aa} :catchall_b3

    move-result-object v0

    .line 97
    .end local v3           #token:Ljava/lang/String;
    .local v0, token:Ljava/lang/String;
    :goto_ab
    :try_start_ab
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_bf

    .line 100
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    move-object p0, v0

    .line 103
    .end local v0           #token:Ljava/lang/String;
    .end local p1           #is:Ljava/io/InputStream;
    .local p0, token:Ljava/lang/String;
    :goto_b2
    return-object p0

    .line 97
    .local v0, xpp:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3       #token:Ljava/lang/String;
    .local p0, entity:Lorg/apache/http/HttpEntity;
    .restart local p1       #is:Ljava/io/InputStream;
    :catchall_b3
    move-exception v0

    .end local v0           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :try_start_b4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_b8
    .catchall {:try_start_b4 .. :try_end_b8} :catchall_b8

    .line 100
    .end local p1           #is:Ljava/io/InputStream;
    :catchall_b8
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    .end local v3           #token:Ljava/lang/String;
    .local p1, token:Ljava/lang/String;
    :goto_bb
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    throw v0

    .local v0, token:Ljava/lang/String;
    .local p1, is:Ljava/io/InputStream;
    :catchall_bf
    move-exception p1

    move-object v5, p1

    move-object p1, v0

    .end local v0           #token:Ljava/lang/String;
    .local p1, token:Ljava/lang/String;
    move-object v0, v5

    goto :goto_bb

    .local v0, xpp:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3       #token:Ljava/lang/String;
    .local p1, is:Ljava/io/InputStream;
    :cond_c4
    move-object v0, v3

    .end local v3           #token:Ljava/lang/String;
    .local v0, token:Ljava/lang/String;
    goto :goto_ab

    .local v0, statusCode:I
    .restart local v3       #token:Ljava/lang/String;
    .local p1, sl:Lorg/apache/http/StatusLine;
    :cond_c6
    move-object p0, v3

    .end local v3           #token:Ljava/lang/String;
    .local p0, token:Ljava/lang/String;
    goto :goto_b2

    .line 67
    :sswitch_data_c8
    .sparse-switch
        0x191 -> :sswitch_60
        0x1f7 -> :sswitch_6e
    .end sparse-switch
.end method

.method private static getSessionToken(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 5
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v2, 0x0

    .line 108
    .local v2, token:Ljava/lang/String;
    const/4 v0, 0x0

    .line 109
    .local v0, eventType:I
    :cond_2
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_21

    .line 110
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 111
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, tagName:Ljava/lang/String;
    const-string v3, "sngAuth"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 113
    invoke-static {p0}, Lcom/lge/newbay/client/impl/Auth;->getToken(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 115
    :cond_1d
    invoke-static {p0}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 119
    .end local v1           #tagName:Ljava/lang/String;
    :cond_21
    return-object v2
.end method

.method private static getToken(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 5
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    const/4 v2, 0x0

    .line 124
    .local v2, token:Ljava/lang/String;
    const/4 v0, 0x0

    .line 125
    .local v0, eventType:I
    :cond_2
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_21

    .line 126
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 127
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, tagName:Ljava/lang/String;
    const-string v3, "token"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 129
    invoke-static {p0}, Lcom/lge/newbay/client/impl/XppUtil;->getNextString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 131
    :cond_1d
    invoke-static {p0}, Lcom/lge/newbay/client/impl/XppUtil;->consumeTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 135
    .end local v1           #tagName:Ljava/lang/String;
    :cond_21
    if-eqz v2, :cond_28

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :goto_27
    return-object v3

    :cond_28
    const/4 v3, 0x0

    goto :goto_27
.end method
