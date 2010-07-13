.class Lorg/apache/harmony/nio/internal/FileChannelImpl$RepositioningLock;
.super Ljava/lang/Object;
.source "FileChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/nio/internal/FileChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RepositioningLock"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/nio/internal/FileChannelImpl;


# direct methods
.method private constructor <init>(Lorg/apache/harmony/nio/internal/FileChannelImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl$RepositioningLock;->this$0:Lorg/apache/harmony/nio/internal/FileChannelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/nio/internal/FileChannelImpl;Lorg/apache/harmony/nio/internal/FileChannelImpl$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lorg/apache/harmony/nio/internal/FileChannelImpl$RepositioningLock;-><init>(Lorg/apache/harmony/nio/internal/FileChannelImpl;)V

    return-void
.end method
