.class public Lorg/bouncycastle/asn1/BERNull;
.super Lorg/bouncycastle/asn1/DERNull;
.source "BERNull.java"


# static fields
.field public static final THE_ONE:Lorg/bouncycastle/asn1/BERNull;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    new-instance v0, Lorg/bouncycastle/asn1/BERNull;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/BERNull;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/BERNull;->THE_ONE:Lorg/bouncycastle/asn1/BERNull;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/bouncycastle/asn1/DERNull;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method encode(Lorg/bouncycastle/asn1/DEROutputStream;)V
    .registers 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1OutputStream;

    if-nez v0, :cond_8

    instance-of v0, p1, Lorg/bouncycastle/asn1/BEROutputStream;

    if-eqz v0, :cond_d

    .line 28
    :cond_8
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 34
    :goto_c
    return-void

    .line 32
    :cond_d
    invoke-super {p0, p1}, Lorg/bouncycastle/asn1/DERNull;->encode(Lorg/bouncycastle/asn1/DEROutputStream;)V

    goto :goto_c
.end method
