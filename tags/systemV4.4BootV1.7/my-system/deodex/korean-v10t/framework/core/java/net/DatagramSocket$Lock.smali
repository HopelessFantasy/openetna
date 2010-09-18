.class Ljava/net/DatagramSocket$Lock;
.super Ljava/lang/Object;
.source "DatagramSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/DatagramSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Lock"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/net/DatagramSocket$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/net/DatagramSocket$Lock;-><init>()V

    return-void
.end method
