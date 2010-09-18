.class Lcom/android/phone/CallCostsSetCost$3;
.super Ljava/lang/Object;
.source "CallCostsSetCost.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallCostsSetCost;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallCostsSetCost;


# direct methods
.method constructor <init>(Lcom/android/phone/CallCostsSetCost;)V
    .registers 2
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/phone/CallCostsSetCost$3;->this$0:Lcom/android/phone/CallCostsSetCost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 15
    .parameter "v"

    .prologue
    const/4 v12, 0x0

    .line 131
    iget-object v10, p0, Lcom/android/phone/CallCostsSetCost$3;->this$0:Lcom/android/phone/CallCostsSetCost;

    iget v10, v10, Lcom/android/phone/CallCostsSetCost;->mUnit:I

    if-nez v10, :cond_64

    .line 132
    const/4 v7, 0x0

    .line 133
    .local v7, retPrice:I
    iget-object v10, p0, Lcom/android/phone/CallCostsSetCost$3;->this$0:Lcom/android/phone/CallCostsSetCost;

    const-string v11, "NVDB_CALLCOST_CURRENCY_I"

    const-string v12, "EUR"

    invoke-static {v10, v11, v12}, Lcom/android/phone/CallCostsSetCost;->access$100(Lcom/android/phone/CallCostsSetCost;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 134
    .local v6, retCurrency:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/CallCostsSetCost$3;->this$0:Lcom/android/phone/CallCostsSetCost;

    const v11, 0x7f0900bb

    invoke-static {v10, v11}, Lcom/android/phone/CallCostsSetCost;->access$200(Lcom/android/phone/CallCostsSetCost;I)V

    .line 162
    :goto_1a
    const-string v10, "nodebug"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CCSC>Result:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v10, p0, Lcom/android/phone/CallCostsSetCost$3;->this$0:Lcom/android/phone/CallCostsSetCost;

    invoke-static {v10}, Lcom/android/phone/CallCostsSetCost;->access$400(Lcom/android/phone/CallCostsSetCost;)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "unit_price"

    invoke-virtual {v10, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    iget-object v10, p0, Lcom/android/phone/CallCostsSetCost$3;->this$0:Lcom/android/phone/CallCostsSetCost;

    invoke-static {v10}, Lcom/android/phone/CallCostsSetCost;->access$400(Lcom/android/phone/CallCostsSetCost;)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "unit_currency"

    invoke-virtual {v10, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    iget-object v10, p0, Lcom/android/phone/CallCostsSetCost$3;->this$0:Lcom/android/phone/CallCostsSetCost;

    const/4 v11, -0x1

    iget-object v12, p0, Lcom/android/phone/CallCostsSetCost$3;->this$0:Lcom/android/phone/CallCostsSetCost;

    invoke-static {v12}, Lcom/android/phone/CallCostsSetCost;->access$400(Lcom/android/phone/CallCostsSetCost;)Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/phone/CallCostsSetCost;->setResult(ILandroid/content/Intent;)V

    .line 167
    iget-object v10, p0, Lcom/android/phone/CallCostsSetCost$3;->this$0:Lcom/android/phone/CallCostsSetCost;

    invoke-virtual {v10}, Lcom/android/phone/CallCostsSetCost;->finish()V

    .line 168
    .end local v6           #retCurrency:Ljava/lang/String;
    .end local v7           #retPrice:I
    :goto_63
    return-void

    .line 136
    :cond_64
    iget-object v10, p0, Lcom/android/phone/CallCostsSetCost$3;->this$0:Lcom/android/phone/CallCostsSetCost;

    iget-object v10, v10, Lcom/android/phone/CallCostsSetCost;->valueText:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, inString:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/CallCostsSetCost$3;->this$0:Lcom/android/phone/CallCostsSetCost;

    iget-object v10, v10, Lcom/android/phone/CallCostsSetCost;->currencyText:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, inCurrency:Ljava/lang/String;
    if-eqz v3, :cond_8c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_8c

    if-eqz v1, :cond_8c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_95

    .line 140
    :cond_8c
    iget-object v10, p0, Lcom/android/phone/CallCostsSetCost$3;->this$0:Lcom/android/phone/CallCostsSetCost;

    const v11, 0x7f0900ba

    invoke-static {v10, v11}, Lcom/android/phone/CallCostsSetCost;->access$200(Lcom/android/phone/CallCostsSetCost;I)V

    goto :goto_63

    .line 143
    :cond_95
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 144
    .local v2, inPrice:F
    const/high16 v10, 0x42c8

    mul-float/2addr v10, v2

    float-to-int v4, v10

    .line 146
    .local v4, outPrice:I
    if-eqz v4, :cond_a4

    const v10, 0x3b9ac99c

    if-le v4, v10, :cond_ad

    .line 147
    :cond_a4
    iget-object v10, p0, Lcom/android/phone/CallCostsSetCost$3;->this$0:Lcom/android/phone/CallCostsSetCost;

    const v11, 0x7f0900b8

    invoke-static {v10, v11}, Lcom/android/phone/CallCostsSetCost;->access$200(Lcom/android/phone/CallCostsSetCost;I)V

    goto :goto_63

    .line 150
    :cond_ad
    move v7, v4

    .line 151
    .restart local v7       #retPrice:I
    iget-object v10, p0, Lcom/android/phone/CallCostsSetCost$3;->this$0:Lcom/android/phone/CallCostsSetCost;

    iget-object v10, v10, Lcom/android/phone/CallCostsSetCost;->currencyText:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 153
    .restart local v6       #retCurrency:Ljava/lang/String;
    div-int/lit8 v5, v7, 0x64

    .line 154
    .local v5, realNum:I
    rem-int/lit8 v0, v7, 0x64

    .line 155
    .local v0, decNum:I
    const/4 v10, 0x1

    new-array v9, v10, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    .line 156
    .local v9, values:[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/CallCostsSetCost$3;->this$0:Lcom/android/phone/CallCostsSetCost;

    const v11, 0x7f0900bc

    invoke-virtual {v10, v11}, Lcom/android/phone/CallCostsSetCost;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {}, Lcom/android/phone/CallCostsSetCost;->access$300()[Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v9}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 157
    .local v8, summary:Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/android/phone/CallCostsSetCost$3;->this$0:Lcom/android/phone/CallCostsSetCost;

    iget-object v10, v10, Lcom/android/phone/CallCostsSetCost;->mContext:Landroid/content/Context;

    invoke-static {v10, v8, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1a
.end method
