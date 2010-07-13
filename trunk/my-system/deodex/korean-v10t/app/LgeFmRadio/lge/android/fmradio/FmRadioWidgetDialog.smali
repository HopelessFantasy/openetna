.class public Llge/android/fmradio/FmRadioWidgetDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "FmRadioWidgetDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FM RADIO"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 54
    const-string v1, "FM RADIO"

    const-string v2, "onClick"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    packed-switch p2, :pswitch_data_1e

    .line 68
    :goto_a
    return-void

    .line 57
    :pswitch_b
    invoke-virtual {p0}, Llge/android/fmradio/FmRadioWidgetDialog;->finish()V

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-class v1, Llge/android/fmradio/FmRadioView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioWidgetDialog;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    .line 63
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_19
    invoke-virtual {p0}, Llge/android/fmradio/FmRadioWidgetDialog;->cancel()V

    goto :goto_a

    .line 55
    nop

    :pswitch_data_1e
    .packed-switch -0x2
        :pswitch_19
        :pswitch_b
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const-string v2, "FM RADIO"

    .line 22
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const-string v1, "FM RADIO"

    const-string v1, "onCreate dialog widget"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object v0, p0, Llge/android/fmradio/FmRadioWidgetDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 29
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 30
    const v1, 0x7f07005a

    invoke-virtual {p0, v1}, Llge/android/fmradio/FmRadioWidgetDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 35
    const v1, 0x7f070056

    invoke-virtual {p0, v1}, Llge/android/fmradio/FmRadioWidgetDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 36
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 37
    const v1, 0x7f070057

    invoke-virtual {p0, v1}, Llge/android/fmradio/FmRadioWidgetDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 38
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 42
    invoke-virtual {p0}, Llge/android/fmradio/FmRadioWidgetDialog;->setupAlert()V

    .line 43
    const-string v1, "FM RADIO"

    const-string v1, "onCreate 2"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 49
    return-void
.end method
