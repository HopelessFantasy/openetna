.class public Ljava/security/spec/ECPublicKeySpec;
.super Ljava/lang/Object;
.source "ECPublicKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final params:Ljava/security/spec/ECParameterSpec;

.field private final w:Ljava/security/spec/ECPoint;


# direct methods
.method public constructor <init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V
    .registers 6
    .parameter "w"
    .parameter "params"

    .prologue
    const-string v2, "security.83"

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Ljava/security/spec/ECPublicKeySpec;->w:Ljava/security/spec/ECPoint;

    .line 47
    iput-object p2, p0, Ljava/security/spec/ECPublicKeySpec;->params:Ljava/security/spec/ECParameterSpec;

    .line 49
    iget-object v0, p0, Ljava/security/spec/ECPublicKeySpec;->w:Ljava/security/spec/ECPoint;

    if-nez v0, :cond_1b

    .line 50
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.83"

    const-string v1, "w"

    invoke-static {v2, v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1b
    iget-object v0, p0, Ljava/security/spec/ECPublicKeySpec;->params:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_2d

    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.83"

    const-string v1, "params"

    invoke-static {v2, v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_2d
    iget-object v0, p0, Ljava/security/spec/ECPublicKeySpec;->w:Ljava/security/spec/ECPoint;

    sget-object v1, Ljava/security/spec/ECPoint;->POINT_INFINITY:Ljava/security/spec/ECPoint;

    invoke-virtual {v0, v1}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.84"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_43
    return-void
.end method


# virtual methods
.method public getParams()Ljava/security/spec/ECParameterSpec;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Ljava/security/spec/ECPublicKeySpec;->params:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Ljava/security/spec/ECPublicKeySpec;->w:Ljava/security/spec/ECPoint;

    return-object v0
.end method
