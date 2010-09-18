.class public Ljava/security/spec/ECPoint;
.super Ljava/lang/Object;
.source "ECPoint.java"


# static fields
.field public static final POINT_INFINITY:Ljava/security/spec/ECPoint;


# instance fields
.field private final affineX:Ljava/math/BigInteger;

.field private final affineY:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    new-instance v0, Ljava/security/spec/ECPoint;

    invoke-direct {v0}, Ljava/security/spec/ECPoint;-><init>()V

    sput-object v0, Ljava/security/spec/ECPoint;->POINT_INFINITY:Ljava/security/spec/ECPoint;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Ljava/security/spec/ECPoint;->affineX:Ljava/math/BigInteger;

    .line 45
    iput-object v0, p0, Ljava/security/spec/ECPoint;->affineY:Ljava/math/BigInteger;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 6
    .parameter "affineX"
    .parameter "affineY"

    .prologue
    const-string v2, "security.83"

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Ljava/security/spec/ECPoint;->affineX:Ljava/math/BigInteger;

    .line 59
    iget-object v0, p0, Ljava/security/spec/ECPoint;->affineX:Ljava/math/BigInteger;

    if-nez v0, :cond_19

    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.83"

    const-string v1, "X"

    invoke-static {v2, v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_19
    iput-object p2, p0, Ljava/security/spec/ECPoint;->affineY:Ljava/math/BigInteger;

    .line 63
    iget-object v0, p0, Ljava/security/spec/ECPoint;->affineY:Ljava/math/BigInteger;

    if-nez v0, :cond_2d

    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.83"

    const-string v1, "Y"

    invoke-static {v2, v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_2d
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "other"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 99
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 112
    :goto_5
    return v2

    .line 102
    :cond_6
    instance-of v2, p1, Ljava/security/spec/ECPoint;

    if-eqz v2, :cond_32

    .line 103
    iget-object v2, p0, Ljava/security/spec/ECPoint;->affineX:Ljava/math/BigInteger;

    if-eqz v2, :cond_2a

    .line 104
    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECPoint;

    move-object v1, v0

    .line 106
    .local v1, otherPoint:Ljava/security/spec/ECPoint;
    iget-object v2, p0, Ljava/security/spec/ECPoint;->affineX:Ljava/math/BigInteger;

    iget-object v3, v1, Ljava/security/spec/ECPoint;->affineX:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Ljava/security/spec/ECPoint;->affineY:Ljava/math/BigInteger;

    iget-object v3, v1, Ljava/security/spec/ECPoint;->affineY:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    move v2, v5

    goto :goto_5

    :cond_28
    move v2, v4

    goto :goto_5

    .line 109
    .end local v1           #otherPoint:Ljava/security/spec/ECPoint;
    :cond_2a
    sget-object v2, Ljava/security/spec/ECPoint;->POINT_INFINITY:Ljava/security/spec/ECPoint;

    if-ne p1, v2, :cond_30

    move v2, v5

    goto :goto_5

    :cond_30
    move v2, v4

    goto :goto_5

    :cond_32
    move v2, v4

    .line 112
    goto :goto_5
.end method

.method public getAffineX()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Ljava/security/spec/ECPoint;->affineX:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getAffineY()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Ljava/security/spec/ECPoint;->affineY:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 122
    iget-object v0, p0, Ljava/security/spec/ECPoint;->affineX:Ljava/math/BigInteger;

    if-eqz v0, :cond_14

    .line 123
    iget-object v0, p0, Ljava/security/spec/ECPoint;->affineX:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ljava/security/spec/ECPoint;->affineY:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    :goto_13
    return v0

    :cond_14
    const/16 v0, 0xb

    goto :goto_13
.end method
