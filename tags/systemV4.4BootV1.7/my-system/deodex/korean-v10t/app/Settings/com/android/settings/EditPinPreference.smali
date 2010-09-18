.class Lcom/android/settings/EditPinPreference;
.super Landroid/preference/EditTextPreference;
.source "EditPinPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/EditPinPreference$OnPinEnteredListener;
    }
.end annotation


# instance fields
.field private mDialogOpen:Z

.field private mPinListener:Lcom/android/settings/EditPinPreference$OnPinEnteredListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method


# virtual methods
.method public isDialogOpen()Z
    .registers 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings/EditPinPreference;->mDialogOpen:Z

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 57
    const v1, 0x1020003

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 59
    .local v0, editText:Landroid/widget/EditText;
    if-eqz v0, :cond_20

    .line 60
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 61
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 62
    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 64
    :cond_20
    return-void
.end method

.method protected onDialogClosed(Z)V
    .registers 3
    .parameter "positiveResult"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/EditPinPreference;->mDialogOpen:Z

    .line 82
    iget-object v0, p0, Lcom/android/settings/EditPinPreference;->mPinListener:Lcom/android/settings/EditPinPreference$OnPinEnteredListener;

    if-eqz v0, :cond_f

    .line 83
    iget-object v0, p0, Lcom/android/settings/EditPinPreference;->mPinListener:Lcom/android/settings/EditPinPreference$OnPinEnteredListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settings/EditPinPreference$OnPinEnteredListener;->onPinEntered(Lcom/android/settings/EditPinPreference;Z)V

    .line 85
    :cond_f
    return-void
.end method

.method public setDialogOpen()V
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/EditPinPreference;->mDialogOpen:Z

    .line 73
    return-void
.end method

.method public setOnPinEnteredListener(Lcom/android/settings/EditPinPreference$OnPinEnteredListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings/EditPinPreference;->mPinListener:Lcom/android/settings/EditPinPreference$OnPinEnteredListener;

    .line 51
    return-void
.end method

.method public showPinDialog()V
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/EditPinPreference;->mDialogOpen:Z

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/EditPinPreference;->showDialog(Landroid/os/Bundle;)V

    .line 90
    return-void
.end method
