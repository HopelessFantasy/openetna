.class public Llge/android/fmradio/FmRadiowidgetsinglebtn;
.super Lcom/android/internal/app/AlertActivity;
.source "FmRadiowidgetsinglebtn.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FM RADIO"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 65
    const-string v0, "FM RADIO"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    packed-switch p2, :pswitch_data_10

    .line 72
    :goto_a
    return-void

    .line 68
    :pswitch_b
    invoke-virtual {p0}, Llge/android/fmradio/FmRadiowidgetsinglebtn;->finish()V

    goto :goto_a

    .line 66
    nop

    :pswitch_data_10
    .packed-switch -0x1
        :pswitch_b
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const-string v6, "FM RADIO"

    const-string v3, "state"

    .line 23
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const-string v2, "FM RADIO"

    const-string v2, "onCreate dialog widget"

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p0}, Llge/android/fmradio/FmRadiowidgetsinglebtn;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 29
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Llge/android/fmradio/FmRadiowidgetsinglebtn;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 32
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x108009b

    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 34
    const-string v2, "state"

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_43

    .line 36
    const v2, 0x7f070046

    invoke-virtual {p0, v2}, Llge/android/fmradio/FmRadiowidgetsinglebtn;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 45
    :goto_2d
    const v2, 0x7f070056

    invoke-virtual {p0, v2}, Llge/android/fmradio/FmRadiowidgetsinglebtn;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 46
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 51
    invoke-virtual {p0}, Llge/android/fmradio/FmRadiowidgetsinglebtn;->setupAlert()V

    .line 52
    const-string v2, "FM RADIO"

    const-string v2, "onCreate 2 second"

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void

    .line 38
    :cond_43
    const-string v2, "state"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_55

    .line 39
    const v2, 0x7f070052

    invoke-virtual {p0, v2}, Llge/android/fmradio/FmRadiowidgetsinglebtn;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_2d

    .line 40
    :cond_55
    const-string v2, "state"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_67

    .line 41
    const v2, 0x7f070053

    invoke-virtual {p0, v2}, Llge/android/fmradio/FmRadiowidgetsinglebtn;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_2d

    .line 43
    :cond_67
    const v2, 0x7f070045

    invoke-virtual {p0, v2}, Llge/android/fmradio/FmRadiowidgetsinglebtn;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_2d
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 59
    return-void
.end method
