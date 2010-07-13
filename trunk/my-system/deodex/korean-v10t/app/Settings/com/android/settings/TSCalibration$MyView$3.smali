.class Lcom/android/settings/TSCalibration$MyView$3;
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
    .line 668
    iput-object p1, p0, Lcom/android/settings/TSCalibration$MyView$3;->this$1:Lcom/android/settings/TSCalibration$MyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView$3;->this$1:Lcom/android/settings/TSCalibration$MyView;

    iput p2, v0, Lcom/android/settings/TSCalibration$MyView;->nSelectList:I

    .line 672
    return-void
.end method
