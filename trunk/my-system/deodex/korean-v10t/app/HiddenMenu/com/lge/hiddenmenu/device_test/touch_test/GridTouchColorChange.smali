.class public Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;
.super Lcom/lge/hiddenmenu/device_test/touch_test/GraphicsActivity;
.source "GridTouchColorChange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;
    }
.end annotation


# static fields
.field private static final CLEAR_ID:I = 0x1

.field private static final FADE_DELAY:I = 0x64

.field private static final FADE_ID:I = 0x3

.field private static final FADE_MSG:I = 0x1

.field private static final MAX_NUM_TOUCH:I = 0x1770

.field private static final NUM_GRID:I = 0x2d

.field private static final RESULT_ID:I = 0x2


# instance fields
.field bAutoAllTest:Ljava/lang/Integer;

.field bFirstPress:Ljava/lang/Integer;

.field dontClick:Ljava/lang/Integer;

.field mFading:Z

.field private mHandler:Landroid/os/Handler;

.field mView:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GraphicsActivity;-><init>()V

    .line 82
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->bFirstPress:Ljava/lang/Integer;

    .line 191
    new-instance v0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$1;-><init>(Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->mHandler:Landroid/os/Handler;

    .line 209
    return-void
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x400

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 87
    invoke-super {p0, p1}, Lcom/lge/hiddenmenu/device_test/touch_test/GraphicsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->bAutoAllTest:Ljava/lang/Integer;

    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->dontClick:Ljava/lang/Integer;

    .line 96
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 97
    .local v0, wp:Landroid/view/Window;
    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 98
    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 101
    new-instance v1, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;

    invoke-direct {v1, p0, p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;-><init>(Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->mView:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;

    .line 102
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->mView:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->setContentView(Landroid/view/View;)V

    .line 103
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->mView:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;

    invoke-virtual {v1}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->requestFocus()Z

    .line 107
    if-eqz p1, :cond_39

    const-string v1, "fading"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_36
    iput-boolean v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->mFading:Z

    .line 108
    return-void

    :cond_39
    move v1, v2

    .line 107
    goto :goto_36
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    const-string v0, "Clear"

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 112
    const/4 v0, 0x2

    const-string v1, "Result"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 113
    const/4 v0, 0x3

    const-string v1, "Fade"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 114
    invoke-super {p0, p1}, Lcom/lge/hiddenmenu/device_test/touch_test/GraphicsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 123
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_4c

    .line 124
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_52

    .line 143
    invoke-super {p0, p1}, Lcom/lge/hiddenmenu/device_test/touch_test/GraphicsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 147
    :goto_15
    return v0

    .line 126
    :pswitch_16
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->mView:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->windowclear()V

    .line 127
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->dontClick:Ljava/lang/Integer;

    move v0, v1

    .line 128
    goto :goto_15

    .line 130
    :pswitch_23
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->mView:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->access$000(Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;)V

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->dontClick:Ljava/lang/Integer;

    move v0, v1

    .line 132
    goto :goto_15

    .line 134
    :pswitch_30
    iget-boolean v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->mFading:Z

    if-nez v0, :cond_46

    move v0, v1

    :goto_35
    iput-boolean v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->mFading:Z

    .line 135
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->dontClick:Ljava/lang/Integer;

    .line 136
    iget-boolean v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->mFading:Z

    if-eqz v0, :cond_48

    .line 137
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->startFading()V

    :goto_44
    move v0, v1

    .line 141
    goto :goto_15

    :cond_46
    move v0, v2

    .line 134
    goto :goto_35

    .line 139
    :cond_48
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->stopFading()V

    goto :goto_44

    .line 147
    :cond_4c
    invoke-super {p0, p1}, Lcom/lge/hiddenmenu/device_test/touch_test/GraphicsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_15

    .line 124
    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_16
        :pswitch_23
        :pswitch_30
    .end packed-switch
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 168
    invoke-super {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GraphicsActivity;->onPause()V

    .line 171
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->stopFading()V

    .line 172
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 118
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->mFading:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 119
    invoke-super {p0, p1}, Lcom/lge/hiddenmenu/device_test/touch_test/GraphicsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 152
    invoke-super {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GraphicsActivity;->onResume()V

    .line 155
    iget-boolean v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->mFading:Z

    if-eqz v0, :cond_a

    .line 156
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->startFading()V

    .line 158
    :cond_a
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/lge/hiddenmenu/device_test/touch_test/GraphicsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 164
    const-string v0, "fading"

    iget-boolean v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->mFading:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 165
    return-void
.end method

.method startFading()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 179
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 180
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 182
    return-void
.end method

.method stopFading()V
    .registers 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 189
    return-void
.end method
