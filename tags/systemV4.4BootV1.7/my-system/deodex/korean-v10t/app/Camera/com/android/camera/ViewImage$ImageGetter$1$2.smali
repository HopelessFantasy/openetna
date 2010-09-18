.class Lcom/android/camera/ViewImage$ImageGetter$1$2;
.super Ljava/lang/Object;
.source "ViewImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ViewImage$ImageGetter$1;->completedCallback(Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/ViewImage$ImageGetter$1;

.field final synthetic val$wasCanceled:Z


# direct methods
.method constructor <init>(Lcom/android/camera/ViewImage$ImageGetter$1;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 733
    iput-object p1, p0, Lcom/android/camera/ViewImage$ImageGetter$1$2;->this$2:Lcom/android/camera/ViewImage$ImageGetter$1;

    iput-boolean p2, p0, Lcom/android/camera/ViewImage$ImageGetter$1$2;->val$wasCanceled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/camera/ViewImage$ImageGetter$1$2;->this$2:Lcom/android/camera/ViewImage$ImageGetter$1;

    iget-object v0, v0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    invoke-static {v0}, Lcom/android/camera/ViewImage$ImageGetter;->access$2500(Lcom/android/camera/ViewImage$ImageGetter;)Lcom/android/camera/ViewImage$ImageGetterCallback;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/ViewImage$ImageGetter$1$2;->val$wasCanceled:Z

    invoke-interface {v0, v1}, Lcom/android/camera/ViewImage$ImageGetterCallback;->completed(Z)V

    .line 735
    return-void
.end method
