.class public final Ljava/security/CodeSigner;
.super Ljava/lang/Object;
.source "CodeSigner.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5ea2fa66cb219aadL


# instance fields
.field private transient hash:I

.field private signerCertPath:Ljava/security/cert/CertPath;

.field private timestamp:Ljava/security/Timestamp;


# direct methods
.method public constructor <init>(Ljava/security/cert/CertPath;Ljava/security/Timestamp;)V
    .registers 5
    .parameter "signerCertPath"
    .parameter "timestamp"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-nez p1, :cond_11

    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.10"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_11
    iput-object p1, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    .line 63
    iput-object p2, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    .line 64
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 80
    if-ne p1, p0, :cond_6

    move v2, v5

    .line 91
    :goto_5
    return v2

    .line 83
    :cond_6
    instance-of v2, p1, Ljava/security/CodeSigner;

    if-eqz v2, :cond_2f

    .line 84
    move-object v0, p1

    check-cast v0, Ljava/security/CodeSigner;

    move-object v1, v0

    .line 85
    .local v1, that:Ljava/security/CodeSigner;
    iget-object v2, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    iget-object v3, v1, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    invoke-virtual {v2, v3}, Ljava/security/cert/CertPath;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    move v2, v4

    .line 86
    goto :goto_5

    .line 88
    :cond_1a
    iget-object v2, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    if-nez v2, :cond_26

    iget-object v2, v1, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    if-nez v2, :cond_24

    move v2, v5

    goto :goto_5

    :cond_24
    move v2, v4

    goto :goto_5

    :cond_26
    iget-object v2, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    iget-object v3, v1, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    invoke-virtual {v2, v3}, Ljava/security/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5

    .end local v1           #that:Ljava/security/CodeSigner;
    :cond_2f
    move v2, v4

    .line 91
    goto :goto_5
.end method

.method public getSignerCertPath()Ljava/security/cert/CertPath;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public getTimestamp()Ljava/security/Timestamp;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 126
    iget v0, p0, Ljava/security/CodeSigner;->hash:I

    if-nez v0, :cond_12

    .line 127
    iget-object v0, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    invoke-virtual {v0}, Ljava/security/cert/CertPath;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    if-nez v1, :cond_15

    const/4 v1, 0x0

    :goto_f
    xor-int/2addr v0, v1

    iput v0, p0, Ljava/security/CodeSigner;->hash:I

    .line 130
    :cond_12
    iget v0, p0, Ljava/security/CodeSigner;->hash:I

    return v0

    .line 127
    :cond_15
    iget-object v1, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    invoke-virtual {v1}, Ljava/security/Timestamp;->hashCode()I

    move-result v1

    goto :goto_f
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 147
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v1, "CodeSigner ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    invoke-virtual {v2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 148
    iget-object v1, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    if-eqz v1, :cond_2a

    .line 149
    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 151
    :cond_2a
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
