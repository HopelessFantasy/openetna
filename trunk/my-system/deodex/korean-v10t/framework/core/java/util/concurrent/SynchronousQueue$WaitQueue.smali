.class abstract Ljava/util/concurrent/SynchronousQueue$WaitQueue;
.super Ljava/lang/Object;
.source "SynchronousQueue.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SynchronousQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "WaitQueue"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract deq()Ljava/util/concurrent/SynchronousQueue$Node;
.end method

.method abstract enq(Ljava/lang/Object;)Ljava/util/concurrent/SynchronousQueue$Node;
.end method
