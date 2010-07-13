.class Lcom/android/settings/TSCalibration$MyView$1;
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
    .line 715
    iput-object p1, p0, Lcom/android/settings/TSCalibration$MyView$1;->this$1:Lcom/android/settings/TSCalibration$MyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView$1;->this$1:Lcom/android/settings/TSCalibration$MyView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/TSCalibration$MyView;->mCalComplete:Z

    .line 721
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView$1;->this$1:Lcom/android/settings/TSCalibration$MyView;

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->this$0:Lcom/android/settings/TSCalibration;

    invoke-virtual {v0}, Lcom/android/settings/TSCalibration;->finish()V

    .line 722
    return-void
.end method
