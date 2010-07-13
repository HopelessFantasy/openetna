.class public Lcom/android/mms/transaction/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final CHUNKED_TEMPORARY_FILEPATH:Ljava/lang/String; = "/data/data/com.android.mms/chunked_msg.tmp"

.field private static final DEBUG:Z = true

.field private static final HDR_KEY_ACCEPT:Ljava/lang/String; = "Accept"

.field private static final HDR_KEY_ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field private static final HDR_KEY_X_MSISDN:Ljava/lang/String; = "X-MSISDN"

.field private static final HDR_KEY_X_WAP_PROFILE:Ljava/lang/String; = "x-wap-profile"

.field private static final HDR_VALUE_ACCEPT:Ljava/lang/String; = "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

.field private static final HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String; = null

.field public static final HTTP_GET_METHOD:I = 0x2

.field public static final HTTP_POST_METHOD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HttpUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    invoke-static {}, Lcom/android/mms/transaction/HttpUtils;->getHttpAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    .line 71
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method private static addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .registers 5
    .parameter "builder"
    .parameter "locale"

    .prologue
    .line 357
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, language:Ljava/lang/String;
    if-eqz v1, :cond_17

    .line 360
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, country:Ljava/lang/String;
    if-eqz v0, :cond_17

    .line 365
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .end local v0           #country:Ljava/lang/String;
    :cond_17
    return-void
.end method

