.class public final Ljava/net/Inet4Address;
.super Ljava/net/InetAddress;
.source "Inet4Address.java"


# static fields
.field private static final serialVersionUID:J = 0x2d9b57af9fe3ebdbL


# direct methods
.method constructor <init>([B)V
    .registers 2
    .parameter "address"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 39
    iput-object p1, p0, Ljava/net/Inet4Address;->ipaddress:[B

    .line 40
    return-void
.end method

.method constructor <init>([BLjava/lang/String;)V
    .registers 3
    .parameter "address"
    .parameter "name"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 43
    iput-object p1, p0, Ljava/net/Inet4Address;->ipaddress:[B

    .line 44
    iput-object p2, p0, Ljava/net/Inet4Address;->hostName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Ljava/net/InetAddress;

    iget-object v1, p0, Ljava/net/Inet4Address;->ipaddress:[B

    iget-object v2, p0, Ljava/net/Inet4Address;->hostName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/net/InetAddress;-><init>([BLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "obj"

    .prologue
    .line 269
    invoke-super {p0, p1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .registers 5

    .prologue
    .line 236
    const-string v0, ""

    .line 237
    .local v0, hostAddress:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    const/4 v2, 0x4

    if-ge v1, v2, :cond_36

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    const/4 v2, 0x3

    if-eq v1, v2, :cond_33

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 243
    :cond_36
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 254
    iget-object v0, p0, Ljava/net/Inet4Address;->ipaddress:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/net/InetAddress;->bytesToInt([BI)I

    move-result v0

    return v0
.end method

.method public isAnyLocalAddress()Z
    .registers 3

    .prologue
    .line 70
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Ljava/net/Inet4Address;->ipaddress:[B

    array-length v1, v1

    if-ge v0, v1, :cond_11

    .line 71
    iget-object v1, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_e

    .line 72
    const/4 v1, 0x0

    .line 75
    :goto_d
    return v1

    .line 70
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    :cond_11
    const/4 v1, 0x1

    goto :goto_d
.end method

.method public isLinkLocalAddress()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    iget-object v0, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xfe

    if-ne v0, v1, :cond_18

    move v0, v3

    :goto_17
    return v0

    :cond_18
    move v0, v2

    goto :goto_17
.end method

.method public isLoopbackAddress()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 88
    iget-object v0, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    move v0, v2

    goto :goto_c
.end method

.method public isMCGlobal()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 144
    invoke-virtual {p0}, Ljava/net/Inet4Address;->isMulticastAddress()Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v3

    .line 168
    :goto_8
    return v1

    .line 148
    :cond_9
    iget-object v1, p0, Ljava/net/Inet4Address;->ipaddress:[B

    invoke-static {v1, v3}, Ljava/net/InetAddress;->bytesToInt([BI)I

    move-result v0

    .line 155
    .local v0, address:I
    ushr-int/lit8 v1, v0, 0x8

    const v2, 0xe00001

    if-ge v1, v2, :cond_18

    move v1, v3

    .line 156
    goto :goto_8

    .line 164
    :cond_18
    ushr-int/lit8 v1, v0, 0x18

    const/16 v2, 0xee

    if-le v1, v2, :cond_20

    move v1, v3

    .line 165
    goto :goto_8

    .line 168
    :cond_20
    const/4 v1, 0x1

    goto :goto_8
.end method

.method public isMCLinkLocal()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 195
    iget-object v0, p0, Ljava/net/Inet4Address;->ipaddress:[B

    invoke-static {v0, v2}, Ljava/net/InetAddress;->bytesToInt([BI)I

    move-result v0

    ushr-int/lit8 v0, v0, 0x8

    const/high16 v1, 0xe0

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    move v0, v2

    goto :goto_e
.end method

.method public isMCNodeLocal()Z
    .registers 2

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public isMCOrgLocal()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 224
    iget-object v1, p0, Ljava/net/Inet4Address;->ipaddress:[B

    invoke-static {v1, v2}, Ljava/net/InetAddress;->bytesToInt([BI)I

    move-result v1

    ushr-int/lit8 v0, v1, 0x10

    .line 225
    .local v0, prefix:I
    const v1, 0xefc0

    if-lt v0, v1, :cond_15

    const v1, 0xefc3

    if-gt v0, v1, :cond_15

    const/4 v1, 0x1

    :goto_14
    return v1

    :cond_15
    move v1, v2

    goto :goto_14
.end method

.method public isMCSiteLocal()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Ljava/net/Inet4Address;->ipaddress:[B

    invoke-static {v0, v2}, Ljava/net/InetAddress;->bytesToInt([BI)I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    const v1, 0xefff

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    move v0, v2

    goto :goto_f
.end method

.method public isMulticastAddress()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 57
    iget-object v0, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xf0

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    move v0, v2

    goto :goto_c
.end method

.method public isSiteLocalAddress()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    iget-object v0, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3e

    iget-object v0, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xac

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xf

    if-le v0, v1, :cond_2a

    iget-object v0, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x20

    if-lt v0, v1, :cond_3e

    :cond_2a
    iget-object v0, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_40

    iget-object v0, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_40

    :cond_3e
    move v0, v3

    :goto_3f
    return v0

    :cond_40
    move v0, v2

    goto :goto_3f
.end method
