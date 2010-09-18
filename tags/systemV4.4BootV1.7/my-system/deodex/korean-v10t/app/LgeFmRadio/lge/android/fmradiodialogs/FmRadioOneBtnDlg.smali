.class public Llge/android/fmradiodialogs/FmRadioOneBtnDlg;
.super Landroid/app/Activity;
.source "FmRadioOneBtnDlg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mIntentListener:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    new-instance v0, Llge/android/fmradiodialogs/FmRadioOneBtnDlg$1;

    invoke-direct {v0, p0}, Llge/android/fmradiodialogs/FmRadioOneBtnDlg$1;-><init>(Llge/android/fmradiodialogs/FmRadioOneBtnDlg;)V

    iput-object v0, p0, Llge/android/fmradiodialogs/FmRadioOneBtnDlg;->mIntentListener:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "viewItem"

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_16

    .line 58
    :cond_7
    :goto_7
    return-void

    .line 52
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lge.android.fmradio.intent.answerwarningwithoutheadset"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_7

    .line 54
    invoke-virtual {p0, v0}, Llge/android/fmradiodialogs/FmRadioOneBtnDlg;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_7

    .line 48
    nop

    :pswitch_data_16
    .packed-switch 0x7f090004
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Llge/android/fmradiodialogs/FmRadioOneBtnDlg;->requestWindowFeature(I)Z

    .line 37
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Llge/android/fmradiodialogs/FmRadioOneBtnDlg;->setContentView(I)V

    .line 39
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 40
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "lge.android.fmradio.intent.answerwarningwithoutheadset"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Llge/android/fmradiodialogs/FmRadioOneBtnDlg;->mIntentListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Llge/android/fmradiodialogs/FmRadioOneBtnDlg;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    return-void
.end method
