.class public Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;
.super Landroid/app/Activity;
.source "TouchKeyTest.java"


# instance fields
.field mNumBackPressed:Ljava/lang/Integer;

.field mNumHomePressed:Ljava/lang/Integer;

.field mText:Landroid/widget/TextView;

.field private mText1Listener:Landroid/view/View$OnKeyListener;

.field mTextBack:Landroid/widget/TextView;

.field mTextExit:Landroid/widget/TextView;

.field mTextHome:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 104
    new-instance v0, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest$1;-><init>(Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->mText1Listener:Landroid/view/View$OnKeyListener;

    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .registers 3

    .prologue
    .line 164
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 165
    .local v0, t:Landroid/widget/TextView;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 166
    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 167
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
    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->setContentView(I)V

    .line 48
    const v0, 0x7f0700e6

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->mText:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->mText1Listener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 50
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 52
    const v0, 0x7f07007b

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->mTextHome:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0700e8

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->mTextBack:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f0700e7

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->mTextExit:Landroid/widget/TextView;

    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->mNumHomePressed:Ljava/lang/Integer;

    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->mNumBackPressed:Ljava/lang/Integer;

    .line 59
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 84
    .local v0, mToast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 86
    sparse-switch p1, :sswitch_data_2e

    move v1, v3

    .line 101
    :goto_1f
    return v1

    :sswitch_20
    move v1, v3

    .line 88
    goto :goto_1f

    :sswitch_22
    move v1, v3

    .line 90
    goto :goto_1f

    .line 96
    :sswitch_24
    const/4 v1, 0x4

    invoke-super {p0, v1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 97
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->finish()V

    .line 98
    const/4 v1, 0x1

    goto :goto_1f

    .line 86
    nop

    :sswitch_data_2e
    .sparse-switch
        0x3 -> :sswitch_20
        0x4 -> :sswitch_22
        0x52 -> :sswitch_24
    .end sparse-switch
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 65
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->mTextExit:Landroid/widget/TextView;

    const-string v3, "Press MENU Key to Exit"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " HOME Key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->mNumHomePressed:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, strHome:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " BACK Key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->mNumBackPressed:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, strBack:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->mTextHome:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TouchKeyTest;->mTextBack:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 77
    return-void
.end method
