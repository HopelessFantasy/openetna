.class final Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;
.super Ljava/lang/Object;
.source "CopyOnWriteArrayList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CopyOnWriteArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SubListReadData"
.end annotation


# instance fields
.field final data:[Ljava/lang/Object;

.field final size:I


# direct methods
.method constructor <init>(I[Ljava/lang/Object;)V
    .registers 3
    .parameter "size"
    .parameter "data"

    .prologue
    .line 822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 823
    iput p1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->size:I

    .line 824
    iput-object p2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$SubListReadData;->data:[Ljava/lang/Object;

    .line 825
    return-void
.end method
