.class public Lcom/lge/android/memo/GenericColorPallet;
.super Landroid/view/View;
.source "GenericColorPallet.java"


# static fields
.field public static selectedColorStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static selectedPenSizeStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final StateDefault:I

.field private final StateFocused:I

.field private final StatePressed:I

.field private canvas:Landroid/graphics/Canvas;

.field private color:I

.field private mBitmapDefault:Landroid/graphics/Bitmap;

.field private mBitmapFocused:Landroid/graphics/Bitmap;

.field private mBitmapPressed:Landroid/graphics/Bitmap;

.field private mState:I

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private onKeyListener:Landroid/view/View$OnKeyListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/lge/android/memo/GenericColorPallet;->selectedColorStack:Ljava/util/Stack;

    .line 62
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/lge/android/memo/GenericColorPallet;->selectedPenSizeStack:Ljava/util/Stack;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIILjava/lang/String;)V
    .registers 15
    .parameter "context"
    .parameter "color"
    .parameter "rectWidth"
    .parameter "rectHeight"
    .parameter "optionType"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v5, 0x0

    iput v5, p0, Lcom/lge/android/memo/GenericColorPallet;->StateDefault:I

    .line 56
    const/4 v5, 0x1

    iput v5, p0, Lcom/lge/android/memo/GenericColorPallet;->StateFocused:I

    .line 57
    const/4 v5, 0x2

    iput v5, p0, Lcom/lge/android/memo/GenericColorPallet;->StatePressed:I

    .line 58
    const/4 v5, 0x0

    iput v5, p0, Lcom/lge/android/memo/GenericColorPallet;->mState:I

    .line 59
    const/4 v5, -0x1

    iput v5, p0, Lcom/lge/android/memo/GenericColorPallet;->color:I

    .line 60
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/lge/android/memo/GenericColorPallet;->canvas:Landroid/graphics/Canvas;

    .line 178
    new-instance v5, Lcom/lge/android/memo/GenericColorPallet$1;

    invoke-direct {v5, p0}, Lcom/lge/android/memo/GenericColorPallet$1;-><init>(Lcom/lge/android/memo/GenericColorPallet;)V

    iput-object v5, p0, Lcom/lge/android/memo/GenericColorPallet;->onClickListener:Landroid/view/View$OnClickListener;

    .line 187
    new-instance v5, Lcom/lge/android/memo/GenericColorPallet$2;

    invoke-direct {v5, p0}, Lcom/lge/android/memo/GenericColorPallet$2;-><init>(Lcom/lge/android/memo/GenericColorPallet;)V

    iput-object v5, p0, Lcom/lge/android/memo/GenericColorPallet;->onKeyListener:Landroid/view/View$OnKeyListener;

    .line 71
    iput p2, p0, Lcom/lge/android/memo/GenericColorPallet;->color:I

    .line 76
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/android/memo/GenericColorPallet;->mBitmapDefault:Landroid/graphics/Bitmap;

    .line 79
    const/4 v5, 0x4

    sub-int v5, p3, v5

    const/4 v6, 0x4

    sub-int v6, p4, v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/android/memo/GenericColorPallet;->mBitmapPressed:Landroid/graphics/Bitmap;

    .line 80
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/android/memo/GenericColorPallet;->mBitmapFocused:Landroid/graphics/Bitmap;

    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, mColors:[I
    const-string v5, "PenSize"

    invoke-virtual {p5, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a5

    .line 83
    const/4 v5, 0x2

    new-array v1, v5, [I

    .end local v1           #mColors:[I
    const/4 v5, 0x0

    const v6, -0x2e2e2f

    aput v6, v1, v5

    const/4 v5, 0x1

    aput p2, v1, v5

    .line 88
    .restart local v1       #mColors:[I
    :goto_58
    new-instance v4, Landroid/graphics/SweepGradient;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v1, v7}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 91
    .local v4, s:Landroid/graphics/Shader;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 92
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 93
    .local v2, paint:Landroid/graphics/Paint;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    iget-object v5, p0, Lcom/lge/android/memo/GenericColorPallet;->mBitmapDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 97
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 98
    const/4 v3, 0x0

    .line 99
    .local v3, rect:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    .end local v3           #rect:Landroid/graphics/Rect;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 101
    .restart local v3       #rect:Landroid/graphics/Rect;
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 103
    iget-object v5, p0, Lcom/lge/android/memo/GenericColorPallet;->mBitmapPressed:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 106
    iget-object v5, p0, Lcom/lge/android/memo/GenericColorPallet;->mBitmapPressed:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 112
    iget-object v5, p0, Lcom/lge/android/memo/GenericColorPallet;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v5}, Lcom/lge/android/memo/GenericColorPallet;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v5, p0, Lcom/lge/android/memo/GenericColorPallet;->onKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p0, v5}, Lcom/lge/android/memo/GenericColorPallet;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 115
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/lge/android/memo/GenericColorPallet;->setFocusable(Z)V

    .line 117
    return-void

    .line 85
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v2           #paint:Landroid/graphics/Paint;
    .end local v3           #rect:Landroid/graphics/Rect;
    .end local v4           #s:Landroid/graphics/Shader;
    :cond_a5
    const/4 v5, 0x3

    new-array v1, v5, [I

    .end local v1           #mColors:[I
    const/4 v5, 0x0

    aput p2, v1, v5

    const/4 v5, 0x1

    const v6, -0xbbbbbc

    aput v6, v1, v5

    const/4 v5, 0x2

    const v6, -0x2e2e2f

    aput v6, v1, v5

    .restart local v1       #mColors:[I
    goto :goto_58
.end method

.method static synthetic access$000(Lcom/lge/android/memo/GenericColorPallet;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/lge/android/memo/GenericColorPallet;->color:I

    return v0
.end method

.method static synthetic access$102(Lcom/lge/android/memo/GenericColorPallet;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/lge/android/memo/GenericColorPallet;->mState:I

    return p1
.end method

.method static synthetic access$200(Lcom/lge/android/memo/GenericColorPallet;)Landroid/graphics/Canvas;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/android/memo/GenericColorPallet;->canvas:Landroid/graphics/Canvas;

    return-object v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/lge/android/memo/GenericColorPallet;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 166
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/android/memo/GenericColorPallet;->mState:I

    .line 175
    :goto_9
    invoke-virtual {p0}, Lcom/lge/android/memo/GenericColorPallet;->invalidate()V

    .line 176
    return-void

    .line 167
    :cond_d
    invoke-virtual {p0}, Lcom/lge/android/memo/GenericColorPallet;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 168
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/android/memo/GenericColorPallet;->mState:I

    goto :goto_9

    .line 170
    :cond_17
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/android/memo/GenericColorPallet;->mState:I

    goto :goto_9
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x4000

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 122
    iput-object p1, p0, Lcom/lge/android/memo/GenericColorPallet;->canvas:Landroid/graphics/Canvas;

    .line 123
    iget v1, p0, Lcom/lge/android/memo/GenericColorPallet;->mState:I

    packed-switch v1, :pswitch_data_100

    .line 160
    .end local p0
    :goto_d
    return-void

    .line 126
    .restart local p0
    :pswitch_e
    iget-object v1, p0, Lcom/lge/android/memo/GenericColorPallet;->mBitmapDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    sget v2, Lcom/lge/android/memo/DialogLauncher;->textColor:I

    if-ne v1, v2, :cond_86

    sget-boolean v1, Lcom/lge/android/memo/DialogLauncher;->isEditButtonPressed:Z

    if-nez v1, :cond_86

    .line 127
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 128
    .local v0, p:Landroid/graphics/Paint;
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xa5

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 129
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    iget-object v1, p0, Lcom/lge/android/memo/GenericColorPallet;->mBitmapPressed:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v6, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 132
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/lge/android/memo/GenericColorPallet;->mBitmapPressed:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/lge/android/memo/GenericColorPallet;->mBitmapPressed:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 133
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/lge/android/memo/GenericColorPallet;->mBitmapPressed:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lcom/lge/android/memo/GenericColorPallet;->mBitmapPressed:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-direct {v1, v7, v7, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 134
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/lge/android/memo/GenericColorPallet;->mBitmapPressed:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lcom/lge/android/memo/GenericColorPallet;->mBitmapPressed:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 140
    .end local v0           #p:Landroid/graphics/Paint;
    :goto_7c
    invoke-virtual {p0}, Lcom/lge/android/memo/GenericColorPallet;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_d

    .line 137
    .restart local p0
    :cond_86
    iget-object v1, p0, Lcom/lge/android/memo/GenericColorPallet;->mBitmapDefault:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_7c

    .line 143
    :pswitch_8d
    iget-object v1, p0, Lcom/lge/android/memo/GenericColorPallet;->mBitmapFocused:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_d

    .line 147
    :pswitch_95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 148
    .restart local v0       #p:Landroid/graphics/Paint;
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xa5

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 149
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    iget-object v1, p0, Lcom/lge/android/memo/GenericColorPallet;->mBitmapPressed:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 151
    iget-object v1, p0, Lcom/lge/android/memo/GenericColorPallet;->mBitmapPressed:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    sput v1, Lcom/lge/android/memo/DialogLauncher;->textColor:I

    .line 154
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/lge/android/memo/GenericColorPallet;->mBitmapPressed:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/lge/android/memo/GenericColorPallet;->mBitmapPressed:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 155
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/lge/android/memo/GenericColorPallet;->mBitmapPressed:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lcom/lge/android/memo/GenericColorPallet;->mBitmapPressed:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-direct {v1, v7, v7, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 156
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/lge/android/memo/GenericColorPallet;->mBitmapPressed:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lcom/lge/android/memo/GenericColorPallet;->mBitmapPressed:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_d

    .line 123
    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_e
        :pswitch_8d
        :pswitch_95
    .end packed-switch
.end method
