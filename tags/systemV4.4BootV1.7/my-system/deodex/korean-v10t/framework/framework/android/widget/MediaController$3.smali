.class Landroid/widget/MediaController$3;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MediaController;


# direct methods
.method constructor <init>(Landroid/widget/MediaController;)V
    .registers 2
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Landroid/widget/MediaController$3;->this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 444
    const-string v0, "MediaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPauseListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/MediaController$3;->this$0:Landroid/widget/MediaController;

    invoke-static {v2}, Landroid/widget/MediaController;->access$600(Landroid/widget/MediaController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/MediaController$3;->this$0:Landroid/widget/MediaController;

    invoke-static {v2}, Landroid/widget/MediaController;->access$700(Landroid/widget/MediaController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Landroid/widget/MediaController$3;->this$0:Landroid/widget/MediaController;

    invoke-static {v0}, Landroid/widget/MediaController;->access$600(Landroid/widget/MediaController;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_41

    iget-object v0, p0, Landroid/widget/MediaController$3;->this$0:Landroid/widget/MediaController;

    invoke-static {v0}, Landroid/widget/MediaController;->access$700(Landroid/widget/MediaController;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_41

    .line 453
    :goto_40
    return-void

    .line 451
    :cond_41
    iget-object v0, p0, Landroid/widget/MediaController$3;->this$0:Landroid/widget/MediaController;

    invoke-static {v0}, Landroid/widget/MediaController;->access$800(Landroid/widget/MediaController;)V

    .line 452
    iget-object v0, p0, Landroid/widget/MediaController$3;->this$0:Landroid/widget/MediaController;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    goto :goto_40
.end method
