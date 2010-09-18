.class public Ljava/security/spec/MGF1ParameterSpec;
.super Ljava/lang/Object;
.source "MGF1ParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final SHA1:Ljava/security/spec/MGF1ParameterSpec;

.field public static final SHA256:Ljava/security/spec/MGF1ParameterSpec;

.field public static final SHA384:Ljava/security/spec/MGF1ParameterSpec;

.field public static final SHA512:Ljava/security/spec/MGF1ParameterSpec;


# instance fields
.field private final mdName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41
    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "SHA-1"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    .line 50
    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "SHA-256"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    .line 59
    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "SHA-384"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA384:Ljava/security/spec/MGF1ParameterSpec;

    .line 68
    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "SHA-512"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "mdName"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Ljava/security/spec/MGF1ParameterSpec;->mdName:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Ljava/security/spec/MGF1ParameterSpec;->mdName:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 85
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.80"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_15
    return-void
.end method


# virtual methods
.method public getDigestAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Ljava/security/spec/MGF1ParameterSpec;->mdName:Ljava/lang/String;

    return-object v0
.end method
