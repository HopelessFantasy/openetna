.class public Lorg/apache/harmony/xnet/provider/jsse/DHParameters;
.super Ljava/lang/Object;
.source "DHParameters.java"


# static fields
.field private static prime:[B

.field private static prime512:[B

.field private static primeGroup1:[B

.field private static primeGroup2:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_20

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/DHParameters;->prime512:[B

    .line 48
    const/16 v0, 0x60

    new-array v0, v0, [B

    fill-array-data v0, :array_44

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/DHParameters;->primeGroup1:[B

    .line 71
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_78

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/DHParameters;->primeGroup2:[B

    .line 103
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/DHParameters;->prime512:[B

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/DHParameters;->prime:[B

    .line 104
    return-void

    .line 31
    :array_20
    .array-data 0x1
        0xf5t
        0x2at
        0xfft
        0x3ct
        0xe1t
        0xb1t
        0x29t
        0x40t
        0x18t
        0x11t
        0x8dt
        0x7ct
        0x84t
        0xa7t
        0xat
        0x72t
        0xd6t
        0x86t
        0xc4t
        0x3t
        0x19t
        0xc8t
        0x7t
        0x29t
        0x7at
        0xcat
        0x95t
        0xct
        0xd9t
        0x96t
        0x9ft
        0xabt
        0xd0t
        0xat
        0x50t
        0x9bt
        0x2t
        0x46t
        0xd3t
        0x8t
        0x3dt
        0x66t
        0xa4t
        0x5dt
        0x41t
        0x9ft
        0x9ct
        0x7ct
        0xbdt
        0x89t
        0x4bt
        0x22t
        0x19t
        0x26t
        0xbat
        0xabt
        0xa2t
        0x5et
        0xc3t
        0x55t
        0xe9t
        0x2at
        0x5t
        0x5ft
    .end array-data

    .line 48
    :array_44
    .array-data 0x1
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xc9t
        0xft
        0xdat
        0xa2t
        0x21t
        0x68t
        0xc2t
        0x34t
        0xc4t
        0xc6t
        0x62t
        0x8bt
        0x80t
        0xdct
        0x1ct
        0xd1t
        0x29t
        0x2t
        0x4et
        0x8t
        0x8at
        0x67t
        0xcct
        0x74t
        0x2t
        0xbt
        0xbet
        0xa6t
        0x3bt
        0x13t
        0x9bt
        0x22t
        0x51t
        0x4at
        0x8t
        0x79t
        0x8et
        0x34t
        0x4t
        0xddt
        0xeft
        0x95t
        0x19t
        0xb3t
        0xcdt
        0x3at
        0x43t
        0x1bt
        0x30t
        0x2bt
        0xat
        0x6dt
        0xf2t
        0x5ft
        0x14t
        0x37t
        0x4ft
        0xe1t
        0x35t
        0x6dt
        0x6dt
        0x51t
        0xc2t
        0x45t
        0xe4t
        0x85t
        0xb5t
        0x76t
        0x62t
        0x5et
        0x7et
        0xc6t
        0xf4t
        0x4ct
        0x42t
        0xe9t
        0xa6t
        0x3at
        0x36t
        0x20t
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
    .end array-data

    .line 71
    :array_78
    .array-data 0x1
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xc9t
        0xft
        0xdat
        0xa2t
        0x21t
        0x68t
        0xc2t
        0x34t
        0xc4t
        0xc6t
        0x62t
        0x8bt
        0x80t
        0xdct
        0x1ct
        0xd1t
        0x29t
        0x2t
        0x4et
        0x8t
        0x8at
        0x67t
        0xcct
        0x74t
        0x2t
        0xbt
        0xbet
        0xa6t
        0x3bt
        0x13t
        0x9bt
        0x22t
        0x51t
        0x4at
        0x8t
        0x79t
        0x8et
        0x34t
        0x4t
        0xddt
        0xeft
        0x95t
        0x19t
        0xb3t
        0xcdt
        0x3at
        0x43t
        0x1bt
        0x30t
        0x2bt
        0xat
        0x6dt
        0xf2t
        0x5ft
        0x14t
        0x37t
        0x4ft
        0xe1t
        0x35t
        0x6dt
        0x6dt
        0x51t
        0xc2t
        0x45t
        0xe4t
        0x85t
        0xb5t
        0x76t
        0x62t
        0x5et
        0x7et
        0xc6t
        0xf4t
        0x4ct
        0x42t
        0xe9t
        0xa6t
        0x37t
        0xedt
        0x6bt
        0xbt
        0xfft
        0x5ct
        0xb6t
        0xf4t
        0x6t
        0xb7t
        0xedt
        0xeet
        0x38t
        0x6bt
        0xfbt
        0x5at
        0x89t
        0x9ft
        0xa5t
        0xaet
        0x9ft
        0x24t
        0x11t
        0x7ct
        0x4bt
        0x1ft
        0xe6t
        0x49t
        0x28t
        0x66t
        0x51t
        0xect
        0xe6t
        0x53t
        0x81t
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPrime()[B
    .registers 1

    .prologue
    .line 111
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/DHParameters;->prime:[B

    return-object v0
.end method
