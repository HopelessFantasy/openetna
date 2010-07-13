.class public interface abstract Lorg/bouncycastle/asn1/cms/CMSAttributes;
.super Ljava/lang/Object;
.source "CMSAttributes.java"


# static fields
.field public static final contentType:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final counterSignature:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final messageDigest:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final signingTime:Lorg/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_contentType:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/cms/CMSAttributes;->contentType:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 9
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_messageDigest:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/cms/CMSAttributes;->messageDigest:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 10
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_signingTime:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/cms/CMSAttributes;->signingTime:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 11
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_counterSignature:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method
