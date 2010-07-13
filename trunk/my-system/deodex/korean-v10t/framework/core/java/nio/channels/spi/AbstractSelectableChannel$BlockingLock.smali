.class Ljava/nio/channels/spi/AbstractSelectableChannel$BlockingLock;
.super Ljava/lang/Object;
.source "AbstractSelectableChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/spi/AbstractSelectableChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockingLock"
.end annotation


# instance fields
.field final synthetic this$0:Ljava/nio/channels/spi/AbstractSelectableChannel;


# direct methods
.method private constructor <init>(Ljava/nio/channels/spi/AbstractSelectableChannel;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel$BlockingLock;->this$0:Ljava/nio/channels/spi/AbstractSelectableChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/channels/spi/AbstractSelectableChannel;Ljava/nio/channels/spi/AbstractSelectableChannel$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel$BlockingLock;-><init>(Ljava/nio/channels/spi/AbstractSelectableChannel;)V

    return-void
.end method
