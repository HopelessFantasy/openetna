.class public Ljavax/security/cert/CertificateException;
.super Ljava/lang/Exception;
.source "CertificateException.java"


# static fields
.field private static final serialVersionUID:J = -0x4fe5bb0f873bab0aL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method
