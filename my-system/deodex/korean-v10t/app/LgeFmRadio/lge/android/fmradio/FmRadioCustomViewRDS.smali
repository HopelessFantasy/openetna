.class public Llge/android/fmradio/FmRadioCustomViewRDS;
.super Landroid/view/View;
.source "FmRadioCustomViewRDS.java"


# static fields
.field private static final LOGRDSTAG:Ljava/lang/String; = "RDS"

.field private static final LOGTAG:Ljava/lang/String; = "FM RADIO"


# instance fields
.field private mTextPaint_RdsProgramService:Landroid/graphics/Paint;

.field private mTextPaint_RdsProgramType:Landroid/graphics/Paint;

.field private mTextPaint_RdsRadioText:Landroid/graphics/Paint;

.field private mText_RdsProgramService:Ljava/lang/String;

.field private mText_RdsProgramType:Ljava/lang/String;

.field private mText_RdsRadioText:Ljava/lang/String;

.field private mnRdsProgramServiceX:I

.field private mnRdsProgramServiceY:I

.field private mnRdsProgramTypeX:I

.field private mnRdsProgramTypeY:I

.field private mnRdsRadioTextX:I

.field private mnRdsRadioTextY:I

.field private rect_RdsProgramService:Landroid/graphics/Rect;

.field private rect_RdsProgramType:Landroid/graphics/Rect;

.field private rect_RdsRadioText:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v2, 0x96

    const/16 v1, 0x2d

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput-object v0, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mTextPaint_RdsProgramType:Landroid/graphics/Paint;

    .line 21
    iput-object v0, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mTextPaint_RdsProgramService:Landroid/graphics/Paint;

    .line 22
    iput-object v0, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mTextPaint_RdsRadioText:Landroid/graphics/Paint;

    .line 24
    iput-object v0, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mText_RdsProgramType:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mText_RdsProgramService:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mText_RdsRadioText:Ljava/lang/String;

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->rect_RdsProgramType:Landroid/graphics/Rect;

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->rect_RdsProgramService:Landroid/graphics/Rect;

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->rect_RdsRadioText:Landroid/graphics/Rect;

    .line 36
    const/16 v0, 0xaf

    iput v0, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mnRdsProgramTypeX:I

    .line 37
    iput v2, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mnRdsProgramTypeY:I

    .line 38
    iput v1, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mnRdsProgramServiceX:I

    .line 39
    iput v2, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mnRdsProgramServiceY:I

    .line 40
    iput v1, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mnRdsRadioTextX:I

    .line 41
    const/16 v0, 0xac

    iput v0, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mnRdsRadioTextY:I

    .line 45
    invoke-direct {p0}, Llge/android/fmradio/FmRadioCustomViewRDS;->InitView()V

    .line 46
    return-void
.end method

.method private final InitView()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/high16 v1, 0x4190

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mTextPaint_RdsProgramType:Landroid/graphics/Paint;

    .line 51
    iget-object v0, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mTextPaint_RdsProgramType:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    iget-object v0, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mTextPaint_RdsProgramType:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 53
    iget-object v0, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mTextPaint_RdsProgramType:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mTextPaint_RdsProgramService:Landroid/graphics/Paint;

    .line 56
    iget-object v0, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mTextPaint_RdsProgramService:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    iget-object v0, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mTextPaint_RdsProgramService:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 58
    iget-object v0, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mTextPaint_RdsProgramService:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mTextPaint_RdsRadioText:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mTextPaint_RdsRadioText:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    iget-object v0, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mTextPaint_RdsRadioText:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 63
    iget-object v0, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mTextPaint_RdsRadioText:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 1

    .prologue
    .line 103
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 104
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 111
    iget-object v0, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mText_RdsProgramType:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 112
    iget-object v0, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mText_RdsProgramType:Ljava/lang/String;

    iget v1, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mnRdsProgramTypeX:I

    int-to-float v1, v1

    iget v2, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mnRdsProgramTypeY:I

    int-to-float v2, v2

    iget-object v3, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mTextPaint_RdsProgramType:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 114
    :cond_14
    iget-object v0, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mText_RdsProgramService:Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 115
    iget-object v0, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mText_RdsProgramService:Ljava/lang/String;

    iget v1, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mnRdsProgramServiceX:I

    int-to-float v1, v1

    iget v2, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mnRdsProgramServiceY:I

    int-to-float v2, v2

    iget-object v3, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mTextPaint_RdsProgramService:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 117
    :cond_25
    iget-object v0, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mText_RdsRadioText:Ljava/lang/String;

    if-eqz v0, :cond_36

    .line 118
    iget-object v0, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mText_RdsRadioText:Ljava/lang/String;

    iget v1, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mnRdsRadioTextX:I

    int-to-float v1, v1

    iget v2, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mnRdsRadioTextY:I

    int-to-float v2, v2

    iget-object v3, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mTextPaint_RdsRadioText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 121
    :cond_36
    return-void
.end method

.method public setText(ILjava/lang/String;)V
    .registers 8
    .parameter "nRdsType"
    .parameter "text"

    .prologue
    .line 73
    const-string v0, "RDS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioCustomViewRDS] setText : nRdsType = :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "text = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sparse-switch p1, :sswitch_data_4c

    .line 96
    :goto_25
    invoke-virtual {p0}, Llge/android/fmradio/FmRadioCustomViewRDS;->requestLayout()V

    .line 97
    invoke-virtual {p0}, Llge/android/fmradio/FmRadioCustomViewRDS;->invalidate()V

    .line 98
    return-void

    .line 77
    :sswitch_2c
    iput-object p2, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mText_RdsProgramType:Ljava/lang/String;

    goto :goto_25

    .line 82
    :sswitch_2f
    iput-object p2, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mText_RdsProgramService:Ljava/lang/String;

    goto :goto_25

    .line 87
    :sswitch_32
    iput-object p2, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mText_RdsRadioText:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mTextPaint_RdsRadioText:Landroid/graphics/Paint;

    iget-object v1, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mText_RdsRadioText:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mText_RdsRadioText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->rect_RdsRadioText:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 91
    iget-object v0, p0, Llge/android/fmradio/FmRadioCustomViewRDS;->mTextPaint_RdsRadioText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_25

    .line 75
    :sswitch_data_4c
    .sparse-switch
        0x3e8 -> :sswitch_2c
        0x7d0 -> :sswitch_2f
        0xbb8 -> :sswitch_32
    .end sparse-switch
.end method
