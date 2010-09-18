.class public Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "HttpsURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;
    }
.end annotation


# instance fields
.field private final httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

.field private sslSocket:Ljavax/net/ssl/SSLSocket;


# direct methods
.method protected constructor <init>(Ljava/net/URL;I)V
    .registers 4
    .parameter "url"
    .parameter "port"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 55
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;Ljava/net/URL;I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    .line 56
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;ILjava/net/Proxy;)V
    .registers 5
    .parameter "url"
    .parameter "port"
    .parameter "proxy"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 60
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;Ljava/net/URL;ILjava/net/Proxy;)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    .line 61
    return-void
.end method

.method static synthetic access$002(Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    return-object p1
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "field"
    .parameter "newValue"

    .prologue
    .line 227
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public connect()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->connect()V

    .line 152
    return-void
.end method

.method public disconnect()V
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->disconnect()V

    .line 107
    return-void
.end method

.method public getAllowUserInteraction()Z
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_10

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "luni.00"

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTimeout()I
    .registers 2

    .prologue
    .line 332
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .parameter "types"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .registers 3

    .prologue
    .line 187
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()J
    .registers 3

    .prologue
    .line 207
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .registers 3
    .parameter "pos"

    .prologue
    .line 212
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "key"

    .prologue
    .line 232
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .registers 6
    .parameter "field"
    .parameter "defaultValue"

    .prologue
    .line 237
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .registers 4
    .parameter "field"
    .parameter "defaultValue"

    .prologue
    .line 242
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .registers 3
    .parameter "posn"

    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .registers 3

    .prologue
    .line 252
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceFollowRedirects()Z
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .registers 3

    .prologue
    .line 262
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_10

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "luni.00"

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_10

    .line 99
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "luni.00"

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_10

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "luni.00"

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "field"

    .prologue
    .line 277
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificates()[Ljava/security/cert/Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_10

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "luni.00"

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .registers 3
    .parameter "newValue"

    .prologue
    .line 292
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->setAllowUserInteraction(Z)V

    .line 293
    return-void
.end method

.method public setConnectTimeout(I)V
    .registers 3
    .parameter "timeout"

    .prologue
    .line 327
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->setConnectTimeout(I)V

    .line 328
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .registers 3
    .parameter "newValue"

    .prologue
    .line 297
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->setDefaultUseCaches(Z)V

    .line 298
    return-void
.end method

.method public setDoInput(Z)V
    .registers 3
    .parameter "newValue"

    .prologue
    .line 302
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->setDoInput(Z)V

    .line 303
    return-void
.end method

.method public setDoOutput(Z)V
    .registers 3
    .parameter "newValue"

    .prologue
    .line 307
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->setDoOutput(Z)V

    .line 308
    return-void
.end method

.method public setIfModifiedSince(J)V
    .registers 4
    .parameter "newValue"

    .prologue
    .line 312
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->setIfModifiedSince(J)V

    .line 313
    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .registers 3
    .parameter "followRedirects"

    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->setInstanceFollowRedirects(Z)V

    .line 147
    return-void
.end method

.method public setReadTimeout(I)V
    .registers 3
    .parameter "timeout"

    .prologue
    .line 337
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->setReadTimeout(I)V

    .line 338
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .registers 3
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->setRequestMethod(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "field"
    .parameter "newValue"

    .prologue
    .line 317
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public setUseCaches(Z)V
    .registers 3
    .parameter "newValue"

    .prologue
    .line 322
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->setUseCaches(Z)V

    .line 323
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 347
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->httpsEngine:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->usingProxy()Z

    move-result v0

    return v0
.end method
