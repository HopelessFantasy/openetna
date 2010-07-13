.class public Ljavax/crypto/BadPaddingException;
.super Ljava/security/GeneralSecurityException;
.source "BadPaddingException.java"


# static fields
.field private static final serialVersionUID:J = -0x49c2cb2a941ef57bL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method
