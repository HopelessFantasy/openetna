.class Ljava/lang/ProcessManager$ProcessReference;
.super Ljava/lang/ref/WeakReference;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Ljava/lang/ProcessManager$ProcessImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final processId:I


# direct methods
.method public constructor <init>(Ljava/lang/ProcessManager$ProcessImpl;Ljava/lang/ProcessManager$ProcessReferenceQueue;)V
    .registers 4
    .parameter "referent"
    .parameter "referenceQueue"

    .prologue
    .line 304
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 305
    iget v0, p1, Ljava/lang/ProcessManager$ProcessImpl;->id:I

    iput v0, p0, Ljava/lang/ProcessManager$ProcessReference;->processId:I

    .line 306
    return-void
.end method
