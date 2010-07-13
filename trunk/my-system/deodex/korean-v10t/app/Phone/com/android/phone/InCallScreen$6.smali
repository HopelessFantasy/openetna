.class Lcom/android/phone/InCallScreen$6;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->handleBackKey()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 1468
    iput-object p1, p0, Lcom/android/phone/InCallScreen$6;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/android/phone/InCallScreen$6;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$1800(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1471
    iget-object v0, p0, Lcom/android/phone/InCallScreen$6;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$1902(Lcom/android/phone/InCallScreen;Z)Z

    .line 1472
    if-nez p2, :cond_17

    .line 1475
    iget-object v0, p0, Lcom/android/phone/InCallScreen$6;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->hangupAllCallStep1()V

    .line 1480
    :goto_16
    return-void

    .line 1478
    :cond_17
    iget-object v0, p0, Lcom/android/phone/InCallScreen$6;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->finish()V

    goto :goto_16
.end method
