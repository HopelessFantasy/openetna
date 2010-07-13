.class public interface abstract Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;
.super Ljava/lang/Object;
.source "X9ObjectIdentifiers.java"


# static fields
.field public static final ansi_X9_62:Ljava/lang/String; = "1.2.840.10045"

.field public static final c2onb191v4:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final c2onb191v5:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final c2onb239v4:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final c2onb239v5:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final c2pnb163v1:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final c2pnb163v2:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final c2pnb163v3:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final c2pnb176w1:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final c2pnb208w1:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final c2pnb272w1:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final c2pnb368w1:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final c2png304v1:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final c2tnb191v1:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final c2tnb191v2:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final c2tnb191v3:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final c2tnb239v1:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final c2tnb239v2:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final c2tnb239v3:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final c2tnb359v1:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final c2tnb431r1:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final cTwoCurve:Ljava/lang/String; = "1.2.840.10045.3.0"

.field public static final characteristic_two_field:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final dhpublicnumber:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final ecdsa_with_SHA1:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final ecdsa_with_SHA2:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final ecdsa_with_SHA224:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final ecdsa_with_SHA256:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final ecdsa_with_SHA384:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final ecdsa_with_SHA512:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final ellipticCurve:Ljava/lang/String; = "1.2.840.10045.3"

.field public static final gnBasis:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_dsa:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_dsa_with_sha1:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_ecPublicKey:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_ecSigType:Ljava/lang/String; = "1.2.840.10045.4"

.field public static final id_fieldType:Ljava/lang/String; = "1.2.840.10045.1"

.field public static final id_publicKeyType:Ljava/lang/String; = "1.2.840.10045.2"

.field public static final ppBasis:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final prime192v1:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final prime192v2:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final prime192v3:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final prime239v1:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final prime239v2:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final prime239v3:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final prime256v1:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final primeCurve:Ljava/lang/String; = "1.2.840.10045.3.1"

.field public static final prime_field:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final tpBasis:Lorg/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 16
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.1.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime_field:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 19
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.1.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->characteristic_two_field:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 22
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.1.2.3.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->gnBasis:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 25
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.1.2.3.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->tpBasis:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 28
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.1.2.3.3"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ppBasis:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 33
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.4.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 38
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.2.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 41
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.4.3"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA2:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 44
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA2:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 47
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA2:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 50
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA2:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 53
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA2:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 66
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.3.0.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2pnb163v1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 67
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.3.0.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2pnb163v2:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 68
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.3.0.3"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2pnb163v3:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 69
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.3.0.4"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2pnb176w1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 70
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.3.0.5"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb191v1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 71
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.3.0.6"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb191v2:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 72
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.3.0.7"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb191v3:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 73
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.3.0.8"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2onb191v4:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 74
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.3.0.9"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2onb191v5:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 75
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.3.0.10"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2pnb208w1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 76
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.3.0.11"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb239v1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 77
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.3.0.12"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb239v2:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 78
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.3.0.13"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb239v3:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 79
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.3.0.14"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2onb239v4:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 80
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.3.0.15"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2onb239v5:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 81
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.3.0.16"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2pnb272w1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 82
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.3.0.17"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2png304v1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 83
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.3.0.18"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb359v1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 84
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.3.0.19"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2pnb368w1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 85
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.3.0.20"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->c2tnb431r1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 92
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.3.1.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime192v1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 93
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.3.1.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime192v2:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 94
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.3.1.3"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime192v3:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 95
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.3.1.4"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime239v1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 96
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.3.1.5"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime239v2:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 97
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.3.1.6"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime239v3:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 98
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10045.3.1.7"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime256v1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 106
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10046.2.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 113
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10040.4.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 119
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.840.10040.4.3"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method
