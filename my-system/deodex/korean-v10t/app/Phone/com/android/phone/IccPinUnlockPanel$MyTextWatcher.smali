.class Lcom/android/phone/IccPinUnlockPanel$MyTextWatcher;
.super Ljava/lang/Object;
.source "IccPinUnlockPanel.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IccPinUnlockPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTextWatcher"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/phone/IccPinUnlockPanel;


# direct methods
.method public constructor <init>(Lcom/android/phone/IccPinUnlockPanel;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/phone/IccPinUnlockPanel$MyTextWatcher;->this$0:Lcom/android/phone/IccPinUnlockPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p2, p0, Lcom/android/phone/IccPinUnlockPanel$MyTextWatcher;->mContext:Landroid/content/Context;

    .line 86
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5
    .parameter "buffer"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/phone/IccPinUnlockPanel$MyTextWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 99
    iget-object v0, p0, Lcom/android/phone/IccPinUnlockPanel$MyTextWatcher;->this$0:Lcom/android/phone/IccPinUnlockPanel;

    invoke-static {v0}, Lcom/android/phone/IccPinUnlockPanel;->access$000(Lcom/android/phone/IccPinUnlockPanel;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 101
    :cond_1a
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    .line 90
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    .line 94
    return-void
.end method
