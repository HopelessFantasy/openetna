.class Lcom/android/phone/EnableIccPinScreen$3;
.super Ljava/lang/Object;
.source "EnableIccPinScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EnableIccPinScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EnableIccPinScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/EnableIccPinScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/phone/EnableIccPinScreen$3;->this$0:Lcom/android/phone/EnableIccPinScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen$3;->this$0:Lcom/android/phone/EnableIccPinScreen;

    invoke-static {v0}, Lcom/android/phone/EnableIccPinScreen;->access$100(Lcom/android/phone/EnableIccPinScreen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 140
    :goto_10
    return-void

    .line 136
    :cond_11
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen$3;->this$0:Lcom/android/phone/EnableIccPinScreen;

    iget-object v1, p0, Lcom/android/phone/EnableIccPinScreen$3;->this$0:Lcom/android/phone/EnableIccPinScreen;

    invoke-virtual {v1}, Lcom/android/phone/EnableIccPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090187

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/EnableIccPinScreen;->access$200(Lcom/android/phone/EnableIccPinScreen;Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen$3;->this$0:Lcom/android/phone/EnableIccPinScreen;

    invoke-static {v0}, Lcom/android/phone/EnableIccPinScreen;->access$300(Lcom/android/phone/EnableIccPinScreen;)V

    goto :goto_10
.end method