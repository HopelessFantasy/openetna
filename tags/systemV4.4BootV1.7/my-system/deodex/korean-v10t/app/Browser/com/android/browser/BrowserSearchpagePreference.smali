.class public Lcom/android/browser/BrowserSearchpagePreference;
.super Landroid/preference/EditTextPreference;
.source "BrowserSearchpagePreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/browser/BrowserSearchpagePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/browser/BrowserSearchpagePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-virtual {p0}, Lcom/android/browser/BrowserSearchpagePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 35
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 10
    .parameter "s"

    .prologue
    const/4 v6, -0x1

    const-string v7, "%s"

    .line 48
    invoke-virtual {p0}, Lcom/android/browser/BrowserSearchpagePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 50
    .local v0, dialog:Landroid/app/AlertDialog;
    if-eqz v0, :cond_33

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, string:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 53
    .local v3, length:I
    if-lez v3, :cond_34

    const-string v5, "%s"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    move v1, v5

    .line 55
    .local v1, first:I
    :goto_1c
    if-lez v3, :cond_36

    const-string v5, "%s"

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    move v2, v5

    .line 57
    .local v2, last:I
    :goto_25
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    if-eqz v3, :cond_2f

    if-lez v1, :cond_38

    if-ne v1, v2, :cond_38

    :cond_2f
    const/4 v6, 0x1

    :goto_30
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 60
    .end local v1           #first:I
    .end local v2           #last:I
    .end local v3           #length:I
    .end local v4           #string:Ljava/lang/String;
    :cond_33
    return-void

    .restart local v3       #length:I
    .restart local v4       #string:Ljava/lang/String;
    :cond_34
    move v1, v6

    .line 53
    goto :goto_1c

    .restart local v1       #first:I
    :cond_36
    move v2, v6

    .line 55
    goto :goto_25

    .line 57
    .restart local v2       #last:I
    :cond_38
    const/4 v6, 0x0

    goto :goto_30
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 64
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 67
    return-void
.end method
