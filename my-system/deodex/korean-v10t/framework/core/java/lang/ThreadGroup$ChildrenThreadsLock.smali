.class Ljava/lang/ThreadGroup$ChildrenThreadsLock;
.super Ljava/lang/Object;
.source "ThreadGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ThreadGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildrenThreadsLock"
.end annotation


# instance fields
.field final synthetic this$0:Ljava/lang/ThreadGroup;


# direct methods
.method private constructor <init>(Ljava/lang/ThreadGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Ljava/lang/ThreadGroup$ChildrenThreadsLock;->this$0:Ljava/lang/ThreadGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/ThreadGroup$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ljava/lang/ThreadGroup$ChildrenThreadsLock;-><init>(Ljava/lang/ThreadGroup;)V

    return-void
.end method
