.class public Ljavax/security/auth/login/LoginException;
.super Ljava/security/GeneralSecurityException;
.source "LoginException.java"


# static fields
.field private static final serialVersionUID:J = -0x40ef790a8a202ae8L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method
