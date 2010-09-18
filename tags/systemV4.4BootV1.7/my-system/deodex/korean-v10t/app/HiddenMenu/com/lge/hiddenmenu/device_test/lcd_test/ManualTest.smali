.class public Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;
.super Landroid/app/Activity;
.source "ManualTest.java"


# static fields
.field private static final BLACK:I = 0x4

.field private static final BLUE:I = 0x2

.field private static final GREEN:I = 0x1

.field private static final HORIZONTAL:I = 0x6

.field private static final LOG_TAG:Ljava/lang/String; = "ManualTest"

.field private static final QUARTER:I = 0x5

.field private static final RED:I = 0x0

.field private static final TILT:I = 0x7

.field private static final WHITE:I = 0x3


# instance fields
.field private currentState:I

.field private mView:Landroid/widget/TextView;

.field private viewB:Landroid/view/View;

.field private viewBK:Landroid/view/View;

.field private viewG:Landroid/view/View;

.field private viewH:Landroid/view/View;

.field private viewQ:Landroid/view/View;

.field private viewR:Landroid/view/View;

.field private viewT:Landroid/view/View;

.field private viewW:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private draw()V
    .registers 6

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x5

    const/4 v2, 0x4

    .line 194
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->currentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 195
    iput v2, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->currentState:I

    .line 197
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->viewBK:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->setContentView(Landroid/view/View;)V

    .line 207
    :cond_f
    :goto_f
    return-void

    .line 198
    :cond_10
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->currentState:I

    if-ne v0, v2, :cond_1c

    .line 199
    iput v3, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->currentState:I

    .line 200
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->viewQ:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->setContentView(Landroid/view/View;)V

    goto :goto_f

    .line 201
    :cond_1c
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->currentState:I

    if-ne v0, v3, :cond_28

    .line 202
    iput v4, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->currentState:I

    .line 203
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->viewH:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->setContentView(Landroid/view/View;)V

    goto :goto_f

    .line 204
    :cond_28
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->currentState:I

    if-ne v0, v4, :cond_f

    .line 205
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->finish()V

    goto :goto_f
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    const/16 v4, 0x400

    const/4 v3, 0x0

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 58
    .local v1, wp:Landroid/view/Window;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 59
    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 60
    const v2, 0x7f03001a

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->setContentView(I)V

    .line 62
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 64
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v2, 0x7f070009

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->mView:Landroid/widget/TextView;

    .line 65
    const v2, 0x7f030020

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->viewR:Landroid/view/View;

    .line 66
    const v2, 0x7f03001d

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->viewG:Landroid/view/View;

    .line 67
    const v2, 0x7f03001c

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->viewB:Landroid/view/View;

    .line 68
    const v2, 0x7f030022

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->viewW:Landroid/view/View;

    .line 69
    const v2, 0x7f03001b

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->viewBK:Landroid/view/View;

    .line 70
    const v2, 0x7f03001f

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->viewQ:Landroid/view/View;

    .line 71
    const v2, 0x7f03001e

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->viewH:Landroid/view/View;

    .line 72
    const v2, 0x7f030021

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->viewT:Landroid/view/View;

    .line 74
    const/4 v2, 0x3

    iput v2, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->currentState:I

    .line 76
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 138
    sparse-switch p1, :sswitch_data_e

    .line 148
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_7
    return v0

    .line 145
    :sswitch_8
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->draw()V

    .line 146
    const/4 v0, 0x1

    goto :goto_7

    .line 138
    nop

    :sswitch_data_e
    .sparse-switch
        0x13 -> :sswitch_8
        0x14 -> :sswitch_8
        0x15 -> :sswitch_8
        0x16 -> :sswitch_8
        0x17 -> :sswitch_8
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 125
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->finish()V

    .line 126
    return-void
.end method

.method public onResume()V
    .registers 8

    .prologue
    const v6, 0x7f03001a

    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 84
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 85
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "ATcmdArgument"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    .line 87
    .local v2, keyCode:Ljava/lang/Integer;
    if-eqz v2, :cond_5d

    .line 88
    const-string v3, "LCDManualTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_62

    .line 112
    invoke-virtual {p0, v6}, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->setContentView(I)V

    .line 118
    :goto_3a
    return-void

    .line 91
    :pswitch_3b
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->finish()V

    goto :goto_3a

    .line 94
    :pswitch_3f
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->viewR:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->setContentView(Landroid/view/View;)V

    goto :goto_3a

    .line 98
    :pswitch_45
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->viewG:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->setContentView(Landroid/view/View;)V

    goto :goto_3a

    .line 102
    :pswitch_4b
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->viewB:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->setContentView(Landroid/view/View;)V

    goto :goto_3a

    .line 106
    :pswitch_51
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->viewQ:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->setContentView(Landroid/view/View;)V

    goto :goto_3a

    .line 109
    :pswitch_57
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->viewT:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->setContentView(Landroid/view/View;)V

    goto :goto_3a

    .line 116
    :cond_5d
    invoke-virtual {p0, v6}, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->setContentView(I)V

    goto :goto_3a

    .line 89
    nop

    :pswitch_data_62
    .packed-switch 0x6c
        :pswitch_3b
        :pswitch_57
        :pswitch_51
        :pswitch_3f
        :pswitch_45
        :pswitch_4b
    .end packed-switch
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 131
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    .line 155
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/lcd_test/ManualTest;->draw()V

    .line 158
    :cond_9
    const-wide/16 v0, 0x64

    :try_start_b
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_10

    .line 161
    :goto_e
    const/4 v0, 0x1

    return v0

    .line 159
    :catch_10
    move-exception v0

    goto :goto_e
.end method
