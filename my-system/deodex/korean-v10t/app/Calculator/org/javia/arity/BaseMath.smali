.class Lorg/javia/arity/BaseMath;
.super Ljava/lang/Object;
.source "BaseMath.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final acos(D)D
    .registers 4
    .parameter

    .prologue
    .line 31
    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final asin(D)D
    .registers 4
    .parameter

    .prologue
    .line 27
    invoke-static {p0, p1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final atan(D)D
    .registers 4
    .parameter

    .prologue
    .line 23
    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final atan2(DD)D
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final cbrt(D)D
    .registers 4
    .parameter

    .prologue
    .line 55
    invoke-static {p0, p1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final cosh(D)D
    .registers 4
    .parameter

    .prologue
    .line 47
    invoke-static {p0, p1}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final exp(D)D
    .registers 4
    .parameter

    .prologue
    .line 35
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final log(D)D
    .registers 4
    .parameter

    .prologue
    .line 39
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final log10(D)D
    .registers 4
    .parameter

    .prologue
    .line 63
    invoke-static {p0, p1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final pow(DD)D
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final rint(D)D
    .registers 4
    .parameter

    .prologue
    .line 71
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final sinh(D)D
    .registers 4
    .parameter

    .prologue
    .line 43
    invoke-static {p0, p1}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final tanh(D)D
    .registers 4
    .parameter

    .prologue
    .line 51
    invoke-static {p0, p1}, Ljava/lang/Math;->tanh(D)D

    move-result-wide v0

    return-wide v0
.end method
