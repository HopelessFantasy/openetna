.class public final Ljava/security/Timestamp;
.super Ljava/lang/Object;
.source "Timestamp.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4c5d75ad840d029eL


# instance fields
.field private transient hash:I

.field private signerCertPath:Ljava/security/cert/CertPath;

.field private timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/security/cert/CertPath;)V
    .registers 6
    .parameter "timestamp"
    .parameter "signerCertPath"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-nez p1, :cond_11

    .line 63
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.0F"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_11
    if-nez p2, :cond_1f

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.10"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1f
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    .line 70
    iput-object p2, p0, Ljava/security/Timestamp;->signerCertPath:Ljava/security/cert/CertPath;

    .line 71
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 89
    if-ne p1, p0, :cond_6

    move v2, v5

    .line 97
    :goto_5
    return v2

    .line 92
    :cond_6
    instance-of v2, p1, Ljava/security/Timestamp;

    if-eqz v2, :cond_26

    .line 93
    move-object v0, p1

    check-cast v0, Ljava/security/Timestamp;

    move-object v1, v0

    .line 94
    .local v1, that:Ljava/security/Timestamp;
    iget-object v2, p0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    iget-object v3, v1, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Ljava/security/Timestamp;->signerCertPath:Ljava/security/cert/CertPath;

    iget-object v3, v1, Ljava/security/Timestamp;->signerCertPath:Ljava/security/cert/CertPath;

    invoke-virtual {v2, v3}, Ljava/security/cert/CertPath;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    move v2, v5

    goto :goto_5

    :cond_24
    move v2, v4

    goto :goto_5

    .end local v1           #that:Ljava/security/Timestamp;
    :cond_26
    move v2, v4

    .line 97
    goto :goto_5
.end method

.method public getSignerCertPath()Ljava/security/cert/CertPath;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Ljava/security/Timestamp;->signerCertPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Date;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 134
    iget v0, p0, Ljava/security/Timestamp;->hash:I

    if-nez v0, :cond_13

    .line 135
    iget-object v0, p0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/security/Timestamp;->signerCertPath:Ljava/security/cert/CertPath;

    invoke-virtual {v1}, Ljava/security/cert/CertPath;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Ljava/security/Timestamp;->hash:I

    .line 137
    :cond_13
    iget v0, p0, Ljava/security/Timestamp;->hash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 150
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v1, "Timestamp ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " certPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    iget-object v1, p0, Ljava/security/Timestamp;->signerCertPath:Ljava/security/cert/CertPath;

    invoke-virtual {v1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
