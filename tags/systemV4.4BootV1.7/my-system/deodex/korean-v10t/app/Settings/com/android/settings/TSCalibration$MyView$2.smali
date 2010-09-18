.class Lcom/android/settings/TSCalibration$MyView$2;
.super Ljava/lang/Object;
.source "TSCalibration.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TSCalibration$MyView;->onDraw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/TSCalibration$MyView;


# direct methods
.method constructor <init>(Lcom/android/settings/TSCalibration$MyView;)V
    .registers 2
    .parameter

    .prologue
    .line 677
    iput-object p1, p0, Lcom/android/settings/TSCalibration$MyView$2;->this$1:Lcom/android/settings/TSCalibration$MyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 681
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView$2;->this$1:Lcom/android/settings/TSCalibration$MyView;

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->nSelectList:I

    if-nez v0, :cond_1c

    .line 690
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView$2;->this$1:Lcom/android/settings/TSCalibration$MyView;

    invoke-static {v0, v1}, Lcom/android/settings/TSCalibration$MyView;->access$002(Lcom/android/settings/TSCalibration$MyView;Z)Z

    .line 692
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView$2;->this$1:Lcom/android/settings/TSCalibration$MyView;

    invoke-static {v0, v3}, Lcom/android/settings/TSCalibration$MyView;->access$102(Lcom/android/settings/TSCalibration$MyView;I)I

    .line 693
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView$2;->this$1:Lcom/android/settings/TSCalibration$MyView;

    iput-boolean v3, v0, Lcom/android/settings/TSCalibration$MyView;->mCalComplete:Z

    .line 695
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView$2;->this$1:Lcom/android/settings/TSCalibration$MyView;

    invoke-virtual {v0}, Lcom/android/settings/TSCalibration$MyView;->invalidate()V

    .line 711
    :goto_1b
    return-void

    .line 699
    :cond_1c
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView$2;->this$1:Lcom/android/settings/TSCalibration$MyView;

    invoke-virtual {v0}, Lcom/android/settings/TSCalibration$MyView;->save()V

    .line 701
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView$2;->this$1:Lcom/android/settings/TSCalibration$MyView;

    iput-boolean v1, v0, Lcom/android/settings/TSCalibration$MyView;->mCalComplete:Z

    .line 706
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView$2;->this$1:Lcom/android/settings/TSCalibration$MyView;

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->this$0:Lcom/android/settings/TSCalibration;

    iget-object v1, p0, Lcom/android/settings/TSCalibration$MyView$2;->this$1:Lcom/android/settings/TSCalibration$MyView;

    iget-object v1, v1, Lcom/android/settings/TSCalibration$MyView;->this$0:Lcom/android/settings/TSCalibration;

    const v2, 0x7f080450

    invoke-virtual {v1, v2}, Lcom/android/settings/TSCalibration;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 709
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView$2;->this$1:Lcom/android/settings/TSCalibration$MyView;

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->this$0:Lcom/android/settings/TSCalibration;

    invoke-virtual {v0}, Lcom/android/settings/TSCalibration;->finish()V

    goto :goto_1b
.end method
