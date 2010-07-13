.class public Ljavax/crypto/ShortBufferException;
.super Ljava/security/GeneralSecurityException;
.source "ShortBufferException.java"


# static fields
.field private static final serialVersionUID:J = 0x74f54573adc91683L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method
