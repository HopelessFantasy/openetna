.class Ljava/security/Signature$SignatureImpl;
.super Ljava/security/Signature;
.source "Signature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SignatureImpl"
.end annotation


# instance fields
.field private spiImpl:Ljava/security/SignatureSpi;


# direct methods
.method public constructor <init>(Ljava/security/SignatureSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 4
    .parameter "signatureSpi"
    .parameter "provider"
    .parameter "algorithm"

    .prologue
    .line 665
    invoke-direct {p0, p3}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    .line 666
    invoke-static {p0, p2}, Ljava/security/Signature;->access$002(Ljava/security/Signature;Ljava/security/Provider;)Ljava/security/Provider;

    .line 667
    iput-object p1, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    .line 668
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 717
    iget-object v1, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    instance-of v1, v1, Ljava/lang/Cloneable;

    if-eqz v1, :cond_1c

    .line 718
    iget-object v1, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    invoke-virtual {v1}, Ljava/security/SignatureSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SignatureSpi;

    .line 719
    .local v0, spi:Ljava/security/SignatureSpi;
    new-instance v1, Ljava/security/Signature$SignatureImpl;

    invoke-virtual {p0}, Ljava/security/Signature$SignatureImpl;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/Signature$SignatureImpl;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Ljava/security/Signature$SignatureImpl;-><init>(Ljava/security/SignatureSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1

    .line 721
    .end local v0           #spi:Ljava/security/SignatureSpi;
    :cond_1c
    new-instance v1, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v1}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v1
.end method

.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 706
    iget-object v0, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .registers 3
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 694
    iget-object v0, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    .line 695
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .registers 3
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 700
    iget-object v0, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineInitVerify(Ljava/security/PublicKey;)V

    .line 701
    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 712
    iget-object v0, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/SignatureSpi;->engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 713
    return-void
.end method

.method protected engineSign()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 672
    iget-object v0, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    invoke-virtual {v0}, Ljava/security/SignatureSpi;->engineSign()[B

    move-result-object v0

    return-object v0
.end method

.method protected engineUpdate(B)V
    .registers 3
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 677
    iget-object v0, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineUpdate(B)V

    .line 678
    return-void
.end method

.method protected engineUpdate([BII)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 688
    iget-object v0, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/SignatureSpi;->engineUpdate([BII)V

    .line 689
    return-void
.end method

.method protected engineVerify([B)Z
    .registers 3
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 682
    iget-object v0, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineVerify([B)Z

    move-result v0

    return v0
.end method
