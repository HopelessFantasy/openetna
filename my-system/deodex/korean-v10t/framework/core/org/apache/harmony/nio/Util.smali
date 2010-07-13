.class public final Lorg/apache/harmony/nio/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static assertArrayIndex(III)V
    .registers 7
    .parameter "arrayLength"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 153
    if-ltz p1, :cond_4

    if-gez p2, :cond_10

    .line 155
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "nio.05"

    invoke-static {v1}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_10
    int-to-long v0, p1

    int-to-long v2, p2

    add-long/2addr v0, v2

    int-to-long v2, p0

    cmp-long v0, v0, v2

    if-lez v0, :cond_24

    .line 159
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "nio.04"

    invoke-static {v1}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_24
    return-void
.end method

.method public static assertArrayIndex([BII)V
    .registers 7
    .parameter "array"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 71
    if-ltz p1, :cond_4

    if-gez p2, :cond_10

    .line 73
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "nio.05"

    invoke-static {v1}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_10
    int-to-long v0, p1

    int-to-long v2, p2

    add-long/2addr v0, v2

    array-length v2, p0

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    .line 77
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "nio.04"

    invoke-static {v1}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_25
    return-void
.end method

.method public static assertArrayIndex([CII)V
    .registers 7
    .parameter "array"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 137
    if-ltz p1, :cond_4

    if-gez p2, :cond_10

    .line 139
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "nio.05"

    invoke-static {v1}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_10
    int-to-long v0, p1

    int-to-long v2, p2

    add-long/2addr v0, v2

    array-length v2, p0

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    .line 143
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "nio.04"

    invoke-static {v1}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_25
    return-void
.end method

.method public static assertArrayIndex([DII)V
    .registers 7
    .parameter "array"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 126
    if-ltz p1, :cond_4

    if-gez p2, :cond_10

    .line 128
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "nio.05"

    invoke-static {v1}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_10
    int-to-long v0, p1

    int-to-long v2, p2

    add-long/2addr v0, v2

    array-length v2, p0

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    .line 132
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "nio.04"

    invoke-static {v1}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_25
    return-void
.end method

.method public static assertArrayIndex([FII)V
    .registers 7
    .parameter "array"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 115
    if-ltz p1, :cond_4

    if-gez p2, :cond_10

    .line 117
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "nio.05"

    invoke-static {v1}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_10
    int-to-long v0, p1

    int-to-long v2, p2

    add-long/2addr v0, v2

    array-length v2, p0

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    .line 121
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "nio.04"

    invoke-static {v1}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_25
    return-void
.end method

.method public static assertArrayIndex([III)V
    .registers 7
    .parameter "array"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 93
    if-ltz p1, :cond_4

    if-gez p2, :cond_10

    .line 95
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "nio.05"

    invoke-static {v1}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_10
    int-to-long v0, p1

    int-to-long v2, p2

    add-long/2addr v0, v2

    array-length v2, p0

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    .line 99
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "nio.04"

    invoke-static {v1}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_25
    return-void
.end method

.method public static assertArrayIndex([JII)V
    .registers 7
    .parameter "array"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 104
    if-ltz p1, :cond_4

    if-gez p2, :cond_10

    .line 106
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "nio.05"

    invoke-static {v1}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_10
    int-to-long v0, p1

    int-to-long v2, p2

    add-long/2addr v0, v2

    array-length v2, p0

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    .line 110
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "nio.04"

    invoke-static {v1}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_25
    return-void
.end method

.method public static assertArrayIndex([Ljava/lang/Object;II)V
    .registers 7
    .parameter "array"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 49
    if-ltz p1, :cond_4

    if-gez p2, :cond_10

    .line 51
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "nio.05"

    invoke-static {v1}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_10
    int-to-long v0, p1

    int-to-long v2, p2

    add-long/2addr v0, v2

    array-length v2, p0

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    .line 55
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "nio.04"

    invoke-static {v1}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_25
    return-void
.end method

.method public static assertArrayIndex([SII)V
    .registers 7
    .parameter "array"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 82
    if-ltz p1, :cond_4

    if-gez p2, :cond_10

    .line 84
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "nio.05"

    invoke-static {v1}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_10
    int-to-long v0, p1

    int-to-long v2, p2

    add-long/2addr v0, v2

    array-length v2, p0

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    .line 88
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "nio.04"

    invoke-static {v1}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_25
    return-void
.end method

.method public static assertArrayIndex([ZII)V
    .registers 7
    .parameter "array"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 60
    if-ltz p1, :cond_4

    if-gez p2, :cond_10

    .line 62
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "nio.05"

    invoke-static {v1}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_10
    int-to-long v0, p1

    int-to-long v2, p2

    add-long/2addr v0, v2

    array-length v2, p0

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    .line 66
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "nio.04"

    invoke-static {v1}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_25
    return-void
.end method
