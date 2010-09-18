.class Lcom/android/phone/CallCostsSetLimit$3;
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
    .line 110
    iput-object p1, p0, Lcom/android/phone/CallCostsSetLimit$3;->this$0:Lcom/android/phone/CallCostsSetLimit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/phone/CallCostsSetLimit$3;->this$0:Lcom/android/phone/CallCostsSetLimit;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/CallCostsSetLimit$3;->this$0:Lcom/android/phone/CallCostsSetLimit;

    invoke-static {v2}, Lcom/android/phone/CallCostsSetLimit;->access$000(Lcom/android/phone/CallCostsSetLimit;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallCostsSetLimit;->setResult(ILandroid/content/Intent;)V

    .line 113
    iget-object v0, p0, Lcom/android/phone/CallCostsSetLimit$3;->this$0:Lcom/android/phone/CallCostsSetLimit;

    invoke-virtual {v0}, Lcom/android/phone/CallCostsSetLimit;->finish()V

    .line 114
    return-void
.end method
