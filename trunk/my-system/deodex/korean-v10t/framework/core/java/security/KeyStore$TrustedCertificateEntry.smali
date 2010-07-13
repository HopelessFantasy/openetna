.class public final Ljava/security/KeyStore$TrustedCertificateEntry;
.super Ljava/lang/Object;
.source "KeyStore.java"

# interfaces
.implements Ljava/security/KeyStore$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrustedCertificateEntry"
.end annotation


# instance fields
.field private final trustCertificate:Ljava/security/cert/Certificate;


# direct methods
.method public constructor <init>(Ljava/security/cert/Certificate;)V
    .registers 4
    .parameter "trustCertificate"

    .prologue
    .line 1526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1527
    if-nez p1, :cond_11

    .line 1528
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.4E"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1530
    :cond_11
    iput-object p1, p0, Ljava/security/KeyStore$TrustedCertificateEntry;->trustCertificate:Ljava/security/cert/Certificate;

    .line 1531
    return-void
.end method


# virtual methods
.method public getTrustedCertificate()Ljava/security/cert/Certificate;
    .registers 2

    .prologue
    .line 1540
    iget-object v0, p0, Ljava/security/KeyStore$TrustedCertificateEntry;->trustCertificate:Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trusted certificate entry:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/KeyStore$TrustedCertificateEntry;->trustCertificate:Ljava/security/cert/Certificate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
