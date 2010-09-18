.class public Ljava/security/cert/PKIXBuilderParameters;
.super Ljava/security/cert/PKIXParameters;
.source "PKIXBuilderParameters.java"


# instance fields
.field private maxPathLength:I


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;Ljava/security/cert/CertSelector;)V
    .registers 4
    .parameter "keyStore"
    .parameter "targetConstraints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/security/KeyStore;)V

    .line 43
    const/4 v0, 0x5

    iput v0, p0, Ljava/security/cert/PKIXBuilderParameters;->maxPathLength:I

    .line 87
    invoke-super {p0, p2}, Ljava/security/cert/PKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/security/cert/CertSelector;)V
    .registers 4
    .parameter
    .parameter "targetConstraints"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/security/cert/CertSelector;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 63
    .local p1, trustAnchors:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-direct {p0, p1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 43
    const/4 v0, 0x5

    iput v0, p0, Ljava/security/cert/PKIXBuilderParameters;->maxPathLength:I

    .line 64
    invoke-super {p0, p2}, Ljava/security/cert/PKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    .line 65
    return-void
.end method


# virtual methods
.method public getMaxPathLength()I
    .registers 2

    .prologue
    .line 102
    iget v0, p0, Ljava/security/cert/PKIXBuilderParameters;->maxPathLength:I

    return v0
.end method

.method public setMaxPathLength(I)V
    .registers 4
    .parameter "maxPathLength"

    .prologue
    .line 119
    const/4 v0, -0x1

    if-ge p1, v0, :cond_f

    .line 120
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "security.5B"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_f
    iput p1, p0, Ljava/security/cert/PKIXBuilderParameters;->maxPathLength:I

    .line 124
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-super {p0}, Ljava/security/cert/PKIXParameters;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    const-string v1, " Max Path Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    iget v1, p0, Ljava/security/cert/PKIXBuilderParameters;->maxPathLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 139
    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