.method private static createHttpClient(Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;
    .registers 7
    .parameter "context"

    .prologue
    .line 322
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "BRW_SETTINGDB_UA_STRING_I"

    invoke-static {v3, v4}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, UA_String_flexValues:Ljava/lang/String;
    const-string v3, "[FLEX]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UA String :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    if-eqz v0, :cond_32

    .line 328
    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    .line 332
    .local v1, client:Landroid/net/http/AndroidHttpClient;
    :goto_28
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 333
    .local v2, params:Lorg/apache/http/params/HttpParams;
    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 334
    return-object v1

    .line 330
    .end local v1           #client:Landroid/net/http/AndroidHttpClient;
    .end local v2           #params:Lorg/apache/http/params/HttpParams;
    :cond_32
    const-string v3, "LG-GW620/Android-Mms/0.1"

    invoke-static {v3}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    .restart local v1       #client:Landroid/net/http/AndroidHttpClient;
    goto :goto_28
.end method

.method private static getHttpAcceptLanguage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 342
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 343
    .local v1, locale:Ljava/util/Locale;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-static {v0, v1}, Lcom/android/mms/transaction/HttpUtils;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 346
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 347
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1f

    .line 348
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_1f
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v2}, Lcom/android/mms/transaction/HttpUtils;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 352
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getXWapProfileHeaderValue(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 309
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mms_x_wap_profile_url"

    invoke-static {v0, v1}, Landroid/provider/Settings$Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static handleHttpConnectionException(Ljava/lang/Exception;)V
    .registers 3
    .parameter "exception"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    const-string v0, "HttpUtils"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static httpConnection(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;I)[B
    .registers 15
    .parameter "context"
    .parameter "token"
    .parameter "url"
    .parameter "pdu"
    .parameter "method"
    .parameter "isProxySet"
    .parameter "proxyHost"
    .parameter "proxyPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    if-nez p3, :cond_a

    .line 103
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "URL must not be null."

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 106
    .restart local p0
    .restart local p1
    :cond_a
    const-string v0, "HttpUtils"

    const-string v1, "httpConnection: params list"

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "HttpUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ttoken\t\t= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v0, "HttpUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\turl\t\t= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "HttpUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tmethod\t\t= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    if-ne p5, v2, :cond_100

    const-string v2, "POST"

    :goto_53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "HttpUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tisProxySet\t= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, "HttpUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tproxyHost\t= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v0, "HttpUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tproxyPort\t= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x0

    .line 122
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    :try_start_a7
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, hostUrl:Ljava/net/URI;
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v1

    .end local v1           #hostUrl:Ljava/net/URI;
    const-string v4, "http"

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 127
    .local v2, target:Lorg/apache/http/HttpHost;
    invoke-static {p0}, Lcom/android/mms/transaction/HttpUtils;->createHttpClient(Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, req:Lorg/apache/http/HttpRequest;
    packed-switch p5, :pswitch_data_368

    .line 144
    const-string p0, "HttpUtils"

    .end local p0
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown HTTP method: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ". Must be one of POST["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] or GET["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f7
    .catchall {:try_start_a7 .. :try_end_f7} :catchall_353
    .catch Ljava/net/URISyntaxException; {:try_start_a7 .. :try_end_f7} :catch_1f2
    .catch Ljava/lang/IllegalStateException; {:try_start_a7 .. :try_end_f7} :catch_211
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a7 .. :try_end_f7} :catch_231
    .catch Ljava/net/SocketException; {:try_start_a7 .. :try_end_f7} :catch_246
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_f7} :catch_2b3

    .line 147
    const/4 p0, 0x0

    .line 301
    if-eqz v0, :cond_fd

    .line 302
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_fd
    move-object p1, p0

    move-object p0, v0

    .line 305
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .end local v1           #req:Lorg/apache/http/HttpRequest;
    .end local v2           #target:Lorg/apache/http/HttpHost;
    .end local p3
    .end local p4
    .end local p5
    .end local p6
    .end local p7
    .end local p8
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    :goto_ff
    return-object p1

    .line 109
    .local p0, context:Landroid/content/Context;
    .restart local p1
    .restart local p3
    .restart local p4
    .restart local p5
    .restart local p6
    .restart local p7
    .restart local p8
    :cond_100
    const/4 v2, 0x2

    if-ne p5, v2, :cond_107

    const-string v2, "GET"

    goto/16 :goto_53

    :cond_107
    const-string v2, "UNKNOWN"

    goto/16 :goto_53

    .line 131
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v1       #req:Lorg/apache/http/HttpRequest;
    .restart local v2       #target:Lorg/apache/http/HttpHost;
    :pswitch_10b
    :try_start_10b
    new-instance p5, Lcom/android/mms/transaction/ProgressCallbackEntity;

    .end local p5
    invoke-direct {p5, p0, p1, p2, p4}, Lcom/android/mms/transaction/ProgressCallbackEntity;-><init>(Landroid/content/Context;J[B)V

    .line 134
    .local p5, entity:Lcom/android/mms/transaction/ProgressCallbackEntity;
    const-string p1, "application/vnd.wap.mms-message"

    .end local p1
    invoke-virtual {p5, p1}, Lcom/android/mms/transaction/ProgressCallbackEntity;->setContentType(Ljava/lang/String;)V

    .line 136
    new-instance p1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p1, p3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 137
    .local p1, post:Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {p1, p5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 138
    move-object p1, p1

    .end local v1           #req:Lorg/apache/http/HttpRequest;
    .local p1, req:Lorg/apache/http/HttpRequest;
    move-object p2, p1

    .line 151
    .end local p1           #req:Lorg/apache/http/HttpRequest;
    .end local p5           #entity:Lcom/android/mms/transaction/ProgressCallbackEntity;
    .local p2, req:Lorg/apache/http/HttpRequest;
    :goto_11f
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    .line 152
    .local p1, params:Lorg/apache/http/params/HttpParams;
    if-eqz p6, :cond_12d

    .line 153
    new-instance p3, Lorg/apache/http/HttpHost;

    .end local p3
    invoke-direct {p3, p7, p8}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {p1, p3}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 156
    :cond_12d
    invoke-interface {p2, p1}, Lorg/apache/http/HttpRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 159
    const-string p1, "Accept"

    .end local p1           #params:Lorg/apache/http/params/HttpParams;
    const-string p3, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-interface {p2, p1, p3}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .end local p0           #context:Landroid/content/Context;
    const-string p1, "BRW_SETTINGDB_UA_PROFILE_I"

    invoke-static {p0, p1}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 173
    .local p0, UA_Profile_flexValues:Ljava/lang/String;
    const-string p1, "[FLEX]"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "UA Profile :"

    .end local p4
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    if-eqz p0, :cond_208

    .line 176
    const-string p1, "x-wap-profile"

    invoke-interface {p2, p1, p0}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .end local p0           #UA_Profile_flexValues:Ljava/lang/String;
    :goto_160
    const-string p0, "jongchul"

    const-string p1, "error step 1"

    invoke-static {p0, p1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string p0, "Accept-Language"

    sget-object p1, Lcom/android/mms/transaction/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string p0, "jongchul"

    const-string p1, "error step 2"

    invoke-static {p0, p1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p1

    .line 188
    .local p1, msisdn:Ljava/lang/String;
    if-eqz p1, :cond_1b7

    .line 190
    const-string p0, "+"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_21d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 p3, 0x7

    if-le p0, p3, :cond_21d

    const/4 p0, 0x1

    .line 195
    .local p0, isCorrectFormat:Z
    :goto_18f
    if-eqz p0, :cond_23d

    .line 199
    if-eqz p1, :cond_220

    .line 200
    const-string p0, "HttpUtils"

    .end local p0           #isCorrectFormat:Z
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "MSISDN: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    new-instance p0, Lorg/apache/http/message/BasicHeader;

    const-string p3, "X-MSISDN"

    invoke-direct {p0, p3, p1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .end local p1           #msisdn:Ljava/lang/String;
    .local p0, mMsisdnHeader:Lorg/apache/http/Header;
    :goto_1b2
    if-eqz p0, :cond_229

    .line 208
    invoke-interface {p2, p0}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 216
    .end local p0           #mMsisdnHeader:Lorg/apache/http/Header;
    :cond_1b7
    :goto_1b7
    const-string p0, "jongchul"

    const-string p1, "error step 7"

    invoke-static {p0, p1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, v2, p2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    .line 218
    .local p0, response:Lorg/apache/http/HttpResponse;
    const-string p1, "jongchul"

    const-string p2, "error step 8"

    .end local p2           #req:Lorg/apache/http/HttpRequest;
    invoke-static {p1, p2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    .line 220
    .local p1, status:Lorg/apache/http/StatusLine;
    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p2

    const/16 p3, 0xc8

    if-eq p2, p3, :cond_252

    .line 221
    new-instance p0, Ljava/io/IOException;

    .end local p0           #response:Lorg/apache/http/HttpResponse;
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "HTTP error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object p1

    .end local p1           #status:Lorg/apache/http/StatusLine;
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1f2
    .catchall {:try_start_10b .. :try_end_1f2} :catchall_353
    .catch Ljava/net/URISyntaxException; {:try_start_10b .. :try_end_1f2} :catch_1f2
    .catch Ljava/lang/IllegalStateException; {:try_start_10b .. :try_end_1f2} :catch_211
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10b .. :try_end_1f2} :catch_231
    .catch Ljava/net/SocketException; {:try_start_10b .. :try_end_1f2} :catch_246
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_1f2} :catch_2b3

    .line 289
    .end local v2           #target:Lorg/apache/http/HttpHost;
    .end local p6
    .end local p7
    .end local p8
    :catch_1f2
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 290
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    .local p1, e:Ljava/net/URISyntaxException;
    :try_start_1f5
    invoke-static {p1}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;)V
    :try_end_1f8
    .catchall {:try_start_1f5 .. :try_end_1f8} :catchall_35c

    .line 301
    if-eqz p0, :cond_1fd

    .line 302
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 305
    .end local p1           #e:Ljava/net/URISyntaxException;
    :cond_1fd
    :goto_1fd
    const/4 p1, 0x0

    goto/16 :goto_ff

    .line 141
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v1       #req:Lorg/apache/http/HttpRequest;
    .restart local v2       #target:Lorg/apache/http/HttpHost;
    .local p0, context:Landroid/content/Context;
    .local p1, token:J
    .restart local p3
    .restart local p4
    .local p5, method:I
    .restart local p6
    .restart local p7
    .restart local p8
    :pswitch_200
    :try_start_200
    new-instance p1, Lorg/apache/http/client/methods/HttpGet;

    .end local p1           #token:J
    invoke-direct {p1, p3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .end local v1           #req:Lorg/apache/http/HttpRequest;
    .local p1, req:Lorg/apache/http/HttpRequest;
    move-object p2, p1

    .line 142
    .end local p1           #req:Lorg/apache/http/HttpRequest;
    .restart local p2       #req:Lorg/apache/http/HttpRequest;
    goto/16 :goto_11f

    .line 178
    .end local p3
    .end local p4
    .end local p5           #method:I
    .local p0, UA_Profile_flexValues:Ljava/lang/String;
    :cond_208
    const-string p0, "x-wap-profile"

    .end local p0           #UA_Profile_flexValues:Ljava/lang/String;
    const-string p1, "http://gsm.lge.com/html/gsm/GW620-M6-D2.xml"

    invoke-interface {p2, p0, p1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20f
    .catchall {:try_start_200 .. :try_end_20f} :catchall_353
    .catch Ljava/net/URISyntaxException; {:try_start_200 .. :try_end_20f} :catch_1f2
    .catch Ljava/lang/IllegalStateException; {:try_start_200 .. :try_end_20f} :catch_211
    .catch Ljava/lang/IllegalArgumentException; {:try_start_200 .. :try_end_20f} :catch_231
    .catch Ljava/net/SocketException; {:try_start_200 .. :try_end_20f} :catch_246
    .catch Ljava/lang/Exception; {:try_start_200 .. :try_end_20f} :catch_2b3

    goto/16 :goto_160

    .line 291
    .end local v2           #target:Lorg/apache/http/HttpHost;
    .end local p2           #req:Lorg/apache/http/HttpRequest;
    .end local p6
    .end local p7
    .end local p8
    :catch_211
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 292
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    .local p1, e:Ljava/lang/IllegalStateException;
    :try_start_214
    invoke-static {p1}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;)V
    :try_end_217
    .catchall {:try_start_214 .. :try_end_217} :catchall_35c

    .line 301
    if-eqz p0, :cond_1fd

    .line 302
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_1fd

    .line 190
    .end local p0           #client:Landroid/net/http/AndroidHttpClient;
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v2       #target:Lorg/apache/http/HttpHost;
    .local p1, msisdn:Ljava/lang/String;
    .restart local p2       #req:Lorg/apache/http/HttpRequest;
    .restart local p6
    .restart local p7
    .restart local p8
    :cond_21d
    const/4 p0, 0x0

    goto/16 :goto_18f

    .line 203
    .local p0, isCorrectFormat:Z
    :cond_220
    :try_start_220
    const-string p0, "HttpUtils"

    .end local p0           #isCorrectFormat:Z
    const-string p1, "mMsisdnHeader length zero or it is NULL!!!"

    .end local p1           #msisdn:Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 p0, 0x0

    .local p0, mMsisdnHeader:Lorg/apache/http/Header;
    goto :goto_1b2

    .line 210
    :cond_229
    const-string p0, "HttpUtils"

    .end local p0           #mMsisdnHeader:Lorg/apache/http/Header;
    const-string p1, "mMsisdnHeader is NULL "

    invoke-static {p0, p1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_230
    .catchall {:try_start_220 .. :try_end_230} :catchall_353
    .catch Ljava/net/URISyntaxException; {:try_start_220 .. :try_end_230} :catch_1f2
    .catch Ljava/lang/IllegalStateException; {:try_start_220 .. :try_end_230} :catch_211
    .catch Ljava/lang/IllegalArgumentException; {:try_start_220 .. :try_end_230} :catch_231
    .catch Ljava/net/SocketException; {:try_start_220 .. :try_end_230} :catch_246
    .catch Ljava/lang/Exception; {:try_start_220 .. :try_end_230} :catch_2b3

    goto :goto_1b7

    .line 293
    .end local v2           #target:Lorg/apache/http/HttpHost;
    .end local p2           #req:Lorg/apache/http/HttpRequest;
    .end local p6
    .end local p7
    .end local p8
    :catch_231
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 294
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    .local p1, e:Ljava/lang/IllegalArgumentException;
    :try_start_234
    invoke-static {p1}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;)V
    :try_end_237
    .catchall {:try_start_234 .. :try_end_237} :catchall_35c

    .line 301
    if-eqz p0, :cond_1fd

    .line 302
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_1fd

    .line 213
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v2       #target:Lorg/apache/http/HttpHost;
    .local p0, isCorrectFormat:Z
    .local p1, msisdn:Ljava/lang/String;
    .restart local p2       #req:Lorg/apache/http/HttpRequest;
    .restart local p6
    .restart local p7
    .restart local p8
    :cond_23d
    :try_start_23d
    const-string p0, "HttpUtils"

    .end local p0           #isCorrectFormat:Z
    const-string p1, "mMsisdnHeader is NULL "

    .end local p1           #msisdn:Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_244
    .catchall {:try_start_23d .. :try_end_244} :catchall_353
    .catch Ljava/net/URISyntaxException; {:try_start_23d .. :try_end_244} :catch_1f2
    .catch Ljava/lang/IllegalStateException; {:try_start_23d .. :try_end_244} :catch_211
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23d .. :try_end_244} :catch_231
    .catch Ljava/net/SocketException; {:try_start_23d .. :try_end_244} :catch_246
    .catch Ljava/lang/Exception; {:try_start_23d .. :try_end_244} :catch_2b3

    goto/16 :goto_1b7

    .line 295
    .end local v2           #target:Lorg/apache/http/HttpHost;
    .end local p2           #req:Lorg/apache/http/HttpRequest;
    .end local p6
    .end local p7
    .end local p8
    :catch_246
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 296
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    .local p1, e:Ljava/net/SocketException;
    :try_start_249
    invoke-static {p1}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;)V
    :try_end_24c
    .catchall {:try_start_249 .. :try_end_24c} :catchall_35c

    .line 301
    if-eqz p0, :cond_1fd

    .line 302
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_1fd

    .line 224
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v2       #target:Lorg/apache/http/HttpHost;
    .local p0, response:Lorg/apache/http/HttpResponse;
    .local p1, status:Lorg/apache/http/StatusLine;
    .restart local p6
    .restart local p7
    .restart local p8
    :cond_252
    :try_start_252
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_255
    .catchall {:try_start_252 .. :try_end_255} :catchall_353
    .catch Ljava/net/URISyntaxException; {:try_start_252 .. :try_end_255} :catch_1f2
    .catch Ljava/lang/IllegalStateException; {:try_start_252 .. :try_end_255} :catch_211
    .catch Ljava/lang/IllegalArgumentException; {:try_start_252 .. :try_end_255} :catch_231
    .catch Ljava/net/SocketException; {:try_start_252 .. :try_end_255} :catch_246
    .catch Ljava/lang/Exception; {:try_start_252 .. :try_end_255} :catch_2b3

    move-result-object p6

    .line 225
    .local p6, entity:Lorg/apache/http/HttpEntity;
    const/4 p0, 0x0

    .line 226
    .local p0, body:[B
    if-eqz p6, :cond_282

    .line 228
    const/4 p1, 0x0

    .line 230
    .local p1, dis:Ljava/io/DataInputStream;
    :try_start_25a
    invoke-interface {p6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide p2

    const-wide/16 p4, 0x0

    cmp-long p2, p2, p4

    if-lez p2, :cond_2e3

    .line 231
    invoke-interface {p6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide p2

    long-to-int p2, p2

    new-array p0, p2, [B

    .line 232
    new-instance p2, Ljava/io/DataInputStream;

    invoke-interface {p6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_274
    .catchall {:try_start_25a .. :try_end_274} :catchall_35e

    .line 234
    .end local p1           #dis:Ljava/io/DataInputStream;
    .local p2, dis:Ljava/io/DataInputStream;
    if-eqz p2, :cond_364

    .line 236
    :try_start_276
    invoke-virtual {p2, p0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_279
    .catchall {:try_start_276 .. :try_end_279} :catchall_2c0

    .line 239
    :try_start_279
    invoke-virtual {p2}, Ljava/io/DataInputStream;->close()V
    :try_end_27c
    .catchall {:try_start_279 .. :try_end_27c} :catchall_2a9
    .catch Ljava/io/IOException; {:try_start_279 .. :try_end_27c} :catch_28b

    :goto_27c
    move-object p1, p2

    .line 283
    .end local p2           #dis:Ljava/io/DataInputStream;
    .end local p7
    .end local p8
    .restart local p1       #dis:Ljava/io/DataInputStream;
    :cond_27d
    :goto_27d
    if-eqz p6, :cond_282

    .line 284
    :try_start_27f
    invoke-interface {p6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_282
    .catchall {:try_start_27f .. :try_end_282} :catchall_353
    .catch Ljava/net/URISyntaxException; {:try_start_27f .. :try_end_282} :catch_1f2
    .catch Ljava/lang/IllegalStateException; {:try_start_27f .. :try_end_282} :catch_211
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27f .. :try_end_282} :catch_231
    .catch Ljava/net/SocketException; {:try_start_27f .. :try_end_282} :catch_246
    .catch Ljava/lang/Exception; {:try_start_27f .. :try_end_282} :catch_2b3

    .line 301
    .end local p1           #dis:Ljava/io/DataInputStream;
    :cond_282
    if-eqz v0, :cond_287

    .line 302
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_287
    move-object p1, p0

    move-object p0, v0

    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    goto/16 :goto_ff

    .line 240
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .local p0, body:[B
    .restart local p2       #dis:Ljava/io/DataInputStream;
    .restart local p7
    .restart local p8
    :catch_28b
    move-exception p1

    .line 241
    .local p1, e:Ljava/io/IOException;
    :try_start_28c
    const-string p3, "HttpUtils"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Error closing input stream: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .end local p1           #e:Ljava/io/IOException;
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a8
    .catchall {:try_start_28c .. :try_end_2a8} :catchall_2a9

    goto :goto_27c

    .line 283
    .end local p7
    :catchall_2a9
    move-exception p1

    move-object v5, p1

    move-object p1, p2

    .end local p2           #dis:Ljava/io/DataInputStream;
    .local p1, dis:Ljava/io/DataInputStream;
    move-object p2, v5

    .end local p8
    :goto_2ad
    if-eqz p6, :cond_2b2

    .line 284
    :try_start_2af
    invoke-interface {p6}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_2b2
    throw p2
    :try_end_2b3
    .catchall {:try_start_2af .. :try_end_2b3} :catchall_353
    .catch Ljava/net/URISyntaxException; {:try_start_2af .. :try_end_2b3} :catch_1f2
    .catch Ljava/lang/IllegalStateException; {:try_start_2af .. :try_end_2b3} :catch_211
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2af .. :try_end_2b3} :catch_231
    .catch Ljava/net/SocketException; {:try_start_2af .. :try_end_2b3} :catch_246
    .catch Ljava/lang/Exception; {:try_start_2af .. :try_end_2b3} :catch_2b3

    .line 297
    .end local v2           #target:Lorg/apache/http/HttpHost;
    .end local p0           #body:[B
    .end local p1           #dis:Ljava/io/DataInputStream;
    .end local p6           #entity:Lorg/apache/http/HttpEntity;
    :catch_2b3
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 298
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    .local p1, e:Ljava/lang/Exception;
    :try_start_2b6
    invoke-static {p1}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;)V
    :try_end_2b9
    .catchall {:try_start_2b6 .. :try_end_2b9} :catchall_35c

    .line 301
    if-eqz p0, :cond_1fd

    .line 302
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_1fd

    .line 238
    .end local p1           #e:Ljava/lang/Exception;
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v2       #target:Lorg/apache/http/HttpHost;
    .local p0, body:[B
    .restart local p2       #dis:Ljava/io/DataInputStream;
    .restart local p6       #entity:Lorg/apache/http/HttpEntity;
    .restart local p7
    .restart local p8
    :catchall_2c0
    move-exception p3

    .line 239
    :try_start_2c1
    invoke-virtual {p2}, Ljava/io/DataInputStream;->close()V
    :try_end_2c4
    .catchall {:try_start_2c1 .. :try_end_2c4} :catchall_2a9
    .catch Ljava/io/IOException; {:try_start_2c1 .. :try_end_2c4} :catch_2c5

    .line 242
    .end local p7
    :goto_2c4
    :try_start_2c4
    throw p3

    .line 240
    .restart local p7
    :catch_2c5
    move-exception p1

    .line 241
    .local p1, e:Ljava/io/IOException;
    const-string p4, "HttpUtils"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "Error closing input stream: "

    .end local p7
    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .end local p1           #e:Ljava/io/IOException;
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e2
    .catchall {:try_start_2c4 .. :try_end_2e2} :catchall_2a9

    goto :goto_2c4

    .line 246
    .end local p2           #dis:Ljava/io/DataInputStream;
    .local p1, dis:Ljava/io/DataInputStream;
    .restart local p7
    :cond_2e3
    :try_start_2e3
    invoke-interface {p6}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result p2

    if-nez p2, :cond_2f3

    invoke-interface {p6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide p2

    const-wide/16 p4, -0x1

    cmp-long p2, p2, p4

    if-nez p2, :cond_27d

    .line 248
    :cond_2f3
    new-instance p5, Ljava/io/DataInputStream;

    invoke-interface {p6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p5, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2fc
    .catchall {:try_start_2e3 .. :try_end_2fc} :catchall_35e

    .line 250
    .end local p1           #dis:Ljava/io/DataInputStream;
    .local p5, dis:Ljava/io/DataInputStream;
    if-eqz p5, :cond_361

    .line 252
    :try_start_2fe
    const-string p4, "/data/data/com.android.mms/chunked_msg.tmp"

    .line 253
    .local p4, contentFileName:Ljava/lang/String;
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .local p3, contentFile:Ljava/io/File;
    new-instance p7, Ljava/io/FileOutputStream;

    .end local p7
    invoke-direct {p7, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 256
    .local p7, fout:Ljava/io/FileOutputStream;
    const/16 p1, 0x2000

    new-array p1, p1, [B

    .line 257
    .local p1, buffer:[B
    const/4 p2, 0x0

    .line 258
    .local p2, byteRead:I
    const/4 p8, 0x0

    .line 260
    .local p8, readSoFar:I
    invoke-virtual {p5, p1}, Ljava/io/DataInputStream;->read([B)I

    move-result p2

    .line 261
    :goto_314
    const/4 v1, -0x1

    if-eq p2, v1, :cond_321

    .line 262
    const/4 v1, 0x0

    invoke-virtual {p7, p1, v1, p2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 263
    add-int/2addr p8, p2

    .line 264
    invoke-virtual {p5, p1}, Ljava/io/DataInputStream;->read([B)I

    move-result p2

    goto :goto_314

    .line 266
    :cond_321
    invoke-virtual {p7}, Ljava/io/FileOutputStream;->close()V
    :try_end_324
    .catchall {:try_start_2fe .. :try_end_324} :catchall_34e

    .line 270
    :try_start_324
    new-array p0, p8, [B

    .line 271
    new-instance p1, Ljava/io/FileInputStream;

    .end local p1           #buffer:[B
    invoke-direct {p1, p4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 272
    .local p1, fin:Ljava/io/FileInputStream;
    invoke-virtual {p1, p0}, Ljava/io/FileInputStream;->read([B)I

    .line 273
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_331
    .catchall {:try_start_324 .. :try_end_331} :catchall_340

    .line 275
    :try_start_331
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    .end local p1           #fin:Ljava/io/FileInputStream;
    if-eqz p1, :cond_33a

    .line 276
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 278
    :cond_33a
    invoke-virtual {p5}, Ljava/io/DataInputStream;->close()V

    move-object p1, p5

    .line 279
    .end local p5           #dis:Ljava/io/DataInputStream;
    .local p1, dis:Ljava/io/DataInputStream;
    goto/16 :goto_27d

    .line 275
    .end local p1           #dis:Ljava/io/DataInputStream;
    .restart local p5       #dis:Ljava/io/DataInputStream;
    :catchall_340
    move-exception p1

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p2

    .end local p2           #byteRead:I
    if-eqz p2, :cond_34a

    .line 276
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 278
    :cond_34a
    invoke-virtual {p5}, Ljava/io/DataInputStream;->close()V

    throw p1
    :try_end_34e
    .catchall {:try_start_331 .. :try_end_34e} :catchall_34e

    .line 283
    .end local p3           #contentFile:Ljava/io/File;
    .end local p4           #contentFileName:Ljava/lang/String;
    .end local p7           #fout:Ljava/io/FileOutputStream;
    .end local p8           #readSoFar:I
    :catchall_34e
    move-exception p1

    move-object p2, p1

    move-object p1, p5

    .end local p5           #dis:Ljava/io/DataInputStream;
    .restart local p1       #dis:Ljava/io/DataInputStream;
    goto/16 :goto_2ad

    .line 301
    .end local v2           #target:Lorg/apache/http/HttpHost;
    .end local p0           #body:[B
    .end local p1           #dis:Ljava/io/DataInputStream;
    .end local p6           #entity:Lorg/apache/http/HttpEntity;
    :catchall_353
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    :goto_356
    if-eqz p0, :cond_35b

    .line 302
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_35b
    throw p1

    .line 301
    :catchall_35c
    move-exception p1

    goto :goto_356

    .line 283
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v2       #target:Lorg/apache/http/HttpHost;
    .local p0, body:[B
    .restart local p1       #dis:Ljava/io/DataInputStream;
    .restart local p6       #entity:Lorg/apache/http/HttpEntity;
    .local p7, proxyHost:Ljava/lang/String;
    .local p8, proxyPort:I
    :catchall_35e
    move-exception p2

    goto/16 :goto_2ad

    .end local p1           #dis:Ljava/io/DataInputStream;
    .restart local p5       #dis:Ljava/io/DataInputStream;
    :cond_361
    move-object p1, p5

    .end local p5           #dis:Ljava/io/DataInputStream;
    .restart local p1       #dis:Ljava/io/DataInputStream;
    goto/16 :goto_27d

    .end local p1           #dis:Ljava/io/DataInputStream;
    .local p2, dis:Ljava/io/DataInputStream;
    :cond_364
    move-object p1, p2

    .end local p2           #dis:Ljava/io/DataInputStream;
    .restart local p1       #dis:Ljava/io/DataInputStream;
    goto/16 :goto_27d

    .line 129
    nop

    :pswitch_data_368
    .packed-switch 0x1
        :pswitch_10b
        :pswitch_200
    .end packed-switch
.end method
