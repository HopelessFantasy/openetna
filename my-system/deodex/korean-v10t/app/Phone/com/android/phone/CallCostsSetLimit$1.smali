.class Lcom/android/phone/CallCostsSetLimit$1;
.super Ljava/lang/Object;
.source "CallCostsSetLimit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallCostsSetLimit;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallCostsSetLimit;


# direct methods
.method constructor <init>(Lcom/android/phone/CallCostsSetLimit;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/phone/CallCostsSetLimit$1;->this$0:Lcom/android/phone/CallCostsSetLimit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 65
    iget-object v0, p0, Lcom/android/phone/CallCostsSetLimit$1;->this$0:Lcom/android/phone/CallCostsSetLimit;

    iget-object v0, v0, Lcom/android/phone/CallCostsSetLimit;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-ne v0, v1, :cond_13

    .line 66
    iget-object v0, p0, Lcom/android/phone/CallCostsSetLimit$1;->this$0:Lcom/android/phone/CallCostsSetLimit;

    iget-object v0, v0, Lcom/android/phone/CallCostsSetLimit;->maxText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 70
    :goto_12
    return-void

    .line 69
    :cond_13
    iget-object v0, p0, Lcom/android/phone/CallCostsSetLimit$1;->this$0:Lcom/android/phone/CallCostsSetLimit;

    iget-object v0, v0, Lcom/android/phone/CallCostsSetLimit;->maxText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_12
.end method
