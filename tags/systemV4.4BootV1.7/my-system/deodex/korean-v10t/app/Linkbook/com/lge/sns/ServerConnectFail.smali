.class public Lcom/lge/sns/ServerConnectFail;
.super Lcom/lge/sns/SnsException;
.source "ServerConnectFail.java"


# static fields
.field private static final serialVersionUID:J = -0x2a1ca4c44761d1a3L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/lge/sns/SnsException;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/lge/sns/SnsException;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "detailMessage"
    .parameter "throwable"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/SnsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "throwable"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/lge/sns/SnsException;-><init>(Ljava/lang/Throwable;)V

    .line 33
    return-void
.end method
