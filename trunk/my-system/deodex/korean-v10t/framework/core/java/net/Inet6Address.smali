.class public final Ljava/net/Inet6Address;
.super Ljava/net/InetAddress;
.source "Inet6Address.java"


# static fields
.field static final ANY:Ljava/net/InetAddress; = null

.field static final LOOPBACK:Ljava/net/InetAddress; = null

.field static final any_bytes:[B = null

.field static final localhost_bytes:[B = null

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x5f7c2081522c8021L


# instance fields
.field ifname:Ljava/lang/String;

.field scope_id:I

.field scope_id_set:Z

.field scope_ifname_set:Z

.field transient scopedIf:Ljava/net/NetworkInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v1, 0x10

    const/4 v4, 0x0

    .line 38
    new-array v0, v1, [B

    fill-array-data v0, :array_6a

    sput-object v0, Ljava/net/Inet6Address;->any_bytes:[B

    .line 41
    new-array v0, v1, [B

    fill-array-data v0, :array_76

    sput-object v0, Ljava/net/Inet6Address;->localhost_bytes:[B

    .line 44
    new-instance v0, Ljava/net/Inet6Address;

    sget-object v1, Ljava/net/Inet6Address;->any_bytes:[B

    invoke-direct {v0, v1}, Ljava/net/Inet6Address;-><init>([B)V

    sput-object v0, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    .line 46
    new-instance v0, Ljava/net/Inet6Address;

    sget-object v1, Ljava/net/Inet6Address;->localhost_bytes:[B

    const-string v2, "localhost"

    invoke-direct {v0, v1, v2}, Ljava/net/Inet6Address;-><init>([BLjava/lang/String;)V

    sput-object v0, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    .line 469
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "ipaddress"

    new-array v3, v4, [B

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "scope_id"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "scope_id_set"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "scope_ifname_set"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "ifname"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/net/Inet6Address;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void

    .line 38
    :array_6a
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

    .line 41
    :array_76
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
        0x1t
    .end array-data
.end method

.method constructor <init>([B)V
    .registers 3
    .parameter "address"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 63
    iput-object p1, p0, Ljava/net/Inet6Address;->ipaddress:[B

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Ljava/net/Inet6Address;->scope_id:I

    .line 65
    return-void
.end method

.method constructor <init>([BI)V
    .registers 4
    .parameter "address"
    .parameter "scope_id"

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 209
    iput-object p1, p0, Ljava/net/Inet6Address;->ipaddress:[B

    .line 210
    iput p2, p0, Ljava/net/Inet6Address;->scope_id:I

    .line 211
    if-eqz p2, :cond_c

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    .line 214
    :cond_c
    return-void
.end method

.method constructor <init>([BLjava/lang/String;)V
    .registers 4
    .parameter "address"
    .parameter "name"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 68
    iput-object p2, p0, Ljava/net/Inet6Address;->hostName:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Ljava/net/Inet6Address;->ipaddress:[B

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Ljava/net/Inet6Address;->scope_id:I

    .line 71
    return-void
.end method

.method constructor <init>([BLjava/lang/String;I)V
    .registers 5
    .parameter "address"
    .parameter "name"
    .parameter "scope_id"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 86
    iput-object p2, p0, Ljava/net/Inet6Address;->hostName:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Ljava/net/Inet6Address;->ipaddress:[B

    .line 88
    iput p3, p0, Ljava/net/Inet6Address;->scope_id:I

    .line 89
    if-eqz p3, :cond_e

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    .line 92
    :cond_e
    return-void
.end method

.method private compareLocalType(Ljava/net/Inet6Address;)Z
    .registers 4
    .parameter "ia"

    .prologue
    const/4 v1, 0x1

    .line 186
    invoke-virtual {p1}, Ljava/net/Inet6Address;->isSiteLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ljava/net/Inet6Address;->isSiteLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    .line 195
    :goto_e
    return v0

    .line 189
    :cond_f
    invoke-virtual {p1}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v1

    .line 190
    goto :goto_e

    .line 192
    :cond_1d
    invoke-virtual {p1}, Ljava/net/Inet6Address;->isSiteLocalAddress()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p1}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v0

    if-nez v0, :cond_2b

    move v0, v1

    .line 193
    goto :goto_e

    .line 195
    :cond_2b
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;
    .registers 5
    .parameter "host"
    .parameter "addr"
    .parameter "scope_id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 111
    if-eqz p1, :cond_7

    const/16 v0, 0x10

    array-length v1, p1

    if-eq v0, v1, :cond_13

    .line 113
    :cond_7
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "KA020"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_13
    if-gez p2, :cond_16

    .line 116
    const/4 p2, 0x0

    .line 118
    :cond_16
    new-instance v0, Ljava/net/Inet6Address;

    invoke-direct {v0, p1, p0, p2}, Ljava/net/Inet6Address;-><init>([BLjava/lang/String;I)V

    return-object v0
.end method

.method public static getByAddress(Ljava/lang/String;[BLjava/net/NetworkInterface;)Ljava/net/Inet6Address;
    .registers 12
    .parameter "host"
    .parameter "addr"
    .parameter "nif"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 143
    const/4 v6, 0x0

    invoke-static {p0, p1, v6}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v1

    .line 146
    .local v1, address:Ljava/net/Inet6Address;
    if-nez p2, :cond_9

    .line 174
    :cond_8
    return-object v1

    .line 152
    :cond_9
    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 153
    .local v2, addressList:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_d
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 154
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 155
    .local v3, ia:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    array-length v6, v6

    const/16 v7, 0x10

    if-ne v6, v7, :cond_d

    .line 156
    move-object v0, v3

    check-cast v0, Ljava/net/Inet6Address;

    move-object v5, v0

    .line 157
    .local v5, v6ia:Ljava/net/Inet6Address;
    invoke-direct {v5, v1}, Ljava/net/Inet6Address;->compareLocalType(Ljava/net/Inet6Address;)Z

    move-result v4

    .line 158
    .local v4, isSameType:Z
    if-eqz v4, :cond_d

    .line 159
    iput-boolean v8, v1, Ljava/net/Inet6Address;->scope_id_set:Z

    .line 160
    iget v6, v5, Ljava/net/Inet6Address;->scope_id:I

    iput v6, v1, Ljava/net/Inet6Address;->scope_id:I

    .line 161
    iput-boolean v8, v1, Ljava/net/Inet6Address;->scope_ifname_set:Z

    .line 162
    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    .line 163
    iput-object p2, v1, Ljava/net/Inet6Address;->scopedIf:Ljava/net/NetworkInterface;

    .line 170
    .end local v3           #ia:Ljava/net/InetAddress;
    .end local v4           #isSameType:Z
    .end local v5           #v6ia:Ljava/net/Inet6Address;
    :cond_3c
    iget-boolean v6, v1, Ljava/net/Inet6Address;->scope_id_set:Z

    if-nez v6, :cond_8

    .line 172
    new-instance v6, Ljava/net/UnknownHostException;

    const-string v7, "KA021"

    invoke-static {v7}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 493
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 494
    .local v0, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v1, "ipaddress"

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    iput-object v1, p0, Ljava/net/Inet6Address;->ipaddress:[B

    .line 495
    const-string v1, "scope_id"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ljava/net/Inet6Address;->scope_id:I

    .line 496
    const-string v1, "scope_id_set"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    .line 497
    const-string v1, "ifname"

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    .line 498
    const-string v1, "scope_ifname_set"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    .line 499
    iget-boolean v1, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    if-eqz v1, :cond_44

    iget-object v1, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    if-eqz v1, :cond_44

    .line 500
    iget-object v1, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    iput-object v1, p0, Ljava/net/Inet6Address;->scopedIf:Ljava/net/NetworkInterface;

    .line 502
    :cond_44
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, "ipaddress"

    .line 477
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 478
    .local v0, fields:Ljava/io/ObjectOutputStream$PutField;
    iget-object v1, p0, Ljava/net/Inet6Address;->ipaddress:[B

    if-nez v1, :cond_30

    .line 479
    const-string v1, "ipaddress"

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 484
    :goto_10
    const-string v1, "scope_id"

    iget v2, p0, Ljava/net/Inet6Address;->scope_id:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 485
    const-string v1, "scope_id_set"

    iget-boolean v2, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 486
    const-string v1, "scope_ifname_set"

    iget-boolean v2, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 487
    const-string v1, "ifname"

    iget-object v2, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 488
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 489
    return-void

    .line 481
    :cond_30
    const-string v1, "ipaddress"

    iget-object v1, p0, Ljava/net/Inet6Address;->ipaddress:[B

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_10
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "obj"

    .prologue
    .line 448
    invoke-super {p0, p1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 391
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    invoke-static {v0}, Lorg/apache/harmony/luni/util/Inet6Util;->createIPAddrStringFromByteArray([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScopeId()I
    .registers 2

    .prologue
    .line 403
    iget-boolean v0, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    if-eqz v0, :cond_7

    .line 404
    iget v0, p0, Ljava/net/Inet6Address;->scope_id:I

    .line 406
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getScopedInterface()Ljava/net/NetworkInterface;
    .registers 2

    .prologue
    .line 417
    iget-boolean v0, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    if-eqz v0, :cond_7

    .line 418
    iget-object v0, p0, Ljava/net/Inet6Address;->scopedIf:Ljava/net/NetworkInterface;

    .line 420
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 432
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    const/16 v1, 0xc

    invoke-static {v0, v1}, Ljava/net/Inet6Address;->bytesToInt([BI)I

    move-result v0

    return v0
.end method

.method public isAnyLocalAddress()Z
    .registers 3

    .prologue
    .line 240
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Ljava/net/Inet6Address;->ipaddress:[B

    array-length v1, v1

    if-ge v0, v1, :cond_11

    .line 241
    iget-object v1, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_e

    .line 242
    const/4 v1, 0x0

    .line 245
    :goto_d
    return v1

    .line 240
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 245
    :cond_11
    const/4 v1, 0x1

    goto :goto_d
.end method

.method public isIPv4CompatibleAddress()Z
    .registers 3

    .prologue
    .line 461
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v1, 0xc

    if-ge v0, v1, :cond_10

    .line 462
    iget-object v1, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_d

    .line 463
    const/4 v1, 0x0

    .line 466
    :goto_c
    return v1

    .line 461
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 466
    :cond_10
    const/4 v1, 0x1

    goto :goto_c
.end method

.method public isLinkLocalAddress()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 286
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v2

    const/4 v1, -0x2

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v0, v0, 0x6

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    move v0, v3

    :goto_15
    return v0

    :cond_16
    move v0, v2

    goto :goto_15
.end method

.method public isLoopbackAddress()Z
    .registers 6

    .prologue
    const/16 v4, 0xf

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 260
    iget-object v1, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v1, v1, v4

    if-eq v1, v3, :cond_c

    move v1, v2

    .line 271
    :goto_b
    return v1

    .line 265
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v4, :cond_1a

    .line 266
    iget-object v1, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_17

    move v1, v2

    .line 267
    goto :goto_b

    .line 265
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1a
    move v1, v3

    .line 271
    goto :goto_b
.end method

.method public isMCGlobal()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 316
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v3

    and-int/lit8 v0, v0, 0xf

    const/16 v1, 0xe

    if-ne v0, v1, :cond_15

    move v0, v3

    :goto_14
    return v0

    :cond_15
    move v0, v2

    goto :goto_14
.end method

.method public isMCLinkLocal()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 348
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v3

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    move v0, v3

    :goto_13
    return v0

    :cond_14
    move v0, v2

    goto :goto_13
.end method

.method public isMCNodeLocal()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 332
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v3

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v2, :cond_13

    move v0, v2

    :goto_12
    return v0

    :cond_13
    move v0, v3

    goto :goto_12
.end method

.method public isMCOrgLocal()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 380
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v3

    and-int/lit8 v0, v0, 0xf

    const/16 v1, 0x8

    if-ne v0, v1, :cond_15

    move v0, v3

    :goto_14
    return v0

    :cond_15
    move v0, v2

    goto :goto_14
.end method

.method public isMCSiteLocal()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 364
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v3

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    move v0, v3

    :goto_13
    return v0

    :cond_14
    move v0, v2

    goto :goto_13
.end method

.method public isMulticastAddress()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 227
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    move v0, v2

    goto :goto_9
.end method

.method public isSiteLocalAddress()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 301
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v2

    const/4 v1, -0x2

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v0, v0, 0x6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    move v0, v3

    :goto_15
    return v0

    :cond_16
    move v0, v2

    goto :goto_15
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const-string v2, "%"

    .line 513
    iget-object v0, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 519
    :goto_23
    return-object v0

    .line 516
    :cond_24
    iget v0, p0, Ljava/net/Inet6Address;->scope_id:I

    if-eqz v0, :cond_46

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/net/Inet6Address;->scope_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 519
    :cond_46
    invoke-super {p0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_23
.end method
