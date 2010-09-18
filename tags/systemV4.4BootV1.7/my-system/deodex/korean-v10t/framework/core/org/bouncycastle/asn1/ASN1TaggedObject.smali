.class public abstract Lorg/bouncycastle/asn1/ASN1TaggedObject;
.super Lorg/bouncycastle/asn1/DERObject;
.source "ASN1TaggedObject.java"


# instance fields
.field empty:Z

.field explicit:Z

.field obj:Lorg/bouncycastle/asn1/DEREncodable;

.field tagNo:I


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/DEREncodable;)V
    .registers 5
    .parameter "tagNo"
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    .line 50
    invoke-direct {p0}, Lorg/bouncycastle/asn1/DERObject;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->empty:Z

    .line 15
    iput-boolean v1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    .line 51
    iput-boolean v1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    .line 52
    iput p1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    .line 53
    iput-object p2, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    .line 54
    return-void
.end method

.method public constructor <init>(ZILorg/bouncycastle/asn1/DEREncodable;)V
    .registers 6
    .parameter "explicit"
    .parameter "tagNo"
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    .line 70
    invoke-direct {p0}, Lorg/bouncycastle/asn1/DERObject;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->empty:Z

    .line 15
    iput-boolean v1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    .line 71
    instance-of v0, p3, Lorg/bouncycastle/asn1/ASN1Choice;

    if-eqz v0, :cond_17

    .line 73
    iput-boolean v1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    .line 80
    :goto_12
    iput p2, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    .line 81
    iput-object p3, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    .line 82
    return-void

    .line 77
    :cond_17
    iput-boolean p1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    goto :goto_12
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .registers 3
    .parameter "obj"

    .prologue
    .line 33
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_9

    .line 35
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    return-object p0

    .line 38
    .restart local p0
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .registers 4
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 22
    if-eqz p1, :cond_9

    .line 24
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    return-object p0

    .line 27
    .restart local p0
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "implicitly tagged tagged object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method abstract encode(Lorg/bouncycastle/asn1/DEROutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 87
    instance-of v2, p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-nez v2, :cond_7

    move v2, v4

    .line 114
    :goto_6
    return v2

    .line 92
    :cond_7
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-object v1, v0

    .line 94
    .local v1, other:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    iget v2, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    iget v3, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    if-ne v2, v3, :cond_1d

    iget-boolean v2, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->empty:Z

    iget-boolean v3, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;->empty:Z

    if-ne v2, v3, :cond_1d

    iget-boolean v2, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    iget-boolean v3, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    if-eq v2, v3, :cond_1f

    :cond_1d
    move v2, v4

    .line 96
    goto :goto_6

    .line 99
    :cond_1f
    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    if-nez v2, :cond_29

    .line 101
    iget-object v2, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    if-eqz v2, :cond_35

    move v2, v4

    .line 103
    goto :goto_6

    .line 108
    :cond_29
    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    iget-object v3, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    move v2, v4

    .line 110
    goto :goto_6

    .line 114
    :cond_35
    const/4 v2, 0x1

    goto :goto_6
.end method

.method public getObject()Lorg/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    if-eqz v0, :cond_b

    .line 164
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    .line 167
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getTagNo()I
    .registers 2

    .prologue
    .line 131
    iget v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 119
    iget v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    .line 121
    .local v0, code:I
    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    if-eqz v1, :cond_d

    .line 123
    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 126
    :cond_d
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 150
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->empty:Z

    return v0
.end method

.method public isExplicit()Z
    .registers 2

    .prologue
    .line 145
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
