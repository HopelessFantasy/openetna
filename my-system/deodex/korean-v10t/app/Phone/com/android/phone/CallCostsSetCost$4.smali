.class Lcom/android/phone/CallCostsSetCost$4;
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
    .line 172
    iput-object p1, p0, Lcom/android/phone/CallCostsSetCost$4;->this$0:Lcom/android/phone/CallCostsSetCost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/phone/CallCostsSetCost$4;->this$0:Lcom/android/phone/CallCostsSetCost;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/CallCostsSetCost$4;->this$0:Lcom/android/phone/CallCostsSetCost;

    invoke-static {v2}, Lcom/android/phone/CallCostsSetCost;->access$400(Lcom/android/phone/CallCostsSetCost;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallCostsSetCost;->setResult(ILandroid/content/Intent;)V

    .line 175
    iget-object v0, p0, Lcom/android/phone/CallCostsSetCost$4;->this$0:Lcom/android/phone/CallCostsSetCost;

    invoke-virtual {v0}, Lcom/android/phone/CallCostsSetCost;->finish()V

    .line 176
    return-void
.end method
