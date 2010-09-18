.class public Llge/android/fmradio/FmRadioManualTuningDlg;
.super Landroid/app/Activity;
.source "FmRadioManualTuningDlg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llge/android/fmradio/FmRadioManualTuningDlg$ImageAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Llge/android/fmradio/FmRadioManualTuningDlg;->requestWindowFeature(I)Z

    .line 34
    const v3, 0x7f030004

    invoke-virtual {p0, v3}, Llge/android/fmradio/FmRadioManualTuningDlg;->setContentView(I)V

    .line 36
    const v3, 0x7f090010

    invoke-virtual {p0, v3}, Llge/android/fmradio/FmRadioManualTuningDlg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 37
    .local v0, g1:Landroid/widget/GridView;
    new-instance v3, Llge/android/fmradio/FmRadioManualTuningDlg$ImageAdapter;

    invoke-direct {v3, p0, p0}, Llge/android/fmradio/FmRadioManualTuningDlg$ImageAdapter;-><init>(Llge/android/fmradio/FmRadioManualTuningDlg;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 39
    const v3, 0x7f090011

    invoke-virtual {p0, v3}, Llge/android/fmradio/FmRadioManualTuningDlg;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 40
    .local v1, g2:Landroid/widget/GridView;
    new-instance v3, Llge/android/fmradio/FmRadioManualTuningDlg$ImageAdapter;

    invoke-direct {v3, p0, p0}, Llge/android/fmradio/FmRadioManualTuningDlg$ImageAdapter;-><init>(Llge/android/fmradio/FmRadioManualTuningDlg;Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    const v3, 0x7f090012

    invoke-virtual {p0, v3}, Llge/android/fmradio/FmRadioManualTuningDlg;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    .line 43
    .local v2, g3:Landroid/widget/GridView;
    new-instance v3, Llge/android/fmradio/FmRadioManualTuningDlg$ImageAdapter;

    invoke-direct {v3, p0, p0}, Llge/android/fmradio/FmRadioManualTuningDlg$ImageAdapter;-><init>(Llge/android/fmradio/FmRadioManualTuningDlg;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 45
    return-void
.end method
