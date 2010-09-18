.class Lcom/android/server/WifiWatchdogService$DnsPinger;
.super Ljava/lang/Object;
.source "WifiWatchdogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiWatchdogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DnsPinger"
.end annotation


# static fields
.field private static final DNS_PORT:I = 0x35

.field private static final DNS_QUERY_BASE_SIZE:I = 0x21

.field private static sRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1216
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/server/WifiWatchdogService$DnsPinger;->sRandom:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fillQuery([B)V
    .registers 6
    .parameter "buf"

    .prologue
    const/16 v4, 0x100

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1285
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v1, p0

    if-ge v0, v1, :cond_d

    aput-byte v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1290
    :cond_d
    sget-object v1, Lcom/android/server/WifiWatchdogService$DnsPinger;->sRandom:Ljava/util/Random;

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p0, v2

    .line 1291
    sget-object v1, Lcom/android/server/WifiWatchdogService$DnsPinger;->sRandom:Ljava/util/Random;

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p0, v3

    .line 1294
    const/4 v1, 0x2

    aput-byte v3, p0, v1

    .line 1297
    const/4 v1, 0x5

    aput-byte v3, p0, v1

    .line 1302
    const/16 v1, 0xc

    const-string v2, "www"

    invoke-static {p0, v1, v2}, Lcom/android/server/WifiWatchdogService$DnsPinger;->writeString([BILjava/lang/String;)V

    .line 1305
    const/16 v1, 0x10

    const-string v2, "android"

    invoke-static {p0, v1, v2}, Lcom/android/server/WifiWatchdogService$DnsPinger;->writeString([BILjava/lang/String;)V

    .line 1308
    const/16 v1, 0x18

    const-string v2, "com"

    invoke-static {p0, v1, v2}, Lcom/android/server/WifiWatchdogService$DnsPinger;->writeString([BILjava/lang/String;)V

    .line 1311
    const/16 v1, 0x1e

    aput-byte v3, p0, v1

    .line 1314
    const/16 v1, 0x20

    aput-byte v3, p0, v1

    .line 1315
    return-void
.end method

.method static isDnsReachable(II)Z
    .registers 13
    .parameter "dns"
    .parameter "timeout"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1220
    :try_start_2
    new-instance v6, Ljava/net/DatagramSocket;

    invoke-direct {v6}, Ljava/net/DatagramSocket;-><init>()V

    .line 1223
    .local v6, socket:Ljava/net/DatagramSocket;
    invoke-virtual {v6, p1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 1225
    const/16 v7, 0x21

    new-array v0, v7, [B

    .line 1226
    .local v0, buf:[B
    invoke-static {v0}, Lcom/android/server/WifiWatchdogService$DnsPinger;->fillQuery([B)V

    .line 1229
    const/4 v7, 0x4

    new-array v4, v7, [B

    .line 1230
    .local v4, parts:[B
    const/4 v7, 0x0

    and-int/lit16 v8, p0, 0xff

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 1231
    const/4 v7, 0x1

    shr-int/lit8 v8, p0, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 1232
    const/4 v7, 0x2

    shr-int/lit8 v8, p0, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 1233
    const/4 v7, 0x3

    shr-int/lit8 v8, p0, 0x18

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 1235
    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    .line 1236
    .local v1, dnsAddress:Ljava/net/InetAddress;
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v7, v0

    const/16 v8, 0x35

    invoke-direct {v3, v0, v7, v1, v8}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 1238
    .local v3, packet:Ljava/net/DatagramPacket;
    invoke-virtual {v6, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 1241
    new-instance v5, Ljava/net/DatagramPacket;

    array-length v7, v0

    invoke-direct {v5, v0, v7}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 1242
    .local v5, replyPacket:Ljava/net/DatagramPacket;
    invoke-virtual {v6, v5}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_4a
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_4a} :catch_4c
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_4a} :catch_50
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_4a} :catch_54
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_4a} :catch_58
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4a} :catch_5c

    move v7, v10

    .line 1272
    .end local v0           #buf:[B
    .end local v1           #dnsAddress:Ljava/net/InetAddress;
    .end local v3           #packet:Ljava/net/DatagramPacket;
    .end local v4           #parts:[B
    .end local v5           #replyPacket:Ljava/net/DatagramPacket;
    .end local v6           #socket:Ljava/net/DatagramSocket;
    :goto_4b
    return v7

    .line 1247
    :catch_4c
    move-exception v7

    move-object v2, v7

    .local v2, e:Ljava/net/SocketException;
    move v7, v9

    .line 1251
    goto :goto_4b

    .line 1253
    .end local v2           #e:Ljava/net/SocketException;
    :catch_50
    move-exception v7

    move-object v2, v7

    .local v2, e:Ljava/net/UnknownHostException;
    move v7, v9

    .line 1257
    goto :goto_4b

    .line 1259
    .end local v2           #e:Ljava/net/UnknownHostException;
    :catch_54
    move-exception v7

    move-object v2, v7

    .local v2, e:Ljava/net/SocketTimeoutException;
    move v7, v9

    .line 1260
    goto :goto_4b

    .line 1262
    .end local v2           #e:Ljava/net/SocketTimeoutException;
    :catch_58
    move-exception v7

    move-object v2, v7

    .local v2, e:Ljava/io/IOException;
    move v7, v9

    .line 1266
    goto :goto_4b

    .line 1268
    .end local v2           #e:Ljava/io/IOException;
    :catch_5c
    move-exception v7

    move-object v2, v7

    .line 1270
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "WifiWatchdogService"

    const-string v8, "DnsPinger.isReachable got an unknown exception"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v7, v9

    .line 1272
    goto :goto_4b
.end method

.method private static writeString([BILjava/lang/String;)V
    .registers 7
    .parameter "buf"
    .parameter "startPos"
    .parameter "string"

    .prologue
    .line 1318
    move v1, p1

    .line 1321
    .local v1, pos:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #pos:I
    .local v2, pos:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    .line 1322
    const/4 v0, 0x0

    .local v0, i:I
    move v1, v2

    .end local v2           #pos:I
    .restart local v1       #pos:I
    :goto_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1f

    .line 1323
    add-int/lit8 v2, v1, 0x1

    .end local v1           #pos:I
    .restart local v2       #pos:I
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    .line 1322
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .end local v2           #pos:I
    .restart local v1       #pos:I
    goto :goto_c

    .line 1325
    :cond_1f
    return-void
.end method
