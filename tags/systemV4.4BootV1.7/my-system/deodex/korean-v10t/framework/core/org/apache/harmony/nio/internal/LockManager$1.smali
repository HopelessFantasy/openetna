.class Lorg/apache/harmony/nio/internal/LockManager$1;
.super Ljava/lang/Object;
.source "LockManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/nio/internal/LockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/nio/channels/FileLock;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/nio/internal/LockManager;


# direct methods
.method constructor <init>(Lorg/apache/harmony/nio/internal/LockManager;)V
    .registers 2
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lorg/apache/harmony/nio/internal/LockManager$1;->this$0:Lorg/apache/harmony/nio/internal/LockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    check-cast p1, Ljava/nio/channels/FileLock;

    .end local p1
    check-cast p2, Ljava/nio/channels/FileLock;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/nio/internal/LockManager$1;->compare(Ljava/nio/channels/FileLock;Ljava/nio/channels/FileLock;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/nio/channels/FileLock;Ljava/nio/channels/FileLock;)I
    .registers 8
    .parameter "lock1"
    .parameter "lock2"

    .prologue
    .line 35
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v0

    .line 36
    .local v0, position1:J
    invoke-virtual {p2}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v2

    .line 37
    .local v2, position2:J
    cmp-long v4, v0, v2

    if-lez v4, :cond_e

    const/4 v4, 0x1

    :goto_d
    return v4

    :cond_e
    cmp-long v4, v0, v2

    if-gez v4, :cond_14

    const/4 v4, -0x1

    goto :goto_d

    :cond_14
    const/4 v4, 0x0

    goto :goto_d
.end method
