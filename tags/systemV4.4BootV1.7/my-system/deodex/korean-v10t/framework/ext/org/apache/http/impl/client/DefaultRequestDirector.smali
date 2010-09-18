.class public Lorg/apache/http/impl/client/DefaultRequestDirector;
.super Ljava/lang/Object;
.source "DefaultRequestDirector.java"

# interfaces
.implements Lorg/apache/http/client/RequestDirector;


# instance fields
.field protected final connManager:Lorg/apache/http/conn/ClientConnectionManager;

.field protected final httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

.field protected final keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

.field private final log:Lorg/apache/commons/logging/Log;

.field protected managedConn:Lorg/apache/http/conn/ManagedClientConnection;

.field private maxRedirects:I

.field protected final params:Lorg/apache/http/params/HttpParams;

.field private final proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

.field private final proxyAuthState:Lorg/apache/http/auth/AuthState;

.field private redirectCount:I

.field protected final redirectHandler:Lorg/apache/http/client/RedirectHandler;

.field protected final requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

.field protected final retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

.field protected final reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

.field protected final routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

.field private final targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

.field private final targetAuthState:Lorg/apache/http/auth/AuthState;

.field private final userTokenHandler:Lorg/apache/http/client/UserTokenHandler;


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/HttpRequestRetryHandler;Lorg/apache/http/client/RedirectHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/UserTokenHandler;Lorg/apache/http/params/HttpParams;)V
    .registers 16
    .parameter "requestExec"
    .parameter "conman"
    .parameter "reustrat"
    .parameter "kastrat"
    .parameter "rouplan"
    .parameter "httpProcessor"
    .parameter "retryHandler"
    .parameter "redirectHandler"
    .parameter "targetAuthHandler"
    .parameter "proxyAuthHandler"
    .parameter "userTokenHandler"
    .parameter "params"

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    .line 174
    if-nez p1, :cond_17

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request executor may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_17
    if-nez p2, :cond_21

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Client connection manager may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_21
    if-nez p3, :cond_2b

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection reuse strategy may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_2b
    if-nez p4, :cond_35

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection keep alive strategy may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_35
    if-nez p5, :cond_3f

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Route planner may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_3f
    if-nez p6, :cond_49

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP protocol processor may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_49
    if-nez p7, :cond_53

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request retry handler may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_53
    if-nez p8, :cond_5d

    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Redirect handler may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_5d
    if-nez p9, :cond_67

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target authentication handler may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_67
    if-nez p10, :cond_71

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proxy authentication handler may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_71
    if-nez p11, :cond_7b

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "User token handler may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_7b
    if-nez p12, :cond_85

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_85
    iput-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    .line 223
    iput-object p2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 224
    iput-object p3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    .line 225
    iput-object p4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    .line 226
    iput-object p5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    .line 227
    iput-object p6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    .line 228
    iput-object p7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    .line 229
    iput-object p8, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    .line 230
    iput-object p9, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    .line 231
    iput-object p10, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    .line 232
    iput-object p11, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    .line 233
    iput-object p12, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectCount:I

    .line 238
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.protocol.max-redirects"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->maxRedirects:I

    .line 239
    new-instance v0, Lorg/apache/http/auth/AuthState;

    invoke-direct {v0}, Lorg/apache/http/auth/AuthState;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    .line 240
    new-instance v0, Lorg/apache/http/auth/AuthState;

    invoke-direct {v0}, Lorg/apache/http/auth/AuthState;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    .line 241
    return-void
.end method

