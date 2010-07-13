.class public Lcom/android/mms/ui/CbmiDialogActivity;
.super Landroid/app/Activity;
.source "CbmiDialogActivity.java"


# static fields
.field private static final DIALOG_TEXT_CATEGORY:Ljava/lang/String; = "dialogTextCategory"

.field private static final DIALOG_TEXT_CBMI_DUPLICATED:I = 0x1

.field private static final DIALOG_TEXT_CBMI_EMPTY:I = 0x0

.field private static final DIALOG_TEXT_CBMI_NOSIM:I = 0x4

.field private static final DIALOG_TEXT_CBMI_OVERFLOW:I = 0x2

.field private static final DIALOG_TEXT_CBMI_UNACCEPTABLE:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x3

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/android/mms/ui/CbmiDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 37
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "dialogTextCategory"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 39
    .local v0, dialog_text_category:I
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/CbmiDialogActivity;->requestWindowFeature(I)Z

    .line 44
    if-nez v0, :cond_25

    .line 45
    const v2, 0x7f030005

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CbmiDialogActivity;->setContentView(I)V

    .line 56
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Lcom/android/mms/ui/CbmiDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v4, v3}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 58
    return-void

    .line 46
    :cond_25
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2f

    .line 47
    const v2, 0x7f030006

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CbmiDialogActivity;->setContentView(I)V

    goto :goto_1a

    .line 48
    :cond_2f
    const/4 v2, 0x2

    if-ne v0, v2, :cond_39

    .line 49
    const v2, 0x7f030008

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CbmiDialogActivity;->setContentView(I)V

    goto :goto_1a

    .line 50
    :cond_39
    if-ne v0, v4, :cond_42

    .line 51
    const v2, 0x7f030009

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CbmiDialogActivity;->setContentView(I)V

    goto :goto_1a

    .line 52
    :cond_42
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1a

    .line 53
    const v2, 0x7f030007

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CbmiDialogActivity;->setContentView(I)V

    goto :goto_1a
.end method
