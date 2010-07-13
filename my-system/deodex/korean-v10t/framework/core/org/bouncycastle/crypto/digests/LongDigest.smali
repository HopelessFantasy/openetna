.class public abstract Lorg/bouncycastle/crypto/digests/LongDigest;
.super Ljava/lang/Object;
.source "LongDigest.java"

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;


# static fields
.field private static final BYTE_LENGTH:I = 0x80

.field static final K:[J


# instance fields
.field protected H1:J

.field protected H2:J

.field protected H3:J

.field protected H4:J

.field protected H5:J

.field protected H6:J

.field protected H7:J

.field protected H8:J

.field private W:[J

.field private byteCount1:J

.field private byteCount2:J

.field private wOff:I

.field private xBuf:[B

.field private xBufOff:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 353
    const/16 v0, 0x50

    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Lorg/bouncycastle/crypto/digests/LongDigest;->K:[J

    return-void

    :array_a
    .array-data 0x8
        0x22t 0xaet 0x28t 0xd7t 0x98t 0x2ft 0x8at 0x42t
        0xcdt 0x65t 0xeft 0x23t 0x91t 0x44t 0x37t 0x71t
        0x2ft 0x3bt 0x4dt 0xect 0xcft 0xfbt 0xc0t 0xb5t
        0xbct 0xdbt 0x89t 0x81t 0xa5t 0xdbt 0xb5t 0xe9t
        0x38t 0xb5t 0x48t 0xf3t 0x5bt 0xc2t 0x56t 0x39t
        0x19t 0xd0t 0x5t 0xb6t 0xf1t 0x11t 0xf1t 0x59t
        0x9bt 0x4ft 0x19t 0xaft 0xa4t 0x82t 0x3ft 0x92t
        0x18t 0x81t 0x6dt 0xdat 0xd5t 0x5et 0x1ct 0xabt
        0x42t 0x2t 0x3t 0xa3t 0x98t 0xaat 0x7t 0xd8t
        0xbet 0x6ft 0x70t 0x45t 0x1t 0x5bt 0x83t 0x12t
        0x8ct 0xb2t 0xe4t 0x4et 0xbet 0x85t 0x31t 0x24t
        0xe2t 0xb4t 0xfft 0xd5t 0xc3t 0x7dt 0xct 0x55t
        0x6ft 0x89t 0x7bt 0xf2t 0x74t 0x5dt 0xbet 0x72t
        0xb1t 0x96t 0x16t 0x3bt 0xfet 0xb1t 0xdet 0x80t
        0x35t 0x12t 0xc7t 0x25t 0xa7t 0x6t 0xdct 0x9bt
        0x94t 0x26t 0x69t 0xcft 0x74t 0xf1t 0x9bt 0xc1t
        0xd2t 0x4at 0xf1t 0x9et 0xc1t 0x69t 0x9bt 0xe4t
        0xe3t 0x25t 0x4ft 0x38t 0x86t 0x47t 0xbet 0xeft
        0xb5t 0xd5t 0x8ct 0x8bt 0xc6t 0x9dt 0xc1t 0xft
        0x65t 0x9ct 0xact 0x77t 0xcct 0xa1t 0xct 0x24t
        0x75t 0x2t 0x2bt 0x59t 0x6ft 0x2ct 0xe9t 0x2dt
        0x83t 0xe4t 0xa6t 0x6et 0xaat 0x84t 0x74t 0x4at
        0xd4t 0xfbt 0x41t 0xbdt 0xdct 0xa9t 0xb0t 0x5ct
        0xb5t 0x53t 0x11t 0x83t 0xdat 0x88t 0xf9t 0x76t
        0xabt 0xdft 0x66t 0xeet 0x52t 0x51t 0x3et 0x98t
        0x10t 0x32t 0xb4t 0x2dt 0x6dt 0xc6t 0x31t 0xa8t
        0x3ft 0x21t 0xfbt 0x98t 0xc8t 0x27t 0x3t 0xb0t
        0xe4t 0xet 0xeft 0xbet 0xc7t 0x7ft 0x59t 0xbft
        0xc2t 0x8ft 0xa8t 0x3dt 0xf3t 0xbt 0xe0t 0xc6t
        0x25t 0xa7t 0xat 0x93t 0x47t 0x91t 0xa7t 0xd5t
        0x6ft 0x82t 0x3t 0xe0t 0x51t 0x63t 0xcat 0x6t
        0x70t 0x6et 0xet 0xat 0x67t 0x29t 0x29t 0x14t
        0xfct 0x2ft 0xd2t 0x46t 0x85t 0xat 0xb7t 0x27t
        0x26t 0xc9t 0x26t 0x5ct 0x38t 0x21t 0x1bt 0x2et
        0xedt 0x2at 0xc4t 0x5at 0xfct 0x6dt 0x2ct 0x4dt
        0xdft 0xb3t 0x95t 0x9dt 0x13t 0xdt 0x38t 0x53t
        0xdet 0x63t 0xaft 0x8bt 0x54t 0x73t 0xat 0x65t
        0xa8t 0xb2t 0x77t 0x3ct 0xbbt 0xat 0x6at 0x76t
        0xe6t 0xaet 0xedt 0x47t 0x2et 0xc9t 0xc2t 0x81t
        0x3bt 0x35t 0x82t 0x14t 0x85t 0x2ct 0x72t 0x92t
        0x64t 0x3t 0xf1t 0x4ct 0xa1t 0xe8t 0xbft 0xa2t
        0x1t 0x30t 0x42t 0xbct 0x4bt 0x66t 0x1at 0xa8t
        0x91t 0x97t 0xf8t 0xd0t 0x70t 0x8bt 0x4bt 0xc2t
        0x30t 0xbet 0x54t 0x6t 0xa3t 0x51t 0x6ct 0xc7t
        0x18t 0x52t 0xeft 0xd6t 0x19t 0xe8t 0x92t 0xd1t
        0x10t 0xa9t 0x65t 0x55t 0x24t 0x6t 0x99t 0xd6t
        0x2at 0x20t 0x71t 0x57t 0x85t 0x35t 0xet 0xf4t
        0xb8t 0xd1t 0xbbt 0x32t 0x70t 0xa0t 0x6at 0x10t
        0xc8t 0xd0t 0xd2t 0xb8t 0x16t 0xc1t 0xa4t 0x19t
        0x53t 0xabt 0x41t 0x51t 0x8t 0x6ct 0x37t 0x1et
        0x99t 0xebt 0x8et 0xdft 0x4ct 0x77t 0x48t 0x27t
        0xa8t 0x48t 0x9bt 0xe1t 0xb5t 0xbct 0xb0t 0x34t
        0x63t 0x5at 0xc9t 0xc5t 0xb3t 0xct 0x1ct 0x39t
        0xcbt 0x8at 0x41t 0xe3t 0x4at 0xaat 0xd8t 0x4et
        0x73t 0xe3t 0x63t 0x77t 0x4ft 0xcat 0x9ct 0x5bt
        0xa3t 0xb8t 0xb2t 0xd6t 0xf3t 0x6ft 0x2et 0x68t
        0xfct 0xb2t 0xeft 0x5dt 0xeet 0x82t 0x8ft 0x74t
        0x60t 0x2ft 0x17t 0x43t 0x6ft 0x63t 0xa5t 0x78t
        0x72t 0xabt 0xf0t 0xa1t 0x14t 0x78t 0xc8t 0x84t
        0xect 0x39t 0x64t 0x1at 0x8t 0x2t 0xc7t 0x8ct
        0x28t 0x1et 0x63t 0x23t 0xfat 0xfft 0xbet 0x90t
        0xe9t 0xbdt 0x82t 0xdet 0xebt 0x6ct 0x50t 0xa4t
        0x15t 0x79t 0xc6t 0xb2t 0xf7t 0xa3t 0xf9t 0xbet
        0x2bt 0x53t 0x72t 0xe3t 0xf2t 0x78t 0x71t 0xc6t
        0x9ct 0x61t 0x26t 0xeat 0xcet 0x3et 0x27t 0xcat
        0x7t 0xc2t 0xc0t 0x21t 0xc7t 0xb8t 0x86t 0xd1t
        0x1et 0xebt 0xe0t 0xcdt 0xd6t 0x7dt 0xdat 0xeat
        0x78t 0xd1t 0x6et 0xeet 0x7ft 0x4ft 0x7dt 0xf5t
        0xbat 0x6ft 0x17t 0x72t 0xaat 0x67t 0xf0t 0x6t
        0xa6t 0x98t 0xc8t 0xa2t 0xc5t 0x7dt 0x63t 0xat
        0xaet 0xdt 0xf9t 0xbet 0x4t 0x98t 0x3ft 0x11t
        0x1bt 0x47t 0x1ct 0x13t 0x35t 0xbt 0x71t 0x1bt
        0x84t 0x7dt 0x4t 0x23t 0xf5t 0x77t 0xdbt 0x28t
        0x93t 0x24t 0xc7t 0x40t 0x7bt 0xabt 0xcat 0x32t
        0xbct 0xbet 0xc9t 0x15t 0xat 0xbet 0x9et 0x3ct
        0x4ct 0xdt 0x10t 0x9ct 0xc4t 0x67t 0x1dt 0x43t
        0xb6t 0x42t 0x3et 0xcbt 0xbet 0xd4t 0xc5t 0x4ct
        0x2at 0x7et 0x65t 0xfct 0x9ct 0x29t 0x7ft 0x59t
        0xect 0xfat 0xd6t 0x3at 0xabt 0x6ft 0xcbt 0x5ft
        0x17t 0x58t 0x47t 0x4at 0x8ct 0x19t 0x44t 0x6ct
    .end array-data
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/16 v0, 0x50

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    .line 29
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    .line 32
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/LongDigest;->reset()V

    .line 33
    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/digests/LongDigest;)V
    .registers 6
    .parameter "t"

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/16 v0, 0x50

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    .line 42
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    .line 43
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    iget v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    .line 46
    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    .line 47
    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    .line 49
    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->H1:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H1:J

    .line 50
    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->H2:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H2:J

    .line 51
    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->H3:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H3:J

    .line 52
    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->H4:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H4:J

    .line 53
    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->H5:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H5:J

    .line 54
    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->H6:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H6:J

    .line 55
    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->H7:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H7:J

    .line 56
    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->H8:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H8:J

    .line 58
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iget v0, p1, Lorg/bouncycastle/crypto/digests/LongDigest;->wOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->wOff:I

    .line 60
    return-void
.end method

.method private Ch(JJJ)J
    .registers 11
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 314
    and-long v0, p1, p3

    const-wide/16 v2, -0x1

    xor-long/2addr v2, p1

    and-long/2addr v2, p5

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private Maj(JJJ)J
    .registers 11
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 322
    and-long v0, p1, p3

    and-long v2, p1, p5

    xor-long/2addr v0, v2

    and-long v2, p3, p5

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private Sigma0(J)J
    .registers 9
    .parameter "x"

    .prologue
    .line 340
    const/16 v0, 0x3f

    shl-long v0, p1, v0

    const/4 v2, 0x1

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/16 v2, 0x38

    shl-long v2, p1, v2

    const/16 v4, 0x8

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/4 v2, 0x7

    ushr-long v2, p1, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private Sigma1(J)J
    .registers 9
    .parameter "x"

    .prologue
    .line 346
    const/16 v0, 0x2d

    shl-long v0, p1, v0

    const/16 v2, 0x13

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/4 v2, 0x3

    shl-long v2, p1, v2

    const/16 v4, 0x3d

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/4 v2, 0x6

    ushr-long v2, p1, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private Sum0(J)J
    .registers 9
    .parameter "x"

    .prologue
    .line 328
    const/16 v0, 0x24

    shl-long v0, p1, v0

    const/16 v2, 0x1c

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/16 v2, 0x1e

    shl-long v2, p1, v2

    const/16 v4, 0x22

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x19

    shl-long v2, p1, v2

    const/16 v4, 0x27

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private Sum1(J)J
    .registers 9
    .parameter "x"

    .prologue
    .line 334
    const/16 v0, 0x32

    shl-long v0, p1, v0

    const/16 v2, 0xe

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    const/16 v2, 0x2e

    shl-long v2, p1, v2

    const/16 v4, 0x12

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x17

    shl-long v2, p1, v2

    const/16 v4, 0x29

    ushr-long v4, p1, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private adjustByteCounts()V
    .registers 8

    .prologue
    const-wide v5, 0x1fffffffffffffffL

    .line 201
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_1a

    .line 203
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    const/16 v4, 0x3d

    ushr-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    .line 204
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    and-long/2addr v0, v5

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    .line 206
    :cond_1a
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 8

    .prologue
    .line 118
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/LongDigest;->adjustByteCounts()V

    .line 120
    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    const/4 v6, 0x3

    shl-long v2, v4, v6

    .line 121
    .local v2, lowBitLength:J
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    .line 126
    .local v0, hiBitLength:J
    const/16 v4, -0x80

    invoke-virtual {p0, v4}, Lorg/bouncycastle/crypto/digests/LongDigest;->update(B)V

    .line 128
    :goto_f
    iget v4, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    if-eqz v4, :cond_18

    .line 130
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/bouncycastle/crypto/digests/LongDigest;->update(B)V

    goto :goto_f

    .line 133
    :cond_18
    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/bouncycastle/crypto/digests/LongDigest;->processLength(JJ)V

    .line 135
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/LongDigest;->processBlock()V

    .line 136
    return-void
.end method

.method public getByteLength()I
    .registers 2

    .prologue
    .line 158
    const/16 v0, 0x80

    return v0
.end method

.method protected processBlock()V
    .registers 36

    .prologue
    .line 223
    invoke-direct/range {p0 .. p0}, Lorg/bouncycastle/crypto/digests/LongDigest;->adjustByteCounts()V

    .line 228
    const/16 v33, 0x10

    .local v33, t:I
    :goto_5
    const/16 v3, 0x4f

    move/from16 v0, v33

    move v1, v3

    if-gt v0, v1, :cond_56

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    move-object v4, v0

    const/4 v5, 0x2

    sub-int v5, v33, v5

    aget-wide v23, v4, v5

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sigma1(J)J

    move-result-wide v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    move-object v4, v0

    const/4 v5, 0x7

    sub-int v5, v33, v5

    aget-wide v25, v4, v5

    add-long v23, v23, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    move-object v4, v0

    const/16 v5, 0xf

    sub-int v5, v33, v5

    aget-wide v25, v4, v5

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sigma0(J)J

    move-result-wide v25

    add-long v23, v23, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    move-object v4, v0

    const/16 v5, 0x10

    sub-int v5, v33, v5

    aget-wide v25, v4, v5

    add-long v23, v23, v25

    aput-wide v23, v3, v33

    .line 228
    add-int/lit8 v33, v33, 0x1

    goto :goto_5

    .line 236
    :cond_56
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H1:J

    move-wide v11, v0

    .line 237
    .local v11, a:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H2:J

    move-wide v13, v0

    .line 238
    .local v13, b:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H3:J

    move-wide v15, v0

    .line 239
    .local v15, c:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H4:J

    move-wide/from16 v18, v0

    .line 240
    .local v18, d:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H5:J

    move-wide v4, v0

    .line 241
    .local v4, e:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H6:J

    move-wide v6, v0

    .line 242
    .local v6, f:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H7:J

    move-wide v8, v0

    .line 243
    .local v8, g:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H8:J

    move-wide/from16 v21, v0

    .line 245
    .local v21, h:J
    const/16 v33, 0x0

    .line 246
    const/16 v32, 0x0

    .local v32, i:I
    move/from16 v34, v33

    .end local v33           #t:I
    .local v34, t:I
    :goto_86
    const/16 v3, 0xa

    move/from16 v0, v32

    move v1, v3

    if-ge v0, v1, :cond_27b

    .line 249
    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v23

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v25

    add-long v23, v23, v25

    sget-object v3, Lorg/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v25, v3, v34

    add-long v23, v23, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    move-object v3, v0

    add-int/lit8 v33, v34, 0x1

    .end local v34           #t:I
    .restart local v33       #t:I
    aget-wide v25, v3, v34

    add-long v23, v23, v25

    add-long v21, v21, v23

    .line 250
    add-long v18, v18, v21

    .line 251
    move-object/from16 v0, p0

    move-wide v1, v11

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v23

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v16}, Lorg/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v25

    add-long v23, v23, v25

    add-long v30, v21, v23

    .line 254
    .end local v21           #h:J
    .local v30, h:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v24

    move-object/from16 v17, p0

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    invoke-direct/range {v17 .. v23}, Lorg/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v26

    add-long v23, v24, v26

    sget-object v3, Lorg/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v25, v3, v33

    add-long v23, v23, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    move-object v3, v0

    add-int/lit8 v34, v33, 0x1

    .end local v33           #t:I
    .restart local v34       #t:I
    aget-wide v25, v3, v33

    add-long v23, v23, v25

    add-long v8, v8, v23

    .line 255
    add-long/2addr v15, v8

    .line 256
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v27

    move-object/from16 v20, p0

    move-wide/from16 v21, v30

    move-wide/from16 v23, v11

    move-wide/from16 v25, v13

    invoke-direct/range {v20 .. v26}, Lorg/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v23

    add-long v23, v23, v27

    add-long v8, v8, v23

    .line 259
    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v27

    move-object/from16 v20, p0

    move-wide/from16 v21, v15

    move-wide/from16 v23, v18

    move-wide/from16 v25, v4

    invoke-direct/range {v20 .. v26}, Lorg/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v23

    add-long v23, v23, v27

    sget-object v3, Lorg/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v25, v3, v34

    add-long v23, v23, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    move-object v3, v0

    add-int/lit8 v33, v34, 0x1

    .end local v34           #t:I
    .restart local v33       #t:I
    aget-wide v25, v3, v34

    add-long v23, v23, v25

    add-long v6, v6, v23

    .line 260
    add-long/2addr v13, v6

    .line 261
    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v27

    move-object/from16 v20, p0

    move-wide/from16 v21, v8

    move-wide/from16 v23, v30

    move-wide/from16 v25, v11

    invoke-direct/range {v20 .. v26}, Lorg/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v23

    add-long v23, v23, v27

    add-long v6, v6, v23

    .line 264
    move-object/from16 v0, p0

    move-wide v1, v13

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v27

    move-object/from16 v20, p0

    move-wide/from16 v21, v13

    move-wide/from16 v23, v15

    move-wide/from16 v25, v18

    invoke-direct/range {v20 .. v26}, Lorg/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v23

    add-long v23, v23, v27

    sget-object v3, Lorg/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v25, v3, v33

    add-long v23, v23, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    move-object v3, v0

    add-int/lit8 v34, v33, 0x1

    .end local v33           #t:I
    .restart local v34       #t:I
    aget-wide v25, v3, v33

    add-long v23, v23, v25

    add-long v4, v4, v23

    .line 265
    add-long/2addr v11, v4

    .line 266
    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v27

    move-object/from16 v20, p0

    move-wide/from16 v21, v6

    move-wide/from16 v23, v8

    move-wide/from16 v25, v30

    invoke-direct/range {v20 .. v26}, Lorg/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v23

    add-long v23, v23, v27

    add-long v4, v4, v23

    .line 269
    move-object/from16 v0, p0

    move-wide v1, v11

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v23

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v16}, Lorg/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v25

    add-long v23, v23, v25

    sget-object v3, Lorg/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v25, v3, v34

    add-long v23, v23, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    move-object v3, v0

    add-int/lit8 v33, v34, 0x1

    .end local v34           #t:I
    .restart local v33       #t:I
    aget-wide v25, v3, v34

    add-long v23, v23, v25

    add-long v18, v18, v23

    .line 270
    add-long v21, v30, v18

    .line 271
    .end local v30           #h:J
    .restart local v21       #h:J
    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v23

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v25

    add-long v23, v23, v25

    add-long v18, v18, v23

    .line 274
    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v27

    move-object/from16 v20, p0

    move-wide/from16 v23, v11

    move-wide/from16 v25, v13

    invoke-direct/range {v20 .. v26}, Lorg/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v23

    add-long v23, v23, v27

    sget-object v3, Lorg/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v25, v3, v33

    add-long v23, v23, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    move-object v3, v0

    add-int/lit8 v34, v33, 0x1

    .end local v33           #t:I
    .restart local v34       #t:I
    aget-wide v25, v3, v33

    add-long v23, v23, v25

    add-long v15, v15, v23

    .line 275
    add-long/2addr v8, v15

    .line 276
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v30

    move-object/from16 v23, p0

    move-wide/from16 v24, v18

    move-wide/from16 v26, v4

    move-wide/from16 v28, v6

    invoke-direct/range {v23 .. v29}, Lorg/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v23

    add-long v23, v23, v30

    add-long v15, v15, v23

    .line 279
    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v30

    move-object/from16 v23, p0

    move-wide/from16 v24, v8

    move-wide/from16 v26, v21

    move-wide/from16 v28, v11

    invoke-direct/range {v23 .. v29}, Lorg/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v23

    add-long v23, v23, v30

    sget-object v3, Lorg/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v25, v3, v34

    add-long v23, v23, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    move-object v3, v0

    add-int/lit8 v33, v34, 0x1

    .end local v34           #t:I
    .restart local v33       #t:I
    aget-wide v25, v3, v34

    add-long v23, v23, v25

    add-long v13, v13, v23

    .line 280
    add-long/2addr v6, v13

    .line 281
    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v30

    move-object/from16 v23, p0

    move-wide/from16 v24, v15

    move-wide/from16 v26, v18

    move-wide/from16 v28, v4

    invoke-direct/range {v23 .. v29}, Lorg/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v23

    add-long v23, v23, v30

    add-long v13, v13, v23

    .line 284
    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v30

    move-object/from16 v23, p0

    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    move-wide/from16 v28, v21

    invoke-direct/range {v23 .. v29}, Lorg/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v23

    add-long v23, v23, v30

    sget-object v3, Lorg/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v25, v3, v33

    add-long v23, v23, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    move-object v3, v0

    add-int/lit8 v34, v33, 0x1

    .end local v33           #t:I
    .restart local v34       #t:I
    aget-wide v25, v3, v33

    add-long v23, v23, v25

    add-long v11, v11, v23

    .line 285
    add-long/2addr v4, v11

    .line 286
    move-object/from16 v0, p0

    move-wide v1, v13

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v30

    move-object/from16 v23, p0

    move-wide/from16 v24, v13

    move-wide/from16 v26, v15

    move-wide/from16 v28, v18

    invoke-direct/range {v23 .. v29}, Lorg/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v23

    add-long v23, v23, v30

    add-long v11, v11, v23

    .line 246
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_86

    .line 289
    :cond_27b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H1:J

    move-wide/from16 v23, v0

    add-long v23, v23, v11

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/bouncycastle/crypto/digests/LongDigest;->H1:J

    .line 290
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H2:J

    move-wide/from16 v23, v0

    add-long v23, v23, v13

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/bouncycastle/crypto/digests/LongDigest;->H2:J

    .line 291
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H3:J

    move-wide/from16 v23, v0

    add-long v23, v23, v15

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/bouncycastle/crypto/digests/LongDigest;->H3:J

    .line 292
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H4:J

    move-wide/from16 v23, v0

    add-long v23, v23, v18

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/bouncycastle/crypto/digests/LongDigest;->H4:J

    .line 293
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H5:J

    move-wide/from16 v23, v0

    add-long v23, v23, v4

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/bouncycastle/crypto/digests/LongDigest;->H5:J

    .line 294
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H6:J

    move-wide/from16 v23, v0

    add-long v23, v23, v6

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/bouncycastle/crypto/digests/LongDigest;->H6:J

    .line 295
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H7:J

    move-wide/from16 v23, v0

    add-long v23, v23, v8

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/bouncycastle/crypto/digests/LongDigest;->H7:J

    .line 296
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->H8:J

    move-wide/from16 v23, v0

    add-long v23, v23, v21

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/bouncycastle/crypto/digests/LongDigest;->H8:J

    .line 301
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lorg/bouncycastle/crypto/digests/LongDigest;->wOff:I

    .line 302
    const/16 v32, 0x0

    :goto_2f3
    const/16 v3, 0x10

    move/from16 v0, v32

    move v1, v3

    if-ge v0, v1, :cond_306

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    move-object v3, v0

    const-wide/16 v23, 0x0

    aput-wide v23, v3, v32

    .line 302
    add-int/lit8 v32, v32, 0x1

    goto :goto_2f3

    .line 306
    :cond_306
    return-void
.end method

.method protected processLength(JJ)V
    .registers 7
    .parameter "lowW"
    .parameter "hiW"

    .prologue
    const/16 v1, 0xe

    .line 212
    iget v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->wOff:I

    if-le v0, v1, :cond_9

    .line 214
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/LongDigest;->processBlock()V

    .line 217
    :cond_9
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    aput-wide p3, v0, v1

    .line 218
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    const/16 v1, 0xf

    aput-wide p1, v0, v1

    .line 219
    return-void
.end method

.method protected processWord([BI)V
    .registers 11
    .parameter "in"
    .parameter "inOff"

    .prologue
    const/16 v7, 0x10

    .line 165
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    iget v1, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->wOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->wOff:I

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x4

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v7

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x6

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x7

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 174
    iget v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->wOff:I

    if-ne v0, v7, :cond_63

    .line 176
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/LongDigest;->processBlock()V

    .line 178
    :cond_63
    return-void
.end method

.method public reset()V
    .registers 6

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 140
    iput-wide v3, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    .line 141
    iput-wide v3, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    .line 143
    iput v2, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    .line 144
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 146
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    aput-byte v2, v1, v0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 149
    :cond_16
    iput v2, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->wOff:I

    .line 150
    const/4 v0, 0x0

    :goto_19
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    array-length v1, v1

    if-eq v0, v1, :cond_25

    .line 152
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->W:[J

    aput-wide v3, v1, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 154
    :cond_25
    return-void
.end method

.method protected unpackWord(J[BI)V
    .registers 8
    .parameter "word"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 185
    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p3, p4

    .line 186
    add-int/lit8 v0, p4, 0x1

    const/16 v1, 0x30

    ushr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 187
    add-int/lit8 v0, p4, 0x2

    const/16 v1, 0x28

    ushr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 188
    add-int/lit8 v0, p4, 0x3

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 189
    add-int/lit8 v0, p4, 0x4

    const/16 v1, 0x18

    ushr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 190
    add-int/lit8 v0, p4, 0x5

    const/16 v1, 0x10

    ushr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 191
    add-int/lit8 v0, p4, 0x6

    const/16 v1, 0x8

    ushr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 192
    add-int/lit8 v0, p4, 0x7

    long-to-int v1, p1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 193
    return-void
.end method

.method public update(B)V
    .registers 6
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    .line 65
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    aput-byte p1, v0, v1

    .line 67
    iget v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_19

    .line 69
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    invoke-virtual {p0, v0, v3}, Lorg/bouncycastle/crypto/digests/LongDigest;->processWord([BI)V

    .line 70
    iput v3, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    .line 73
    :cond_19
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    .line 74
    return-void
.end method

.method public update([BII)V
    .registers 8
    .parameter "in"
    .parameter "inOff"
    .parameter "len"

    .prologue
    .line 84
    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    if-eqz v0, :cond_10

    if-lez p3, :cond_10

    .line 86
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/LongDigest;->update(B)V

    .line 88
    add-int/lit8 p2, p2, 0x1

    .line 89
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 95
    :cond_10
    :goto_10
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v0, v0

    if-le p3, v0, :cond_2a

    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/digests/LongDigest;->processWord([BI)V

    .line 99
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v0, v0

    add-int/2addr p2, v0

    .line 100
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v0, v0

    sub-int/2addr p3, v0

    .line 101
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    goto :goto_10

    .line 107
    :cond_2a
    :goto_2a
    if-lez p3, :cond_36

    .line 109
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/LongDigest;->update(B)V

    .line 111
    add-int/lit8 p2, p2, 0x1

    .line 112
    add-int/lit8 p3, p3, -0x1

    goto :goto_2a

    .line 114
    :cond_36
    return-void
.end method
