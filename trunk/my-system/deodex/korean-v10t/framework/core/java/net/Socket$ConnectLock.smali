.class Ljava/net/Socket$ConnectLock;
.super Ljava/lang/Object;
.source "Socket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/Socket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectLock"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/net/Socket$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/net/Socket$ConnectLock;-><init>()V

    return-void
.end method
