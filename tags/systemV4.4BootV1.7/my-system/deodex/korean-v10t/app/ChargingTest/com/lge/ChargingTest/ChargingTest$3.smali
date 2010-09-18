.class Lcom/lge/ChargingTest/ChargingTest$3;
.super Ljava/lang/Object;
.source "ChargingTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/ChargingTest/ChargingTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/ChargingTest/ChargingTest;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/lge/ChargingTest/ChargingTest;Landroid/widget/CheckBox;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/lge/ChargingTest/ChargingTest$3;->this$0:Lcom/lge/ChargingTest/ChargingTest;

    iput-object p2, p0, Lcom/lge/ChargingTest/ChargingTest$3;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/lge/ChargingTest/ChargingTest$3;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 187
    const/4 v0, 0x1

    sput v0, Lcom/lge/ChargingTest/ChargingTest;->SavingBattLogStatus:I

    .line 188
    iget-object v0, p0, Lcom/lge/ChargingTest/ChargingTest$3;->this$0:Lcom/lge/ChargingTest/ChargingTest;

    iget-object v0, v0, Lcom/lge/ChargingTest/ChargingTest;->t:Landroid/widget/TextView;

    const-string v1, " Saving Battery log "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :goto_14
    return-void

    .line 190
    :cond_15
    const/4 v0, 0x0

    sput v0, Lcom/lge/ChargingTest/ChargingTest;->SavingBattLogStatus:I

    .line 191
    iget-object v0, p0, Lcom/lge/ChargingTest/ChargingTest$3;->this$0:Lcom/lge/ChargingTest/ChargingTest;

    iget-object v0, v0, Lcom/lge/ChargingTest/ChargingTest;->t:Landroid/widget/TextView;

    const-string v1, " Not Saving log "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_14
.end method
