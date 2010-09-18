.class public Ljava/security/spec/ECPrivateKeySpec;
.super Ljava/lang/Object;
.source "ECPrivateKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final params:Ljava/security/spec/ECParameterSpec;

.field private final s:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V
    .registers 6
    .parameter "s"
    .parameter "params"

    .prologue
    const-string v2, "security.83"

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Ljava/security/spec/ECPrivateKeySpec;->s:Ljava/math/BigInteger;

    .line 47
    iput-object p2, p0, Ljava/security/spec/ECPrivateKeySpec;->params:Ljava/security/spec/ECParameterSpec;

    .line 49
    iget-object v0, p0, Ljava/security/spec/ECPrivateKeySpec;->s:Ljava/math/BigInteger;

    if-nez v0, :cond_1b

    .line 50
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.83"

    const-string v1, "s"

    invoke-static {v2, v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1b
    iget-object v0, p0, Ljava/security/spec/ECPrivateKeySpec;->params:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_2d

    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.83"

    const-string v1, "params"

    invoke-static {v2, v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_2d
    return-void
.end method


# virtual methods
.method public getParams()Ljava/security/spec/ECParameterSpec;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Ljava/security/spec/ECPrivateKeySpec;->params:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Ljava/security/spec/ECPrivateKeySpec;->s:Ljava/math/BigInteger;

    return-object v0
.end method
