.class public Ljava/net/PortUnreachableException;
.super Ljava/net/SocketException;
.source "PortUnreachableException.java"


# static fields
.field private static final serialVersionUID:J = 0x7570fd1b086d9bbbL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/net/SocketException;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method
