.class public Ljavax/net/ssl/SSLPeerUnverifiedException;
.super Ljavax/net/ssl/SSLException;
.source "SSLPeerUnverifiedException.java"


# static fields
.field private static final serialVersionUID:J = -0x7bc87985330147e3L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "reason"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method
