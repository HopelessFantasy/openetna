.class public Lcom/lge/hiddenmenu/device_test/KeyTest;
.super Landroid/app/Activity;
.source "KeyTest.java"


# instance fields
.field bAutoAllTest:Ljava/lang/Integer;

.field mText:Landroid/widget/TextView;

.field private mText1Listener:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 111
    new-instance v0, Lcom/lge/hiddenmenu/device_test/KeyTest$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/device_test/KeyTest$1;-><init>(Lcom/lge/hiddenmenu/device_test/KeyTest;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/KeyTest;->mText1Listener:Landroid/view/View$OnKeyListener;

    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .registers 3

    .prologue
    .line 427
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 428
    .local v0, t:Landroid/widget/TextView;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 429
    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 430
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/KeyTest;->setContentView(I)V

    .line 52
    const v0, 0x7f07001a

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/KeyTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/KeyTest;->mText:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/KeyTest;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/KeyTest;->mText1Listener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 55
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/KeyTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/KeyTest;->bAutoAllTest:Ljava/lang/Integer;

    .line 62
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 95
    packed-switch p1, :pswitch_data_20

    move v1, v3

    .line 108
    :goto_5
    return v1

    .line 97
    :pswitch_6
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/KeyTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    .line 99
    const-string v0, "Unknown"

    .line 100
    .local v0, str:Ljava/lang/String;
    const-string v0, "BACK"

    .line 101
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/KeyTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v3

    .line 102
    goto :goto_5

    .line 105
    .end local v0           #str:Ljava/lang/String;
    :cond_1a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_5

    .line 95
    nop

    :pswitch_data_20
    .packed-switch 0x4
        :pswitch_6
    .end packed-switch
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 73
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/KeyTest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 74
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "AutoAllTest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/KeyTest;->bAutoAllTest:Ljava/lang/Integer;

    .line 76
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 81
    return-void
.end method
