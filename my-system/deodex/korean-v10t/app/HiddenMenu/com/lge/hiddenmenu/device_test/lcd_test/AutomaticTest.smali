.class public Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;
.super Landroid/app/Activity;
.source "AutomaticTest.java"


# static fields
.field private static final BLACK:I = 0x4

.field private static final BLUE:I = 0x2

.field private static final GREEN:I = 0x1

.field private static final HORIZONTAL:I = 0x6

.field private static final INIT:I = -0x1

.field private static final QUARTER:I = 0x5

.field private static final RED:I = 0x0

.field private static final WHITE:I = 0x3


# instance fields
.field bAutoAllTest:Ljava/lang/Integer;

.field private currentState:I

.field private mHandler:Landroid/os/Handler;

.field private mView:Landroid/widget/TextView;

.field private viewH:Landroid/view/View;

.field private viewQ:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->currentState:I

    return v0
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->draw(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private draw(I)V
    .registers 14
    .parameter "cur"

    .prologue
    const/4 v11, 0x4

    const/4 v7, 0x3

    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 137
    if-ne p1, v9, :cond_17

    .line 140
    iput v7, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->currentState:I

    .line 141
    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->mView:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 187
    :cond_e
    :goto_e
    new-instance v6, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest$1;

    invoke-direct {v6, p0}, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest$1;-><init>(Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;)V

    .line 199
    .local v6, t:Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 200
    .end local v6           #t:Ljava/lang/Thread;
    :goto_16
    return-void

    .line 142
    :cond_17
    if-nez p1, :cond_24

    .line 143
    iput v8, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->currentState:I

    .line 144
    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->mView:Landroid/widget/TextView;

    const v8, -0xff0100

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_e

    .line 145
    :cond_24
    if-ne p1, v8, :cond_31

    .line 146
    iput v10, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->currentState:I

    .line 147
    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->mView:Landroid/widget/TextView;

    const v8, -0xffff01

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_e

    .line 148
    :cond_31
    if-ne p1, v10, :cond_3b

    .line 149
    iput v7, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->currentState:I

    .line 150
    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->mView:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_e

    .line 151
    :cond_3b
    if-ne p1, v7, :cond_47

    .line 152
    iput v11, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->currentState:I

    .line 153
    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->mView:Landroid/widget/TextView;

    const/high16 v8, -0x100

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_e

    .line 154
    :cond_47
    if-ne p1, v11, :cond_52

    .line 155
    const/4 v7, 0x5

    iput v7, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->currentState:I

    .line 156
    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->viewQ:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->setContentView(Landroid/view/View;)V

    goto :goto_e

    .line 157
    :cond_52
    const/4 v7, 0x5

    if-ne p1, v7, :cond_5e

    .line 158
    const/4 v7, 0x6

    iput v7, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->currentState:I

    .line 159
    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->viewH:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->setContentView(Landroid/view/View;)V

    goto :goto_e

    .line 160
    :cond_5e
    const/4 v7, 0x6

    if-ne p1, v7, :cond_e

    .line 161
    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->bAutoAllTest:Ljava/lang/Integer;

    if-eqz v7, :cond_bc

    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v8, :cond_bc

    .line 162
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->bAutoAllTest:Ljava/lang/Integer;

    .line 163
    const-string v4, "com.lge.hiddenmenu"

    .line 164
    .local v4, packageName:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 165
    .local v3, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 166
    .local v2, className:Ljava/lang/String;
    const/4 v5, 0x0

    .line 167
    .local v5, packageName2:Ljava/lang/String;
    const-string v1, "AutoAllTest"

    .line 168
    .local v1, ExtraName:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 170
    .local v0, AutoAllTest:Ljava/lang/Integer;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".device_test.sound_test"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 171
    const-string v2, "RingTest_Auto"

    .line 173
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 175
    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->startActivity(Landroid/content/Intent;)V

    .line 176
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->finish()V

    goto/16 :goto_e

    .line 180
    .end local v0           #AutoAllTest:Ljava/lang/Integer;
    .end local v1           #ExtraName:Ljava/lang/String;
    .end local v2           #className:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #packageName2:Ljava/lang/String;
    :cond_bc
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->finish()V

    goto/16 :goto_16
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x400

    const/4 v3, -0x1

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 65
    .local v1, wp:Landroid/view/Window;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 66
    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 67
    const v2, 0x7f03001a

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->setContentView(I)V

    .line 69
    const v2, 0x7f070009

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->mView:Landroid/widget/TextView;

    .line 71
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 72
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v2, 0x7f03001f

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->viewQ:Landroid/view/View;

    .line 73
    const v2, 0x7f03001e

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->viewH:Landroid/view/View;

    .line 79
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->bAutoAllTest:Ljava/lang/Integer;

    .line 82
    iput v3, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->currentState:I

    .line 83
    invoke-direct {p0, v3}, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->draw(I)V

    .line 84
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 115
    packed-switch p1, :pswitch_data_1c

    .line 133
    const/4 v0, 0x0

    :goto_5
    return v0

    .line 117
    :pswitch_6
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->bAutoAllTest:Ljava/lang/Integer;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_17

    .line 125
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->finish()V

    move v0, v1

    .line 126
    goto :goto_5

    .line 129
    :cond_17
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_5

    .line 115
    :pswitch_data_1c
    .packed-switch 0x4
        :pswitch_6
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 104
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->bAutoAllTest:Ljava/lang/Integer;

    .line 105
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 95
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 96
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "AutoAllTest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/lcd_test/AutomaticTest;->bAutoAllTest:Ljava/lang/Integer;

    .line 98
    return-void
.end method
