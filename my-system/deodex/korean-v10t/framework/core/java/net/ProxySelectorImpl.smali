.class Ljava/net/ProxySelectorImpl;
.super Ljava/net/ProxySelector;
.source "ProxySelectorImpl.java"


# static fields
.field private static final FTP_PROXY_PORT:I = 0x50

.field private static final HTTPS_PROXY_PORT:I = 0x1bb

.field private static final HTTP_PROXY_PORT:I = 0x50

.field private static final SOCKS_PROXY_PORT:I = 0x438

.field private static netProps:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Ljava/net/ProxySelectorImpl;->netProps:Ljava/util/Properties;

    .line 51
    new-instance v0, Ljava/net/ProxySelectorImpl$1;

    invoke-direct {v0}, Ljava/net/ProxySelectorImpl$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/net/ProxySelector;-><init>()V

    .line 76
    return-void
.end method

.method static synthetic access$000()Ljava/util/Properties;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Ljava/net/ProxySelectorImpl;->netProps:Ljava/util/Properties;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/Properties;)Ljava/util/Properties;
    .registers 1
    .parameter "x0"

    .prologue
    .line 36
    sput-object p0, Ljava/net/ProxySelectorImpl;->netProps:Ljava/util/Properties;

    return-object p0
.end method

.method private createProxy(Ljava/net/Proxy$Type;Ljava/lang/String;Ljava/lang/String;I)Ljava/net/Proxy;
    .registers 9
    .parameter "type"
    .parameter "host"
    .parameter "port"
    .parameter "defaultPort"

    .prologue
    .line 273
    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne p1, v3, :cond_7

    .line 274
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 287
    .local v2, proxy:Ljava/net/Proxy;
    :goto_6
    return-object v2

    .line 279
    .end local v2           #proxy:Ljava/net/Proxy;
    :cond_7
    :try_start_7
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_a} :catch_15

    move-result v1

    .line 284
    .local v1, iPort:I
    :goto_b
    new-instance v2, Ljava/net/Proxy;

    invoke-static {p2, v1}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .restart local v2       #proxy:Ljava/net/Proxy;
    goto :goto_6

    .line 281
    .end local v1           #iPort:I
    .end local v2           #proxy:Ljava/net/Proxy;
    :catch_15
    move-exception v0

    .line 282
    .local v0, e:Ljava/lang/NumberFormatException;
    move v1, p4

    .restart local v1       #iPort:I
    goto :goto_b
.end method

