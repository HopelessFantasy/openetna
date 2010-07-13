.class Lcom/lge/hiddenmenu/module_test/ChargingTest$3;
.super Ljava/lang/Object;
.source "ChargingTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/module_test/ChargingTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/module_test/ChargingTest;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/module_test/ChargingTest;Landroid/widget/CheckBox;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/lge/hiddenmenu/module_test/ChargingTest$3;->this$0:Lcom/lge/hiddenmenu/module_test/ChargingTest;

    iput-object p2, p0, Lcom/lge/hiddenmenu/module_test/ChargingTest$3;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lge/hiddenmenu/module_test/ChargingTest$3;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 185
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/lge/hiddenmenu/module_test/ChargingTest;->access$402(I)I

    .line 186
    iget-object v0, p0, Lcom/lge/hiddenmenu/module_test/ChargingTest$3;->this$0:Lcom/lge/hiddenmenu/module_test/ChargingTest;

    iget-object v0, v0, Lcom/lge/hiddenmenu/module_test/ChargingTest;->t:Landroid/widget/TextView;

    const-string v1, " Saving Battery log "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :goto_15
    return-void

    .line 188
    :cond_16
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lge/hiddenmenu/module_test/ChargingTest;->access$402(I)I

    .line 189
    iget-object v0, p0, Lcom/lge/hiddenmenu/module_test/ChargingTest$3;->this$0:Lcom/lge/hiddenmenu/module_test/ChargingTest;

    iget-object v0, v0, Lcom/lge/hiddenmenu/module_test/ChargingTest;->t:Landroid/widget/TextView;

    const-string v1, " Not Saving log "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15
.end method
