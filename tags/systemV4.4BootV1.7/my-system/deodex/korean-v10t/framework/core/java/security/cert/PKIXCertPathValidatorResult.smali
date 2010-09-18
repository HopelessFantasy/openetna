.class public Ljava/security/cert/PKIXCertPathValidatorResult;
.super Ljava/lang/Object;
.source "PKIXCertPathValidatorResult.java"

# interfaces
.implements Ljava/security/cert/CertPathValidatorResult;


# instance fields
.field private final policyTree:Ljava/security/cert/PolicyNode;

.field private final subjectPublicKey:Ljava/security/PublicKey;

.field private final trustAnchor:Ljava/security/cert/TrustAnchor;


# direct methods
.method public constructor <init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V
    .registers 6
    .parameter "trustAnchor"
    .parameter "policyTree"
    .parameter "subjectPublicKey"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 56
    iput-object p2, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->policyTree:Ljava/security/cert/PolicyNode;

    .line 57
    iput-object p3, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->subjectPublicKey:Ljava/security/PublicKey;

    .line 58
    iget-object v0, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->trustAnchor:Ljava/security/cert/TrustAnchor;

    if-nez v0, :cond_19

    .line 59
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.64"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_19
    iget-object v0, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->subjectPublicKey:Ljava/security/PublicKey;

    if-nez v0, :cond_29

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.65"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_29
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 106
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 107
    :catch_5
    move-exception v0

    .line 109
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPolicyTree()Ljava/security/cert/PolicyNode;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->policyTree:Ljava/security/cert/PolicyNode;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->subjectPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getTrustAnchor()Ljava/security/cert/TrustAnchor;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->trustAnchor:Ljava/security/cert/TrustAnchor;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, ": [\n Trust Anchor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    iget-object v1, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->trustAnchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    const-string v1, "\n Policy Tree: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    iget-object v1, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->policyTree:Ljava/security/cert/PolicyNode;

    if-nez v1, :cond_3d

    const-string v1, "no valid policy tree\n"

    :goto_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    const-string v1, "\n Subject Public Key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    iget-object v1, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->subjectPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 126
    :cond_3d
    iget-object v1, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->policyTree:Ljava/security/cert/PolicyNode;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_22
.end method
