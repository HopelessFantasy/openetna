.class public interface abstract Lorg/bouncycastle/asn1/esf/ESFAttributes;
.super Ljava/lang/Object;
.source "ESFAttributes.java"


# static fields
.field public static final commitmentType:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final sigPolicyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final signerLocation:Lorg/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_sigPolicyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/esf/ESFAttributes;->sigPolicyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 9
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_commitmentType:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/esf/ESFAttributes;->commitmentType:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 10
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_signerLocation:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/esf/ESFAttributes;->signerLocation:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method
