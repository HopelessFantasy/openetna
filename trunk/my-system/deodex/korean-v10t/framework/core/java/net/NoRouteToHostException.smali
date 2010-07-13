.class public Ljava/net/NoRouteToHostException;
.super Ljava/net/SocketException;
.source "NoRouteToHostException.java"


# static fields
.field private static final serialVersionUID:J = -0x1a55747c3828c11eL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/net/SocketException;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method
