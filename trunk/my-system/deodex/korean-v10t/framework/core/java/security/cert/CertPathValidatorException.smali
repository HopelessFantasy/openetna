.class public Ljava/security/cert/CertPathValidatorException;
.super Ljava/security/GeneralSecurityException;
.source "CertPathValidatorException.java"


# static fields
.field private static final serialVersionUID:J = -0x2ac9a7e362fbb593L


# instance fields
.field private certPath:Ljava/security/cert/CertPath;

.field private index:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "msg"
    .parameter "cause"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V
    .registers 7
    .parameter "msg"
    .parameter "cause"
    .parameter "certPath"
    .parameter "index"

    .prologue
    const/4 v0, -0x1

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    iput v0, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    .line 74
    if-nez p3, :cond_16

    if-eq p4, v0, :cond_16

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.53"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_16
    if-eqz p3, :cond_30

    if-lt p4, v0, :cond_24

    invoke-virtual {p3}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p4, v0, :cond_30

    .line 80
    :cond_24
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "security.54"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_30
    iput-object p3, p0, Ljava/security/cert/CertPathValidatorException;->certPath:Ljava/security/cert/CertPath;

    .line 83
    iput p4, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3
    .parameter "cause"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    .line 110
    return-void
.end method


# virtual methods
.method public getCertPath()Ljava/security/cert/CertPath;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Ljava/security/cert/CertPathValidatorException;->certPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 151
    iget v0, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    return v0
.end method
