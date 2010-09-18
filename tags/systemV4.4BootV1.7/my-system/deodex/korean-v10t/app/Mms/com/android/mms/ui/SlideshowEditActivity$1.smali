.class Lcom/android/mms/ui/SlideshowEditActivity$1;
.super Ljava/lang/Object;
.source "SlideshowEditActivity.java"

# interfaces
.implements Lcom/android/mms/model/IModelChangedObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowEditActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowEditActivity$1;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .registers 6
    .parameter "model"
    .parameter "dataChanged"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity$1;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    monitor-enter v0

    .line 380
    :try_start_3
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity$1;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/ui/SlideshowEditActivity;->access$002(Lcom/android/mms/ui/SlideshowEditActivity;Z)Z

    .line 381
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_11

    .line 382
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity$1;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowEditActivity;->setResult(I)V

    .line 383
    return-void

    .line 381
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method
