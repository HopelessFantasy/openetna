.class public Lcom/lge/hiddenmenu/device_test/SlideTest;
.super Landroid/app/Activity;
.source "SlideTest.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# static fields
.field private static numClose:I

.field private static numOpen:I


# instance fields
.field bAutoAllTest:Ljava/lang/Integer;

.field private mNumCloseSwitcher:Landroid/widget/TextSwitcher;

.field private mNumOpenSwitcher:Landroid/widget/TextSwitcher;

.field private mSwitcher:Landroid/widget/TextSwitcher;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private exitSlideTest()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 170
    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/SlideTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v7, :cond_50

    .line 172
    const-string v4, "com.lge.hiddenmenu"

    .line 173
    .local v4, packageName:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 174
    .local v3, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 175
    .local v2, className:Ljava/lang/String;
    const/4 v5, 0x0

    .line 176
    .local v5, packageName2:Ljava/lang/String;
    const-string v1, "AutoAllTest"

    .line 177
    .local v1, ExtraName:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 179
    .local v0, AutoAllTest:Ljava/lang/Integer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".device_test.touch_test"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 182
    const-string v2, "GridTouchTest"

    .line 185
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/SlideTest;->finish()V

    .line 186
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/SlideTest;->startActivity(Landroid/content/Intent;)V

    .line 190
    .end local v0           #AutoAllTest:Ljava/lang/Integer;
    .end local v1           #ExtraName:Ljava/lang/String;
    .end local v2           #className:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #packageName2:Ljava/lang/String;
    :cond_50
    return-void
.end method

.method private showSlideState()V
    .registers 5

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/SlideTest;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 142
    .local v0, state:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4f

    .line 143
    sget v2, Lcom/lge/hiddenmenu/device_test/SlideTest;->numOpen:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/lge/hiddenmenu/device_test/SlideTest;->numOpen:I

    .line 144
    const-string v1, "\nSlide : OPEN\n"

    .line 150
    .local v1, str:Ljava/lang/String;
    :goto_15
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/SlideTest;->mSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slide Open Count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/lge/hiddenmenu/device_test/SlideTest;->numOpen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/SlideTest;->mNumOpenSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slide Close Count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/lge/hiddenmenu/device_test/SlideTest;->numClose:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/SlideTest;->mNumCloseSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 155
    return-void

    .line 146
    .end local v1           #str:Ljava/lang/String;
    :cond_4f
    sget v2, Lcom/lge/hiddenmenu/device_test/SlideTest;->numClose:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/lge/hiddenmenu/device_test/SlideTest;->numClose:I

    .line 147
    const-string v1, "\nSlide : CLOSE\n"

    .restart local v1       #str:Ljava/lang/String;
    goto :goto_15
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .registers 3

    .prologue
    .line 158
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 160
    .local v0, t:Landroid/widget/TextView;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 161
    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 162
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 129
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/SlideTest;->mSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v0}, Landroid/widget/TextSwitcher;->reset()V

    .line 130
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/SlideTest;->mNumOpenSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v0}, Landroid/widget/TextSwitcher;->reset()V

    .line 131
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/SlideTest;->mNumCloseSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v0}, Landroid/widget/TextSwitcher;->reset()V

    .line 132
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/SlideTest;->showSlideState()V

    .line 134
    const-string v0, "Hidden Menu - Slide Test"

    const-string v1, "onConfigurationChanged!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/SlideTest;->bAutoAllTest:Ljava/lang/Integer;

    .line 62
    const v2, 0x7f030034

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/device_test/SlideTest;->setContentView(I)V

    .line 64
    const v2, 0x7f070090

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/device_test/SlideTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextSwitcher;

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/SlideTest;->mSwitcher:Landroid/widget/TextSwitcher;

    .line 65
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/SlideTest;->mSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, p0}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 66
    const v2, 0x7f070091

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/device_test/SlideTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextSwitcher;

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/SlideTest;->mNumOpenSwitcher:Landroid/widget/TextSwitcher;

    .line 67
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/SlideTest;->mNumOpenSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, p0}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 68
    const v2, 0x7f070092

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/device_test/SlideTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextSwitcher;

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/SlideTest;->mNumCloseSwitcher:Landroid/widget/TextSwitcher;

    .line 69
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/SlideTest;->mNumCloseSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, p0}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 71
    const/high16 v2, 0x10a

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 72
    .local v0, in:Landroid/view/animation/Animation;
    const v2, 0x10a0001

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 73
    .local v1, out:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/SlideTest;->mSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v0}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 74
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/SlideTest;->mSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 75
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/SlideTest;->mNumOpenSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v0}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 76
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/SlideTest;->mNumOpenSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 77
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/SlideTest;->mNumCloseSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v0}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 78
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/SlideTest;->mNumCloseSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 80
    sput v3, Lcom/lge/hiddenmenu/device_test/SlideTest;->numClose:I

    sput v3, Lcom/lge/hiddenmenu/device_test/SlideTest;->numOpen:I

    .line 81
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/SlideTest;->showSlideState()V

    .line 82
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 104
    sparse-switch p1, :sswitch_data_22

    .line 123
    :cond_4
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 106
    :sswitch_9
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/SlideTest;->exitSlideTest()V

    goto :goto_4

    .line 109
    :sswitch_d
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/SlideTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 111
    const-string v1, "Auto All Test is canceled!"

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 112
    .local v0, mToast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 113
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/SlideTest;->finish()V

    goto :goto_4

    .line 104
    :sswitch_data_22
    .sparse-switch
        0x4 -> :sswitch_d
        0x52 -> :sswitch_9
    .end sparse-switch
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 93
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/SlideTest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 94
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "AutoAllTest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/SlideTest;->bAutoAllTest:Ljava/lang/Integer;

    .line 96
    return-void
.end method
