.class public Lorg/bouncycastle/asn1/x509/BasicConstraints;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "BasicConstraints.java"


# instance fields
.field cA:Lorg/bouncycastle/asn1/DERBoolean;

.field pathLenConstraint:Lorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "pathLenConstraint"

    .prologue
    .line 108
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 18
    sget-object v0, Lorg/bouncycastle/asn1/DERBoolean;->FALSE:Lorg/bouncycastle/asn1/DERBoolean;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/DERBoolean;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/DERInteger;

    .line 110
    sget-object v0, Lorg/bouncycastle/asn1/DERBoolean;->TRUE:Lorg/bouncycastle/asn1/DERBoolean;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/DERBoolean;

    .line 112
    new-instance v0, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/DERInteger;

    .line 113
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .parameter "seq"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 18
    sget-object v0, Lorg/bouncycastle/asn1/DERBoolean;->FALSE:Lorg/bouncycastle/asn1/DERBoolean;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/DERBoolean;

    .line 20
    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/DERInteger;

    .line 47
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-nez v0, :cond_16

    .line 49
    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/DERBoolean;

    .line 50
    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/DERInteger;

    .line 60
    :cond_15
    :goto_15
    return-void

    .line 54
    :cond_16
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERBoolean;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERBoolean;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/DERBoolean;

    .line 55
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v2, :cond_15

    .line 57
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/DERInteger;

    goto :goto_15
.end method

.method public constructor <init>(Z)V
    .registers 4
    .parameter "cA"

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 18
    sget-object v0, Lorg/bouncycastle/asn1/DERBoolean;->FALSE:Lorg/bouncycastle/asn1/DERBoolean;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/DERBoolean;

    .line 20
    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/DERInteger;

    .line 88
    if-eqz p1, :cond_13

    .line 91
    sget-object v0, Lorg/bouncycastle/asn1/DERBoolean;->TRUE:Lorg/bouncycastle/asn1/DERBoolean;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/DERBoolean;

    .line 98
    :goto_10
    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/DERInteger;

    .line 99
    return-void

    .line 96
    :cond_13
    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/DERBoolean;

    goto :goto_10
.end method

.method public constructor <init>(ZI)V
    .registers 5
    .parameter "cA"
    .parameter "pathLenConstraint"

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 18
    sget-object v0, Lorg/bouncycastle/asn1/DERBoolean;->FALSE:Lorg/bouncycastle/asn1/DERBoolean;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/DERBoolean;

    .line 20
    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/DERInteger;

    .line 71
    if-eqz p1, :cond_1a

    .line 74
    invoke-static {p1}, Lorg/bouncycastle/asn1/DERBoolean;->getInstance(Z)Lorg/bouncycastle/asn1/DERBoolean;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/DERBoolean;

    .line 76
    new-instance v0, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/DERInteger;

    .line 83
    :goto_19
    return-void

    .line 80
    :cond_1a
    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/DERBoolean;

    .line 81
    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/DERInteger;

    goto :goto_19
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .registers 3
    .parameter "obj"

    .prologue
    .line 32
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;

    if-eqz v0, :cond_a

    .line 34
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;

    .end local p0
    move-object v0, p0

    .line 38
    :goto_9
    return-object v0

    .line 36
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 38
    new-instance v0, Lorg/bouncycastle/asn1/x509/BasicConstraints;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 41
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 26
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPathLenConstraint()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/DERInteger;

    if-eqz v0, :cond_b

    .line 124
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    .line 127
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isCA()Z
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/DERBoolean;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/DERBoolean;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERBoolean;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 141
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 143
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/DERBoolean;

    if-eqz v1, :cond_17

    .line 145
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/DERBoolean;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 147
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_17

    .line 149
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 153
    :cond_17
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const-string v2, "BasicConstraints: isCa("

    .line 158
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/DERInteger;

    if-nez v0, :cond_2b

    .line 160
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/DERBoolean;

    if-nez v0, :cond_d

    .line 162
    const-string v0, "BasicConstraints: isCa(false)"

    .line 166
    :goto_c
    return-object v0

    .line 164
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BasicConstraints: isCa("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 166
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BasicConstraints: isCa("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), pathLenConstraint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method
