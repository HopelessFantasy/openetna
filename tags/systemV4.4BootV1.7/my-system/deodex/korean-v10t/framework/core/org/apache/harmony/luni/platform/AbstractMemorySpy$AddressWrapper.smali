.class final Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;
.super Ljava/lang/Object;
.source "AbstractMemorySpy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/platform/AbstractMemorySpy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AddressWrapper"
.end annotation


# instance fields
.field volatile autoFree:Z

.field final shadow:Lorg/apache/harmony/luni/platform/PlatformAddress;

.field final synthetic this$0:Lorg/apache/harmony/luni/platform/AbstractMemorySpy;

.field final wrAddress:Ljava/lang/ref/PhantomReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/PhantomReference",
            "<",
            "Lorg/apache/harmony/luni/platform/PlatformAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/harmony/luni/platform/AbstractMemorySpy;Lorg/apache/harmony/luni/platform/PlatformAddress;)V
    .registers 5
    .parameter
    .parameter "address"

    .prologue
    .line 47
    iput-object p1, p0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;->this$0:Lorg/apache/harmony/luni/platform/AbstractMemorySpy;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;->autoFree:Z

    .line 49
    invoke-virtual {p2}, Lorg/apache/harmony/luni/platform/PlatformAddress;->duplicate()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;->shadow:Lorg/apache/harmony/luni/platform/PlatformAddress;

    .line 50
    new-instance v0, Ljava/lang/ref/PhantomReference;

    iget-object v1, p1, Lorg/apache/harmony/luni/platform/AbstractMemorySpy;->notifyQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p2, v1}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;->wrAddress:Ljava/lang/ref/PhantomReference;

    .line 51
    return-void
.end method
