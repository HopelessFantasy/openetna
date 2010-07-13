.class public Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;
.super Ljava/lang/Object;
.source "SSLv3Constants.java"


# static fields
.field static final MD5pad1:[B

.field static final MD5pad2:[B

.field static final SHApad1:[B

.field static final SHApad2:[B

.field static final client:[B

.field static final server:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x30

    const/16 v2, 0x28

    const/4 v1, 0x4

    .line 37
    new-array v0, v1, [B

    fill-array-data v0, :array_30

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->client:[B

    .line 44
    new-array v0, v1, [B

    fill-array-data v0, :array_36

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->server:[B

    .line 51
    new-array v0, v3, [B

    fill-array-data v0, :array_3c

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->MD5pad1:[B

    .line 62
    new-array v0, v2, [B

    fill-array-data v0, :array_58

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->SHApad1:[B

    .line 73
    new-array v0, v3, [B

    fill-array-data v0, :array_70

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->MD5pad2:[B

    .line 84
    new-array v0, v2, [B

    fill-array-data v0, :array_8c

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->SHApad2:[B

    return-void

    .line 37
    :array_30
    .array-data 0x1
        0x43t
        0x4ct
        0x4et
        0x54t
    .end array-data

    .line 44
    :array_36
    .array-data 0x1
        0x53t
        0x52t
        0x56t
        0x52t
    .end array-data

    .line 51
    :array_3c
    .array-data 0x1
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
    .end array-data

    .line 62
    :array_58
    .array-data 0x1
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
        0x36t
    .end array-data

    .line 73
    :array_70
    .array-data 0x1
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
    .end array-data

    .line 84
    :array_8c
    .array-data 0x1
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
        0x5ct
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
