.class public interface abstract Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;
.super Ljava/lang/Object;
.source "OCSPObjectIdentifiers.java"


# static fields
.field public static final id_pkix_ocsp:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_pkix_ocsp_archive_cutoff:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_pkix_ocsp_basic:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_pkix_ocsp_crl:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_pkix_ocsp_nocheck:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_pkix_ocsp_nonce:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_pkix_ocsp_response:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final id_pkix_ocsp_service_locator:Lorg/bouncycastle/asn1/DERObjectIdentifier; = null

.field public static final pkix_ocsp:Ljava/lang/String; = "1.3.6.1.5.5.7.48.1"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 9
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.48.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 10
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.48.1.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_basic:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 15
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.48.1.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_nonce:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 16
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.48.1.3"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_crl:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 18
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.48.1.4"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_response:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 19
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.48.1.5"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_nocheck:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 20
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.48.1.6"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_archive_cutoff:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 21
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.48.1.7"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_service_locator:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method
