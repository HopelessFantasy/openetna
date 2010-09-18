.class Lcom/android/phone/IccPinUnlockPanel$2;
.super Ljava/lang/Object;
.source "IccPinUnlockPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IccPinUnlockPanel;->showUnlockSuccess()V
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
    .line 292
    iput-object p1, p0, Lcom/android/phone/IccPinUnlockPanel$2;->this$0:Lcom/android/phone/IccPinUnlockPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/phone/IccPinUnlockPanel$2;->this$0:Lcom/android/phone/IccPinUnlockPanel;

    invoke-virtual {v0}, Lcom/android/phone/IccPinUnlockPanel;->dismiss()V

    .line 294
    return-void
.end method
