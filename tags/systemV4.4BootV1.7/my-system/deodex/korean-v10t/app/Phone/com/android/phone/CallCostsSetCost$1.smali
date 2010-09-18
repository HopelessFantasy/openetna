.class Lcom/android/phone/CallCostsSetCost$1;
.super Ljava/lang/Object;
.source "CallCostsSetCost.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 107
    iput-object p1, p0, Lcom/android/phone/CallCostsSetCost$1;->this$0:Lcom/android/phone/CallCostsSetCost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 109
    const-string v0, "nodebug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CCSC>ChoiceItems:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/android/phone/CallCostsSetCost$1;->this$0:Lcom/android/phone/CallCostsSetCost;

    iput p2, v0, Lcom/android/phone/CallCostsSetCost;->mUnit:I

    .line 112
    iget-object v0, p0, Lcom/android/phone/CallCostsSetCost$1;->this$0:Lcom/android/phone/CallCostsSetCost;

    iget-object v0, v0, Lcom/android/phone/CallCostsSetCost;->unitText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/CallCostsSetCost$1;->this$0:Lcom/android/phone/CallCostsSetCost;

    iget-object v1, v1, Lcom/android/phone/CallCostsSetCost;->unitItems:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/phone/CallCostsSetCost$1;->this$0:Lcom/android/phone/CallCostsSetCost;

    iget v2, v2, Lcom/android/phone/CallCostsSetCost;->mUnit:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/android/phone/CallCostsSetCost$1;->this$0:Lcom/android/phone/CallCostsSetCost;

    iget-object v1, p0, Lcom/android/phone/CallCostsSetCost$1;->this$0:Lcom/android/phone/CallCostsSetCost;

    iget v1, v1, Lcom/android/phone/CallCostsSetCost;->mUnit:I

    invoke-static {v0, v1}, Lcom/android/phone/CallCostsSetCost;->access$000(Lcom/android/phone/CallCostsSetCost;I)V

    .line 114
    iget-object v0, p0, Lcom/android/phone/CallCostsSetCost$1;->this$0:Lcom/android/phone/CallCostsSetCost;

    iget-object v0, v0, Lcom/android/phone/CallCostsSetCost;->unitAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 115
    return-void
.end method
