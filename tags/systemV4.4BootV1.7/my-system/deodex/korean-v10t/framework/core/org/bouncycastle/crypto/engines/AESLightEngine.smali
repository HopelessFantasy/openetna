.class public Lorg/bouncycastle/crypto/engines/AESLightEngine;
.super Ljava/lang/Object;
.source "AESLightEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final S:[B = null

.field private static final Si:[B = null

.field private static final m1:I = -0x7f7f7f80

.field private static final m2:I = 0x7f7f7f7f

.field private static final m3:I = 0x1b

.field private static final rcon:[I


# instance fields
.field private C0:I

.field private C1:I

.field private C2:I

.field private C3:I

.field private ROUNDS:I

.field private WorkingKey:[[I

.field private forEncryption:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x100

    .line 37
    new-array v0, v1, [B

    fill-array-data v0, :array_1a

    sput-object v0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    .line 73
    new-array v0, v1, [B

    fill-array-data v0, :array_9e

    sput-object v0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    .line 109
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_122

    sput-object v0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->rcon:[I

    return-void

    .line 37
    :array_1a
    .array-data 0x1
        0x63t
        0x7ct
        0x77t
        0x7bt
        0xf2t
        0x6bt
        0x6ft
        0xc5t
        0x30t
        0x1t
        0x67t
        0x2bt
        0xfet
        0xd7t
        0xabt
        0x76t
        0xcat
        0x82t
        0xc9t
        0x7dt
        0xfat
        0x59t
        0x47t
        0xf0t
        0xadt
        0xd4t
        0xa2t
        0xaft
        0x9ct
        0xa4t
        0x72t
        0xc0t
        0xb7t
        0xfdt
        0x93t
        0x26t
        0x36t
        0x3ft
        0xf7t
        0xcct
        0x34t
        0xa5t
        0xe5t
        0xf1t
        0x71t
        0xd8t
        0x31t
        0x15t
        0x4t
        0xc7t
        0x23t
        0xc3t
        0x18t
        0x96t
        0x5t
        0x9at
        0x7t
        0x12t
        0x80t
        0xe2t
        0xebt
        0x27t
        0xb2t
        0x75t
        0x9t
        0x83t
        0x2ct
        0x1at
        0x1bt
        0x6et
        0x5at
        0xa0t
        0x52t
        0x3bt
        0xd6t
        0xb3t
        0x29t
        0xe3t
        0x2ft
        0x84t
        0x53t
        0xd1t
        0x0t
        0xedt
        0x20t
        0xfct
        0xb1t
        0x5bt
        0x6at
        0xcbt
        0xbet
        0x39t
        0x4at
        0x4ct
        0x58t
        0xcft
        0xd0t
        0xeft
        0xaat
        0xfbt
        0x43t
        0x4dt
        0x33t
        0x85t
        0x45t
        0xf9t
        0x2t
        0x7ft
        0x50t
        0x3ct
        0x9ft
        0xa8t
        0x51t
        0xa3t
        0x40t
        0x8ft
        0x92t
        0x9dt
        0x38t
        0xf5t
        0xbct
        0xb6t
        0xdat
        0x21t
        0x10t
        0xfft
        0xf3t
        0xd2t
        0xcdt
        0xct
        0x13t
        0xect
        0x5ft
        0x97t
        0x44t
        0x17t
        0xc4t
        0xa7t
        0x7et
        0x3dt
        0x64t
        0x5dt
        0x19t
        0x73t
        0x60t
        0x81t
        0x4ft
        0xdct
        0x22t
        0x2at
        0x90t
        0x88t
        0x46t
        0xeet
        0xb8t
        0x14t
        0xdet
        0x5et
        0xbt
        0xdbt
        0xe0t
        0x32t
        0x3at
        0xat
        0x49t
        0x6t
        0x24t
        0x5ct
        0xc2t
        0xd3t
        0xact
        0x62t
        0x91t
        0x95t
        0xe4t
        0x79t
        0xe7t
        0xc8t
        0x37t
        0x6dt
        0x8dt
        0xd5t
        0x4et
        0xa9t
        0x6ct
        0x56t
        0xf4t
        0xeat
        0x65t
        0x7at
        0xaet
        0x8t
        0xbat
        0x78t
        0x25t
        0x2et
        0x1ct
        0xa6t
        0xb4t
        0xc6t
        0xe8t
        0xddt
        0x74t
        0x1ft
        0x4bt
        0xbdt
        0x8bt
        0x8at
        0x70t
        0x3et
        0xb5t
        0x66t
        0x48t
        0x3t
        0xf6t
        0xet
        0x61t
        0x35t
        0x57t
        0xb9t
        0x86t
        0xc1t
        0x1dt
        0x9et
        0xe1t
        0xf8t
        0x98t
        0x11t
        0x69t
        0xd9t
        0x8et
        0x94t
        0x9bt
        0x1et
        0x87t
        0xe9t
        0xcet
        0x55t
        0x28t
        0xdft
        0x8ct
        0xa1t
        0x89t
        0xdt
        0xbft
        0xe6t
        0x42t
        0x68t
        0x41t
        0x99t
        0x2dt
        0xft
        0xb0t
        0x54t
        0xbbt
        0x16t
    .end array-data

    .line 73
    :array_9e
    .array-data 0x1
        0x52t
        0x9t
        0x6at
        0xd5t
        0x30t
        0x36t
        0xa5t
        0x38t
        0xbft
        0x40t
        0xa3t
        0x9et
        0x81t
        0xf3t
        0xd7t
        0xfbt
        0x7ct
        0xe3t
        0x39t
        0x82t
        0x9bt
        0x2ft
        0xfft
        0x87t
        0x34t
        0x8et
        0x43t
        0x44t
        0xc4t
        0xdet
        0xe9t
        0xcbt
        0x54t
        0x7bt
        0x94t
        0x32t
        0xa6t
        0xc2t
        0x23t
        0x3dt
        0xeet
        0x4ct
        0x95t
        0xbt
        0x42t
        0xfat
        0xc3t
        0x4et
        0x8t
        0x2et
        0xa1t
        0x66t
        0x28t
        0xd9t
        0x24t
        0xb2t
        0x76t
        0x5bt
        0xa2t
        0x49t
        0x6dt
        0x8bt
        0xd1t
        0x25t
        0x72t
        0xf8t
        0xf6t
        0x64t
        0x86t
        0x68t
        0x98t
        0x16t
        0xd4t
        0xa4t
        0x5ct
        0xcct
        0x5dt
        0x65t
        0xb6t
        0x92t
        0x6ct
        0x70t
        0x48t
        0x50t
        0xfdt
        0xedt
        0xb9t
        0xdat
        0x5et
        0x15t
        0x46t
        0x57t
        0xa7t
        0x8dt
        0x9dt
        0x84t
        0x90t
        0xd8t
        0xabt
        0x0t
        0x8ct
        0xbct
        0xd3t
        0xat
        0xf7t
        0xe4t
        0x58t
        0x5t
        0xb8t
        0xb3t
        0x45t
        0x6t
        0xd0t
        0x2ct
        0x1et
        0x8ft
        0xcat
        0x3ft
        0xft
        0x2t
        0xc1t
        0xaft
        0xbdt
        0x3t
        0x1t
        0x13t
        0x8at
        0x6bt
        0x3at
        0x91t
        0x11t
        0x41t
        0x4ft
        0x67t
        0xdct
        0xeat
        0x97t
        0xf2t
        0xcft
        0xcet
        0xf0t
        0xb4t
        0xe6t
        0x73t
        0x96t
        0xact
        0x74t
        0x22t
        0xe7t
        0xadt
        0x35t
        0x85t
        0xe2t
        0xf9t
        0x37t
        0xe8t
        0x1ct
        0x75t
        0xdft
        0x6et
        0x47t
        0xf1t
        0x1at
        0x71t
        0x1dt
        0x29t
        0xc5t
        0x89t
        0x6ft
        0xb7t
        0x62t
        0xet
        0xaat
        0x18t
        0xbet
        0x1bt
        0xfct
        0x56t
        0x3et
        0x4bt
        0xc6t
        0xd2t
        0x79t
        0x20t
        0x9at
        0xdbt
        0xc0t
        0xfet
        0x78t
        0xcdt
        0x5at
        0xf4t
        0x1ft
        0xddt
        0xa8t
        0x33t
        0x88t
        0x7t
        0xc7t
        0x31t
        0xb1t
        0x12t
        0x10t
        0x59t
        0x27t
        0x80t
        0xect
        0x5ft
        0x60t
        0x51t
        0x7ft
        0xa9t
        0x19t
        0xb5t
        0x4at
        0xdt
        0x2dt
        0xe5t
        0x7at
        0x9ft
        0x93t
        0xc9t
        0x9ct
        0xeft
        0xa0t
        0xe0t
        0x3bt
        0x4dt
        0xaet
        0x2at
        0xf5t
        0xb0t
        0xc8t
        0xebt
        0xbbt
        0x3ct
        0x83t
        0x53t
        0x99t
        0x61t
        0x17t
        0x2bt
        0x4t
        0x7et
        0xbat
        0x77t
        0xd6t
        0x26t
        0xe1t
        0x69t
        0x14t
        0x63t
        0x55t
        0x21t
        0xct
        0x7dt
    .end array-data

    .line 109
    :array_122
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0xd8t 0x0t 0x0t 0x0t
        0xabt 0x0t 0x0t 0x0t
        0x4dt 0x0t 0x0t 0x0t
        0x9at 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0xbct 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0xc6t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xb3t 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0xeft 0x0t 0x0t 0x0t
        0xc5t 0x0t 0x0t 0x0t
        0x91t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    const/4 v0, 0x0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    .line 243
    return-void
.end method

.method private FFmulX(I)I
    .registers 4
    .parameter "x"

    .prologue
    .line 128
    const v0, 0x7f7f7f7f

    and-int/2addr v0, p1

    shl-int/lit8 v0, v0, 0x1

    const v1, -0x7f7f7f80

    and-int/2addr v1, p1

    ushr-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x1b

    xor-int/2addr v0, v1

    return v0
.end method

.method private final decryptBlock([[I)V
    .registers 15
    .parameter "KW"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 411
    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    aget-object v7, p1, v7

    aget v7, v7, v10

    xor-int/2addr v6, v7

    iput v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    .line 412
    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    aget-object v7, p1, v7

    aget v7, v7, v9

    xor-int/2addr v6, v7

    iput v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    .line 413
    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    aget-object v7, p1, v7

    aget v7, v7, v11

    xor-int/2addr v6, v7

    iput v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    .line 414
    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    aget-object v7, p1, v7

    aget v7, v7, v12

    xor-int/2addr v6, v7

    iput v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    .line 416
    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    sub-int v0, v6, v9

    .local v0, r:I
    move v1, v0

    .end local v0           #r:I
    .local v1, r:I
    :goto_35
    if-le v1, v9, :cond_219

    .line 418
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    aget-object v7, p1, v1

    aget v7, v7, v10

    xor-int v2, v6, v7

    .line 419
    .local v2, r0:I
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    aget-object v7, p1, v1

    aget v7, v7, v9

    xor-int v3, v6, v7

    .line 420
    .local v3, r1:I
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    aget-object v7, p1, v1

    aget v7, v7, v11

    xor-int v4, v6, v7

    .line 421
    .local v4, r2:I
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    sub-int v0, v1, v9

    .end local v1           #r:I
    .restart local v0       #r:I
    aget-object v7, p1, v1

    aget v7, v7, v12

    xor-int v5, v6, v7

    .line 422
    .local v5, r3:I
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v7, v2, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v3, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    aget-object v7, p1, v0

    aget v7, v7, v10

    xor-int/2addr v6, v7

    iput v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    .line 423
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v7, v3, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v4, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    aget-object v7, p1, v0

    aget v7, v7, v9

    xor-int/2addr v6, v7

    iput v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    .line 424
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v7, v4, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v5, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    aget-object v7, p1, v0

    aget v7, v7, v11

    xor-int/2addr v6, v7

    iput v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    .line 425
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v7, v5, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v3, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    sub-int v1, v0, v9

    .end local v0           #r:I
    .restart local v1       #r:I
    aget-object v7, p1, v0

    aget v7, v7, v12

    xor-int/2addr v6, v7

    iput v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    goto/16 :goto_35

    .line 428
    .end local v2           #r0:I
    .end local v3           #r1:I
    .end local v4           #r2:I
    .end local v5           #r3:I
    :cond_219
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    aget-object v7, p1, v1

    aget v7, v7, v10

    xor-int v2, v6, v7

    .line 429
    .restart local v2       #r0:I
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    aget-object v7, p1, v1

    aget v7, v7, v9

    xor-int v3, v6, v7

    .line 430
    .restart local v3       #r1:I
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    aget-object v7, p1, v1

    aget v7, v7, v11

    xor-int v4, v6, v7

    .line 431
    .restart local v4       #r2:I
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    sub-int v0, v1, v9

    .end local v1           #r:I
    .restart local v0       #r:I
    aget-object v7, p1, v1

    aget v7, v7, v12

    xor-int v5, v6, v7

    .line 435
    .restart local v5       #r3:I
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v7, v2, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v3, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v10

    aget v7, v7, v10

    xor-int/2addr v6, v7

    iput v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    .line 436
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v7, v3, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v4, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v10

    aget v7, v7, v9

    xor-int/2addr v6, v7

    iput v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    .line 437
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v7, v4, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v5, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v10

    aget v7, v7, v11

    xor-int/2addr v6, v7

    iput v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    .line 438
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v7, v5, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v3, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v10

    aget v7, v7, v12

    xor-int/2addr v6, v7

    iput v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    .line 439
    return-void
.end method

.method private encryptBlock([[I)V
    .registers 15
    .parameter "KW"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 376
    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    aget-object v7, p1, v9

    aget v7, v7, v9

    xor-int/2addr v6, v7

    iput v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    .line 377
    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    aget-object v7, p1, v9

    aget v7, v7, v10

    xor-int/2addr v6, v7

    iput v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    .line 378
    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    aget-object v7, p1, v9

    aget v7, v7, v11

    xor-int/2addr v6, v7

    iput v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    .line 379
    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    aget-object v7, p1, v9

    aget v7, v7, v12

    xor-int/2addr v6, v7

    iput v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    .line 381
    const/4 v0, 0x1

    .local v0, r:I
    :goto_29
    iget v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    sub-int/2addr v6, v10

    if-ge v0, v6, :cond_210

    .line 383
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    aget-object v7, p1, v0

    aget v7, v7, v9

    xor-int v2, v6, v7

    .line 384
    .local v2, r0:I
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    aget-object v7, p1, v0

    aget v7, v7, v10

    xor-int v3, v6, v7

    .line 385
    .local v3, r1:I
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    aget-object v7, p1, v0

    aget v7, v7, v11

    xor-int v4, v6, v7

    .line 386
    .local v4, r2:I
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #r:I
    .local v1, r:I
    aget-object v7, p1, v0

    aget v7, v7, v12

    xor-int v5, v6, v7

    .line 387
    .local v5, r3:I
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v7, v2, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v5, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    aget-object v7, p1, v1

    aget v7, v7, v9

    xor-int/2addr v6, v7

    iput v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    .line 388
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v7, v3, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    aget-object v7, p1, v1

    aget v7, v7, v10

    xor-int/2addr v6, v7

    iput v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    .line 389
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v7, v4, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v3, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    aget-object v7, p1, v1

    aget v7, v7, v11

    xor-int/2addr v6, v7

    iput v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    .line 390
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v7, v5, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v3, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v4, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    add-int/lit8 v0, v1, 0x1

    .end local v1           #r:I
    .restart local v0       #r:I
    aget-object v7, p1, v1

    aget v7, v7, v12

    xor-int/2addr v6, v7

    iput v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    goto/16 :goto_29

    .line 393
    .end local v2           #r0:I
    .end local v3           #r1:I
    .end local v4           #r2:I
    .end local v5           #r3:I
    :cond_210
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    aget-object v7, p1, v0

    aget v7, v7, v9

    xor-int v2, v6, v7

    .line 394
    .restart local v2       #r0:I
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    aget-object v7, p1, v0

    aget v7, v7, v10

    xor-int v3, v6, v7

    .line 395
    .restart local v3       #r1:I
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    aget-object v7, p1, v0

    aget v7, v7, v11

    xor-int v4, v6, v7

    .line 396
    .restart local v4       #r2:I
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #r:I
    .restart local v1       #r:I
    aget-object v7, p1, v0

    aget v7, v7, v12

    xor-int v5, v6, v7

    .line 400
    .restart local v5       #r3:I
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v7, v2, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v5, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    aget v7, v7, v9

    xor-int/2addr v6, v7

    iput v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    .line 401
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v7, v3, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    aget v7, v7, v10

    xor-int/2addr v6, v7

    iput v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    .line 402
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v7, v4, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v3, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    aget v7, v7, v11

    xor-int/2addr v6, v7

    iput v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    .line 403
    sget-object v6, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v7, v5, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v3, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v4, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    aget v7, v7, v12

    xor-int/2addr v6, v7

    iput v6, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    .line 405
    return-void
.end method

.method private generateWorkingKey([BZ)[[I
    .registers 14
    .parameter "key"
    .parameter "forEncryption"

    .prologue
    .line 173
    array-length v7, p1

    div-int/lit8 v0, v7, 0x4

    .line 176
    .local v0, KC:I
    const/4 v7, 0x4

    if-eq v0, v7, :cond_d

    const/4 v7, 0x6

    if-eq v0, v7, :cond_d

    const/16 v7, 0x8

    if-ne v0, v7, :cond_12

    :cond_d
    mul-int/lit8 v7, v0, 0x4

    array-length v8, p1

    if-eq v7, v8, :cond_1a

    .line 178
    :cond_12
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Key length not 128/192/256 bits."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 181
    :cond_1a
    add-int/lit8 v7, v0, 0x6

    iput v7, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    .line 182
    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x4

    filled-new-array {v7, v8}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 188
    .local v1, W:[[I
    const/4 v5, 0x0

    .line 189
    .local v5, t:I
    const/4 v2, 0x0

    .line 190
    .local v2, i:I
    :goto_31
    array-length v7, p1

    if-ge v2, v7, :cond_5e

    .line 192
    shr-int/lit8 v7, v5, 0x2

    aget-object v7, v1, v7

    and-int/lit8 v8, v5, 0x3

    aget-byte v9, p1, v2

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v10, v2, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    add-int/lit8 v10, v2, 0x2

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    add-int/lit8 v10, v2, 0x3

    aget-byte v10, p1, v10

    shl-int/lit8 v10, v10, 0x18

    or-int/2addr v9, v10

    aput v9, v7, v8

    .line 193
    add-int/lit8 v2, v2, 0x4

    .line 194
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 201
    :cond_5e
    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    add-int/lit8 v7, v7, 0x1

    shl-int/lit8 v4, v7, 0x2

    .line 202
    .local v4, k:I
    move v2, v0

    :goto_65
    if-ge v2, v4, :cond_b2

    .line 204
    const/4 v7, 0x1

    sub-int v7, v2, v7

    shr-int/lit8 v7, v7, 0x2

    aget-object v7, v1, v7

    const/4 v8, 0x1

    sub-int v8, v2, v8

    and-int/lit8 v8, v8, 0x3

    aget v6, v7, v8

    .line 205
    .local v6, temp:I
    rem-int v7, v2, v0

    if-nez v7, :cond_a5

    .line 207
    const/16 v7, 0x8

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v7

    invoke-direct {p0, v7}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->subWord(I)I

    move-result v7

    sget-object v8, Lorg/bouncycastle/crypto/engines/AESLightEngine;->rcon:[I

    div-int v9, v2, v0

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    aget v8, v8, v9

    xor-int v6, v7, v8

    .line 214
    :cond_8d
    :goto_8d
    shr-int/lit8 v7, v2, 0x2

    aget-object v7, v1, v7

    and-int/lit8 v8, v2, 0x3

    sub-int v9, v2, v0

    shr-int/lit8 v9, v9, 0x2

    aget-object v9, v1, v9

    sub-int v10, v2, v0

    and-int/lit8 v10, v10, 0x3

    aget v9, v9, v10

    xor-int/2addr v9, v6

    aput v9, v7, v8

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    .line 209
    :cond_a5
    const/4 v7, 0x6

    if-le v0, v7, :cond_8d

    rem-int v7, v2, v0

    const/4 v8, 0x4

    if-ne v7, v8, :cond_8d

    .line 211
    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->subWord(I)I

    move-result v6

    goto :goto_8d

    .line 217
    .end local v6           #temp:I
    :cond_b2
    if-nez p2, :cond_cf

    .line 219
    const/4 v3, 0x1

    .local v3, j:I
    :goto_b5
    iget v7, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    if-ge v3, v7, :cond_cf

    .line 221
    const/4 v2, 0x0

    :goto_ba
    const/4 v7, 0x4

    if-ge v2, v7, :cond_cc

    .line 223
    aget-object v7, v1, v3

    aget-object v8, v1, v3

    aget v8, v8, v2

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v8

    aput v8, v7, v2

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_ba

    .line 219
    :cond_cc
    add-int/lit8 v3, v3, 0x1

    goto :goto_b5

    .line 228
    .end local v3           #j:I
    :cond_cf
    return-object v1
.end method

.method private inv_mcol(I)I
    .registers 9
    .parameter "x"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->FFmulX(I)I

    move-result v0

    .line 150
    .local v0, f2:I
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->FFmulX(I)I

    move-result v1

    .line 151
    .local v1, f4:I
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->FFmulX(I)I

    move-result v2

    .line 152
    .local v2, f8:I
    xor-int v3, p1, v2

    .line 154
    .local v3, f9:I
    xor-int v4, v0, v1

    xor-int/2addr v4, v2

    xor-int v5, v0, v3

    const/16 v6, 0x8

    invoke-direct {p0, v5, v6}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v5

    xor-int/2addr v4, v5

    xor-int v5, v1, v3

    const/16 v6, 0x10

    invoke-direct {p0, v5, v6}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v5

    xor-int/2addr v4, v5

    const/16 v5, 0x18

    invoke-direct {p0, v3, v5}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v5

    xor-int/2addr v4, v5

    return v4
.end method

.method private mcol(I)I
    .registers 5
    .parameter "x"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->FFmulX(I)I

    move-result v0

    .line 144
    .local v0, f2:I
    xor-int v1, p1, v0

    const/16 v2, 0x8

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v1

    xor-int/2addr v1, v0

    const/16 v2, 0x10

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v2

    xor-int/2addr v1, v2

    const/16 v2, 0x18

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v2

    xor-int/2addr v1, v2

    return v1
.end method

.method private final packBlock([BI)V
    .registers 6
    .parameter "bytes"
    .parameter "off"

    .prologue
    .line 349
    move v0, p2

    .line 351
    .local v0, index:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 352
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 353
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 354
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 356
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 357
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 358
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 359
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 361
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 362
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 363
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 364
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 366
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 367
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 368
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 369
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 370
    return-void
.end method

.method private shift(II)I
    .registers 5
    .parameter "r"
    .parameter "shift"

    .prologue
    .line 117
    ushr-int v0, p1, p2

    neg-int v1, p2

    shl-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private subWord(I)I
    .registers 5
    .parameter "x"

    .prologue
    .line 160
    sget-object v0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v1, p1, 0xff

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    sget-object v1, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    sget-object v1, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sget-object v1, Lorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private final unpackBlock([BI)V
    .registers 7
    .parameter "bytes"
    .parameter "off"

    .prologue
    .line 322
    move v0, p2

    .line 324
    .local v0, index:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    .line 325
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    .line 326
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    .line 327
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    .line 329
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    .line 330
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    .line 331
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    .line 332
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    .line 334
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    .line 335
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    .line 336
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    .line 337
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    .line 339
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    .line 340
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    .line 341
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    .line 342
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    .line 343
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 269
    const-string v0, "AES"

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    .prologue
    .line 274
    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 6
    .parameter "forEncryption"
    .parameter "params"

    .prologue
    .line 257
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_13

    .line 259
    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    .end local p2
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->generateWorkingKey([BZ)[[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    .line 260
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->forEncryption:Z

    .line 261
    return-void

    .line 264
    .restart local p2
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to AES init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBlock([BI[BI)I
    .registers 7
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 283
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    if-nez v0, :cond_c

    .line 285
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AES engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_c
    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-le v0, v1, :cond_19

    .line 290
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_19
    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-le v0, v1, :cond_26

    .line 295
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_26
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->forEncryption:Z

    if-eqz v0, :cond_38

    .line 300
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->unpackBlock([BI)V

    .line 301
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->encryptBlock([[I)V

    .line 302
    invoke-direct {p0, p3, p4}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->packBlock([BI)V

    .line 311
    :goto_35
    const/16 v0, 0x10

    return v0

    .line 306
    :cond_38
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->unpackBlock([BI)V

    .line 307
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->decryptBlock([[I)V

    .line 308
    invoke-direct {p0, p3, p4}, Lorg/bouncycastle/crypto/engines/AESLightEngine;->packBlock([BI)V

    goto :goto_35
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 316
    return-void
.end method
