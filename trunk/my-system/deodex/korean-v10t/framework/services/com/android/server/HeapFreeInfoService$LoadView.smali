.class Lcom/android/server/HeapFreeInfoService$LoadView;
.super Landroid/view/View;
.source "HeapFreeInfoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HeapFreeInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadView"
.end annotation


# instance fields
.field private app_alloc:[Ljava/lang/String;

.field private app_name:[Ljava/lang/String;

.field private app_size:[Ljava/lang/String;

.field private mAddedPaint:Landroid/graphics/Paint;

.field private mAscent:F

.field private mFH:I

.field private mHandler:Landroid/os/Handler;

.field private mLoadPaint:Landroid/graphics/Paint;

.field private mNeededHeight:I

.field private mNeededWidth:I

.field private mRemovedPaint:Landroid/graphics/Paint;

.field private mShadow2Paint:Landroid/graphics/Paint;

.field private mShadowPaint:Landroid/graphics/Paint;

.field private nApp:I

.field final synthetic this$0:Lcom/android/server/HeapFreeInfoService;


# direct methods
.method constructor <init>(Lcom/android/server/HeapFreeInfoService;Landroid/content/Context;)V
    .registers 10
    .parameter
    .parameter "c"

    .prologue
    const/high16 v6, 0x4120

    const/16 v3, 0xff

    const/4 v2, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 82
    iput-object p1, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->this$0:Lcom/android/server/HeapFreeInfoService;

    .line 83
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v1, Lcom/android/server/HeapFreeInfoService$LoadView$1;

    invoke-direct {v1, p0}, Lcom/android/server/HeapFreeInfoService$LoadView$1;-><init>(Lcom/android/server/HeapFreeInfoService$LoadView;)V

    iput-object v1, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mHandler:Landroid/os/Handler;

    .line 72
    iput v4, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mNeededWidth:I

    .line 73
    iput v4, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mNeededHeight:I

    .line 78
    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->app_name:[Ljava/lang/String;

    .line 79
    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->app_size:[Ljava/lang/String;

    .line 80
    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->app_alloc:[Ljava/lang/String;

    .line 85
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/android/server/HeapFreeInfoService$LoadView;->setPadding(IIII)V

    .line 88
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    .line 89
    iget-object v1, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    iget-object v1, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 91
    iget-object v1, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 93
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    .line 94
    iget-object v1, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    iget-object v1, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 97
    iget-object v1, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    const/16 v2, 0xc0

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 98
    iget-object v1, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4080

    const/high16 v3, -0x100

    invoke-virtual {v1, v2, v5, v5, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 100
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    .line 101
    iget-object v1, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    iget-object v1, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 104
    iget-object v1, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    const/16 v2, 0xc0

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 105
    iget-object v1, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    const/high16 v3, -0x100

    invoke-virtual {v1, v2, v5, v5, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 107
    iget-object v1, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    iput v1, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mAscent:F

    .line 108
    iget-object v1, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v0

    .line 109
    .local v0, descent:F
    iget v1, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mAscent:F

    sub-float v1, v0, v1

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mFH:I

    .line 110
    return-void
.end method


# virtual methods
.method appParser()V
    .registers 11

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x1

    .line 194
    const/4 v3, 0x0

    .local v3, startPos:I
    const/4 v2, 0x0

    .line 196
    .local v2, endPos:I
    const/4 v0, 0x0

    .line 198
    .local v0, app_flag:Z
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->nApp:I

    .line 201
    :cond_8
    :goto_8
    :try_start_8
    iget-object v5, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->this$0:Lcom/android/server/HeapFreeInfoService;

    invoke-static {v5}, Lcom/android/server/HeapFreeInfoService;->access$000(Lcom/android/server/HeapFreeInfoService;)Ljava/io/BufferedReader;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, tmp:Ljava/lang/String;
    if-eqz v4, :cond_63

    .line 202
    const-string v5, "com."

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-ne v5, v8, :cond_36

    .line 203
    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 204
    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 205
    iget-object v5, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->app_name:[Ljava/lang/String;

    iget v6, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->nApp:I

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v4, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 207
    const/4 v0, 0x1

    goto :goto_8

    .line 208
    :cond_36
    const-string v5, "size"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-ne v5, v8, :cond_64

    if-ne v0, v8, :cond_64

    .line 209
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 210
    iget-object v5, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->app_size:[Ljava/lang/String;

    iget v6, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->nApp:I

    sub-int v7, v2, v9

    invoke-virtual {v4, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_50} :catch_51

    goto :goto_8

    .line 224
    .end local v4           #tmp:Ljava/lang/String;
    :catch_51
    move-exception v5

    move-object v1, v5

    .line 225
    .local v1, e:Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "// Exception from appParser"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 226
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 228
    .end local v1           #e:Ljava/lang/Exception;
    :cond_63
    return-void

    .line 211
    .restart local v4       #tmp:Ljava/lang/String;
    :cond_64
    :try_start_64
    const-string v5, "allocated"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-ne v5, v8, :cond_8

    if-ne v0, v8, :cond_8

    .line 212
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 213
    iget-object v5, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->app_alloc:[Ljava/lang/String;

    iget v6, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->nApp:I

    sub-int v7, v2, v9

    invoke-virtual {v4, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 215
    iget v5, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->nApp:I

    const/16 v6, 0x13

    if-ne v5, v6, :cond_86

    .line 220
    :goto_84
    const/4 v0, 0x0

    goto :goto_8

    .line 218
    :cond_86
    iget v5, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->nApp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->nApp:I
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_8c} :catch_51

    goto :goto_84
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 115
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 116
    iget-object v0, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 117
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 121
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 122
    iget-object v0, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 123
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 11
    .parameter "canvas"

    .prologue
    const/4 v8, 0x1

    .line 134
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 136
    const/4 v2, 0x0

    .line 137
    .local v2, x:I
    iget v4, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mPaddingTop:I

    iget v5, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mAscent:F

    float-to-int v5, v5

    sub-int v3, v4, v5

    .line 141
    .local v3, y:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    iget v4, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->nApp:I

    if-ge v0, v4, :cond_ba

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "total : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->app_size:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", allocated : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->app_alloc:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, tmp_text:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->app_name:[Ljava/lang/String;

    aget-object v4, v4, v0

    sub-int v5, v2, v8

    int-to-float v5, v5

    sub-int v6, v3, v8

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 145
    iget-object v4, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->app_name:[Ljava/lang/String;

    aget-object v4, v4, v0

    sub-int v5, v2, v8

    int-to-float v5, v5

    add-int/lit8 v6, v3, 0x1

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 146
    iget-object v4, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->app_name:[Ljava/lang/String;

    aget-object v4, v4, v0

    add-int/lit8 v5, v2, 0x1

    int-to-float v5, v5

    sub-int v6, v3, v8

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 147
    iget-object v4, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->app_name:[Ljava/lang/String;

    aget-object v4, v4, v0

    add-int/lit8 v5, v2, 0x1

    int-to-float v5, v5

    add-int/lit8 v6, v3, 0x1

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 148
    iget-object v4, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->app_name:[Ljava/lang/String;

    aget-object v4, v4, v0

    int-to-float v5, v2

    int-to-float v6, v3

    iget-object v7, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 149
    iget v4, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mFH:I

    add-int/2addr v3, v4

    .line 151
    sub-int v4, v2, v8

    int-to-float v4, v4

    sub-int v5, v3, v8

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 152
    sub-int v4, v2, v8

    int-to-float v4, v4

    add-int/lit8 v5, v3, 0x1

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 153
    add-int/lit8 v4, v2, 0x1

    int-to-float v4, v4

    sub-int v5, v3, v8

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 154
    add-int/lit8 v4, v2, 0x1

    int-to-float v4, v4

    add-int/lit8 v5, v3, 0x1

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 155
    int-to-float v4, v2

    int-to-float v5, v3

    iget-object v6, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 156
    iget v4, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mFH:I

    add-int/2addr v3, v4

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d

    .line 159
    .end local v1           #tmp_text:Ljava/lang/String;
    :cond_ba
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpect"
    .parameter "heightMeasureSpec"

    .prologue
    .line 127
    iget v0, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mNeededWidth:I

    iget v1, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mNeededHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/HeapFreeInfoService$LoadView;->setMeasuredDimension(II)V

    .line 128
    return-void
.end method

.method updateDisplay()V
    .registers 7

    .prologue
    .line 166
    iget-object v3, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->this$0:Lcom/android/server/HeapFreeInfoService;

    const-string v4, "meminfo"

    const-string v5, "dumpsys meminfo"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/HeapFreeInfoService;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/server/HeapFreeInfoService$LoadView;->appParser()V

    .line 169
    const/16 v2, 0xaa

    .line 170
    .local v2, neededWidth:I
    iget v3, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mPaddingTop:I

    iget v4, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mFH:I

    iget v5, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->nApp:I

    mul-int/lit8 v5, v5, 0x5

    mul-int/2addr v4, v5

    add-int v1, v3, v4

    .line 173
    .local v1, neededHeight:I
    :try_start_1c
    iget v3, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mNeededWidth:I

    if-ne v2, v3, :cond_24

    iget v3, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mNeededHeight:I

    if-eq v1, v3, :cond_32

    .line 174
    :cond_24
    const/16 v3, 0xaa

    if-ne v1, v3, :cond_2a

    .line 175
    add-int/lit8 v1, v1, 0x1

    .line 178
    :cond_2a
    iput v2, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mNeededWidth:I

    .line 179
    iput v1, p0, Lcom/android/server/HeapFreeInfoService$LoadView;->mNeededHeight:I

    .line 181
    invoke-virtual {p0}, Lcom/android/server/HeapFreeInfoService$LoadView;->requestLayout()V

    .line 189
    :goto_31
    return-void

    .line 183
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/HeapFreeInfoService$LoadView;->invalidate()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_35} :catch_36

    goto :goto_31

    .line 185
    :catch_36
    move-exception v3

    move-object v0, v3

    .line 186
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "// Exception from updateDisplay"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 187
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_31
.end method
