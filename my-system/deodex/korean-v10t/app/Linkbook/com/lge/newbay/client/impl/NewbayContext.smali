.class public Lcom/lge/newbay/client/impl/NewbayContext;
.super Ljava/lang/Object;
.source "NewbayContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/newbay/client/impl/NewbayContext$IdleConnectionCloseThread;
    }
.end annotation


# static fields
.field private static final CIPHER_TRANSFORMATION:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field private static final CRYPT_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final FIXED_HEADERS:[[Ljava/lang/String; = null

.field private static HEXA_STRING:Ljava/lang/String; = null

.field static final IDLE_TIMEOUT:J = 0x2710L

.field static cipher:Ljavax/crypto/Cipher;

.field static ips:Ljavax/crypto/spec/IvParameterSpec;

.field static final iv:[B

.field private static paramComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private alive:Z

.field final authApiKey:Ljava/lang/String;

.field final host:Ljava/lang/String;

.field httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field mssidn:Ljava/lang/String;

.field final password:Ljava/lang/String;

.field final secure:Z

.field final securityKey:Ljava/lang/String;

.field sessionToken:Ljava/lang/String;

.field private skeySpec:Ljavax/crypto/spec/SecretKeySpec;

.field uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_48

    sput-object v0, Lcom/lge/newbay/client/impl/NewbayContext;->iv:[B

    .line 87
    new-array v0, v5, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "X_WASSUP_MSISDN"

    aput-object v2, v1, v3

    const-string v2, "417878112215"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "X_WASSUP_ISE"

    aput-object v2, v1, v3

    const-string v2, "CARNEA-100-Dnv8C/37FVJNmWZY2emHdZH2ChslfJrxE3W203gTIB15"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/newbay/client/impl/NewbayContext;->FIXED_HEADERS:[[Ljava/lang/String;

    .line 302
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v1, Lcom/lge/newbay/client/impl/NewbayContext;->iv:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lcom/lge/newbay/client/impl/NewbayContext;->ips:Ljavax/crypto/spec/IvParameterSpec;

    .line 305
    :try_start_31
    const-string v0, "AES/CBC/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    sput-object v0, Lcom/lge/newbay/client/impl/NewbayContext;->cipher:Ljavax/crypto/Cipher;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_39} :catch_45

    .line 404
    :goto_39
    const-string v0, "0123456789abcdef"

    sput-object v0, Lcom/lge/newbay/client/impl/NewbayContext;->HEXA_STRING:Ljava/lang/String;

    .line 416
    new-instance v0, Lcom/lge/newbay/client/impl/NewbayContext$3;

    invoke-direct {v0}, Lcom/lge/newbay/client/impl/NewbayContext$3;-><init>()V

    sput-object v0, Lcom/lge/newbay/client/impl/NewbayContext;->paramComparator:Ljava/util/Comparator;

    return-void

    .line 306
    :catch_45
    move-exception v0

    goto :goto_39

    .line 73
    nop

    :array_48
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 12
    .parameter "uid"
    .parameter "mssidn"
    .parameter "host"
    .parameter "securityKey"
    .parameter "authApiKey"
    .parameter "password"
    .parameter "secure"
    .parameter "gzip"

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/newbay/client/impl/NewbayContext;->alive:Z

    .line 118
    iput-object p1, p0, Lcom/lge/newbay/client/impl/NewbayContext;->uid:Ljava/lang/String;

    .line 119
    iput-object p2, p0, Lcom/lge/newbay/client/impl/NewbayContext;->mssidn:Ljava/lang/String;

    .line 120
    iput-object p3, p0, Lcom/lge/newbay/client/impl/NewbayContext;->host:Ljava/lang/String;

    .line 121
    iput-object p4, p0, Lcom/lge/newbay/client/impl/NewbayContext;->securityKey:Ljava/lang/String;

    .line 122
    iput-object p5, p0, Lcom/lge/newbay/client/impl/NewbayContext;->authApiKey:Ljava/lang/String;

    .line 123
    iput-boolean p7, p0, Lcom/lge/newbay/client/impl/NewbayContext;->secure:Z

    .line 124
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/lge/newbay/client/impl/NewbayContext;->skeySpec:Ljavax/crypto/spec/SecretKeySpec;

    .line 125
    invoke-static {p8}, Lcom/lge/newbay/client/impl/NewbayContext;->createHttpClient(Z)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/newbay/client/impl/NewbayContext;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 126
    iput-object p6, p0, Lcom/lge/newbay/client/impl/NewbayContext;->password:Ljava/lang/String;

    .line 127
    return-void
.end method

.method static synthetic access$002(Lcom/lge/newbay/client/impl/NewbayContext;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/lge/newbay/client/impl/NewbayContext;->alive:Z

    return p1
.end method

.method private addFixedHeader(Lorg/apache/http/HttpRequest;)V
    .registers 8
    .parameter "request"

    .prologue
    .line 267
    sget-object v0, Lcom/lge/newbay/client/impl/NewbayContext;->FIXED_HEADERS:[[Ljava/lang/String;

    .local v0, arr$:[[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_14

    aget-object v1, v0, v2

    .line 268
    .local v1, header:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-interface {p1, v4, v5}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 270
    .end local v1           #header:[Ljava/lang/String;
    :cond_14
    return-void
.end method

.method private static createHttpClient(Z)Lorg/apache/http/impl/client/DefaultHttpClient;
    .registers 10
    .parameter "gzip"

    .prologue
    const v6, 0x493e0

    .line 145
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 146
    .local v3, params:Lorg/apache/http/params/HttpParams;
    const-string v5, "http.connection.timeout"

    invoke-interface {v3, v5, v6}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    .line 147
    const-string v5, "http.socket.timeout"

    invoke-interface {v3, v5, v6}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    .line 149
    const/16 v5, 0x32

    invoke-static {v3, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 150
    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v5, 0x14

    invoke-direct {v1, v5}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    .line 151
    .local v1, connPerRoute:Lorg/apache/http/conn/params/ConnPerRouteBean;
    invoke-static {v3, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 152
    new-instance v4, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 153
    .local v4, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v7

    const/16 v8, 0x50

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v4, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 154
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v7

    const/16 v8, 0x1bb

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v4, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 155
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v3, v4}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 156
    .local v0, cm:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 157
    .local v2, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    if-eqz p0, :cond_62

    .line 158
    new-instance v5, Lcom/lge/newbay/client/impl/NewbayContext$1;

    invoke-direct {v5}, Lcom/lge/newbay/client/impl/NewbayContext$1;-><init>()V

    invoke-virtual {v2, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 171
    new-instance v5, Lcom/lge/newbay/client/impl/NewbayContext$2;

    invoke-direct {v5}, Lcom/lge/newbay/client/impl/NewbayContext$2;-><init>()V

    invoke-virtual {v2, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 189
    :cond_62
    return-object v2
.end method

.method private resolveURI(Ljava/lang/String;Z)Ljava/net/URI;
    .registers 9
    .parameter "uriString"
    .parameter "secure"

    .prologue
    const-string v5, "{session.token}"

    .line 273
    invoke-virtual {p0}, Lcom/lge/newbay/client/impl/NewbayContext;->getSessionToken()Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, sessionToken:Ljava/lang/String;
    if-eqz v2, :cond_e

    .line 275
    const-string v4, "{session.token}"

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 277
    :cond_e
    const/4 v3, 0x0

    .line 279
    .local v3, uri:Ljava/net/URI;
    :try_start_f
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_12} :catch_1b

    move-result-object v3

    .line 293
    :goto_13
    invoke-virtual {v3}, Ljava/net/URI;->isAbsolute()Z

    move-result v4

    if-eqz v4, :cond_36

    move-object v4, v3

    .line 297
    :goto_1a
    return-object v4

    .line 280
    :catch_1b
    move-exception v0

    .line 282
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_1c
    invoke-static {}, Lcom/lge/newbay/client/NewbayFactory;->getSessonTokenInitializer()Lcom/lge/newbay/client/ISessonTokenInitializer;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/newbay/client/impl/NewbayContext;->password:Ljava/lang/String;

    invoke-interface {v4, p0, v5}, Lcom/lge/newbay/client/ISessonTokenInitializer;->getSessionToken(Lcom/lge/newbay/client/impl/NewbayContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-virtual {p0, v2}, Lcom/lge/newbay/client/impl/NewbayContext;->setSessionToken(Ljava/lang/String;)V

    .line 284
    if-eqz v2, :cond_31

    .line 285
    const-string v4, "{session.token}"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 287
    :cond_31
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_34
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_1c .. :try_end_34} :catch_5b

    move-result-object v3

    goto :goto_13

    .line 296
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_36
    invoke-virtual {p0}, Lcom/lge/newbay/client/impl/NewbayContext;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, host:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_58

    const-string v5, "https://"

    :goto_43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    goto :goto_1a

    :cond_58
    const-string v5, "http://"

    goto :goto_43

    .line 288
    .end local v1           #host:Ljava/lang/String;
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    :catch_5b
    move-exception v4

    goto :goto_13
.end method

.method private static toHexaString([B)Ljava/lang/String;
    .registers 6
    .parameter "bytes"

    .prologue
    .line 406
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 407
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    array-length v4, p0

    if-ge v1, v4, :cond_28

    .line 408
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v0, v4, 0x4

    .line 409
    .local v0, hi:I
    aget-byte v4, p0, v1

    and-int/lit8 v2, v4, 0xf

    .line 410
    .local v2, low:I
    sget-object v4, Lcom/lge/newbay/client/impl/NewbayContext;->HEXA_STRING:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 411
    sget-object v4, Lcom/lge/newbay/client/impl/NewbayContext;->HEXA_STRING:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 407
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 413
    .end local v0           #hi:I
    .end local v2           #low:I
    :cond_28
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public closeIdle()V
    .registers 3

    .prologue
    .line 130
    monitor-enter p0

    .line 131
    :try_start_1
    iget-boolean v1, p0, Lcom/lge/newbay/client/impl/NewbayContext;->alive:Z

    if-nez v1, :cond_15

    .line 132
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/newbay/client/impl/NewbayContext;->alive:Z

    .line 133
    new-instance v0, Lcom/lge/newbay/client/impl/NewbayContext$IdleConnectionCloseThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/newbay/client/impl/NewbayContext$IdleConnectionCloseThread;-><init>(Lcom/lge/newbay/client/impl/NewbayContext;Lcom/lge/newbay/client/impl/NewbayContext$1;)V

    .line 134
    .local v0, t:Lcom/lge/newbay/client/impl/NewbayContext$IdleConnectionCloseThread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/newbay/client/impl/NewbayContext$IdleConnectionCloseThread;->setPriority(I)V

    .line 135
    invoke-virtual {v0}, Lcom/lge/newbay/client/impl/NewbayContext$IdleConnectionCloseThread;->start()V

    .line 137
    .end local v0           #t:Lcom/lge/newbay/client/impl/NewbayContext$IdleConnectionCloseThread;
    :cond_15
    monitor-exit p0

    .line 138
    return-void

    .line 137
    :catchall_17
    move-exception v1

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public createHttpDelete(Ljava/lang/String;Z)Lorg/apache/http/client/methods/HttpDelete;
    .registers 5
    .parameter "uri"
    .parameter "secure"

    .prologue
    .line 254
    invoke-direct {p0, p1, p2}, Lcom/lge/newbay/client/impl/NewbayContext;->resolveURI(Ljava/lang/String;Z)Ljava/net/URI;

    move-result-object v1

    .line 255
    .local v1, requestUri:Ljava/net/URI;
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/net/URI;)V

    .line 256
    .local v0, request:Lorg/apache/http/client/methods/HttpDelete;
    invoke-direct {p0, v0}, Lcom/lge/newbay/client/impl/NewbayContext;->addFixedHeader(Lorg/apache/http/HttpRequest;)V

    .line 257
    return-object v0
.end method

.method public createHttpGet(Ljava/lang/String;Z)Lorg/apache/http/client/methods/HttpGet;
    .registers 5
    .parameter "uri"
    .parameter "secure"

    .prologue
    .line 233
    invoke-direct {p0, p1, p2}, Lcom/lge/newbay/client/impl/NewbayContext;->resolveURI(Ljava/lang/String;Z)Ljava/net/URI;

    move-result-object v1

    .line 234
    .local v1, requestUri:Ljava/net/URI;
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 235
    .local v0, request:Lorg/apache/http/client/methods/HttpGet;
    invoke-direct {p0, v0}, Lcom/lge/newbay/client/impl/NewbayContext;->addFixedHeader(Lorg/apache/http/HttpRequest;)V

    .line 236
    return-object v0
.end method

.method public createHttpHead(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpHead;
    .registers 5
    .parameter "uri"

    .prologue
    .line 260
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/lge/newbay/client/impl/NewbayContext;->resolveURI(Ljava/lang/String;Z)Ljava/net/URI;

    move-result-object v1

    .line 261
    .local v1, requestUri:Ljava/net/URI;
    new-instance v0, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/net/URI;)V

    .line 262
    .local v0, request:Lorg/apache/http/client/methods/HttpHead;
    invoke-direct {p0, v0}, Lcom/lge/newbay/client/impl/NewbayContext;->addFixedHeader(Lorg/apache/http/HttpRequest;)V

    .line 263
    return-object v0
.end method

.method public createHttpPost(Ljava/lang/String;Z)Lorg/apache/http/client/methods/HttpPost;
    .registers 5
    .parameter "uri"
    .parameter "secure"

    .prologue
    .line 240
    invoke-direct {p0, p1, p2}, Lcom/lge/newbay/client/impl/NewbayContext;->resolveURI(Ljava/lang/String;Z)Ljava/net/URI;

    move-result-object v1

    .line 241
    .local v1, requestUri:Ljava/net/URI;
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 242
    .local v0, request:Lorg/apache/http/client/methods/HttpPost;
    invoke-direct {p0, v0}, Lcom/lge/newbay/client/impl/NewbayContext;->addFixedHeader(Lorg/apache/http/HttpRequest;)V

    .line 243
    return-object v0
.end method

.method public createHttpPut(Ljava/lang/String;Z)Lorg/apache/http/client/methods/HttpPut;
    .registers 5
    .parameter "uri"
    .parameter "secure"

    .prologue
    .line 247
    invoke-direct {p0, p1, p2}, Lcom/lge/newbay/client/impl/NewbayContext;->resolveURI(Ljava/lang/String;Z)Ljava/net/URI;

    move-result-object v1

    .line 248
    .local v1, requestUri:Ljava/net/URI;
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/net/URI;)V

    .line 249
    .local v0, request:Lorg/apache/http/client/methods/HttpPut;
    invoke-direct {p0, v0}, Lcom/lge/newbay/client/impl/NewbayContext;->addFixedHeader(Lorg/apache/http/HttpRequest;)V

    .line 250
    return-object v0
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, encrypted:[B
    sget-object v1, Lcom/lge/newbay/client/impl/NewbayContext;->cipher:Ljavax/crypto/Cipher;

    monitor-enter v1

    .line 314
    :try_start_4
    sget-object v2, Lcom/lge/newbay/client/impl/NewbayContext;->cipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/lge/newbay/client/impl/NewbayContext;->skeySpec:Ljavax/crypto/spec/SecretKeySpec;

    sget-object v5, Lcom/lge/newbay/client/impl/NewbayContext;->ips:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v2, v3, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 315
    sget-object v2, Lcom/lge/newbay/client/impl/NewbayContext;->cipher:Ljavax/crypto/Cipher;

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 316
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_25

    .line 317
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/lge/util/Base64;->encode([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    return-object v1

    .line 316
    :catchall_25
    move-exception v2

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v2
.end method

.method public getAuthApiKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/lge/newbay/client/impl/NewbayContext;->authApiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorizationString(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;
    .registers 24
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 322
    .local v15, sb:Ljava/lang/StringBuffer;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v9

    .line 323
    .local v9, httpMethod:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v18

    .line 324
    .local v18, uri:Ljava/net/URI;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/newbay/client/impl/NewbayContext;->getAuthApiKey()Ljava/lang/String;

    move-result-object v4

    .line 325
    .local v4, authApiKey:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/newbay/client/impl/NewbayContext;->getSecurityKey()Ljava/lang/String;

    move-result-object v16

    .line 331
    .local v16, securityKey:Ljava/lang/String;
    invoke-virtual {v15, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    const/16 v19, 0x26

    move-object v0, v15

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v18 .. v18}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v12, newBayParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v19, Lorg/apache/http/message/BasicNameValuePair;

    const-string v20, "authApiKey"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    new-instance v19, Lorg/apache/http/message/BasicNameValuePair;

    const-string v20, "authVersion"

    const-string v21, "1.0"

    invoke-direct/range {v19 .. v21}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    move/from16 v19, v0

    if-eqz v19, :cond_6c

    .line 357
    check-cast p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    .end local p1
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 358
    .local v8, entry:Lorg/apache/http/HttpEntity;
    move-object v0, v8

    instance-of v0, v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move/from16 v19, v0

    if-eqz v19, :cond_6c

    .line 359
    invoke-static {v8}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Lorg/apache/http/HttpEntity;)Ljava/util/List;

    move-result-object v14

    .line 360
    .local v14, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz v14, :cond_6c

    .line 361
    invoke-interface {v12, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 379
    .end local v8           #entry:Lorg/apache/http/HttpEntity;
    .end local v14           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_6c
    const-string v19, "UTF-8"

    invoke-static/range {v18 .. v19}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 380
    .restart local v14       #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz v14, :cond_77

    .line 381
    invoke-interface {v12, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 384
    :cond_77
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_c8

    .line 385
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Lorg/apache/http/NameValuePair;

    move-object/from16 v19, v0

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Lorg/apache/http/NameValuePair;

    .line 386
    .local v17, sortedParams:[Lorg/apache/http/NameValuePair;
    sget-object v19, Lcom/lge/newbay/client/impl/NewbayContext;->paramComparator:Ljava/util/Comparator;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 387
    move-object/from16 v3, v17

    .local v3, arr$:[Lorg/apache/http/NameValuePair;
    array-length v11, v3

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_9d
    if-ge v10, v11, :cond_c8

    aget-object v13, v3, v10

    .line 388
    .local v13, param:Lorg/apache/http/NameValuePair;
    const-string v19, "&"

    move-object v0, v15

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-interface {v13}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    const/16 v19, 0x3d

    move-object v0, v15

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-interface {v13}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/lge/util/Util;->nvl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    add-int/lit8 v10, v10, 0x1

    goto :goto_9d

    .line 393
    .end local v3           #arr$:[Lorg/apache/http/NameValuePair;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v13           #param:Lorg/apache/http/NameValuePair;
    .end local v17           #sortedParams:[Lorg/apache/http/NameValuePair;
    :cond_c8
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    const/4 v6, 0x0

    .line 396
    .local v6, authString:Ljava/lang/String;
    :try_start_cc
    const-string v19, "MD5"

    invoke-static/range {v19 .. v19}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v19

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "UTF-8"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    .line 397
    .local v7, digestBytes:[B
    invoke-static {v7}, Lcom/lge/newbay/client/impl/NewbayContext;->toHexaString([B)Ljava/lang/String;

    move-result-object v5

    .line 398
    .local v5, authSignString:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SngAuth authApiKey=\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\", authSig=\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\", authVersion=\"1.0\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_10c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_cc .. :try_end_10c} :catch_10e

    move-result-object v6

    .line 402
    .end local v5           #authSignString:Ljava/lang/String;
    .end local v7           #digestBytes:[B
    :goto_10d
    return-object v6

    .line 399
    :catch_10e
    move-exception v19

    goto :goto_10d
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/lge/newbay/client/impl/NewbayContext;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/lge/newbay/client/impl/NewbayContext;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method public getMssidn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/lge/newbay/client/impl/NewbayContext;->mssidn:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/lge/newbay/client/impl/NewbayContext;->securityKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/lge/newbay/client/impl/NewbayContext;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/lge/newbay/client/impl/NewbayContext;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public isSecure()Z
    .registers 2

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/lge/newbay/client/impl/NewbayContext;->secure:Z

    return v0
.end method

.method public setMssidn(Ljava/lang/String;)V
    .registers 2
    .parameter "mssidn"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/lge/newbay/client/impl/NewbayContext;->mssidn:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setSessionToken(Ljava/lang/String;)V
    .registers 2
    .parameter "sessionToken"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/lge/newbay/client/impl/NewbayContext;->sessionToken:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .registers 2
    .parameter "uid"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/lge/newbay/client/impl/NewbayContext;->uid:Ljava/lang/String;

    .line 198
    return-void
.end method
