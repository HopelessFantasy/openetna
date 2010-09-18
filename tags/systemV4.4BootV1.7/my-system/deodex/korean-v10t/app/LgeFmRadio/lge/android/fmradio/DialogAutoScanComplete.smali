.class public Llge/android/fmradio/DialogAutoScanComplete;
.super Landroid/app/Activity;
.source "DialogAutoScanComplete.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x3

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0, v2}, Llge/android/fmradio/DialogAutoScanComplete;->requestWindowFeature(I)Z

    .line 48
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Llge/android/fmradio/DialogAutoScanComplete;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Llge/android/fmradio/DialogAutoScanComplete;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020022

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 52
    return-void
.end method
