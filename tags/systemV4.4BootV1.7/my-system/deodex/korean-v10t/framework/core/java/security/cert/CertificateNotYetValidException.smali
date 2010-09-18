.class public Ljava/security/cert/CertificateNotYetValidException;
.super Ljava/security/cert/CertificateException;
.source "CertificateNotYetValidException.java"


# static fields
.field private static final serialVersionUID:J = 0x3c7356120800b0feL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/security/cert/CertificateException;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method
