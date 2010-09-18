.class public Ljavax/crypto/NoSuchPaddingException;
.super Ljava/security/GeneralSecurityException;
.source "NoSuchPaddingException.java"


# static fields
.field private static final serialVersionUID:J = -0x3f7626dcc02d596aL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method