.method private getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "property"

    .prologue
    .line 295
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/net/ProxySelectorImpl;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "property"
    .parameter "defaultValue"

    .prologue
    .line 304
    new-instance v1, Lorg/apache/harmony/luni/util/PriviAction;

    invoke-direct {v1, p1}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 306
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_15

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 307
    :cond_15
    sget-object v1, Ljava/net/ProxySelectorImpl;->netProps:Ljava/util/Properties;

    if-eqz v1, :cond_21

    sget-object v1, Ljava/net/ProxySelectorImpl;->netProps:Ljava/util/Properties;

    invoke-virtual {v1, p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 311
    :cond_20
    :goto_20
    return-object v0

    :cond_21
    move-object v0, p2

    .line 307
    goto :goto_20
.end method

.method private getSystemPropertyOrAlternative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "key"
    .parameter "alternativeKey"
    .parameter "defaultValue"

    .prologue
    .line 321
    invoke-direct {p0, p1}, Ljava/net/ProxySelectorImpl;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_d

    .line 323
    invoke-direct {p0, p2}, Ljava/net/ProxySelectorImpl;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    if-nez v0, :cond_d

    .line 325
    move-object v0, p3

    .line 328
    :cond_d
    return-object v0
.end method

.method private isNonProxyHost(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .parameter "host"
    .parameter "nonProxyHosts"

    .prologue
    .line 242
    if-nez p2, :cond_4

    .line 243
    const/4 v5, 0x0

    .line 264
    :goto_3
    return v5

    .line 246
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 248
    .local v3, length:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 249
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2d

    .line 250
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 251
    .local v1, ch:C
    sparse-switch v1, :sswitch_data_36

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 253
    :sswitch_21
    const-string v5, "\\."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 256
    :sswitch_27
    const-string v5, ".*"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 262
    .end local v1           #ch:C
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, nonProxyHostsReg:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    goto :goto_3

    .line 251
    :sswitch_data_36
    .sparse-switch
        0x2a -> :sswitch_27
        0x2e -> :sswitch_21
    .end sparse-switch
.end method

.method private selectFtpProxy(Ljava/lang/String;)Ljava/net/Proxy;
    .registers 11
    .parameter "uriHost"

    .prologue
    const/16 v8, 0x438

    const/16 v7, 0x50

    .line 191
    const/4 v3, 0x0

    .line 192
    .local v3, port:Ljava/lang/String;
    sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 193
    .local v4, type:Ljava/net/Proxy$Type;
    const-string v5, "ftp.nonProxyHosts"

    invoke-direct {p0, v5}, Ljava/net/ProxySelectorImpl;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, nonProxyHosts:Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Ljava/net/ProxySelectorImpl;->isNonProxyHost(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 196
    sget-object v5, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 216
    :goto_15
    return-object v5

    .line 199
    :cond_16
    const-string v5, "ftp.proxyHost"

    invoke-direct {p0, v5}, Ljava/net/ProxySelectorImpl;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, host:Ljava/lang/String;
    if-eqz v1, :cond_34

    .line 202
    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 203
    const-string v5, "ftp.proxyPort"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Ljava/net/ProxySelectorImpl;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 214
    :cond_2a
    :goto_2a
    sget-object v5, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v4, v5, :cond_49

    move v0, v8

    .line 216
    .local v0, defaultPort:I
    :goto_2f
    invoke-direct {p0, v4, v1, v3, v0}, Ljava/net/ProxySelectorImpl;->createProxy(Ljava/net/Proxy$Type;Ljava/lang/String;Ljava/lang/String;I)Ljava/net/Proxy;

    move-result-object v5

    goto :goto_15

    .line 206
    .end local v0           #defaultPort:I
    :cond_34
    const-string v5, "socksProxyHost"

    invoke-direct {p0, v5}, Ljava/net/ProxySelectorImpl;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    if-eqz v1, :cond_2a

    .line 209
    sget-object v4, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    .line 210
    const-string v5, "socksProxyPort"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Ljava/net/ProxySelectorImpl;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2a

    :cond_49
    move v0, v7

    .line 214
    goto :goto_2f
.end method

.method private selectHttpProxy(Ljava/lang/String;)Ljava/net/Proxy;
    .registers 13
    .parameter "uriHost"

    .prologue
    const/16 v8, 0x438

    const/16 v7, 0x50

    const-string v10, "proxyPort"

    const-string v9, "http.proxyPort"

    .line 126
    const/4 v3, 0x0

    .line 127
    .local v3, port:Ljava/lang/String;
    sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 129
    .local v4, type:Ljava/net/Proxy$Type;
    const-string v5, "http.nonProxyHosts"

    invoke-direct {p0, v5}, Ljava/net/ProxySelectorImpl;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, nonProxyHosts:Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Ljava/net/ProxySelectorImpl;->isNonProxyHost(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 132
    sget-object v5, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 155
    :goto_19
    return-object v5

    .line 135
    :cond_1a
    const-string v5, "http.proxyHost"

    invoke-direct {p0, v5}, Ljava/net/ProxySelectorImpl;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, host:Ljava/lang/String;
    if-eqz v1, :cond_3a

    .line 138
    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 139
    const-string v5, "http.proxyPort"

    const-string v5, "proxyPort"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v9, v10, v5}, Ljava/net/ProxySelectorImpl;->getSystemPropertyOrAlternative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 153
    :cond_30
    :goto_30
    sget-object v5, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v4, v5, :cond_67

    move v0, v8

    .line 155
    .local v0, defaultPort:I
    :goto_35
    invoke-direct {p0, v4, v1, v3, v0}, Ljava/net/ProxySelectorImpl;->createProxy(Ljava/net/Proxy$Type;Ljava/lang/String;Ljava/lang/String;I)Ljava/net/Proxy;

    move-result-object v5

    goto :goto_19

    .line 141
    .end local v0           #defaultPort:I
    :cond_3a
    const-string v5, "proxyHost"

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Ljava/net/ProxySelectorImpl;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_52

    .line 143
    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 144
    const-string v5, "proxyPort"

    const-string v5, "http.proxyPort"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v10, v9, v5}, Ljava/net/ProxySelectorImpl;->getSystemPropertyOrAlternative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_30

    .line 147
    :cond_52
    const-string v5, "socksProxyHost"

    invoke-direct {p0, v5}, Ljava/net/ProxySelectorImpl;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 149
    sget-object v4, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    .line 150
    const-string v5, "socksProxyPort"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Ljava/net/ProxySelectorImpl;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_30

    :cond_67
    move v0, v7

    .line 153
    goto :goto_35
.end method

.method private selectHttpsProxy()Ljava/net/Proxy;
    .registers 9

    .prologue
    const/16 v7, 0x438

    const/16 v6, 0x1bb

    .line 163
    const/4 v2, 0x0

    .line 164
    .local v2, port:Ljava/lang/String;
    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 166
    .local v3, type:Ljava/net/Proxy$Type;
    const-string v4, "https.proxyHost"

    invoke-direct {p0, v4}, Ljava/net/ProxySelectorImpl;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, host:Ljava/lang/String;
    if-eqz v1, :cond_25

    .line 169
    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 170
    const-string v4, "https.proxyPort"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Ljava/net/ProxySelectorImpl;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    :cond_1b
    :goto_1b
    sget-object v4, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v3, v4, :cond_3a

    move v0, v7

    .line 183
    .local v0, defaultPort:I
    :goto_20
    invoke-direct {p0, v3, v1, v2, v0}, Ljava/net/ProxySelectorImpl;->createProxy(Ljava/net/Proxy$Type;Ljava/lang/String;Ljava/lang/String;I)Ljava/net/Proxy;

    move-result-object v4

    return-object v4

    .line 173
    .end local v0           #defaultPort:I
    :cond_25
    const-string v4, "socksProxyHost"

    invoke-direct {p0, v4}, Ljava/net/ProxySelectorImpl;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    if-eqz v1, :cond_1b

    .line 176
    sget-object v3, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    .line 177
    const-string v4, "socksProxyPort"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Ljava/net/ProxySelectorImpl;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1b

    :cond_3a
    move v0, v6

    .line 181
    goto :goto_20
.end method

.method private selectSocksProxy()Ljava/net/Proxy;
    .registers 7

    .prologue
    const/16 v5, 0x438

    .line 224
    const/4 v1, 0x0

    .line 225
    .local v1, port:Ljava/lang/String;
    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 227
    .local v2, type:Ljava/net/Proxy$Type;
    const-string v3, "socksProxyHost"

    invoke-direct {p0, v3}, Ljava/net/ProxySelectorImpl;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, host:Ljava/lang/String;
    if-eqz v0, :cond_19

    .line 229
    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    .line 230
    const-string v3, "socksProxyPort"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Ljava/net/ProxySelectorImpl;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    :cond_19
    invoke-direct {p0, v2, v0, v1, v5}, Ljava/net/ProxySelectorImpl;->createProxy(Ljava/net/Proxy$Type;Ljava/lang/String;Ljava/lang/String;I)Ljava/net/Proxy;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    .registers 6
    .parameter "uri"
    .parameter "sa"
    .parameter "ioe"

    .prologue
    .line 80
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-nez p3, :cond_12

    .line 82
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KA001"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_12
    return-void
.end method

.method public select(Ljava/net/URI;)Ljava/util/List;
    .registers 8
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    if-nez p1, :cond_e

    .line 91
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "KA001"

    invoke-static {v5}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 94
    :cond_e
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, scheme:Ljava/lang/String;
    if-nez v3, :cond_1a

    .line 96
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 99
    :cond_1a
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, host:Ljava/lang/String;
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 102
    .local v1, proxy:Ljava/net/Proxy;
    const-string v4, "http"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 103
    invoke-direct {p0, v0}, Ljava/net/ProxySelectorImpl;->selectHttpProxy(Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v1

    .line 111
    :cond_2c
    :goto_2c
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    .local v2, proxyList:Ljava/util/List;,"Ljava/util/List<Ljava/net/Proxy;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return-object v2

    .line 104
    .end local v2           #proxyList:Ljava/util/List;,"Ljava/util/List<Ljava/net/Proxy;>;"
    :cond_36
    const-string v4, "https"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 105
    invoke-direct {p0}, Ljava/net/ProxySelectorImpl;->selectHttpsProxy()Ljava/net/Proxy;

    move-result-object v1

    goto :goto_2c

    .line 106
    :cond_43
    const-string v4, "ftp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 107
    invoke-direct {p0, v0}, Ljava/net/ProxySelectorImpl;->selectFtpProxy(Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v1

    goto :goto_2c

    .line 108
    :cond_50
    const-string v4, "socket"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 109
    invoke-direct {p0}, Ljava/net/ProxySelectorImpl;->selectSocksProxy()Ljava/net/Proxy;

    move-result-object v1

    goto :goto_2c
.end method
