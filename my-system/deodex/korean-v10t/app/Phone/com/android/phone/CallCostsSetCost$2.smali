.class Lcom/android/phone/CallCostsSetCost$2;
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
    .line 120
    iput-object p1, p0, Lcom/android/phone/CallCostsSetCost$2;->this$0:Lcom/android/phone/CallCostsSetCost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/phone/CallCostsSetCost$2;->this$0:Lcom/android/phone/CallCostsSetCost;

    iget-object v0, v0, Lcom/android/phone/CallCostsSetCost;->unitAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 122
    return-void
.end method
