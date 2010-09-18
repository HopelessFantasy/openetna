.class Lcom/android/phone/CallCostsSetLimit$2;
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
    .line 74
    iput-object p1, p0, Lcom/android/phone/CallCostsSetLimit$2;->this$0:Lcom/android/phone/CallCostsSetLimit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "v"

    .prologue
    const v8, 0x7f0900bd

    const/4 v6, 0x0

    const-string v7, "unit_limit"

    .line 76
    iget-object v4, p0, Lcom/android/phone/CallCostsSetLimit$2;->this$0:Lcom/android/phone/CallCostsSetLimit;

    iget-object v4, v4, Lcom/android/phone/CallCostsSetLimit;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_32

    .line 77
    iget-object v4, p0, Lcom/android/phone/CallCostsSetLimit$2;->this$0:Lcom/android/phone/CallCostsSetLimit;

    invoke-static {v4}, Lcom/android/phone/CallCostsSetLimit;->access$000(Lcom/android/phone/CallCostsSetLimit;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "unit_limit"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    iget-object v4, p0, Lcom/android/phone/CallCostsSetLimit$2;->this$0:Lcom/android/phone/CallCostsSetLimit;

    invoke-static {v4, v8}, Lcom/android/phone/CallCostsSetLimit;->access$100(Lcom/android/phone/CallCostsSetLimit;I)V

    .line 104
    :goto_20
    iget-object v4, p0, Lcom/android/phone/CallCostsSetLimit$2;->this$0:Lcom/android/phone/CallCostsSetLimit;

    const/4 v5, -0x1

    iget-object v6, p0, Lcom/android/phone/CallCostsSetLimit$2;->this$0:Lcom/android/phone/CallCostsSetLimit;

    invoke-static {v6}, Lcom/android/phone/CallCostsSetLimit;->access$000(Lcom/android/phone/CallCostsSetLimit;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/phone/CallCostsSetLimit;->setResult(ILandroid/content/Intent;)V

    .line 105
    iget-object v4, p0, Lcom/android/phone/CallCostsSetLimit$2;->this$0:Lcom/android/phone/CallCostsSetLimit;

    invoke-virtual {v4}, Lcom/android/phone/CallCostsSetLimit;->finish()V

    .line 106
    :goto_31
    return-void

    .line 80
    :cond_32
    iget-object v4, p0, Lcom/android/phone/CallCostsSetLimit$2;->this$0:Lcom/android/phone/CallCostsSetLimit;

    iget-object v4, v4, Lcom/android/phone/CallCostsSetLimit;->maxText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, inAcmMax:Ljava/lang/String;
    if-eqz v0, :cond_46

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4f

    .line 83
    :cond_46
    iget-object v4, p0, Lcom/android/phone/CallCostsSetLimit$2;->this$0:Lcom/android/phone/CallCostsSetLimit;

    const v5, 0x7f0900ba

    invoke-static {v4, v5}, Lcom/android/phone/CallCostsSetLimit;->access$100(Lcom/android/phone/CallCostsSetLimit;I)V

    goto :goto_31

    .line 86
    :cond_4f
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 88
    .local v1, retAcmMax:I
    if-nez v1, :cond_66

    .line 89
    iget-object v4, p0, Lcom/android/phone/CallCostsSetLimit$2;->this$0:Lcom/android/phone/CallCostsSetLimit;

    invoke-static {v4}, Lcom/android/phone/CallCostsSetLimit;->access$000(Lcom/android/phone/CallCostsSetLimit;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "unit_limit"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    iget-object v4, p0, Lcom/android/phone/CallCostsSetLimit$2;->this$0:Lcom/android/phone/CallCostsSetLimit;

    invoke-static {v4, v8}, Lcom/android/phone/CallCostsSetLimit;->access$100(Lcom/android/phone/CallCostsSetLimit;I)V

    goto :goto_20

    .line 91
    :cond_66
    const v4, 0x2625a00

    if-le v1, v4, :cond_74

    .line 92
    iget-object v4, p0, Lcom/android/phone/CallCostsSetLimit$2;->this$0:Lcom/android/phone/CallCostsSetLimit;

    const v5, 0x7f0900b9

    invoke-static {v4, v5}, Lcom/android/phone/CallCostsSetLimit;->access$100(Lcom/android/phone/CallCostsSetLimit;I)V

    goto :goto_31

    .line 95
    :cond_74
    iget-object v4, p0, Lcom/android/phone/CallCostsSetLimit$2;->this$0:Lcom/android/phone/CallCostsSetLimit;

    invoke-static {v4}, Lcom/android/phone/CallCostsSetLimit;->access$000(Lcom/android/phone/CallCostsSetLimit;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "unit_limit"

    invoke-virtual {v4, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 98
    .local v3, values:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/CallCostsSetLimit$2;->this$0:Lcom/android/phone/CallCostsSetLimit;

    const v5, 0x7f0900be

    invoke-virtual {v4, v5}, Lcom/android/phone/CallCostsSetLimit;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/CallCostsSetLimit;->access$200()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 99
    .local v2, summary:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/phone/CallCostsSetLimit$2;->this$0:Lcom/android/phone/CallCostsSetLimit;

    iget-object v4, v4, Lcom/android/phone/CallCostsSetLimit;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_20
.end method
