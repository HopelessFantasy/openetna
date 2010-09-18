.class public final Lorg/apache/harmony/misc/HashCode;
.super Ljava/lang/Object;
.source "HashCode.java"


# static fields
.field public static final EMPTY_HASH_CODE:I = 0x1


# instance fields
.field private hashCode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/harmony/misc/HashCode;->hashCode:I

    return-void
.end method

.method public static combine(ID)I
    .registers 6
    .parameter "hashCode"
    .parameter "value"

    .prologue
    .line 120
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 121
    .local v0, v:J
    invoke-static {p0, v0, v1}, Lorg/apache/harmony/misc/HashCode;->combine(IJ)I

    move-result v2

    return v2
.end method

.method public static combine(IF)I
    .registers 4
    .parameter "hashCode"
    .parameter "value"

    .prologue
    .line 109
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 110
    .local v0, v:I
    invoke-static {p0, v0}, Lorg/apache/harmony/misc/HashCode;->combine(II)I

    move-result v1

    return v1
.end method

.method public static combine(II)I
    .registers 3
    .parameter "hashCode"
    .parameter "value"

    .prologue
    .line 141
    mul-int/lit8 v0, p0, 0x1f

    add-int/2addr v0, p1

    return v0
.end method

.method public static combine(IJ)I
    .registers 6
    .parameter "hashCode"
    .parameter "value"

    .prologue
    .line 98
    const/16 v1, 0x20

    ushr-long v1, p1, v1

    xor-long/2addr v1, p1

    long-to-int v0, v1

    .line 99
    .local v0, v:I
    invoke-static {p0, v0}, Lorg/apache/harmony/misc/HashCode;->combine(II)I

    move-result v1

    return v1
.end method

.method public static combine(ILjava/lang/Object;)I
    .registers 3
    .parameter "hashCode"
    .parameter "value"

    .prologue
    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {p0, v0}, Lorg/apache/harmony/misc/HashCode;->combine(II)I

    move-result v0

    return v0
.end method

.method public static combine(IZ)I
    .registers 4
    .parameter "hashCode"
    .parameter "value"

    .prologue
    .line 87
    if-eqz p1, :cond_a

    const/16 v1, 0x4cf

    move v0, v1

    .line 88
    .local v0, v:I
    :goto_5
    invoke-static {p0, v0}, Lorg/apache/harmony/misc/HashCode;->combine(II)I

    move-result v1

    return v1

    .line 87
    .end local v0           #v:I
    :cond_a
    const/16 v1, 0x4d5

    move v0, v1

    goto :goto_5
.end method


# virtual methods
.method public final append(D)Lorg/apache/harmony/misc/HashCode;
    .registers 4
    .parameter "value"

    .prologue
    .line 180
    iget v0, p0, Lorg/apache/harmony/misc/HashCode;->hashCode:I

    invoke-static {v0, p1, p2}, Lorg/apache/harmony/misc/HashCode;->combine(ID)I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/misc/HashCode;->hashCode:I

    .line 181
    return-object p0
.end method

.method public final append(F)Lorg/apache/harmony/misc/HashCode;
    .registers 3
    .parameter "value"

    .prologue
    .line 170
    iget v0, p0, Lorg/apache/harmony/misc/HashCode;->hashCode:I

    invoke-static {v0, p1}, Lorg/apache/harmony/misc/HashCode;->combine(IF)I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/misc/HashCode;->hashCode:I

    .line 171
    return-object p0
.end method

.method public final append(I)Lorg/apache/harmony/misc/HashCode;
    .registers 3
    .parameter "value"

    .prologue
    .line 150
    iget v0, p0, Lorg/apache/harmony/misc/HashCode;->hashCode:I

    invoke-static {v0, p1}, Lorg/apache/harmony/misc/HashCode;->combine(II)I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/misc/HashCode;->hashCode:I

    .line 151
    return-object p0
.end method

.method public final append(J)Lorg/apache/harmony/misc/HashCode;
    .registers 4
    .parameter "value"

    .prologue
    .line 160
    iget v0, p0, Lorg/apache/harmony/misc/HashCode;->hashCode:I

    invoke-static {v0, p1, p2}, Lorg/apache/harmony/misc/HashCode;->combine(IJ)I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/misc/HashCode;->hashCode:I

    .line 161
    return-object p0
.end method

.method public final append(Ljava/lang/Object;)Lorg/apache/harmony/misc/HashCode;
    .registers 3
    .parameter "value"

    .prologue
    .line 200
    iget v0, p0, Lorg/apache/harmony/misc/HashCode;->hashCode:I

    invoke-static {v0, p1}, Lorg/apache/harmony/misc/HashCode;->combine(ILjava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/misc/HashCode;->hashCode:I

    .line 201
    return-object p0
.end method

.method public final append(Z)Lorg/apache/harmony/misc/HashCode;
    .registers 3
    .parameter "value"

    .prologue
    .line 190
    iget v0, p0, Lorg/apache/harmony/misc/HashCode;->hashCode:I

    invoke-static {v0, p1}, Lorg/apache/harmony/misc/HashCode;->combine(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/misc/HashCode;->hashCode:I

    .line 191
    return-object p0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lorg/apache/harmony/misc/HashCode;->hashCode:I

    return v0
.end method
