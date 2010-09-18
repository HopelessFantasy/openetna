.class public Lorg/bouncycastle/asn1/DERNull;
.super Lorg/bouncycastle/asn1/ASN1Null;
.source "DERNull.java"


# static fields
.field public static final THE_ONE:Lorg/bouncycastle/asn1/DERNull;

.field private static final zeroBytes:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    new-instance v0, Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/DERNull;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/DERNull;->THE_ONE:Lorg/bouncycastle/asn1/DERNull;

    .line 17
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/asn1/DERNull;->zeroBytes:[B

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Null;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method encode(Lorg/bouncycastle/asn1/DEROutputStream;)V
    .registers 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x5

    sget-object v1, Lorg/bouncycastle/asn1/DERNull;->zeroBytes:[B

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 29
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 34
    if-eqz p1, :cond_6

    instance-of v0, p1, Lorg/bouncycastle/asn1/DERNull;

    if-nez v0, :cond_8

    .line 36
    :cond_6
    const/4 v0, 0x0

    .line 39
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method
