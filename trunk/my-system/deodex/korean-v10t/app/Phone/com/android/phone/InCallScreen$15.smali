.class Lcom/android/phone/InCallScreen$15;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
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
    .line 3373
    iput-object p1, p0, Lcom/android/phone/InCallScreen$15;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 3374
    const/16 v0, 0x52

    if-eq p2, v0, :cond_1c

    .line 3375
    if-eqz p1, :cond_1a

    .line 3376
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3377
    iget-object v0, p0, Lcom/android/phone/InCallScreen$15;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$2200(Lcom/android/phone/InCallScreen;)Landroid/media/ToneGenerator;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 3378
    iget-object v0, p0, Lcom/android/phone/InCallScreen$15;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$2202(Lcom/android/phone/InCallScreen;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;

    .line 3379
    :cond_18
    const/4 v0, 0x1

    .line 3383
    :goto_19
    return v0

    :cond_1a
    move v0, v1

    .line 3381
    goto :goto_19

    :cond_1c
    move v0, v1

    .line 3383
    goto :goto_19
.end method
