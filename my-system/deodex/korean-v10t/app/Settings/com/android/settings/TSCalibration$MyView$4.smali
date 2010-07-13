.class Lcom/android/settings/TSCalibration$MyView$4;
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
    .line 751
    iput-object p1, p0, Lcom/android/settings/TSCalibration$MyView$4;->this$1:Lcom/android/settings/TSCalibration$MyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x0

    .line 753
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView$4;->this$1:Lcom/android/settings/TSCalibration$MyView;

    invoke-static {v0, v1}, Lcom/android/settings/TSCalibration$MyView;->access$102(Lcom/android/settings/TSCalibration$MyView;I)I

    .line 754
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView$4;->this$1:Lcom/android/settings/TSCalibration$MyView;

    iput-boolean v1, v0, Lcom/android/settings/TSCalibration$MyView;->mCalComplete:Z

    .line 755
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView$4;->this$1:Lcom/android/settings/TSCalibration$MyView;

    invoke-static {v0, v1}, Lcom/android/settings/TSCalibration$MyView;->access$002(Lcom/android/settings/TSCalibration$MyView;Z)Z

    .line 757
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView$4;->this$1:Lcom/android/settings/TSCalibration$MyView;

    invoke-virtual {v0}, Lcom/android/settings/TSCalibration$MyView;->invalidate()V

    .line 758
    return-void
.end method
