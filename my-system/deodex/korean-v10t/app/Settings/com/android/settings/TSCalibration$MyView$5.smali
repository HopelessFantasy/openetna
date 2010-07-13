.class Lcom/android/settings/TSCalibration$MyView$5;
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
    .line 734
    iput-object p1, p0, Lcom/android/settings/TSCalibration$MyView$5;->this$1:Lcom/android/settings/TSCalibration$MyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView$5;->this$1:Lcom/android/settings/TSCalibration$MyView;

    invoke-virtual {v0}, Lcom/android/settings/TSCalibration$MyView;->save()V

    .line 738
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView$5;->this$1:Lcom/android/settings/TSCalibration$MyView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/TSCalibration$MyView;->mCalComplete:Z

    .line 743
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView$5;->this$1:Lcom/android/settings/TSCalibration$MyView;

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->this$0:Lcom/android/settings/TSCalibration;

    iget-object v1, p0, Lcom/android/settings/TSCalibration$MyView$5;->this$1:Lcom/android/settings/TSCalibration$MyView;

    iget-object v1, v1, Lcom/android/settings/TSCalibration$MyView;->this$0:Lcom/android/settings/TSCalibration;

    const v2, 0x7f080450

    invoke-virtual {v1, v2}, Lcom/android/settings/TSCalibration;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 746
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView$5;->this$1:Lcom/android/settings/TSCalibration$MyView;

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->this$0:Lcom/android/settings/TSCalibration;

    invoke-virtual {v0}, Lcom/android/settings/TSCalibration;->finish()V

    .line 747
    return-void
.end method
