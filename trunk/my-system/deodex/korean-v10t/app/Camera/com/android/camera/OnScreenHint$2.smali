.class Lcom/android/camera/OnScreenHint$2;
.super Ljava/lang/Object;
.source "OnScreenHint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/OnScreenHint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/OnScreenHint;


# direct methods
.method constructor <init>(Lcom/android/camera/OnScreenHint;)V
    .registers 2
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/camera/OnScreenHint$2;->this$0:Lcom/android/camera/OnScreenHint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/camera/OnScreenHint$2;->this$0:Lcom/android/camera/OnScreenHint;

    invoke-static {v0}, Lcom/android/camera/OnScreenHint;->access$100(Lcom/android/camera/OnScreenHint;)V

    .line 293
    return-void
.end method
