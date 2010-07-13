.class Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$AcceptLock;
.super Ljava/lang/Object;
.source "ServerSocketChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AcceptLock"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;


# direct methods
.method private constructor <init>(Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$AcceptLock;->this$0:Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$AcceptLock;-><init>(Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;)V

    return-void
.end method
