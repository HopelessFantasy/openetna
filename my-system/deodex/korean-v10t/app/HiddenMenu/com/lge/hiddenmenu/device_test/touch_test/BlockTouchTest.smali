.class public Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;
.super Lcom/lge/hiddenmenu/device_test/touch_test/GraphicsActivity;
.source "BlockTouchTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;
    }
.end annotation


# static fields
.field private static final NUM_BLOCK:I = 0x5


# instance fields
.field bAutoAllTest:Ljava/lang/Integer;

.field private mAlreadyCameraLaunch:Z

.field private mBackButton:Landroid/widget/Button;

.field mView:Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GraphicsActivity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->mAlreadyCameraLaunch:Z

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->mAlreadyCameraLaunch:Z

    return v0
.end method

.method static synthetic access$002(Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->mAlreadyCameraLaunch:Z

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x5

    .line 47
    invoke-super {p0, p1}, Lcom/lge/hiddenmenu/device_test/touch_test/GraphicsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->bAutoAllTest:Ljava/lang/Integer;

    .line 51
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    .local v2, mlinearLayout:Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 53
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 54
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 56
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->mBackButton:Landroid/widget/Button;

    .line 62
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->mBackButton:Landroid/widget/Button;

    const-string v4, "EXIT"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->mBackButton:Landroid/widget/Button;

    new-instance v4, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$1;

    invoke-direct {v4, p0}, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$1;-><init>(Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74
    .local v1, lp2:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;

    invoke-direct {v3, p0, p0}, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;-><init>(Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->mView:Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;

    .line 75
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->mView:Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->setContentView(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 96
    sparse-switch p1, :sswitch_data_5e

    .line 134
    invoke-super {p0, p1, p2}, Lcom/lge/hiddenmenu/device_test/touch_test/GraphicsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    :goto_8
    return v4

    .line 98
    :sswitch_9
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->bAutoAllTest:Ljava/lang/Integer;

    if-eqz v4, :cond_20

    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_20

    .line 101
    const-string v4, "Back Key doesn\'t work in Auto All Test"

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 102
    .local v3, mToast1:Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .end local v3           #mToast1:Landroid/widget/Toast;
    :goto_1e
    move v4, v5

    .line 109
    goto :goto_8

    .line 106
    :cond_20
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->mView:Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;

    invoke-virtual {v4}, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->CleanBitmap()V

    .line 107
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->finish()V

    goto :goto_1e

    .line 111
    :sswitch_29
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->bAutoAllTest:Ljava/lang/Integer;

    if-eqz v4, :cond_59

    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_59

    iget-boolean v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->mAlreadyCameraLaunch:Z

    if-nez v4, :cond_59

    .line 114
    const-string v1, "AutoAllTest"

    .line 115
    .local v1, ExtraName:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 117
    .local v0, AutoAllTest:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->mView:Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;

    invoke-virtual {v4}, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->CleanBitmap()V

    .line 118
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.media.action.AUTO_CAMERA"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v2, intent:Landroid/content/Intent;
    const/high16 v4, 0x400

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 120
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 122
    :try_start_53
    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->startActivity(Landroid/content/Intent;)V
    :try_end_56
    .catch Landroid/content/ActivityNotFoundException; {:try_start_53 .. :try_end_56} :catch_5b

    .line 127
    :goto_56
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->finish()V

    .end local v0           #AutoAllTest:Ljava/lang/Integer;
    .end local v1           #ExtraName:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_59
    move v4, v5

    .line 129
    goto :goto_8

    .line 124
    .restart local v0       #AutoAllTest:Ljava/lang/Integer;
    .restart local v1       #ExtraName:Ljava/lang/String;
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_5b
    move-exception v4

    goto :goto_56

    .line 96
    nop

    :sswitch_data_5e
    .sparse-switch
        0x4 -> :sswitch_9
        0x52 -> :sswitch_29
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 90
    invoke-super {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GraphicsActivity;->onPause()V

    .line 91
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 92
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 80
    invoke-super {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GraphicsActivity;->onResume()V

    .line 83
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 84
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "AutoAllTest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->bAutoAllTest:Ljava/lang/Integer;

    .line 85
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->bAutoAllTest:Ljava/lang/Integer;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_29

    .line 86
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 87
    :cond_29
    return-void
.end method
