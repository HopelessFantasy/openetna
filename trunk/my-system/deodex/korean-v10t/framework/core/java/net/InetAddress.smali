.class public Ljava/net/InetAddress;
.super Ljava/lang/Object;
.source "InetAddress.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/InetAddress$Cache;,
        Ljava/net/InetAddress$CacheElement;,
        Ljava/net/InetAddress$WaitReachable;
    }
.end annotation


# static fields
.field static ANY:Ljava/net/InetAddress; = null

.field private static final DEFAULT_NETADDR_CACHE_TTL_SECS:Ljava/lang/String; = "600"

.field private static final ERRMSG_CONNECTION_REFUSED:Ljava/lang/String; = "Connection refused"

.field static final LOOPBACK:Ljava/net/InetAddress; = null

.field private static final NETIMPL:Lorg/apache/harmony/luni/platform/INetworkSystem; = null

.field static final any_bytes:[B = null

.field static final localhost_bytes:[B = null

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x2d9b57af9fe3ebdbL


# instance fields
.field private addrCount:I

.field family:I

.field hostName:Ljava/lang/String;

.field ipaddress:[B

.field private reached:Z

.field private transient waitReachable:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v1, 0x4

    .line 49
    new-array v0, v1, [B

    fill-array-data v0, :array_54

    sput-object v0, Ljava/net/InetAddress;->any_bytes:[B

    .line 51
    new-array v0, v1, [B

    fill-array-data v0, :array_5a

    sput-object v0, Ljava/net/InetAddress;->localhost_bytes:[B

    .line 53
    new-instance v0, Ljava/net/Inet4Address;

    sget-object v1, Ljava/net/InetAddress;->any_bytes:[B

    invoke-direct {v0, v1}, Ljava/net/Inet4Address;-><init>([B)V

    sput-object v0, Ljava/net/InetAddress;->ANY:Ljava/net/InetAddress;

    .line 55
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getNetworkSystem()Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-result-object v0

    sput-object v0, Ljava/net/InetAddress;->NETIMPL:Lorg/apache/harmony/luni/platform/INetworkSystem;

    .line 57
    new-instance v0, Ljava/net/Inet4Address;

    sget-object v1, Ljava/net/InetAddress;->localhost_bytes:[B

    const-string v2, "localhost"

    invoke-direct {v0, v1, v2}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    sput-object v0, Ljava/net/InetAddress;->LOOPBACK:Ljava/net/InetAddress;

    .line 1538
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "address"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "family"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "hostName"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/net/InetAddress;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void

    .line 49
    nop

    :array_54
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 51
    :array_5a
    .array-data 0x1
        0x7ft
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/net/InetAddress$WaitReachable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/InetAddress$WaitReachable;-><init>(Ljava/net/InetAddress$1;)V

    iput-object v0, p0, Ljava/net/InetAddress;->waitReachable:Ljava/lang/Object;

    .line 82
    const/4 v0, 0x2

    iput v0, p0, Ljava/net/InetAddress;->family:I

    .line 100
    return-void
.end method

.method constructor <init>([B)V
    .registers 4
    .parameter "address"

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/net/InetAddress$WaitReachable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/InetAddress$WaitReachable;-><init>(Ljava/net/InetAddress$1;)V

    iput-object v0, p0, Ljava/net/InetAddress;->waitReachable:Ljava/lang/Object;

    .line 82
    const/4 v0, 0x2

    iput v0, p0, Ljava/net/InetAddress;->family:I

    .line 111
    iput-object p1, p0, Ljava/net/InetAddress;->ipaddress:[B

    .line 112
    return-void
.end method

.method constructor <init>([BLjava/lang/String;)V
    .registers 5
    .parameter "address"
    .parameter "hostName"

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/net/InetAddress$WaitReachable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/InetAddress$WaitReachable;-><init>(Ljava/net/InetAddress$1;)V

    iput-object v0, p0, Ljava/net/InetAddress;->waitReachable:Ljava/lang/Object;

    .line 82
    const/4 v0, 0x2

    iput v0, p0, Ljava/net/InetAddress;->family:I

    .line 123
    iput-object p1, p0, Ljava/net/InetAddress;->ipaddress:[B

    .line 124
    iput-object p2, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    .line 125
    return-void
.end method

.method static synthetic access$100(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Ljava/net/InetAddress;->isReachableByTCP(Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/net/InetAddress;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Ljava/net/InetAddress;->waitReachable:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Ljava/net/InetAddress;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Ljava/net/InetAddress;->reached:Z

    return p1
.end method

.method static synthetic access$400(Ljava/net/InetAddress;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Ljava/net/InetAddress;->addrCount:I

    return v0
.end method

.method static synthetic access$410(Ljava/net/InetAddress;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Ljava/net/InetAddress;->addrCount:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Ljava/net/InetAddress;->addrCount:I

    return v0
.end method

.method static bytesToInt([BI)I
    .registers 5
    .parameter "bytes"
    .parameter "start"

    .prologue
    .line 1358
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int v0, v1, v2

    .line 1362
    .local v0, value:I
    return v0
.end method

.method static createHostNameFromIPAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 10
    .parameter "ipAddressString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 1372
    const/4 v0, 0x0

    .line 1374
    .local v0, address:Ljava/net/InetAddress;
    invoke-static {p0}, Lorg/apache/harmony/luni/util/Inet6Util;->isValidIPV4Address(Ljava/lang/String;)Z

    move-result v0

    .end local v0           #address:Ljava/net/InetAddress;
    if-eqz v0, :cond_5b

    .line 1375
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 1376
    .local v1, byteAddress:[B
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1377
    .local v3, parts:[Ljava/lang/String;
    array-length v2, v3

    .line 1378
    .local v2, length:I
    const/4 v0, 0x1

    if-ne v2, v0, :cond_2c

    .line 1379
    const/4 v0, 0x0

    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1380
    .local v3, value:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1c
    const/4 v5, 0x4

    if-ge v0, v5, :cond_3b

    .line 1381
    const/4 v5, 0x3

    sub-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0x8

    shr-long v5, v3, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v1, v0

    .line 1380
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 1384
    .end local v0           #i:I
    .local v3, parts:[Ljava/lang/String;
    :cond_2c
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2d
    if-ge v0, v2, :cond_3b

    .line 1385
    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 1384
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 1390
    .end local v3           #parts:[Ljava/lang/String;
    :cond_3b
    const/4 v0, 0x2

    if-ne v2, v0, :cond_48

    .line 1391
    .end local v0           #i:I
    const/4 v0, 0x3

    const/4 v3, 0x1

    aget-byte v3, v1, v3

    aput-byte v3, v1, v0

    .line 1392
    const/4 v0, 0x1

    const/4 v3, 0x0

    aput-byte v3, v1, v0

    .line 1394
    :cond_48
    const/4 v0, 0x3

    if-ne v2, v0, :cond_55

    .line 1395
    const/4 v0, 0x3

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    .end local v2           #length:I
    aput-byte v2, v1, v0

    .line 1396
    const/4 v0, 0x2

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    .line 1399
    :cond_55
    new-instance v0, Ljava/net/Inet4Address;

    invoke-direct {v0, v1}, Ljava/net/Inet4Address;-><init>([B)V

    .line 1529
    .end local v1           #byteAddress:[B
    .local v0, address:Ljava/net/InetAddress;
    :goto_5a
    return-object v0

    .line 1402
    .end local v0           #address:Ljava/net/InetAddress;
    :cond_5b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_6f

    .line 1403
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1407
    :cond_6f
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v0, ":.%"

    const/4 v1, 0x1

    invoke-direct {v7, p0, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1409
    .local v7, tokenizer:Ljava/util/StringTokenizer;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1410
    .local v2, hexStrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1411
    .local v0, decStrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1412
    .local v5, scopeString:Ljava/lang/String;
    const-string v6, ""

    .line 1413
    .local v6, token:Ljava/lang/String;
    const-string v4, ""

    .line 1414
    .local v4, prevToken:Ljava/lang/String;
    const-string v3, ""

    .line 1415
    .local v3, prevPrevToken:Ljava/lang/String;
    const/4 v1, -0x1

    .line 1423
    .local v1, doubleColonIndex:I
    :cond_89
    :goto_89
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    .end local v3           #prevPrevToken:Ljava/lang/String;
    if-eqz v3, :cond_111

    .line 1424
    move-object v3, v4

    .line 1425
    .restart local v3       #prevPrevToken:Ljava/lang/String;
    move-object v4, v6

    .line 1426
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 1428
    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b6

    .line 1429
    const-string v8, ":"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_aa

    .line 1430
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_89

    .line 1431
    :cond_aa
    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_89

    .line 1432
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_89

    .line 1434
    :cond_b6
    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c2

    .line 1435
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_89

    .line 1436
    :cond_c2
    const-string v8, "%"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_89

    .line 1438
    const-string v5, ":"

    .end local v5           #scopeString:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e5

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e5

    .line 1439
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_105

    .line 1440
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1447
    :cond_e5
    :goto_e5
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 1448
    .restart local v5       #scopeString:Ljava/lang/String;
    :goto_e9
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_89

    .line 1449
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .end local v5           #scopeString:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #scopeString:Ljava/lang/String;
    goto :goto_e9

    .line 1441
    .end local v5           #scopeString:Ljava/lang/String;
    :cond_105
    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e5

    .line 1442
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e5

    .line 1454
    .end local v3           #prevPrevToken:Ljava/lang/String;
    .restart local v5       #scopeString:Ljava/lang/String;
    :cond_111
    const-string v3, ":"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_147

    .line 1455
    const-string v3, ":"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_143

    .line 1456
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1466
    :cond_125
    :goto_125
    const/16 v3, 0x8

    .line 1470
    .local v3, hexStringsLength:I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .end local v4           #prevToken:Ljava/lang/String;
    if-lez v4, :cond_12f

    .line 1471
    add-int/lit8 v3, v3, -0x2

    .line 1475
    :cond_12f
    const/4 v4, -0x1

    if-eq v1, v4, :cond_153

    .line 1476
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v4, v3, v4

    .line 1477
    .local v4, numberToInsert:I
    const/4 v3, 0x0

    .end local v6           #token:Ljava/lang/String;
    .local v3, i:I
    :goto_139
    if-ge v3, v4, :cond_153

    .line 1478
    const-string v6, "0"

    invoke-virtual {v2, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1477
    add-int/lit8 v3, v3, 0x1

    goto :goto_139

    .line 1458
    .end local v3           #i:I
    .local v4, prevToken:Ljava/lang/String;
    .restart local v6       #token:Ljava/lang/String;
    :cond_143
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_125

    .line 1460
    :cond_147
    const-string v3, "."

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_125

    .line 1461
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_125

    .line 1482
    .end local v4           #prevToken:Ljava/lang/String;
    .end local v6           #token:Ljava/lang/String;
    :cond_153
    const/16 v1, 0x10

    new-array v3, v1, [B

    .line 1485
    .end local v1           #doubleColonIndex:I
    .local v3, ipByteArray:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_158
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_16c

    .line 1486
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    mul-int/lit8 v6, v1, 0x2

    invoke-static {v4, v3, v6}, Lorg/apache/harmony/luni/util/Inet6Util;->convertToBytes(Ljava/lang/String;[BI)V

    .line 1485
    add-int/lit8 v1, v1, 0x1

    goto :goto_158

    .line 1490
    :cond_16c
    const/4 v1, 0x0

    .end local v2           #hexStrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_16d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_187

    .line 1491
    add-int/lit8 v4, v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    .line 1490
    add-int/lit8 v1, v1, 0x1

    goto :goto_16d

    .line 1497
    :cond_187
    const/4 v1, 0x1

    .line 1498
    .local v1, ipV4:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_189
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1cb

    .line 1499
    aget-byte v2, v3, v0

    if-eqz v2, :cond_1b3

    .line 1500
    const/4 v0, 0x0

    .line 1505
    .end local v1           #ipV4:Z
    .local v0, ipV4:Z
    :goto_192
    const/16 v1, 0xa

    aget-byte v1, v3, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1a0

    const/16 v1, 0xb

    aget-byte v1, v3, v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1a1

    .line 1506
    :cond_1a0
    const/4 v0, 0x0

    .line 1509
    :cond_1a1
    if-eqz v0, :cond_1bc

    .line 1510
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 1511
    .end local v0           #ipV4:Z
    .local v1, ipv4ByteArray:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1a7
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1b6

    .line 1512
    add-int/lit8 v2, v0, 0xc

    aget-byte v2, v3, v2

    aput-byte v2, v1, v0

    .line 1511
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a7

    .line 1498
    .local v1, ipV4:Z
    :cond_1b3
    add-int/lit8 v0, v0, 0x1

    goto :goto_189

    .line 1514
    .local v1, ipv4ByteArray:[B
    :cond_1b6
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 1515
    .local v0, address:Ljava/net/InetAddress;
    goto/16 :goto_5a

    .line 1516
    .end local v1           #ipv4ByteArray:[B
    .local v0, ipV4:Z
    :cond_1bc
    const/4 v0, 0x0

    .line 1517
    .local v0, scopeId:I
    if-eqz v5, :cond_1c3

    .line 1519
    :try_start_1bf
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_1bf .. :try_end_1c2} :catch_1c9

    move-result v0

    .line 1525
    :cond_1c3
    :goto_1c3
    invoke-static {v3, v0}, Ljava/net/InetAddress;->getByAddress([BI)Ljava/net/InetAddress;

    move-result-object v0

    .local v0, address:Ljava/net/InetAddress;
    goto/16 :goto_5a

    .line 1520
    .local v0, scopeId:I
    :catch_1c9
    move-exception v1

    goto :goto_1c3

    .local v0, i:I
    .local v1, ipV4:Z
    :cond_1cb
    move v0, v1

    .end local v1           #ipV4:Z
    .local v0, ipV4:Z
    goto :goto_192
.end method

.method public static getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .registers 14
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x10

    const/4 v11, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 217
    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_15

    const-string v8, "localhost"

    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 219
    :cond_15
    new-array v8, v9, [Ljava/net/InetAddress;

    invoke-static {}, Ljava/net/InetAddress;->preferIPv6Addresses()Z

    move-result v9

    if-eqz v9, :cond_22

    sget-object v9, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    :goto_1f
    aput-object v9, v8, v10

    .line 300
    :goto_21
    return-object v8

    .line 219
    :cond_22
    sget-object v9, Ljava/net/InetAddress;->LOOPBACK:Ljava/net/InetAddress;

    goto :goto_1f

    .line 225
    :cond_25
    invoke-static {p0}, Ljava/net/InetAddress;->isHostName(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d4

    .line 226
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v7

    .line 227
    .local v7, security:Ljava/lang/SecurityManager;
    if-eqz v7, :cond_35

    .line 228
    const/4 v8, -0x1

    invoke-virtual {v7, p0, v8}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 231
    :cond_35
    invoke-static {}, Ljava/net/Socket;->preferIPv4Stack()Z

    move-result v8

    invoke-static {p0, v8}, Ljava/net/InetAddress;->getallbyname(Ljava/lang/String;Z)[[B

    move-result-object v5

    .line 233
    .local v5, rawAddresses:[[B
    array-length v8, v5

    new-array v6, v8, [Ljava/net/InetAddress;

    .line 235
    .local v6, returnedAddresses:[Ljava/net/InetAddress;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_41
    array-length v8, v5

    if-ge v2, v8, :cond_78

    .line 236
    aget-object v4, v5, v2

    .line 237
    .local v4, rawAddress:[B
    array-length v8, v4

    if-ne v8, v12, :cond_53

    .line 238
    new-instance v8, Ljava/net/Inet6Address;

    invoke-direct {v8, v4, p0}, Ljava/net/Inet6Address;-><init>([BLjava/lang/String;)V

    aput-object v8, v6, v2

    .line 235
    :goto_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 239
    :cond_53
    array-length v8, v4

    if-ne v8, v11, :cond_5e

    .line 240
    new-instance v8, Ljava/net/Inet4Address;

    invoke-direct {v8, v4, p0}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    aput-object v8, v6, v2

    goto :goto_50

    .line 244
    :cond_5e
    new-instance v8, Ljava/lang/AssertionError;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Impossible address length "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 252
    .end local v4           #rawAddress:[B
    :cond_78
    const/4 v3, 0x0

    .line 253
    .local v3, orderedAddresses:[Ljava/net/InetAddress;
    if-eqz v6, :cond_d1

    .line 254
    array-length v8, v6

    new-array v3, v8, [Ljava/net/InetAddress;

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, curPosition:I
    invoke-static {}, Ljava/net/InetAddress;->preferIPv6Addresses()Z

    move-result v8

    if-eqz v8, :cond_ab

    .line 257
    const/4 v2, 0x0

    :goto_86
    array-length v8, v6

    if-ge v2, v8, :cond_98

    .line 258
    aget-object v8, v6, v2

    instance-of v8, v8, Ljava/net/Inet6Address;

    if-eqz v8, :cond_95

    .line 259
    aget-object v8, v6, v2

    aput-object v8, v3, v0

    .line 260
    add-int/lit8 v0, v0, 0x1

    .line 257
    :cond_95
    add-int/lit8 v2, v2, 0x1

    goto :goto_86

    .line 263
    :cond_98
    const/4 v2, 0x0

    :goto_99
    array-length v8, v6

    if-ge v2, v8, :cond_d1

    .line 265
    aget-object v8, v6, v2

    instance-of v8, v8, Ljava/net/Inet6Address;

    if-nez v8, :cond_a8

    .line 267
    aget-object v8, v6, v2

    aput-object v8, v3, v0

    .line 268
    add-int/lit8 v0, v0, 0x1

    .line 263
    :cond_a8
    add-int/lit8 v2, v2, 0x1

    goto :goto_99

    .line 272
    :cond_ab
    const/4 v2, 0x0

    :goto_ac
    array-length v8, v6

    if-ge v2, v8, :cond_be

    .line 274
    aget-object v8, v6, v2

    instance-of v8, v8, Ljava/net/Inet6Address;

    if-nez v8, :cond_bb

    .line 276
    aget-object v8, v6, v2

    aput-object v8, v3, v0

    .line 277
    add-int/lit8 v0, v0, 0x1

    .line 272
    :cond_bb
    add-int/lit8 v2, v2, 0x1

    goto :goto_ac

    .line 280
    :cond_be
    const/4 v2, 0x0

    :goto_bf
    array-length v8, v6

    if-ge v2, v8, :cond_d1

    .line 281
    aget-object v8, v6, v2

    instance-of v8, v8, Ljava/net/Inet6Address;

    if-eqz v8, :cond_ce

    .line 282
    aget-object v8, v6, v2

    aput-object v8, v3, v0

    .line 283
    add-int/lit8 v0, v0, 0x1

    .line 280
    :cond_ce
    add-int/lit8 v2, v2, 0x1

    goto :goto_bf

    .end local v0           #curPosition:I
    :cond_d1
    move-object v8, v3

    .line 288
    goto/16 :goto_21

    .line 291
    .end local v2           #i:I
    .end local v3           #orderedAddresses:[Ljava/net/InetAddress;
    .end local v5           #rawAddresses:[[B
    .end local v6           #returnedAddresses:[Ljava/net/InetAddress;
    .end local v7           #security:Ljava/lang/SecurityManager;
    :cond_d4
    invoke-static {p0}, Lorg/apache/harmony/luni/util/Inet6Util;->createByteArrayFromIPAddressString(Ljava/lang/String;)[B

    move-result-object v1

    .line 294
    .local v1, hBytes:[B
    array-length v8, v1

    if-ne v8, v11, :cond_e6

    .line 295
    new-array v8, v9, [Ljava/net/InetAddress;

    new-instance v9, Ljava/net/Inet4Address;

    invoke-direct {v9, v1}, Ljava/net/Inet4Address;-><init>([B)V

    aput-object v9, v8, v10

    goto/16 :goto_21

    .line 296
    :cond_e6
    array-length v8, v1

    if-ne v8, v12, :cond_f4

    .line 297
    new-array v8, v9, [Ljava/net/InetAddress;

    new-instance v9, Ljava/net/Inet6Address;

    invoke-direct {v9, v1}, Ljava/net/Inet6Address;-><init>([B)V

    aput-object v9, v8, v10

    goto/16 :goto_21

    .line 300
    :cond_f4
    new-array v8, v9, [Ljava/net/InetAddress;

    new-instance v9, Ljava/net/InetAddress;

    invoke-direct {v9, v1}, Ljava/net/InetAddress;-><init>([B)V

    aput-object v9, v8, v10

    goto/16 :goto_21
.end method

.method public static getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;
    .registers 3
    .parameter "hostName"
    .parameter "ipAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 1277
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/net/InetAddress;->getByAddressInternal(Ljava/lang/String;[BI)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static getByAddress([B)Ljava/net/InetAddress;
    .registers 2
    .parameter "ipAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 1181
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/net/InetAddress;->getByAddress([BI)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method static getByAddress([BI)Ljava/net/InetAddress;
    .registers 7
    .parameter "ipAddress"
    .parameter "scope_id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 1202
    if-eqz p0, :cond_18

    array-length v2, p0

    if-ne v2, v4, :cond_18

    .line 1203
    new-array v0, v4, [B

    .line 1204
    .local v0, copy_address:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v4, :cond_12

    .line 1205
    aget-byte v2, p0, v1

    aput-byte v2, v0, v1

    .line 1204
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1209
    :cond_12
    new-instance v2, Ljava/net/Inet4Address;

    invoke-direct {v2, v0}, Ljava/net/Inet4Address;-><init>([B)V

    .line 1225
    .end local v1           #i:I
    :goto_17
    return-object v2

    .line 1213
    .end local v0           #copy_address:[B
    :cond_18
    if-eqz p0, :cond_45

    array-length v2, p0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_45

    .line 1217
    invoke-static {p0}, Ljava/net/InetAddress;->isIPv4MappedAddress([B)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1218
    new-array v0, v4, [B

    .line 1219
    .restart local v0       #copy_address:[B
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_28
    if-ge v1, v4, :cond_33

    .line 1220
    add-int/lit8 v2, v1, 0xc

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    .line 1219
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 1222
    :cond_33
    new-instance v2, Ljava/net/Inet4Address;

    invoke-direct {v2, v0}, Ljava/net/Inet4Address;-><init>([B)V

    goto :goto_17

    .line 1224
    .end local v0           #copy_address:[B
    .end local v1           #i:I
    :cond_39
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1225
    .restart local v0       #copy_address:[B
    new-instance v2, Ljava/net/Inet6Address;

    invoke-direct {v2, v0, p1}, Ljava/net/Inet6Address;-><init>([BI)V

    goto :goto_17

    .line 1227
    .end local v0           #copy_address:[B
    :cond_45
    new-instance v2, Ljava/net/UnknownHostException;

    const-string v3, "K0339"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static getByAddressInternal(Ljava/lang/String;[BI)Ljava/net/InetAddress;
    .registers 8
    .parameter "hostName"
    .parameter "ipAddress"
    .parameter "scope_id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x4

    .line 1301
    if-eqz p1, :cond_1a

    array-length v2, p1

    if-ne v2, v3, :cond_1a

    .line 1302
    new-array v0, v3, [B

    .line 1303
    .local v0, copy_address:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v3, :cond_14

    .line 1304
    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    .line 1303
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1306
    :cond_14
    new-instance v2, Ljava/net/Inet4Address;

    invoke-direct {v2, p1, p0}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    .line 1326
    :goto_19
    return-object v2

    .line 1309
    .end local v0           #copy_address:[B
    .end local v1           #i:I
    :cond_1a
    if-eqz p1, :cond_4b

    array-length v2, p1

    if-ne v2, v4, :cond_4b

    .line 1313
    invoke-static {p1}, Ljava/net/InetAddress;->isIPv4MappedAddress([B)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1314
    new-array v0, v3, [B

    .line 1315
    .restart local v0       #copy_address:[B
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_28
    if-ge v1, v3, :cond_33

    .line 1316
    add-int/lit8 v2, v1, 0xc

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 1315
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 1318
    :cond_33
    new-instance v2, Ljava/net/Inet4Address;

    invoke-direct {v2, p1, p0}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    goto :goto_19

    .line 1321
    .end local v0           #copy_address:[B
    .end local v1           #i:I
    :cond_39
    new-array v0, v4, [B

    .line 1322
    .restart local v0       #copy_address:[B
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3c
    if-ge v1, v4, :cond_45

    .line 1323
    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    .line 1322
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 1326
    :cond_45
    new-instance v2, Ljava/net/Inet6Address;

    invoke-direct {v2, p1, p0, p2}, Ljava/net/Inet6Address;-><init>([BLjava/lang/String;I)V

    goto :goto_19

    .line 1329
    .end local v0           #copy_address:[B
    .end local v1           #i:I
    :cond_4b
    new-instance v2, Ljava/net/UnknownHostException;

    const-string v3, "K0332"

    invoke-static {v3, p0}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 3
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 322
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "localhost"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 324
    :cond_10
    sget-object v1, Ljava/net/InetAddress;->LOOPBACK:Ljava/net/InetAddress;

    .line 339
    :goto_12
    return-object v1

    .line 327
    :cond_13
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 328
    sget-object v1, Ljava/net/InetAddress;->ANY:Ljava/net/InetAddress;

    goto :goto_12

    .line 331
    :cond_1e
    invoke-static {p0}, Ljava/net/InetAddress;->isHostName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 332
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 333
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_2e

    .line 334
    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 336
    :cond_2e
    invoke-static {p0}, Ljava/net/InetAddress;->lookupHostByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_12

    .line 339
    .end local v0           #security:Ljava/lang/SecurityManager;
    :cond_33
    invoke-static {p0}, Ljava/net/InetAddress;->createHostNameFromIPAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_12
.end method

.method static getHostByAddrImpl([B)Ljava/net/InetAddress;
    .registers 3
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 564
    new-instance v0, Ljava/net/InetAddress;

    invoke-static {p0}, Ljava/net/InetAddress;->gethostbyaddr([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/net/InetAddress;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method static getHostByNameImpl(Ljava/lang/String;Z)Ljava/net/InetAddress;
    .registers 4
    .parameter "name"
    .parameter "preferIPv6Address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 637
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method static getHostNameImpl()Ljava/lang/String;
    .registers 1

    .prologue
    .line 650
    invoke-static {}, Ljava/net/InetAddress;->gethostname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getHostNameInternal(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 656
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    .line 657
    :cond_8
    sget-object v0, Ljava/net/InetAddress;->LOOPBACK:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 662
    :goto_e
    return-object v0

    .line 659
    :cond_f
    invoke-static {p0}, Ljava/net/InetAddress;->isHostName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 660
    invoke-static {p0}, Ljava/net/InetAddress;->lookupHostByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_1e
    move-object v0, p0

    .line 662
    goto :goto_e
.end method

.method public static getLocalHost()Ljava/net/InetAddress;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 442
    invoke-static {}, Ljava/net/InetAddress;->getHostNameImpl()Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, host:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 445
    .local v2, security:Ljava/lang/SecurityManager;
    if-eqz v2, :cond_e

    .line 446
    const/4 v3, -0x1

    :try_start_b
    invoke-virtual {v2, v1, v3}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_e} :catch_13

    .line 451
    :cond_e
    invoke-static {v1}, Ljava/net/InetAddress;->lookupHostByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    :goto_12
    return-object v3

    .line 448
    :catch_13
    move-exception v0

    .line 449
    .local v0, e:Ljava/lang/SecurityException;
    sget-object v3, Ljava/net/InetAddress;->LOOPBACK:Ljava/net/InetAddress;

    goto :goto_12
.end method

.method private static native getallbyname(Ljava/lang/String;Z)[[B
.end method

.method private static native gethostbyaddr([B)Ljava/lang/String;
.end method

.method static native gethostname()Ljava/lang/String;
.end method

.method static inetAddr(Ljava/lang/String;)I
    .registers 2
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 574
    const-string v0, "255.255.255.255"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, -0x1

    :goto_9
    return v0

    :cond_a
    invoke-static {p0}, Ljava/net/InetAddress;->inetAddrImpl(Ljava/lang/String;)I

    move-result v0

    goto :goto_9
.end method

.method static inetAddrImpl(Ljava/lang/String;)I
    .registers 8
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 589
    :try_start_0
    const-string v6, "\\."

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 591
    .local v1, args:[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v0, v6, 0x18

    .line 592
    .local v0, a:I
    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v2, v6, 0x10

    .line 593
    .local v2, b:I
    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v3, v6, 0x8

    .line 594
    .local v3, c:I
    const/4 v6, 0x3

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_2d

    move-result v4

    .line 596
    .local v4, d:I
    or-int v6, v0, v2

    or-int/2addr v6, v3

    or-int/2addr v6, v4

    return v6

    .line 597
    .end local v0           #a:I
    .end local v1           #args:[Ljava/lang/String;
    .end local v2           #b:I
    .end local v3           #c:I
    .end local v4           #d:I
    :catch_2d
    move-exception v6

    move-object v5, v6

    .line 598
    .local v5, ex:Ljava/lang/Exception;
    new-instance v6, Ljava/net/UnknownHostException;

    invoke-direct {v6, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method static inetNtoaImpl(I)Ljava/lang/String;
    .registers 8
    .parameter "hipAddr"

    .prologue
    const-string v6, "."

    .line 611
    shr-int/lit8 v4, p0, 0x18

    and-int/lit16 v0, v4, 0xff

    .line 612
    .local v0, a:I
    shr-int/lit8 v4, p0, 0x10

    and-int/lit16 v1, v4, 0xff

    .line 613
    .local v1, b:I
    shr-int/lit8 v4, p0, 0x8

    and-int/lit16 v2, v4, 0xff

    .line 614
    .local v2, c:I
    and-int/lit16 v3, p0, 0xff

    .line 616
    .local v3, d:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static intToBytes(I[BI)V
    .registers 5
    .parameter "value"
    .parameter "bytes"
    .parameter "start"

    .prologue
    .line 1340
    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 1341
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 1342
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 1343
    add-int/lit8 v0, p2, 0x3

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 1344
    return-void
.end method

.method private static isHostName(Ljava/lang/String;)Z
    .registers 2
    .parameter "value"

    .prologue
    .line 773
    invoke-static {p0}, Lorg/apache/harmony/luni/util/Inet6Util;->isValidIPV4Address(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p0}, Lorg/apache/harmony/luni/util/Inet6Util;->isValidIP6Address(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static isIPv4MappedAddress([B)Z
    .registers 6
    .parameter "ipAddress"

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1234
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v4, :cond_10

    .line 1235
    aget-byte v1, p0, v0

    if-eqz v1, :cond_d

    move v1, v3

    .line 1244
    :goto_c
    return v1

    .line 1234
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1240
    :cond_10
    aget-byte v1, p0, v4

    if-ne v1, v2, :cond_1a

    const/16 v1, 0xb

    aget-byte v1, p0, v1

    if-eq v1, v2, :cond_1c

    :cond_1a
    move v1, v3

    .line 1241
    goto :goto_c

    .line 1244
    :cond_1c
    const/4 v1, 0x1

    goto :goto_c
.end method

.method private isReachableByMultiThread(Ljava/net/NetworkInterface;II)Z
    .registers 14
    .parameter "netif"
    .parameter "ttl"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1025
    iget-object v6, p1, Ljava/net/NetworkInterface;->addresses:[Ljava/net/InetAddress;

    if-nez v6, :cond_8

    move v6, v8

    .line 1117
    :goto_7
    return v6

    .line 1028
    :cond_8
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 1029
    .local v2, addresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    iput-boolean v8, p0, Ljava/net/InetAddress;->reached:Z

    .line 1030
    iget-object v6, p1, Ljava/net/NetworkInterface;->addresses:[Ljava/net/InetAddress;

    array-length v6, v6

    iput v6, p0, Ljava/net/InetAddress;->addrCount:I

    .line 1031
    const/4 v4, 0x0

    .line 1032
    .local v4, needWait:Z
    :goto_14
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 1033
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 1036
    .local v1, addr:Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-eqz v6, :cond_62

    .line 1037
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 1039
    .local v0, NetworkInterfaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_2a
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 1040
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 1042
    .local v5, networkInterface:Ljava/net/NetworkInterface;
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 1044
    .local v3, localAddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_3a
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 1045
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    move v6, v9

    .line 1047
    goto :goto_7

    .line 1052
    .end local v3           #localAddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v5           #networkInterface:Ljava/net/NetworkInterface;
    :cond_4c
    iget-object v6, p0, Ljava/net/InetAddress;->waitReachable:Ljava/lang/Object;

    monitor-enter v6

    .line 1053
    :try_start_4f
    iget v7, p0, Ljava/net/InetAddress;->addrCount:I

    sub-int/2addr v7, v9

    iput v7, p0, Ljava/net/InetAddress;->addrCount:I

    .line 1055
    iget v7, p0, Ljava/net/InetAddress;->addrCount:I

    if-nez v7, :cond_5d

    .line 1058
    iget-object v7, p0, Ljava/net/InetAddress;->waitReachable:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 1060
    :cond_5d
    monitor-exit v6

    goto :goto_14

    :catchall_5f
    move-exception v7

    monitor-exit v6
    :try_end_61
    .catchall {:try_start_4f .. :try_end_61} :catchall_5f

    throw v7

    .line 1064
    .end local v0           #NetworkInterfaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_62
    const/4 v4, 0x1

    .line 1065
    new-instance v6, Ljava/net/InetAddress$1;

    invoke-direct {v6, p0, v1, p3}, Ljava/net/InetAddress$1;-><init>(Ljava/net/InetAddress;Ljava/net/InetAddress;I)V

    invoke-virtual {v6}, Ljava/net/InetAddress$1;->start()V

    goto :goto_14

    .line 1103
    .end local v1           #addr:Ljava/net/InetAddress;
    :cond_6c
    if-eqz v4, :cond_8a

    .line 1104
    iget-object v6, p0, Ljava/net/InetAddress;->waitReachable:Ljava/lang/Object;

    monitor-enter v6

    .line 1106
    :goto_71
    :try_start_71
    iget-boolean v7, p0, Ljava/net/InetAddress;->reached:Z

    if-nez v7, :cond_82

    iget v7, p0, Ljava/net/InetAddress;->addrCount:I

    if-eqz v7, :cond_82

    .line 1108
    iget-object v7, p0, Ljava/net/InetAddress;->waitReachable:Ljava/lang/Object;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_80
    .catchall {:try_start_71 .. :try_end_80} :catchall_87
    .catch Ljava/lang/InterruptedException; {:try_start_71 .. :try_end_80} :catch_81

    goto :goto_71

    .line 1110
    :catch_81
    move-exception v7

    .line 1113
    :cond_82
    :try_start_82
    iget-boolean v7, p0, Ljava/net/InetAddress;->reached:Z

    monitor-exit v6

    move v6, v7

    goto :goto_7

    .line 1114
    :catchall_87
    move-exception v7

    monitor-exit v6
    :try_end_89
    .catchall {:try_start_82 .. :try_end_89} :catchall_87

    throw v7

    :cond_8a
    move v6, v8

    .line 1117
    goto/16 :goto_7
.end method

.method private isReachableByTCP(Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z
    .registers 12
    .parameter "dest"
    .parameter "source"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1134
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 1136
    .local v1, fd:Ljava/io/FileDescriptor;
    const/4 v4, 0x0

    .line 1137
    .local v4, traffic:I
    const/4 v7, 0x0

    .line 1138
    .local v7, reached:Z
    sget-object v0, Ljava/net/InetAddress;->NETIMPL:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-static {}, Lorg/apache/harmony/luni/net/NetUtil;->preferIPv4Stack()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->createSocket(Ljava/io/FileDescriptor;Z)V

    .line 1140
    if-eqz p2, :cond_18

    .line 1141
    :try_start_12
    sget-object v0, Ljava/net/InetAddress;->NETIMPL:Lorg/apache/harmony/luni/platform/INetworkSystem;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->bind(Ljava/io/FileDescriptor;ILjava/net/InetAddress;)V

    .line 1143
    :cond_18
    sget-object v0, Ljava/net/InetAddress;->NETIMPL:Lorg/apache/harmony/luni/platform/INetworkSystem;

    const/4 v2, 0x7

    move v3, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/INetworkSystem;->connectStreamWithTimeoutSocket(Ljava/io/FileDescriptor;IIILjava/net/InetAddress;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_20} :catch_27

    .line 1145
    const/4 v7, 0x1

    .line 1153
    :cond_21
    :goto_21
    sget-object v0, Ljava/net/InetAddress;->NETIMPL:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->socketClose(Ljava/io/FileDescriptor;)V

    .line 1155
    return v7

    .line 1146
    :catch_27
    move-exception v0

    move-object v6, v0

    .line 1147
    .local v6, e:Ljava/io/IOException;
    const-string v0, "Connection refused"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1149
    const/4 v7, 0x1

    goto :goto_21
.end method

.method static declared-synchronized lookupHostByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 14
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const-string v8, " - "

    .line 478
    const-class v8, Ljava/net/InetAddress;

    monitor-enter v8

    const/4 v6, -0x1

    .line 481
    .local v6, ttl:I
    :try_start_6
    new-instance v9, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v10, "networkaddress.cache.ttl"

    const-string v11, "600"

    invoke-direct {v9, v10, v11}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_6a

    .line 486
    .local v7, ttlValue:Ljava/lang/String;
    if-eqz v7, :cond_1f

    .line 487
    :try_start_17
    invoke-static {v7}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_6a
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1e} :catch_a4

    move-result v6

    .line 492
    :cond_1f
    :goto_1f
    const/4 v4, 0x0

    .line 493
    .local v4, element:Ljava/net/InetAddress$CacheElement;
    if-nez v6, :cond_2d

    .line 494
    :try_start_22
    invoke-static {}, Ljava/net/InetAddress$Cache;->clear()V

    .line 506
    :cond_25
    :goto_25
    if-eqz v4, :cond_47

    .line 507
    invoke-virtual {v4}, Ljava/net/InetAddress$CacheElement;->inetAddress()Ljava/net/InetAddress;
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_6a

    move-result-object v9

    .line 526
    :goto_2b
    monitor-exit v8

    return-object v9

    .line 496
    :cond_2d
    :try_start_2d
    invoke-static {p0}, Ljava/net/InetAddress$Cache;->get(Ljava/lang/String;)Ljava/net/InetAddress$CacheElement;

    move-result-object v4

    .line 498
    if-eqz v4, :cond_25

    if-lez v6, :cond_25

    .line 499
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    iget-wide v11, v4, Ljava/net/InetAddress$CacheElement;->nanoTimeAdded:J

    sub-long v1, v9, v11

    .line 500
    .local v1, delta:J
    invoke-static {v6}, Ljava/net/InetAddress;->secondsToNanos(I)J

    move-result-wide v9

    cmp-long v9, v1, v9

    if-lez v9, :cond_25

    .line 501
    const/4 v4, 0x0

    goto :goto_25

    .line 511
    .end local v1           #delta:J
    :cond_47
    invoke-static {p0}, Ljava/net/NegativeCache;->getFailedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 512
    .local v5, failedMessage:Ljava/lang/String;
    if-eqz v5, :cond_6d

    .line 513
    new-instance v9, Ljava/net/UnknownHostException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_6a
    .catchall {:try_start_2d .. :try_end_6a} :catchall_6a

    .line 478
    .end local v4           #element:Ljava/net/InetAddress$CacheElement;
    .end local v5           #failedMessage:Ljava/lang/String;
    .end local v7           #ttlValue:Ljava/lang/String;
    :catchall_6a
    move-exception v9

    monitor-exit v8

    throw v9

    .line 518
    .restart local v4       #element:Ljava/net/InetAddress$CacheElement;
    .restart local v5       #failedMessage:Ljava/lang/String;
    .restart local v7       #ttlValue:Ljava/lang/String;
    :cond_6d
    :try_start_6d
    invoke-static {}, Ljava/net/InetAddress;->preferIPv6Addresses()Z

    move-result v9

    invoke-static {p0, v9}, Ljava/net/InetAddress;->getHostByNameImpl(Ljava/lang/String;Z)Ljava/net/InetAddress;
    :try_end_74
    .catchall {:try_start_6d .. :try_end_74} :catchall_6a
    .catch Ljava/net/UnknownHostException; {:try_start_6d .. :try_end_74} :catch_7a

    move-result-object v0

    .line 525
    .local v0, anInetAddress:Ljava/net/InetAddress;
    :try_start_75
    invoke-static {v0}, Ljava/net/InetAddress$Cache;->add(Ljava/net/InetAddress;)V

    move-object v9, v0

    .line 526
    goto :goto_2b

    .line 519
    .end local v0           #anInetAddress:Ljava/net/InetAddress;
    :catch_7a
    move-exception v9

    move-object v3, v9

    .line 521
    .local v3, e:Ljava/net/UnknownHostException;
    invoke-virtual {v3}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Ljava/net/NegativeCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    new-instance v9, Ljava/net/UnknownHostException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_a4
    .catchall {:try_start_75 .. :try_end_a4} :catchall_6a

    .line 489
    .end local v3           #e:Ljava/net/UnknownHostException;
    .end local v4           #element:Ljava/net/InetAddress$CacheElement;
    .end local v5           #failedMessage:Ljava/lang/String;
    :catch_a4
    move-exception v9

    goto/16 :goto_1f
.end method

.method static preferIPv6Addresses()Z
    .registers 3

    .prologue
    .line 1533
    new-instance v1, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v2, "java.net.preferIPv6Addresses"

    invoke-direct {v1, v2}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1535
    .local v0, result:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
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

    .line 1558
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    .line 1559
    .local v1, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v2, "address"

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v0

    .line 1560
    .local v0, addr:I
    const/4 v2, 0x4

    new-array v2, v2, [B

    iput-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    .line 1561
    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    invoke-static {v0, v2, v3}, Ljava/net/InetAddress;->intToBytes(I[BI)V

    .line 1562
    const-string v2, "hostName"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    .line 1563
    const-string v2, "family"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Ljava/net/InetAddress;->family:I

    .line 1564
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1567
    new-instance v0, Ljava/net/Inet4Address;

    iget-object v1, p0, Ljava/net/InetAddress;->ipaddress:[B

    iget-object v2, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private static secondsToNanos(I)J
    .registers 5
    .parameter "ttl"

    .prologue
    .line 534
    int-to-long v0, p0

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string v3, "address"

    .line 1544
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 1545
    .local v0, fields:Ljava/io/ObjectOutputStream$PutField;
    iget-object v1, p0, Ljava/net/InetAddress;->ipaddress:[B

    if-nez v1, :cond_22

    .line 1546
    const-string v1, "address"

    invoke-virtual {v0, v3, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1550
    :goto_10
    const-string v1, "family"

    iget v2, p0, Ljava/net/InetAddress;->family:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1551
    const-string v1, "hostName"

    iget-object v2, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1553
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1554
    return-void

    .line 1548
    :cond_22
    const-string v1, "address"

    iget-object v1, p0, Ljava/net/InetAddress;->ipaddress:[B

    invoke-static {v1, v2}, Ljava/net/InetAddress;->bytesToInt([BI)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    goto :goto_10
.end method


# virtual methods
.method cacheElement()Ljava/net/InetAddress$CacheElement;
    .registers 2

    .prologue
    .line 148
    new-instance v0, Ljava/net/InetAddress$CacheElement;

    invoke-direct {v0, p0}, Ljava/net/InetAddress$CacheElement;-><init>(Ljava/net/InetAddress;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 164
    instance-of v2, p1, Ljava/net/InetAddress;

    if-nez v2, :cond_7

    move v2, v4

    .line 181
    .end local p1
    :goto_6
    return v2

    .line 170
    .restart local p1
    :cond_7
    check-cast p1, Ljava/net/InetAddress;

    .end local p1
    iget-object v1, p1, Ljava/net/InetAddress;->ipaddress:[B

    .line 172
    .local v1, objIPaddress:[B
    array-length v2, v1

    iget-object v3, p0, Ljava/net/InetAddress;->ipaddress:[B

    array-length v3, v3

    if-eq v2, v3, :cond_13

    move v2, v4

    .line 173
    goto :goto_6

    .line 176
    :cond_13
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    array-length v2, v1

    if-ge v0, v2, :cond_24

    .line 177
    aget-byte v2, v1, v0

    iget-object v3, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_21

    move v2, v4

    .line 178
    goto :goto_6

    .line 176
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 181
    :cond_24
    const/4 v2, 0x1

    goto :goto_6
.end method

.method public getAddress()[B
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Ljava/net/InetAddress;->ipaddress:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    return-object p0
.end method

.method public getCanonicalHostName()Ljava/lang/String;
    .registers 7

    .prologue
    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, address:I
    :try_start_1
    iget-object v4, p0, Ljava/net/InetAddress;->ipaddress:[B

    array-length v4, v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_15

    .line 407
    iget-object v4, p0, Ljava/net/InetAddress;->ipaddress:[B

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/net/InetAddress;->bytesToInt([BI)I

    move-result v0

    .line 408
    if-nez v0, :cond_15

    .line 409
    invoke-static {v0}, Ljava/net/InetAddress;->inetNtoaImpl(I)Ljava/lang/String;

    move-result-object v4

    .line 425
    :goto_14
    return-object v4

    .line 412
    :cond_15
    iget-object v4, p0, Ljava/net/InetAddress;->ipaddress:[B

    invoke-static {v4}, Ljava/net/InetAddress;->getHostByAddrImpl([B)Ljava/net/InetAddress;

    move-result-object v4

    iget-object v1, v4, Ljava/net/InetAddress;->hostName:Ljava/lang/String;
    :try_end_1d
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1d} :catch_2f

    .line 416
    .local v1, canonicalName:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 419
    .local v3, security:Ljava/lang/SecurityManager;
    if-eqz v3, :cond_2d

    :try_start_23
    invoke-static {v1}, Ljava/net/InetAddress;->isHostName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 420
    const/4 v4, -0x1

    invoke-virtual {v3, v1, v4}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_2d
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_2d} :catch_38

    :cond_2d
    move-object v4, v1

    .line 425
    goto :goto_14

    .line 413
    .end local v1           #canonicalName:Ljava/lang/String;
    .end local v3           #security:Ljava/lang/SecurityManager;
    :catch_2f
    move-exception v4

    move-object v2, v4

    .line 414
    .local v2, e:Ljava/net/UnknownHostException;
    iget-object v4, p0, Ljava/net/InetAddress;->ipaddress:[B

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Inet6Util;->createIPAddrStringFromByteArray([B)Ljava/lang/String;

    move-result-object v4

    goto :goto_14

    .line 422
    .end local v2           #e:Ljava/net/UnknownHostException;
    .restart local v1       #canonicalName:Ljava/lang/String;
    .restart local v3       #security:Ljava/lang/SecurityManager;
    :catch_38
    move-exception v4

    move-object v2, v4

    .line 423
    .local v2, e:Ljava/lang/SecurityException;
    iget-object v4, p0, Ljava/net/InetAddress;->ipaddress:[B

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Inet6Util;->createIPAddrStringFromByteArray([B)Ljava/lang/String;

    move-result-object v4

    goto :goto_14
.end method

.method public getHostAddress()Ljava/lang/String;
    .registers 3

    .prologue
    .line 350
    iget-object v0, p0, Ljava/net/InetAddress;->ipaddress:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/net/InetAddress;->bytesToInt([BI)I

    move-result v0

    invoke-static {v0}, Ljava/net/InetAddress;->inetNtoaImpl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x4

    .line 363
    :try_start_1
    iget-object v3, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    if-nez v3, :cond_4b

    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, address:I
    iget-object v3, p0, Ljava/net/InetAddress;->ipaddress:[B

    array-length v3, v3

    if-ne v3, v5, :cond_1b

    .line 366
    iget-object v3, p0, Ljava/net/InetAddress;->ipaddress:[B

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/net/InetAddress;->bytesToInt([BI)I

    move-result v0

    .line 367
    if-nez v0, :cond_1b

    .line 368
    invoke-static {v0}, Ljava/net/InetAddress;->inetNtoaImpl(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    .line 390
    .end local v0           #address:I
    :goto_1a
    return-object v3

    .line 371
    .restart local v0       #address:I
    :cond_1b
    iget-object v3, p0, Ljava/net/InetAddress;->ipaddress:[B

    invoke-static {v3}, Ljava/net/InetAddress;->getHostByAddrImpl([B)Ljava/net/InetAddress;

    move-result-object v3

    iget-object v3, v3, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    iput-object v3, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    .line 372
    iget-object v3, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    const-string v4, "localhost"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    iget-object v3, p0, Ljava/net/InetAddress;->ipaddress:[B

    array-length v3, v3

    if-ne v3, v5, :cond_4b

    const v3, 0x7f000001

    if-eq v0, v3, :cond_4b

    .line 374
    invoke-static {v0}, Ljava/net/InetAddress;->inetNtoaImpl(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;
    :try_end_3f
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_3f} :catch_40

    goto :goto_1a

    .line 377
    .end local v0           #address:I
    :catch_40
    move-exception v3

    move-object v1, v3

    .line 378
    .local v1, e:Ljava/net/UnknownHostException;
    iget-object v3, p0, Ljava/net/InetAddress;->ipaddress:[B

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Inet6Util;->createIPAddrStringFromByteArray([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    goto :goto_1a

    .line 381
    .end local v1           #e:Ljava/net/UnknownHostException;
    :cond_4b
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 384
    .local v2, security:Ljava/lang/SecurityManager;
    if-eqz v2, :cond_5f

    :try_start_51
    iget-object v3, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/InetAddress;->isHostName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 385
    iget-object v3, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_5f
    .catch Ljava/lang/SecurityException; {:try_start_51 .. :try_end_5f} :catch_62

    .line 390
    :cond_5f
    iget-object v3, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    goto :goto_1a

    .line 387
    :catch_62
    move-exception v3

    move-object v1, v3

    .line 388
    .local v1, e:Ljava/lang/SecurityException;
    iget-object v3, p0, Ljava/net/InetAddress;->ipaddress:[B

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Inet6Util;->createIPAddrStringFromByteArray([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_1a
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 462
    iget-object v0, p0, Ljava/net/InetAddress;->ipaddress:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/net/InetAddress;->bytesToInt([BI)I

    move-result v0

    return v0
.end method

.method public isAnyLocalAddress()Z
    .registers 2

    .prologue
    .line 940
    const/4 v0, 0x0

    return v0
.end method

.method public isLinkLocalAddress()Z
    .registers 2

    .prologue
    .line 806
    const/4 v0, 0x0

    return v0
.end method

.method public isLoopbackAddress()Z
    .registers 2

    .prologue
    .line 787
    const/4 v0, 0x0

    return v0
.end method

.method public isMCGlobal()Z
    .registers 2

    .prologue
    .line 846
    const/4 v0, 0x0

    return v0
.end method

.method public isMCLinkLocal()Z
    .registers 2

    .prologue
    .line 886
    const/4 v0, 0x0

    return v0
.end method

.method public isMCNodeLocal()Z
    .registers 2

    .prologue
    .line 866
    const/4 v0, 0x0

    return v0
.end method

.method public isMCOrgLocal()Z
    .registers 2

    .prologue
    .line 928
    const/4 v0, 0x0

    return v0
.end method

.method public isMCSiteLocal()Z
    .registers 2

    .prologue
    .line 907
    const/4 v0, 0x0

    return v0
.end method

.method public isMulticastAddress()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 473
    iget-object v0, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v0, v0, 0x4

    const/16 v1, 0xe

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    move v0, v2

    goto :goto_e
.end method

.method public isReachable(I)Z
    .registers 4
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 960
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljava/net/InetAddress;->isReachable(Ljava/net/NetworkInterface;II)Z

    move-result v0

    return v0
.end method

.method public isReachable(Ljava/net/NetworkInterface;II)Z
    .registers 7
    .parameter "netif"
    .parameter "ttl"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 986
    if-ltz p2, :cond_4

    if-gez p3, :cond_10

    .line 987
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "K0051"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 989
    :cond_10
    const/4 v0, 0x0

    .line 990
    .local v0, reachable:Z
    if-nez p1, :cond_1a

    .line 995
    const/4 v1, 0x0

    invoke-direct {p0, p0, v1, p3}, Ljava/net/InetAddress;->isReachableByTCP(Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z

    move-result v0

    :goto_18
    move v1, v0

    .line 1013
    :goto_19
    return v1

    .line 1000
    :cond_1a
    iget-object v1, p1, Ljava/net/NetworkInterface;->addresses:[Ljava/net/InetAddress;

    if-nez v1, :cond_20

    .line 1001
    const/4 v1, 0x0

    goto :goto_19

    .line 1009
    :cond_20
    invoke-direct {p0, p1, p2, p3}, Ljava/net/InetAddress;->isReachableByMultiThread(Ljava/net/NetworkInterface;II)Z

    move-result v0

    goto :goto_18
.end method

.method public isSiteLocalAddress()Z
    .registers 2

    .prologue
    .line 825
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    if-nez v1, :cond_22

    const-string v1, ""

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_22
    iget-object v1, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    goto :goto_b
.end method
