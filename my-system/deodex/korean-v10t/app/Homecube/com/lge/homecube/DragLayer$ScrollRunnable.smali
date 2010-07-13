.class Lcom/lge/homecube/DragLayer$ScrollRunnable;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/DragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field final synthetic this$0:Lcom/lge/homecube/DragLayer;


# direct methods
.method constructor <init>(Lcom/lge/homecube/DragLayer;)V
    .registers 2
    .parameter

    .prologue
    .line 715
    iput-object p1, p0, Lcom/lge/homecube/DragLayer$ScrollRunnable;->this$0:Lcom/lge/homecube/DragLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 719
    iget-object v0, p0, Lcom/lge/homecube/DragLayer$ScrollRunnable;->this$0:Lcom/lge/homecube/DragLayer;

    invoke-static {v0}, Lcom/lge/homecube/DragLayer;->access$500(Lcom/lge/homecube/DragLayer;)Lcom/lge/homecube/DragScroller;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 720
    iget v0, p0, Lcom/lge/homecube/DragLayer$ScrollRunnable;->mDirection:I

    if-nez v0, :cond_1c

    .line 721
    iget-object v0, p0, Lcom/lge/homecube/DragLayer$ScrollRunnable;->this$0:Lcom/lge/homecube/DragLayer;

    invoke-static {v0}, Lcom/lge/homecube/DragLayer;->access$500(Lcom/lge/homecube/DragLayer;)Lcom/lge/homecube/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/homecube/DragScroller;->scrollLeft()V

    .line 725
    :goto_15
    iget-object v0, p0, Lcom/lge/homecube/DragLayer$ScrollRunnable;->this$0:Lcom/lge/homecube/DragLayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/homecube/DragLayer;->access$602(Lcom/lge/homecube/DragLayer;I)I

    .line 727
    :cond_1b
    return-void

    .line 723
    :cond_1c
    iget-object v0, p0, Lcom/lge/homecube/DragLayer$ScrollRunnable;->this$0:Lcom/lge/homecube/DragLayer;

    invoke-static {v0}, Lcom/lge/homecube/DragLayer;->access$500(Lcom/lge/homecube/DragLayer;)Lcom/lge/homecube/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/homecube/DragScroller;->scrollRight()V

    goto :goto_15
.end method

.method setDirection(I)V
    .registers 2
    .parameter "direction"

    .prologue
    .line 730
    iput p1, p0, Lcom/lge/homecube/DragLayer$ScrollRunnable;->mDirection:I

    .line 731
    return-void
.end method
