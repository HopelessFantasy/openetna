.class public Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;
.super Lcom/lge/hiddenmenu/device_test/touch_test/TGraphicsActivity;
.source "GridTouchTest.java"

# interfaces
.implements Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;
    }
.end annotation


# static fields
.field private static final MAX_NUM_TOUCH:I = 0x1388

.field private static final NUM_GRID:I = 0x2d

.field private static final NUM_X:I = 0x5

.field private static final NUM_Y:I = 0x9

.field private static final RECT_HEIGHT:I = 0x35

.field private static final RECT_HEIGHT_RES:I = 0x28

.field private static final RECT_WIDTH:I = 0x40

.field private static final TAG:Ljava/lang/String; = "GridTouchTest"


# instance fields
.field bAutoAllTest:Ljava/lang/Integer;

.field bFirstPress:Ljava/lang/Integer;

.field private mBkPaint:Landroid/graphics/Paint;

.field private mPaint:Landroid/graphics/Paint;

.field private mTextPaint:Landroid/graphics/Paint;

.field myView:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;

.field nNumOfTouch:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/TGraphicsActivity;-><init>()V

    .line 63
    const/16 v0, 0x2d

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->nNumOfTouch:[I

    .line 74
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->bFirstPress:Ljava/lang/Integer;

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;)Landroid/graphics/Paint;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;)Landroid/graphics/Paint;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->mTextPaint:Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method public colorChanged(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v1, 0x400

    const/4 v5, -0x1

    const/high16 v4, 0x4040

    const/4 v3, 0x1

    .line 80
    invoke-super {p0, p1}, Lcom/lge/hiddenmenu/device_test/touch_test/TGraphicsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 83
    .local v0, wp:Landroid/view/Window;
    invoke-virtual {v0, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 84
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 88
    new-instance v1, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;

    invoke-direct {v1, p0, p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;-><init>(Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->myView:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;

    .line 89
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->myView:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->setContentView(Landroid/view/View;)V

    .line 91
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->mPaint:Landroid/graphics/Paint;

    .line 92
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 94
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 97
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 98
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->mBkPaint:Landroid/graphics/Paint;

    .line 101
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->mBkPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->mTextPaint:Landroid/graphics/Paint;

    .line 104
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41c0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 106
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 107
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 109
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 254
    sparse-switch p1, :sswitch_data_74

    .line 304
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/lge/hiddenmenu/device_test/touch_test/TGraphicsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    :goto_9
    return v4

    .line 261
    :sswitch_a
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->myView:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;

    invoke-static {v4}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->access$200(Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;)V

    move v4, v5

    .line 262
    goto :goto_9

    .line 264
    :sswitch_11
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->bAutoAllTest:Ljava/lang/Integer;

    if-eqz v4, :cond_26

    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_26

    .line 267
    const-string v4, "Auto All Test is canceled!"

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 268
    .local v3, mToast:Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 271
    .end local v3           #mToast:Landroid/widget/Toast;
    :cond_26
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->finish()V

    move v4, v5

    .line 272
    goto :goto_9

    .line 274
    :sswitch_2b
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->bFirstPress:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_40

    .line 275
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->myView:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;

    invoke-static {v4}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->access$200(Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;)V

    .line 276
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->bFirstPress:Ljava/lang/Integer;

    move v4, v5

    .line 277
    goto :goto_9

    .line 278
    :cond_40
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->bFirstPress:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 279
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->bAutoAllTest:Ljava/lang/Integer;

    if-eqz v4, :cond_6f

    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_6f

    .line 281
    const-string v1, "AutoAllTest"

    .line 282
    .local v1, ExtraName:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 284
    .local v0, AutoAllTest:Ljava/lang/Integer;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.media.action.AUTO_CAMERA"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .local v2, intent:Landroid/content/Intent;
    const/high16 v4, 0x1020

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 288
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 290
    :try_start_69
    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->startActivity(Landroid/content/Intent;)V
    :try_end_6c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_69 .. :try_end_6c} :catch_71

    .line 295
    :goto_6c
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->finish()V

    .end local v0           #AutoAllTest:Ljava/lang/Integer;
    .end local v1           #ExtraName:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_6f
    move v4, v5

    .line 297
    goto :goto_9

    .line 292
    .restart local v0       #AutoAllTest:Ljava/lang/Integer;
    .restart local v1       #ExtraName:Ljava/lang/String;
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_71
    move-exception v4

    goto :goto_6c

    .line 254
    nop

    :sswitch_data_74
    .sparse-switch
        0x4 -> :sswitch_11
        0x13 -> :sswitch_a
        0x14 -> :sswitch_a
        0x15 -> :sswitch_a
        0x16 -> :sswitch_a
        0x17 -> :sswitch_a
        0x42 -> :sswitch_a
        0x52 -> :sswitch_2b
    .end sparse-switch
.end method
