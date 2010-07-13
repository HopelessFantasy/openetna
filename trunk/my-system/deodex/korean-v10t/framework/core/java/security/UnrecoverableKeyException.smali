.class public Ljava/security/UnrecoverableKeyException;
.super Ljava/security/GeneralSecurityException;
.source "UnrecoverableKeyException.java"


# static fields
.field private static final serialVersionUID:J = 0x64f637531e15766dL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method
