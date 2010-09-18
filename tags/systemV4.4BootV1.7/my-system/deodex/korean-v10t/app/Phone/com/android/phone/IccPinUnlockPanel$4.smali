.class Lcom/android/phone/IccPinUnlockPanel$4;
.super Ljava/lang/Object;
.source "IccPinUnlockPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IccPinUnlockPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IccPinUnlockPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/IccPinUnlockPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/phone/IccPinUnlockPanel$4;->this$0:Lcom/android/phone/IccPinUnlockPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/phone/IccPinUnlockPanel$4;->this$0:Lcom/android/phone/IccPinUnlockPanel;

    invoke-virtual {v0}, Lcom/android/phone/IccPinUnlockPanel;->dismiss()V

    .line 366
    return-void
.end method
