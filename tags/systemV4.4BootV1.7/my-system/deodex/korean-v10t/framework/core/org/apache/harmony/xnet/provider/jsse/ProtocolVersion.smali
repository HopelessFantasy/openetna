.class public Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;
.super Ljava/lang/Object;
.source "ProtocolVersion.java"


# static fields
.field public static SSLv3:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

.field public static TLSv1:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

.field private static protocolsByName:Ljava/util/Hashtable;

.field public static final supportedProtocols:[Ljava/lang/String;


# instance fields
.field public final name:Ljava/lang/String;

.field public final version:[B


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v3, 0x2

    const-string v5, "TLSv1"

    const-string v4, "SSLv3"

    .line 45
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TLSv1"

    aput-object v5, v0, v1

    const/4 v1, 0x1

    const-string v2, "SSLv3"

    aput-object v4, v0, v1

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->supportedProtocols:[Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->protocolsByName:Ljava/util/Hashtable;

    .line 148
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    const-string v1, "SSLv3"

    new-array v1, v3, [B

    fill-array-data v1, :array_60

    invoke-direct {v0, v4, v1}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;-><init>(Ljava/lang/String;[B)V

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->SSLv3:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    .line 154
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    const-string v1, "TLSv1"

    new-array v1, v3, [B

    fill-array-data v1, :array_66

    invoke-direct {v0, v5, v1}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;-><init>(Ljava/lang/String;[B)V

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->TLSv1:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    .line 158
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->protocolsByName:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->SSLv3:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->name:Ljava/lang/String;

    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->SSLv3:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->protocolsByName:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->TLSv1:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->name:Ljava/lang/String;

    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->TLSv1:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->protocolsByName:Ljava/util/Hashtable;

    const-string v1, "SSL"

    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->SSLv3:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->protocolsByName:Ljava/util/Hashtable;

    const-string v1, "TLS"

    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->TLSv1:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-void

    .line 148
    :array_60
    .array-data 0x1
        0x3t
        0x0t
    .end array-data

    .line 154
    nop

    :array_66
    .array-data 0x1
        0x3t
        0x1t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;[B)V
    .registers 3
    .parameter "name"
    .parameter "version"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->name:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    .line 53
    return-void
.end method

.method public static getByName(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;
    .registers 2
    .parameter "name"

    .prologue
    .line 115
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->protocolsByName:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    return-object p0
.end method

.method public static getByVersion([B)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;
    .registers 4
    .parameter "version"

    .prologue
    const/4 v2, 0x1

    .line 87
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    .line 88
    aget-byte v0, p0, v2

    if-ne v0, v2, :cond_e

    .line 89
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->TLSv1:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    .line 95
    :goto_d
    return-object v0

    .line 91
    :cond_e
    aget-byte v0, p0, v2

    if-nez v0, :cond_15

    .line 92
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->SSLv3:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    goto :goto_d

    .line 95
    :cond_15
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static getLatestVersion([Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;
    .registers 8
    .parameter "protocols"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 125
    if-eqz p0, :cond_7

    array-length v3, p0

    if-nez v3, :cond_9

    .line 126
    :cond_7
    const/4 v3, 0x0

    .line 141
    :goto_8
    return-object v3

    .line 128
    :cond_9
    aget-object v3, p0, v5

    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->getByName(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    move-result-object v2

    .line 130
    .local v2, latest:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_10
    array-length v3, p0

    if-ge v1, v3, :cond_40

    .line 131
    aget-object v3, p0, v1

    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->getByName(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    move-result-object v0

    .line 132
    .local v0, current:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;
    if-nez v0, :cond_1e

    .line 130
    :cond_1b
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 135
    :cond_1e
    if-eqz v2, :cond_3e

    iget-object v3, v2, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    aget-byte v3, v3, v5

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    aget-byte v4, v4, v5

    if-lt v3, v4, :cond_3e

    iget-object v3, v2, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    aget-byte v3, v3, v5

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_1b

    iget-object v3, v2, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    aget-byte v3, v3, v6

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    aget-byte v4, v4, v6

    if-ge v3, v4, :cond_1b

    .line 138
    :cond_3e
    move-object v2, v0

    goto :goto_1b

    .end local v0           #current:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;
    :cond_40
    move-object v3, v2

    .line 141
    goto :goto_8
.end method

.method public static isSupported(Ljava/lang/String;)Z
    .registers 2
    .parameter "name"

    .prologue
    .line 105
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->protocolsByName:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSupported([B)Z
    .registers 5
    .parameter "version"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 74
    aget-byte v0, p0, v3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    aget-byte v0, p0, v2

    if-eqz v0, :cond_11

    aget-byte v0, p0, v2

    if-eq v0, v2, :cond_11

    :cond_f
    move v0, v3

    .line 77
    :goto_10
    return v0

    :cond_11
    move v0, v2

    goto :goto_10
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    instance-of v1, p1, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    aget-byte v2, v1, v3

    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    aget-byte v1, v1, v3

    if-ne v2, v1, :cond_22

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    aget-byte v1, v1, v4

    check-cast p1, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    .end local p1
    iget-object v2, p1, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    aget-byte v2, v2, v4

    if-ne v1, v2, :cond_22

    move v1, v4

    .line 64
    :goto_21
    return v1

    :cond_22
    move v1, v3

    goto :goto_21
.end method
