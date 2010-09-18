.class public Ljava/security/spec/PSSParameterSpec;
.super Ljava/lang/Object;
.source "PSSParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final DEFAULT:Ljava/security/spec/PSSParameterSpec;


# instance fields
.field private final mdName:Ljava/lang/String;

.field private final mgfName:Ljava/lang/String;

.field private final mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final saltLen:I

.field private final trailerField:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 46
    new-instance v0, Ljava/security/spec/PSSParameterSpec;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/security/spec/PSSParameterSpec;-><init>(I)V

    sput-object v0, Ljava/security/spec/PSSParameterSpec;->DEFAULT:Ljava/security/spec/PSSParameterSpec;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter "saltLen"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-gez p1, :cond_11

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.7F"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_11
    iput p1, p0, Ljava/security/spec/PSSParameterSpec;->saltLen:I

    .line 74
    const-string v0, "SHA-1"

    iput-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mdName:Ljava/lang/String;

    .line 75
    const-string v0, "MGF1"

    iput-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mgfName:Ljava/lang/String;

    .line 76
    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    iput-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Ljava/security/spec/PSSParameterSpec;->trailerField:I

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V
    .registers 8
    .parameter "mdName"
    .parameter "mgfName"
    .parameter "mgfSpec"
    .parameter "saltLen"
    .parameter "trailerField"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    if-nez p1, :cond_11

    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.80"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_11
    if-nez p2, :cond_1f

    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.81"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1f
    if-gez p4, :cond_2d

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.7F"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_2d
    if-gez p5, :cond_3b

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.82"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_3b
    iput-object p1, p0, Ljava/security/spec/PSSParameterSpec;->mdName:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Ljava/security/spec/PSSParameterSpec;->mgfName:Ljava/lang/String;

    .line 116
    iput-object p3, p0, Ljava/security/spec/PSSParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 117
    iput p4, p0, Ljava/security/spec/PSSParameterSpec;->saltLen:I

    .line 118
    iput p5, p0, Ljava/security/spec/PSSParameterSpec;->trailerField:I

    .line 119
    return-void
.end method


# virtual methods
.method public getDigestAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mdName:Ljava/lang/String;

    return-object v0
.end method

.method public getMGFAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mgfName:Ljava/lang/String;

    return-object v0
.end method

.method public getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Ljava/security/spec/PSSParameterSpec;->mgfSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public getSaltLength()I
    .registers 2

    .prologue
    .line 128
    iget v0, p0, Ljava/security/spec/PSSParameterSpec;->saltLen:I

    return v0
.end method

.method public getTrailerField()I
    .registers 2

    .prologue
    .line 169
    iget v0, p0, Ljava/security/spec/PSSParameterSpec;->trailerField:I

    return v0
.end method