.method private abortConnection()V
    .registers 6

    .prologue
    .line 994
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 995
    .local v2, mcc:Lorg/apache/http/conn/ManagedClientConnection;
    if-eqz v2, :cond_d

    .line 998
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 1000
    :try_start_7
    invoke-interface {v2}, Lorg/apache/http/conn/ManagedClientConnection;->abortConnection()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_e

    .line 1008
    :cond_a
    :goto_a
    :try_start_a
    invoke-interface {v2}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_21

    .line 1013
    :cond_d
    :goto_d
    return-void

    .line 1001
    :catch_e
    move-exception v0

    .line 1002
    .local v0, ex:Ljava/io/IOException;
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1003
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 1009
    .end local v0           #ex:Ljava/io/IOException;
    :catch_21
    move-exception v1

    .line 1010
    .local v1, ignored:Ljava/io/IOException;
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Error releasing connection"

    invoke-interface {v3, v4, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method private processChallenges(Ljava/util/Map;Lorg/apache/http/auth/AuthState;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .registers 12
    .parameter
    .parameter "authState"
    .parameter "authHandler"
    .parameter "response"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/Header;",
            ">;",
            "Lorg/apache/http/auth/AuthState;",
            "Lorg/apache/http/client/AuthenticationHandler;",
            "Lorg/apache/http/HttpResponse;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;,
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1024
    .local p1, challenges:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    invoke-virtual {p2}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v0

    .line 1025
    .local v0, authScheme:Lorg/apache/http/auth/AuthScheme;
    if-nez v0, :cond_d

    .line 1027
    invoke-interface {p3, p1, p4, p5}, Lorg/apache/http/client/AuthenticationHandler;->selectScheme(Ljava/util/Map;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/auth/AuthScheme;

    move-result-object v0

    .line 1028
    invoke-virtual {p2, v0}, Lorg/apache/http/auth/AuthState;->setAuthScheme(Lorg/apache/http/auth/AuthScheme;)V

    .line 1030
    :cond_d
    invoke-interface {v0}, Lorg/apache/http/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v2

    .line 1032
    .local v2, id:Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/Header;

    .line 1033
    .local v1, challenge:Lorg/apache/http/Header;
    if-nez v1, :cond_38

    .line 1034
    new-instance v3, Lorg/apache/http/auth/AuthenticationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " authorization challenge expected, but not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1037
    :cond_38
    invoke-interface {v0, v1}, Lorg/apache/http/auth/AuthScheme;->processChallenge(Lorg/apache/http/Header;)V

    .line 1038
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Authorization challenge processed"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1039
    return-void
.end method

.method private updateAuthState(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpHost;Lorg/apache/http/client/CredentialsProvider;)V
    .registers 13
    .parameter "authState"
    .parameter "host"
    .parameter "credsProvider"

    .prologue
    .line 1047
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthState;->isValid()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1086
    :goto_6
    return-void

    .line 1051
    :cond_7
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    .line 1052
    .local v3, hostname:Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v4

    .line 1053
    .local v4, port:I
    if-gez v4, :cond_1f

    .line 1054
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v6

    invoke-virtual {v6, p2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Lorg/apache/http/HttpHost;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v5

    .line 1055
    .local v5, scheme:Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v5}, Lorg/apache/http/conn/scheme/Scheme;->getDefaultPort()I

    move-result v4

    .line 1058
    .end local v5           #scheme:Lorg/apache/http/conn/scheme/Scheme;
    :cond_1f
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v0

    .line 1059
    .local v0, authScheme:Lorg/apache/http/auth/AuthScheme;
    new-instance v1, Lorg/apache/http/auth/AuthScope;

    invoke-interface {v0}, Lorg/apache/http/auth/AuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lorg/apache/http/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v3, v4, v6, v7}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1065
    .local v1, authScope:Lorg/apache/http/auth/AuthScope;
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_50

    .line 1066
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Authentication scope: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1068
    :cond_50
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v2

    .line 1069
    .local v2, creds:Lorg/apache/http/auth/Credentials;
    if-nez v2, :cond_7a

    .line 1070
    invoke-interface {p3, v1}, Lorg/apache/http/client/CredentialsProvider;->getCredentials(Lorg/apache/http/auth/AuthScope;)Lorg/apache/http/auth/Credentials;

    move-result-object v2

    .line 1071
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 1072
    if-eqz v2, :cond_72

    .line 1073
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "Found credentials"

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1084
    :cond_6b
    :goto_6b
    invoke-virtual {p1, v1}, Lorg/apache/http/auth/AuthState;->setAuthScope(Lorg/apache/http/auth/AuthScope;)V

    .line 1085
    invoke-virtual {p1, v2}, Lorg/apache/http/auth/AuthState;->setCredentials(Lorg/apache/http/auth/Credentials;)V

    goto :goto_6

    .line 1075
    :cond_72
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "Credentials not found"

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_6b

    .line 1079
    :cond_7a
    invoke-interface {v0}, Lorg/apache/http/auth/AuthScheme;->isComplete()Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 1080
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "Authentication failed"

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1081
    const/4 v2, 0x0

    goto :goto_6b
.end method

.method private wrapRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;
    .registers 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 246
    instance-of v0, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_c

    .line 247
    new-instance v0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    check-cast p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    .end local p1
    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;-><init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 250
    :goto_b
    return-object v0

    .restart local p1
    :cond_c
    new-instance v0, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V

    goto :goto_b
.end method


# virtual methods
.method protected createConnectRequest(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpRequest;
    .registers 13
    .parameter "route"
    .parameter "context"

    .prologue
    .line 836
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v6

    .line 838
    .local v6, target:Lorg/apache/http/HttpHost;
    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 839
    .local v2, host:Ljava/lang/String;
    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    .line 840
    .local v3, port:I
    if-gez v3, :cond_20

    .line 841
    iget-object v8, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v8

    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v5

    .line 843
    .local v5, scheme:Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v5}, Lorg/apache/http/conn/scheme/Scheme;->getDefaultPort()I

    move-result v3

    .line 846
    .end local v5           #scheme:Lorg/apache/http/conn/scheme/Scheme;
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x6

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 847
    .local v1, buffer:Ljava/lang/StringBuilder;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    const/16 v8, 0x3a

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 849
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 852
    .local v0, authority:Ljava/lang/String;
    iget-object v8, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v8}, Lorg/apache/http/params/HttpProtocolParams;->getVersion(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/ProtocolVersion;

    move-result-object v7

    .line 853
    .local v7, ver:Lorg/apache/http/ProtocolVersion;
    new-instance v4, Lorg/apache/http/message/BasicHttpRequest;

    const-string v8, "CONNECT"

    invoke-direct {v4, v8, v0, v7}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    .line 856
    .local v4, req:Lorg/apache/http/HttpRequest;
    return-object v4
.end method

.method protected createTunnelToProxy(Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)Z
    .registers 6
    .parameter "route"
    .parameter "hop"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 815
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Proxy chains are not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createTunnelToTarget(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Z
    .registers 25
    .parameter "route"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 669
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v19

    .line 670
    .local v19, proxy:Lorg/apache/http/HttpHost;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v21

    .line 671
    .local v21, target:Lorg/apache/http/HttpHost;
    const/4 v8, 0x0

    .line 673
    .local v8, response:Lorg/apache/http/HttpResponse;
    const/16 v16, 0x0

    .line 674
    .local v16, done:Z
    :cond_b
    :goto_b
    if-nez v16, :cond_19e

    .line 676
    const/16 v16, 0x1

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object v4, v0

    invoke-interface {v4}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object v5, v0

    move-object v0, v4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 682
    :cond_2d
    invoke-virtual/range {p0 .. p2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->createConnectRequest(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpRequest;

    move-result-object v13

    .line 684
    .local v13, connect:Lorg/apache/http/HttpRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object v4, v0

    invoke-static {v4}, Lorg/apache/http/params/HttpProtocolParams;->getUserAgent(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v10

    .line 685
    .local v10, agent:Ljava/lang/String;
    if-eqz v10, :cond_41

    .line 686
    const-string v4, "User-Agent"

    invoke-interface {v13, v4, v10}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    :cond_41
    const-string v4, "Host"

    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v13, v4, v5}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v11

    .line 691
    .local v11, authScheme:Lorg/apache/http/auth/AuthScheme;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/http/auth/AuthState;->getAuthScope()Lorg/apache/http/auth/AuthScope;

    move-result-object v12

    .line 692
    .local v12, authScope:Lorg/apache/http/auth/AuthScope;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v14

    .line 693
    .local v14, creds:Lorg/apache/http/auth/Credentials;
    if-eqz v14, :cond_76

    .line 694
    if-nez v12, :cond_6f

    invoke-interface {v11}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v4

    if-nez v4, :cond_76

    .line 696
    :cond_6f
    :try_start_6f
    invoke-interface {v11, v14, v13}, Lorg/apache/http/auth/AuthScheme;->authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;

    move-result-object v4

    invoke-interface {v13, v4}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_76
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_6f .. :try_end_76} :catch_b5

    .line 705
    :cond_76
    :goto_76
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v13

    move-object v2, v5

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 707
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v20

    .line 708
    .local v20, status:I
    const/16 v4, 0xc8

    move/from16 v0, v20

    move v1, v4

    if-ge v0, v1, :cond_e3

    .line 709
    new-instance v4, Lorg/apache/http/HttpException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected response to CONNECT request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 697
    .end local v20           #status:I
    :catch_b5
    move-exception v4

    move-object/from16 v18, v4

    .line 698
    .local v18, ex:Lorg/apache/http/auth/AuthenticationException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object v4, v0

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v4

    if-eqz v4, :cond_76

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Proxy authentication error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    goto :goto_76

    .line 713
    .end local v18           #ex:Lorg/apache/http/auth/AuthenticationException;
    .restart local v20       #status:I
    :cond_e3
    const-string v4, "http.auth.credentials-provider"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/http/client/CredentialsProvider;

    .line 716
    .local v15, credsProvider:Lorg/apache/http/client/CredentialsProvider;
    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object v4, v0

    invoke-static {v4}, Lorg/apache/http/client/params/HttpClientParams;->isAuthenticating(Lorg/apache/http/params/HttpParams;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v8

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/AuthenticationHandler;->isAuthenticationRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v4

    if-eqz v4, :cond_1ed

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object v4, v0

    const-string v5, "Proxy requested authentication"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v8

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/AuthenticationHandler;->getChallenges(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/util/Map;

    move-result-object v5

    .line 723
    .local v5, challenges:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    :try_start_121
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    move-object v7, v0

    move-object/from16 v4, p0

    move-object/from16 v9, p2

    invoke-direct/range {v4 .. v9}, Lorg/apache/http/impl/client/DefaultRequestDirector;->processChallenges(Ljava/util/Map;Lorg/apache/http/auth/AuthState;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_132
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_121 .. :try_end_132} :catch_171

    .line 732
    :cond_132
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v19

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->updateAuthState(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpHost;Lorg/apache/http/client/CredentialsProvider;)V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 735
    const/16 v16, 0x0

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v8

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v4

    if-eqz v4, :cond_1e3

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object v4, v0

    const-string v5, "Connection kept alive"

    .end local v5           #challenges:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 741
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    .line 742
    .local v17, entity:Lorg/apache/http/HttpEntity;
    if-eqz v17, :cond_b

    .line 743
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->consumeContent()V

    goto/16 :goto_b

    .line 726
    .end local v17           #entity:Lorg/apache/http/HttpEntity;
    .restart local v5       #challenges:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    :catch_171
    move-exception v4

    move-object/from16 v18, v4

    .line 727
    .restart local v18       #ex:Lorg/apache/http/auth/AuthenticationException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object v4, v0

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_132

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #challenges:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Authentication error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 758
    .end local v10           #agent:Ljava/lang/String;
    .end local v11           #authScheme:Lorg/apache/http/auth/AuthScheme;
    .end local v12           #authScope:Lorg/apache/http/auth/AuthScope;
    .end local v13           #connect:Lorg/apache/http/HttpRequest;
    .end local v14           #creds:Lorg/apache/http/auth/Credentials;
    .end local v15           #credsProvider:Lorg/apache/http/client/CredentialsProvider;
    .end local v18           #ex:Lorg/apache/http/auth/AuthenticationException;
    .end local v20           #status:I
    :cond_19e
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v20

    .line 760
    .restart local v20       #status:I
    const/16 v4, 0x12b

    move/from16 v0, v20

    move v1, v4

    if-le v0, v1, :cond_1f8

    .line 763
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    .line 764
    .restart local v17       #entity:Lorg/apache/http/HttpEntity;
    if-eqz v17, :cond_1be

    .line 765
    new-instance v4, Lorg/apache/http/entity/BufferedHttpEntity;

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v8, v4}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 768
    :cond_1be
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object v4, v0

    invoke-interface {v4}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    .line 769
    new-instance v4, Lorg/apache/http/impl/client/TunnelRefusedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CONNECT refused by proxy: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v8}, Lorg/apache/http/impl/client/TunnelRefusedException;-><init>(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V

    throw v4

    .line 746
    .end local v17           #entity:Lorg/apache/http/HttpEntity;
    .restart local v5       #challenges:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    .restart local v10       #agent:Ljava/lang/String;
    .restart local v11       #authScheme:Lorg/apache/http/auth/AuthScheme;
    .restart local v12       #authScope:Lorg/apache/http/auth/AuthScope;
    .restart local v13       #connect:Lorg/apache/http/HttpRequest;
    .restart local v14       #creds:Lorg/apache/http/auth/Credentials;
    .restart local v15       #credsProvider:Lorg/apache/http/client/CredentialsProvider;
    :cond_1e3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object v4, v0

    invoke-interface {v4}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    goto/16 :goto_b

    .line 753
    .end local v5           #challenges:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    :cond_1ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/http/auth/AuthState;->setAuthScope(Lorg/apache/http/auth/AuthScope;)V

    goto/16 :goto_b

    .line 773
    .end local v10           #agent:Ljava/lang/String;
    .end local v11           #authScheme:Lorg/apache/http/auth/AuthScheme;
    .end local v12           #authScope:Lorg/apache/http/auth/AuthScope;
    .end local v13           #connect:Lorg/apache/http/HttpRequest;
    .end local v14           #creds:Lorg/apache/http/auth/Credentials;
    .end local v15           #credsProvider:Lorg/apache/http/client/CredentialsProvider;
    :cond_1f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object v4, v0

    invoke-interface {v4}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    .line 779
    const/4 v4, 0x0

    return v4
.end method

.method protected determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;
    .registers 6
    .parameter "target"
    .parameter "request"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 556
    if-nez p1, :cond_e

    .line 557
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.default-host"

    invoke-interface {v0, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lorg/apache/http/HttpHost;

    .line 560
    .restart local p1
    :cond_e
    if-nez p1, :cond_18

    .line 561
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target host must not be null, or set in parameters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_18
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/conn/routing/HttpRoutePlanner;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    return-object v0
.end method

.method protected establishRoute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V
    .registers 11
    .parameter "route"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 590
    new-instance v2, Lorg/apache/http/conn/routing/BasicRouteDirector;

    invoke-direct {v2}, Lorg/apache/http/conn/routing/BasicRouteDirector;-><init>()V

    .line 593
    .local v2, rowdy:Lorg/apache/http/conn/routing/HttpRouteDirector;
    :cond_5
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v5}, Lorg/apache/http/conn/ManagedClientConnection;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    .line 594
    .local v0, fact:Lorg/apache/http/conn/routing/HttpRoute;
    invoke-interface {v2, p1, v0}, Lorg/apache/http/conn/routing/HttpRouteDirector;->nextStep(Lorg/apache/http/conn/routing/RouteInfo;Lorg/apache/http/conn/routing/RouteInfo;)I

    move-result v4

    .line 596
    .local v4, step:I
    packed-switch v4, :pswitch_data_98

    .line 637
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown step indicator "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from RouteDirector."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 600
    :pswitch_31
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v5, p1, p2, v6}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 641
    :goto_38
    :pswitch_38
    if-gtz v4, :cond_5

    .line 643
    return-void

    .line 604
    :pswitch_3b
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->createTunnelToTarget(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    .line 605
    .local v3, secure:Z
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Tunnel to target created."

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 606
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v5, v3, v6}, Lorg/apache/http/conn/ManagedClientConnection;->tunnelTarget(ZLorg/apache/http/params/HttpParams;)V

    goto :goto_38

    .line 614
    .end local v3           #secure:Z
    :pswitch_4e
    invoke-virtual {v0}, Lorg/apache/http/conn/routing/HttpRoute;->getHopCount()I

    move-result v5

    const/4 v6, 0x1

    sub-int v1, v5, v6

    .line 615
    .local v1, hop:I
    invoke-virtual {p0, p1, v1, p2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->createTunnelToProxy(Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    .line 616
    .restart local v3       #secure:Z
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Tunnel to proxy created."

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 617
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-virtual {p1, v1}, Lorg/apache/http/conn/routing/HttpRoute;->getHopTarget(I)Lorg/apache/http/HttpHost;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v5, v6, v3, v7}, Lorg/apache/http/conn/ManagedClientConnection;->tunnelProxy(Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    goto :goto_38

    .line 623
    .end local v1           #hop:I
    .end local v3           #secure:Z
    :pswitch_6c
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v5, p2, v6}, Lorg/apache/http/conn/ManagedClientConnection;->layerProtocol(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    goto :goto_38

    .line 627
    :pswitch_74
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to establish route.\nplanned = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\ncurrent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 596
    nop

    :pswitch_data_98
    .packed-switch -0x1
        :pswitch_74
        :pswitch_38
        :pswitch_31
        :pswitch_31
        :pswitch_3b
        :pswitch_4e
        :pswitch_6c
    .end packed-switch
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 35
    .parameter "target"
    .parameter "request"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    move-object/from16 v15, p2

    .line 290
    .local v15, orig:Lorg/apache/http/HttpRequest;
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultRequestDirector;->wrapRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v17

    .line 291
    .local v17, origWrapper:Lorg/apache/http/impl/client/RequestWrapper;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v28, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/RequestWrapper;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 292
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v16

    .line 294
    .local v16, origRoute:Lorg/apache/http/conn/routing/HttpRoute;
    new-instance v22, Lorg/apache/http/impl/client/RoutedRequest;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/RoutedRequest;-><init>(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 296
    .local v22, roureq:Lorg/apache/http/impl/client/RoutedRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/apache/http/conn/params/ConnManagerParams;->getTimeout(Lorg/apache/http/params/HttpParams;)J

    move-result-wide v24

    .line 298
    .local v24, timeout:J
    const/4 v11, 0x0

    .line 300
    .local v11, execCount:I
    const/16 v21, 0x0

    .line 301
    .local v21, reuse:Z
    const/16 v19, 0x0

    .line 302
    .local v19, response:Lorg/apache/http/HttpResponse;
    const/4 v5, 0x0

    .line 304
    .end local v16           #origRoute:Lorg/apache/http/conn/routing/HttpRoute;
    .end local p2
    .local v5, done:Z
    :cond_3d
    :goto_3d
    if-nez v5, :cond_1f4

    .line 310
    :try_start_3f
    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v27

    .line 311
    .local v27, wrapper:Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v23

    .line 314
    .local v23, route:Lorg/apache/http/conn/routing/HttpRoute;
    const-string v28, "http.user-token"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    .line 317
    .local v26, userToken:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v28, v0

    if-nez v28, :cond_c3

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/apache/http/conn/ClientConnectionManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;

    move-result-object v4

    .line 320
    .local v4, connRequest:Lorg/apache/http/conn/ClientConnectionRequest;
    move-object v0, v15

    instance-of v0, v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    move/from16 v28, v0

    if-eqz v28, :cond_7b

    .line 321
    move-object v0, v15

    check-cast v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-interface {v0, v1}, Lorg/apache/http/client/methods/AbortableHttpRequest;->setConnectionRequest(Lorg/apache/http/conn/ClientConnectionRequest;)V
    :try_end_7b
    .catch Lorg/apache/http/HttpException; {:try_start_3f .. :try_end_7b} :catch_1bc
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_7b} :catch_1cf
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_7b} :catch_322

    .line 325
    :cond_7b
    :try_start_7b
    sget-object v28, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, v4

    move-wide/from16 v1, v24

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionRequest;->getConnection(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/conn/ManagedClientConnection;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;
    :try_end_8c
    .catch Ljava/lang/InterruptedException; {:try_start_7b .. :try_end_8c} :catch_1c3
    .catch Lorg/apache/http/HttpException; {:try_start_7b .. :try_end_8c} :catch_1bc
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_8c} :catch_1cf
    .catch Ljava/lang/RuntimeException; {:try_start_7b .. :try_end_8c} :catch_322

    .line 332
    :try_start_8c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/apache/http/params/HttpConnectionParams;->isStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;)Z

    move-result v28

    if-eqz v28, :cond_c3

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "Stale connection check"

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/conn/ManagedClientConnection;->isStale()Z

    move-result v28

    if-eqz v28, :cond_c3

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "Stale connection detected"

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    .line 342
    .end local v4           #connRequest:Lorg/apache/http/conn/ClientConnectionRequest;
    :cond_c3
    move-object v0, v15

    instance-of v0, v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    move/from16 v28, v0

    if-eqz v28, :cond_dc

    .line 343
    move-object v0, v15

    check-cast v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v28, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/client/methods/AbortableHttpRequest;->setReleaseTrigger(Lorg/apache/http/conn/ConnectionReleaseTrigger;)V

    .line 347
    :cond_dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v28

    if-nez v28, :cond_ff

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    move-object/from16 v2, p3

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    :try_end_ff
    .catch Lorg/apache/http/HttpException; {:try_start_8c .. :try_end_ff} :catch_1bc
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_ff} :catch_1cf
    .catch Ljava/lang/RuntimeException; {:try_start_8c .. :try_end_ff} :catch_322

    .line 352
    :cond_ff
    :try_start_ff
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->establishRoute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_108
    .catch Lorg/apache/http/impl/client/TunnelRefusedException; {:try_start_ff .. :try_end_108} :catch_1d6
    .catch Lorg/apache/http/HttpException; {:try_start_ff .. :try_end_108} :catch_1bc
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_108} :catch_1cf
    .catch Ljava/lang/RuntimeException; {:try_start_ff .. :try_end_108} :catch_322

    .line 362
    :try_start_108
    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/impl/client/RequestWrapper;->resetHeaders()V

    .line 365
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->rewriteRequestURI(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 368
    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/impl/client/RequestWrapper;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v28

    const-string v29, "http.virtual-host"

    invoke-interface/range {v28 .. v29}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    move-object/from16 v0, p2

    check-cast v0, Lorg/apache/http/HttpHost;

    move-object/from16 p1, v0

    .line 371
    if-nez p1, :cond_12a

    .line 372
    invoke-virtual/range {v23 .. v23}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object p1

    .line 375
    :cond_12a
    invoke-virtual/range {v23 .. v23}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v18

    .line 378
    .local v18, proxy:Lorg/apache/http/HttpHost;
    const-string v28, "http.target_host"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 380
    const-string v28, "http.proxy_host"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 382
    const-string v28, "http.connection"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v29, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 384
    const-string v28, "http.auth.target-scope"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    move-object/from16 v29, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 386
    const-string v28, "http.auth.proxy-scope"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    move-object/from16 v29, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/protocol/HttpRequestExecutor;->preProcess(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 392
    const-string v28, "http.request"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 395
    const/16 v20, 0x1

    .line 396
    .local v20, retrying:Z
    :goto_19b
    if-eqz v20, :cond_32e

    .line 398
    add-int/lit8 v11, v11, 0x1

    .line 400
    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/impl/client/RequestWrapper;->incrementExecCount()V

    .line 401
    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/impl/client/RequestWrapper;->getExecCount()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_215

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/impl/client/RequestWrapper;->isRepeatable()Z

    move-result v28

    if-nez v28, :cond_215

    .line 402
    new-instance v28, Lorg/apache/http/client/NonRepeatableRequestException;

    const-string v29, "Cannot retry request with a non-repeatable request entity"

    invoke-direct/range {v28 .. v29}, Lorg/apache/http/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;)V

    throw v28
    :try_end_1bc
    .catch Lorg/apache/http/HttpException; {:try_start_108 .. :try_end_1bc} :catch_1bc
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_1bc} :catch_1cf
    .catch Ljava/lang/RuntimeException; {:try_start_108 .. :try_end_1bc} :catch_322

    .line 505
    .end local v18           #proxy:Lorg/apache/http/HttpHost;
    .end local v20           #retrying:Z
    .end local v23           #route:Lorg/apache/http/conn/routing/HttpRoute;
    .end local v26           #userToken:Ljava/lang/Object;
    .end local v27           #wrapper:Lorg/apache/http/impl/client/RequestWrapper;
    :catch_1bc
    move-exception v28

    move-object/from16 v10, v28

    .line 506
    .local v10, ex:Lorg/apache/http/HttpException;
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 507
    throw v10

    .line 326
    .end local v10           #ex:Lorg/apache/http/HttpException;
    .restart local v4       #connRequest:Lorg/apache/http/conn/ClientConnectionRequest;
    .restart local v23       #route:Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v26       #userToken:Ljava/lang/Object;
    .restart local v27       #wrapper:Lorg/apache/http/impl/client/RequestWrapper;
    :catch_1c3
    move-exception v28

    move-object/from16 v13, v28

    .line 327
    .local v13, interrupted:Ljava/lang/InterruptedException;
    :try_start_1c6
    new-instance v14, Ljava/io/InterruptedIOException;

    invoke-direct {v14}, Ljava/io/InterruptedIOException;-><init>()V

    .line 328
    .local v14, iox:Ljava/io/InterruptedIOException;
    invoke-virtual {v14, v13}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 329
    throw v14
    :try_end_1cf
    .catch Lorg/apache/http/HttpException; {:try_start_1c6 .. :try_end_1cf} :catch_1bc
    .catch Ljava/io/IOException; {:try_start_1c6 .. :try_end_1cf} :catch_1cf
    .catch Ljava/lang/RuntimeException; {:try_start_1c6 .. :try_end_1cf} :catch_322

    .line 508
    .end local v4           #connRequest:Lorg/apache/http/conn/ClientConnectionRequest;
    .end local v13           #interrupted:Ljava/lang/InterruptedException;
    .end local v14           #iox:Ljava/io/InterruptedIOException;
    .end local v23           #route:Lorg/apache/http/conn/routing/HttpRoute;
    .end local v26           #userToken:Ljava/lang/Object;
    .end local v27           #wrapper:Lorg/apache/http/impl/client/RequestWrapper;
    :catch_1cf
    move-exception v28

    move-object/from16 v10, v28

    .line 509
    .local v10, ex:Ljava/io/IOException;
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 510
    throw v10

    .line 353
    .end local v10           #ex:Ljava/io/IOException;
    .restart local v23       #route:Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v26       #userToken:Ljava/lang/Object;
    .restart local v27       #wrapper:Lorg/apache/http/impl/client/RequestWrapper;
    :catch_1d6
    move-exception v10

    .line 354
    .local v10, ex:Lorg/apache/http/impl/client/TunnelRefusedException;
    :try_start_1d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v28

    if-eqz v28, :cond_1f0

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    invoke-virtual {v10}, Lorg/apache/http/impl/client/TunnelRefusedException;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 357
    :cond_1f0
    invoke-virtual {v10}, Lorg/apache/http/impl/client/TunnelRefusedException;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v19

    .line 490
    .end local v10           #ex:Lorg/apache/http/impl/client/TunnelRefusedException;
    .end local v23           #route:Lorg/apache/http/conn/routing/HttpRoute;
    .end local v26           #userToken:Ljava/lang/Object;
    .end local v27           #wrapper:Lorg/apache/http/impl/client/RequestWrapper;
    :cond_1f4
    if-eqz v19, :cond_206

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v28

    if-eqz v28, :cond_206

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v28

    if-nez v28, :cond_400

    .line 493
    :cond_206
    if-eqz v21, :cond_211

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    .line 495
    :cond_211
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->releaseConnection()V
    :try_end_214
    .catch Lorg/apache/http/HttpException; {:try_start_1d7 .. :try_end_214} :catch_1bc
    .catch Ljava/io/IOException; {:try_start_1d7 .. :try_end_214} :catch_1cf
    .catch Ljava/lang/RuntimeException; {:try_start_1d7 .. :try_end_214} :catch_322

    .line 503
    :goto_214
    return-object v19

    .line 407
    .restart local v18       #proxy:Lorg/apache/http/HttpHost;
    .restart local v20       #retrying:Z
    .restart local v23       #route:Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v26       #userToken:Ljava/lang/Object;
    .restart local v27       #wrapper:Lorg/apache/http/impl/client/RequestWrapper;
    :cond_215
    :try_start_215
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v28

    if-eqz v28, :cond_246

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Attempt "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " to execute request"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 410
    :cond_246
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_25d
    .catch Ljava/io/IOException; {:try_start_215 .. :try_end_25d} :catch_262
    .catch Lorg/apache/http/HttpException; {:try_start_215 .. :try_end_25d} :catch_1bc
    .catch Ljava/lang/RuntimeException; {:try_start_215 .. :try_end_25d} :catch_322

    move-result-object v19

    .line 411
    const/16 v20, 0x0

    goto/16 :goto_19b

    .line 413
    :catch_262
    move-exception v28

    move-object/from16 v10, v28

    .line 414
    .local v10, ex:Ljava/io/IOException;
    :try_start_265
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "Closing the connection."

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object v1, v10

    move v2, v11

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v28

    if-eqz v28, :cond_329

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v28

    if-eqz v28, :cond_2c9

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "I/O exception ("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ") caught when processing request: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 422
    :cond_2c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v28

    if-eqz v28, :cond_2e7

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object v2, v10

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 425
    :cond_2e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "Retrying request"

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 432
    invoke-virtual/range {v23 .. v23}, Lorg/apache/http/conn/routing/HttpRoute;->getHopCount()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_32a

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "Reopening the direct connection."

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    move-object/from16 v2, p3

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    :try_end_320
    .catch Lorg/apache/http/HttpException; {:try_start_265 .. :try_end_320} :catch_1bc
    .catch Ljava/io/IOException; {:try_start_265 .. :try_end_320} :catch_1cf
    .catch Ljava/lang/RuntimeException; {:try_start_265 .. :try_end_320} :catch_322

    goto/16 :goto_19b

    .line 511
    .end local v10           #ex:Ljava/io/IOException;
    .end local v18           #proxy:Lorg/apache/http/HttpHost;
    .end local v20           #retrying:Z
    .end local v23           #route:Lorg/apache/http/conn/routing/HttpRoute;
    .end local v26           #userToken:Ljava/lang/Object;
    .end local v27           #wrapper:Lorg/apache/http/impl/client/RequestWrapper;
    :catch_322
    move-exception v28

    move-object/from16 v10, v28

    .line 512
    .local v10, ex:Ljava/lang/RuntimeException;
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 513
    throw v10

    .line 427
    .local v10, ex:Ljava/io/IOException;
    .restart local v18       #proxy:Lorg/apache/http/HttpHost;
    .restart local v20       #retrying:Z
    .restart local v23       #route:Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v26       #userToken:Ljava/lang/Object;
    .restart local v27       #wrapper:Lorg/apache/http/impl/client/RequestWrapper;
    :cond_329
    :try_start_329
    throw v10

    .line 437
    :cond_32a
    const/16 v20, 0x0

    goto/16 :goto_19b

    .line 445
    .end local v10           #ex:Ljava/io/IOException;
    :cond_32e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    move-object/from16 v28, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/protocol/HttpRequestExecutor;->postProcess(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v21

    .line 451
    if-eqz v21, :cond_384

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/apache/http/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J

    move-result-wide v6

    .line 454
    .local v6, duration:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v28, v0

    sget-object v29, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v28

    move-wide v1, v6

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ManagedClientConnection;->setIdleDuration(JLjava/util/concurrent/TimeUnit;)V

    .line 457
    .end local v6           #duration:J
    :cond_384
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->handleResponse(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/impl/client/RoutedRequest;

    move-result-object v12

    .line 458
    .local v12, followup:Lorg/apache/http/impl/client/RoutedRequest;
    if-nez v12, :cond_3c3

    .line 459
    const/4 v5, 0x1

    .line 481
    :goto_393
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lorg/apache/http/client/UserTokenHandler;->getUserToken(Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v26

    .line 482
    const-string v28, "http.user-token"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3d

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/http/conn/ManagedClientConnection;->setState(Ljava/lang/Object;)V

    goto/16 :goto_3d

    .line 461
    :cond_3c3
    if-eqz v21, :cond_3f6

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "Connection kept alive"

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 464
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 465
    .local v8, entity:Lorg/apache/http/HttpEntity;
    if-eqz v8, :cond_3d9

    .line 466
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 470
    :cond_3d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    .line 475
    .end local v8           #entity:Lorg/apache/http/HttpEntity;
    :goto_3e2
    invoke-virtual {v12}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v28

    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lorg/apache/http/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_3f3

    .line 476
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->releaseConnection()V

    .line 478
    :cond_3f3
    move-object/from16 v22, v12

    goto :goto_393

    .line 472
    :cond_3f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    goto :goto_3e2

    .line 498
    .end local v12           #followup:Lorg/apache/http/impl/client/RoutedRequest;
    .end local v18           #proxy:Lorg/apache/http/HttpHost;
    .end local v20           #retrying:Z
    .end local v23           #route:Lorg/apache/http/conn/routing/HttpRoute;
    .end local v26           #userToken:Ljava/lang/Object;
    .end local v27           #wrapper:Lorg/apache/http/impl/client/RequestWrapper;
    :cond_400
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 499
    .restart local v8       #entity:Lorg/apache/http/HttpEntity;
    new-instance v9, Lorg/apache/http/conn/BasicManagedEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v28, v0

    move-object v0, v9

    move-object v1, v8

    move-object/from16 v2, v28

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/conn/BasicManagedEntity;-><init>(Lorg/apache/http/HttpEntity;Lorg/apache/http/conn/ManagedClientConnection;Z)V

    .line 500
    .end local v8           #entity:Lorg/apache/http/HttpEntity;
    .local v9, entity:Lorg/apache/http/HttpEntity;
    move-object/from16 v0, v19

    move-object v1, v9

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_41b
    .catch Lorg/apache/http/HttpException; {:try_start_329 .. :try_end_41b} :catch_1bc
    .catch Ljava/io/IOException; {:try_start_329 .. :try_end_41b} :catch_1cf
    .catch Ljava/lang/RuntimeException; {:try_start_329 .. :try_end_41b} :catch_322

    goto/16 :goto_214
.end method

.method protected handleResponse(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/impl/client/RoutedRequest;
    .registers 28
    .parameter "roureq"
    .parameter "response"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 878
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v20

    .line 879
    .local v20, route:Lorg/apache/http/conn/routing/HttpRoute;
    invoke-virtual/range {v20 .. v20}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v17

    .line 880
    .local v17, proxy:Lorg/apache/http/HttpHost;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v19

    .line 882
    .local v19, request:Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual/range {v19 .. v19}, Lorg/apache/http/impl/client/RequestWrapper;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v16

    .line 883
    .local v16, params:Lorg/apache/http/params/HttpParams;
    invoke-static/range {v16 .. v16}, Lorg/apache/http/client/params/HttpClientParams;->isRedirecting(Lorg/apache/http/params/HttpParams;)Z

    move-result v4

    if-eqz v4, :cond_f1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/RedirectHandler;->isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v4

    if-eqz v4, :cond_f1

    .line 886
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectCount:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->maxRedirects:I

    move v5, v0

    if-lt v4, v5, :cond_56

    .line 887
    new-instance v4, Lorg/apache/http/client/RedirectException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Maximum redirects ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->maxRedirects:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") exceeded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/client/RedirectException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 890
    :cond_56
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectCount:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectCount:I

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/RedirectHandler;->getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;

    move-result-object v22

    .line 894
    .local v22, uri:Ljava/net/URI;
    new-instance v14, Lorg/apache/http/HttpHost;

    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getPort()I

    move-result v5

    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v14, v4, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 899
    .local v14, newTarget:Lorg/apache/http/HttpHost;
    new-instance v18, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 901
    .local v18, redirect:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual/range {v19 .. v19}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v15

    .line 902
    .local v15, orig:Lorg/apache/http/HttpRequest;
    invoke-interface {v15}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v4

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeaders([Lorg/apache/http/Header;)V

    .line 904
    new-instance v23, Lorg/apache/http/impl/client/RequestWrapper;

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V

    .line 905
    .local v23, wrapper:Lorg/apache/http/impl/client/RequestWrapper;
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/RequestWrapper;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 907
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, v23

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v13

    .line 908
    .local v13, newRoute:Lorg/apache/http/conn/routing/HttpRoute;
    new-instance v12, Lorg/apache/http/impl/client/RoutedRequest;

    move-object v0, v12

    move-object/from16 v1, v23

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/RoutedRequest;-><init>(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 910
    .local v12, newRequest:Lorg/apache/http/impl/client/RoutedRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object v4, v0

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_ef

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Redirecting to \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' via "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_ef
    move-object v4, v12

    .line 984
    .end local v12           #newRequest:Lorg/apache/http/impl/client/RoutedRequest;
    .end local v13           #newRoute:Lorg/apache/http/conn/routing/HttpRoute;
    .end local v14           #newTarget:Lorg/apache/http/HttpHost;
    .end local v15           #orig:Lorg/apache/http/HttpRequest;
    .end local v18           #redirect:Lorg/apache/http/client/methods/HttpGet;
    .end local v22           #uri:Ljava/net/URI;
    .end local v23           #wrapper:Lorg/apache/http/impl/client/RequestWrapper;
    :goto_f0
    return-object v4

    .line 917
    :cond_f1
    const-string v4, "http.auth.credentials-provider"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/http/client/CredentialsProvider;

    .line 920
    .local v10, credsProvider:Lorg/apache/http/client/CredentialsProvider;
    if-eqz v10, :cond_23a

    invoke-static/range {v16 .. v16}, Lorg/apache/http/client/params/HttpClientParams;->isAuthenticating(Lorg/apache/http/params/HttpParams;)Z

    move-result v4

    if-eqz v4, :cond_23a

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/AuthenticationHandler;->isAuthenticationRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v4

    if-eqz v4, :cond_19e

    .line 924
    const-string v4, "http.target_host"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/http/HttpHost;

    .line 926
    .local v21, target:Lorg/apache/http/HttpHost;
    if-nez v21, :cond_125

    .line 927
    invoke-virtual/range {v20 .. v20}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v21

    .line 930
    :cond_125
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object v4, v0

    const-string v5, "Target requested authentication"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/AuthenticationHandler;->getChallenges(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/util/Map;

    move-result-object v5

    .line 934
    .local v5, challenges:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    :try_start_13d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    move-object v7, v0

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lorg/apache/http/impl/client/DefaultRequestDirector;->processChallenges(Ljava/util/Map;Lorg/apache/http/auth/AuthState;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_150
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_13d .. :try_end_150} :catch_16c

    .line 943
    :cond_150
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v21

    move-object v3, v10

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->updateAuthState(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpHost;Lorg/apache/http/client/CredentialsProvider;)V

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v4

    if-eqz v4, :cond_19b

    move-object/from16 v4, p1

    .line 947
    goto :goto_f0

    .line 937
    :catch_16c
    move-exception v4

    move-object v11, v4

    .line 938
    .local v11, ex:Lorg/apache/http/auth/AuthenticationException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object v4, v0

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_150

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #challenges:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Authentication error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Lorg/apache/http/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 940
    const/4 v4, 0x0

    goto/16 :goto_f0

    .line 949
    .end local v11           #ex:Lorg/apache/http/auth/AuthenticationException;
    .restart local v5       #challenges:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    :cond_19b
    const/4 v4, 0x0

    goto/16 :goto_f0

    .line 953
    .end local v5           #challenges:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    .end local v21           #target:Lorg/apache/http/HttpHost;
    :cond_19e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/http/auth/AuthState;->setAuthScope(Lorg/apache/http/auth/AuthScope;)V

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/AuthenticationHandler;->isAuthenticationRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v4

    if-eqz v4, :cond_231

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object v4, v0

    const-string v5, "Proxy requested authentication"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/AuthenticationHandler;->getChallenges(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/util/Map;

    move-result-object v5

    .line 962
    .restart local v5       #challenges:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    :try_start_1cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    move-object v7, v0

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lorg/apache/http/impl/client/DefaultRequestDirector;->processChallenges(Ljava/util/Map;Lorg/apache/http/auth/AuthState;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_1e2
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_1cf .. :try_end_1e2} :catch_1ff

    .line 971
    :cond_1e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v17

    move-object v3, v10

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->updateAuthState(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpHost;Lorg/apache/http/client/CredentialsProvider;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v4

    if-eqz v4, :cond_22e

    move-object/from16 v4, p1

    .line 975
    goto/16 :goto_f0

    .line 965
    :catch_1ff
    move-exception v4

    move-object v11, v4

    .line 966
    .restart local v11       #ex:Lorg/apache/http/auth/AuthenticationException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object v4, v0

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_1e2

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #challenges:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Authentication error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Lorg/apache/http/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 968
    const/4 v4, 0x0

    goto/16 :goto_f0

    .line 977
    .end local v11           #ex:Lorg/apache/http/auth/AuthenticationException;
    .restart local v5       #challenges:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    :cond_22e
    const/4 v4, 0x0

    goto/16 :goto_f0

    .line 981
    .end local v5           #challenges:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    :cond_231
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/http/auth/AuthState;->setAuthScope(Lorg/apache/http/auth/AuthScope;)V

    .line 984
    :cond_23a
    const/4 v4, 0x0

    goto/16 :goto_f0
.end method

.method protected releaseConnection()V
    .registers 4

    .prologue
    .line 527
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v1}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_9

    .line 531
    :goto_5
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 532
    return-void

    .line 528
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 529
    .local v0, ignored:Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "IOException releasing connection"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method protected rewriteRequestURI(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V
    .registers 9
    .parameter "request"
    .parameter "route"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 261
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v2

    .line 262
    .local v2, uri:Ljava/net/URI;
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v3

    if-eqz v3, :cond_22

    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v3

    if-nez v3, :cond_22

    .line 264
    invoke-virtual {v2}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    if-nez v3, :cond_21

    .line 265
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 266
    .local v1, target:Lorg/apache/http/HttpHost;
    invoke-static {v2, v1}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;)Ljava/net/URI;

    move-result-object v2

    .line 267
    invoke-virtual {p1, v2}, Lorg/apache/http/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V

    .line 281
    .end local v1           #target:Lorg/apache/http/HttpHost;
    :cond_21
    :goto_21
    return-void

    .line 271
    :cond_22
    invoke-virtual {v2}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 272
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;)Ljava/net/URI;

    move-result-object v2

    .line 273
    invoke-virtual {p1, v2}, Lorg/apache/http/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V
    :try_end_30
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_21

    .line 277
    .end local v2           #uri:Ljava/net/URI;
    :catch_31
    move-exception v3

    move-object v0, v3

    .line 278
    .local v0, ex:Ljava/net/URISyntaxException;
    new-instance v3, Lorg/apache/http/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/http/impl/client/RequestWrapper;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
