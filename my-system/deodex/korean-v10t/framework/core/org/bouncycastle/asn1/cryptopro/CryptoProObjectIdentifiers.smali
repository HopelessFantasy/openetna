.class public interface abstract Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;
.super Ljava/lang/Object;
.source "CryptoProObjectIdentifiers.java"


# static fields
.field public static final GOST_id:Ljava/lang/String; = "1.2.643.2.2"

.field public static final gostR28147_cbc:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_2001:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_2001_CryptoPro_A:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_2001_CryptoPro_B:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_2001_CryptoPro_C:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_2001_CryptoPro_XchA:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_2001_CryptoPro_XchB:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_94:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_94_CryptoPro_A:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_94_CryptoPro_B:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_94_CryptoPro_C:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_94_CryptoPro_D:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_94_CryptoPro_XchA:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_94_CryptoPro_XchB:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_94_CryptoPro_XchC:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3411:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3411_94_CryptoProParamSet:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3411_94_with_gostR3410_2001:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3411_94_with_gostR3410_94:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gost_ElSgDH3410_1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gost_ElSgDH3410_default:Lorg/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-string v3, "1.2.643.2.2.36.1"

    const-string v2, "1.2.643.2.2.36.0"

    .line 11
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.9"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 13
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.21"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR28147_cbc:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 15
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.20"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 16
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.19"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 17
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.4"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_94:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 18
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.3"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_2001:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 21
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.30.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_CryptoProParamSet:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 24
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.32.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94_CryptoPro_A:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 25
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.32.3"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94_CryptoPro_B:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 26
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.32.4"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94_CryptoPro_C:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 27
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.32.5"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94_CryptoPro_D:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 30
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.33.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94_CryptoPro_XchA:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 31
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.33.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94_CryptoPro_XchB:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 32
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.33.3"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94_CryptoPro_XchC:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 35
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.35.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_A:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 36
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.35.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_B:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 37
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.35.3"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_C:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 40
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.36.0"

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_XchA:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 41
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.36.1"

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_XchB:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 43
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.36.0"

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gost_ElSgDH3410_default:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 44
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.36.1"

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gost_ElSgDH3410_1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method
