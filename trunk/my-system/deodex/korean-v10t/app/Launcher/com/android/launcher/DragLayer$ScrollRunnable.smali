.class Lcom/android/launcher/DragLayer$ScrollRunnable;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/DragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field final synthetic this$0:Lcom/android/launcher/DragLayer;


# direct methods
.method constructor <init>(Lcom/android/launcher/DragLayer;)V
    .registers 2
    .parameter

    .prologue
    .line 613
    iput-object p1, p0, Lcom/android/launcher/DragLayer$ScrollRunnable;->this$0:Lcom/android/launcher/DragLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 617
    iget-object v0, p0, Lcom/android/launcher/DragLayer$ScrollRunnable;->this$0:Lcom/android/launcher/DragLayer;

    invoke-static {v0}, Lcom/android/launcher/DragLayer;->access$000(Lcom/android/launcher/DragLayer;)Lcom/android/launcher/DragScroller;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 618
    iget-object v0, p0, Lcom/android/launcher/DragLayer$ScrollRunnable;->this$0:Lcom/android/launcher/DragLayer;

    invoke-static {v0, v1}, Lcom/android/launcher/DragLayer;->access$102(Lcom/android/launcher/DragLayer;Z)Z

    .line 619
    iget v0, p0, Lcom/android/launcher/DragLayer$ScrollRunnable;->mDirection:I

    if-nez v0, :cond_21

    .line 620
    iget-object v0, p0, Lcom/android/launcher/DragLayer$ScrollRunnable;->this$0:Lcom/android/launcher/DragLayer;

    invoke-static {v0}, Lcom/android/launcher/DragLayer;->access$000(Lcom/android/launcher/DragLayer;)Lcom/android/launcher/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher/DragScroller;->scrollLeft()V

    .line 624
    :goto_1b
    iget-object v0, p0, Lcom/android/launcher/DragLayer$ScrollRunnable;->this$0:Lcom/android/launcher/DragLayer;

    invoke-static {v0, v1}, Lcom/android/launcher/DragLayer;->access$202(Lcom/android/launcher/DragLayer;I)I

    .line 626
    :cond_20
    return-void

    .line 622
    :cond_21
    iget-object v0, p0, Lcom/android/launcher/DragLayer$ScrollRunnable;->this$0:Lcom/android/launcher/DragLayer;

    invoke-static {v0}, Lcom/android/launcher/DragLayer;->access$000(Lcom/android/launcher/DragLayer;)Lcom/android/launcher/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher/DragScroller;->scrollRight()V

    goto :goto_1b
.end method

.method setDirection(I)V
    .registers 2
    .parameter "direction"

    .prologue
    .line 629
    iput p1, p0, Lcom/android/launcher/DragLayer$ScrollRunnable;->mDirection:I

    .line 630
    return-void
.end method
