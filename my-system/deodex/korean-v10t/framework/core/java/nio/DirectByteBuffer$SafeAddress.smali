.class final Ljava/nio/DirectByteBuffer$SafeAddress;
.super Ljava/lang/Object;
.source "DirectByteBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/DirectByteBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SafeAddress"
.end annotation


# instance fields
.field protected final address:Lorg/apache/harmony/luni/platform/PlatformAddress;

.field protected volatile isValid:Z


# direct methods
.method protected constructor <init>(Lorg/apache/harmony/luni/platform/PlatformAddress;)V
    .registers 3
    .parameter "address"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/DirectByteBuffer$SafeAddress;->isValid:Z

    .line 48
    iput-object p1, p0, Ljava/nio/DirectByteBuffer$SafeAddress;->address:Lorg/apache/harmony/luni/platform/PlatformAddress;

    .line 49
    return-void
.end method
