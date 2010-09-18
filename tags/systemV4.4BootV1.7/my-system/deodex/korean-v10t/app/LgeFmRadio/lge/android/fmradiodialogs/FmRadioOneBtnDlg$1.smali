.class Llge/android/fmradiodialogs/FmRadioOneBtnDlg$1;
.super Landroid/content/BroadcastReceiver;
.source "FmRadioOneBtnDlg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llge/android/fmradiodialogs/FmRadioOneBtnDlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llge/android/fmradiodialogs/FmRadioOneBtnDlg;


# direct methods
.method constructor <init>(Llge/android/fmradiodialogs/FmRadioOneBtnDlg;)V
    .registers 2
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Llge/android/fmradiodialogs/FmRadioOneBtnDlg$1;->this$0:Llge/android/fmradiodialogs/FmRadioOneBtnDlg;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lge.android.fmradio.intent.askwarningwithoutheadset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 26
    iget-object v0, p0, Llge/android/fmradiodialogs/FmRadioOneBtnDlg$1;->this$0:Llge/android/fmradiodialogs/FmRadioOneBtnDlg;

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Llge/android/fmradiodialogs/FmRadioOneBtnDlg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02006a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 27
    iget-object v0, p0, Llge/android/fmradiodialogs/FmRadioOneBtnDlg$1;->this$0:Llge/android/fmradiodialogs/FmRadioOneBtnDlg;

    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Llge/android/fmradiodialogs/FmRadioOneBtnDlg;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/Button;

    const v0, 0x7f02002d

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 29
    :cond_2c
    return-void
.end method
