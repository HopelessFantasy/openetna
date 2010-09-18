.class public abstract Lorg/bouncycastle/asn1/ASN1Null;
.super Lorg/bouncycastle/asn1/DERObject;
.source "ASN1Null.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/bouncycastle/asn1/DERObject;-><init>()V

    .line 14
    return-void
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
    .registers 3
    .parameter "o"

    .prologue
    .line 25
    if-eqz p1, :cond_6

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Null;

    if-nez v0, :cond_8

    .line 27
    :cond_6
    const/4 v0, 0x0

    .line 30
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    const-string v0, "NULL"

    return-object v0
.end method
