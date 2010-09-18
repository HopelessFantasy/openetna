.class public Landroid/text/Styled;
.super Ljava/lang/Object;
.source "Styled.java"


# static fields
.field private static final l2r_sign:C = '\u200e'

.field private static final r2l_sign:C = '\u200f'


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIFIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z)F
    .registers 25
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "direction"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "paint"
    .parameter "workPaint"
    .parameter "needWidth"

    .prologue
    .line 442
    if-ltz p4, :cond_1f

    const/16 p4, 0x1

    .line 447
    :goto_4
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-static/range {v0 .. v12}, Landroid/text/Styled;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move-result p0

    .end local p0
    return p0

    .line 442
    .restart local p0
    :cond_1f
    const/16 p4, -0x1

    goto :goto_4
.end method

.method static drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z)F
    .registers 29
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "direction"
    .parameter "reverse"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "paint"
    .parameter "workPaint"
    .parameter "needWidth"

    .prologue
    .line 386
    const/4 v2, -0x1

    move/from16 v0, p4

    move v1, v2

    if-ne v0, v1, :cond_8

    if-eqz p5, :cond_10

    :cond_8
    if-eqz p5, :cond_4f

    const/4 v2, 0x1

    move/from16 v0, p4

    move v1, v2

    if-ne v0, v1, :cond_4f

    .line 388
    :cond_10
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x1

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-static/range {v2 .. v15}, Landroid/text/Styled;->foreach(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move-result p12

    .line 392
    .local p12, ch:F
    move/from16 v0, p4

    int-to-float v0, v0

    move v2, v0

    mul-float p12, p12, v2

    .line 393
    move/from16 v0, p4

    neg-int v0, v0

    move v6, v0

    add-float v8, p6, p12

    const/4 v12, 0x0

    const/4 v15, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-static/range {v2 .. v15}, Landroid/text/Styled;->foreach(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move/from16 p0, p12

    .line 400
    .end local p0
    .end local p12           #ch:F
    :goto_4e
    return p0

    .restart local p0
    .local p12, needWidth:Z
    :cond_4f
    const/4 v12, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p12

    invoke-static/range {v2 .. v15}, Landroid/text/Styled;->foreach(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move-result p0

    goto :goto_4e
.end method

.method private static each(Landroid/graphics/Canvas;Landroid/text/Spanned;IIIZFIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Landroid/text/TextPaint;Z)F
    .registers 29
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "dir"
    .parameter "reverse"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "fmi"
    .parameter "paint"
    .parameter "workPaint"
    .parameter "needwid"

    .prologue
    .line 47
    const/4 v14, 0x0

    .line 48
    .local v14, havewid:Z
    const/4 v6, 0x0

    .line 49
    .local v6, ret:F
    const-class v4, Landroid/text/style/CharacterStyle;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object v3, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/CharacterStyle;

    .line 52
    .local v8, spans:[Landroid/text/style/CharacterStyle;
    const/4 v4, 0x0

    .line 56
    .local v4, tmpstr:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 58
    .local v4, replacement:Landroid/text/style/ReplacementSpan;
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p11

    iput v0, v1, Landroid/text/TextPaint;->bgColor:I

    .line 59
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p11

    iput v0, v1, Landroid/text/TextPaint;->baselineShift:I

    .line 60
    move-object/from16 v0, p12

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 62
    array-length v5, v8

    if-lez v5, :cond_41

    .line 63
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2a
    array-length v7, v8

    if-ge v5, v7, :cond_41

    .line 64
    aget-object v7, v8, v5

    .line 66
    .local v7, span:Landroid/text/style/CharacterStyle;
    instance-of v9, v7, Landroid/text/style/ReplacementSpan;

    if-eqz v9, :cond_3a

    .line 67
    move-object v0, v7

    check-cast v0, Landroid/text/style/ReplacementSpan;

    move-object v4, v0

    .line 63
    :goto_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 70
    :cond_3a
    move-object v0, v7

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_37

    .line 77
    .end local v5           #i:I
    .end local v7           #span:Landroid/text/style/CharacterStyle;
    :cond_41
    if-eqz p0, :cond_53

    .line 78
    move-object v0, p0

    move-object/from16 v1, p12

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->setR2LFlip(Landroid/graphics/Paint;Z)V

    .line 79
    move-object v0, p0

    move-object/from16 v1, p11

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->setR2LFlip(Landroid/graphics/Paint;Z)V

    .line 82
    :cond_53
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v12, tmpstr:Ljava/lang/StringBuilder;
    const/4 v5, -0x1

    move/from16 v0, p4

    move v1, v5

    if-ne v0, v1, :cond_136

    .line 84
    const/16 v5, 0x200f

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    :goto_63
    if-nez v4, :cond_19d

    .line 92
    if-eqz p5, :cond_13d

    .line 94
    invoke-static/range {p1 .. p3}, Landroid/text/TextUtils;->getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 108
    :goto_71
    sub-int p1, p3, p2

    add-int/lit8 p3, p1, 0x1

    .line 109
    const/16 p2, 0x0

    .line 112
    if-eqz p10, :cond_80

    .line 113
    move-object/from16 v0, p12

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 116
    :cond_80
    if-eqz p0, :cond_18a

    .line 117
    move-object/from16 v0, p12

    iget v0, v0, Landroid/text/TextPaint;->bgColor:I

    move/from16 p1, v0

    if-eqz p1, :cond_20d

    .line 118
    invoke-virtual/range {p12 .. p12}, Landroid/text/TextPaint;->getColor()I

    move-result p1

    .line 119
    .local p1, c:I
    invoke-virtual/range {p12 .. p12}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v11

    .line 120
    .local v11, s:Landroid/graphics/Paint$Style;
    move-object/from16 v0, p12

    iget v0, v0, Landroid/text/TextPaint;->bgColor:I

    move/from16 p10, v0

    .end local p10
    move-object/from16 v0, p12

    move/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 121
    sget-object p10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p12

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    if-nez v14, :cond_208

    .line 126
    move-object/from16 v0, p12

    move-object v1, v12

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    .line 130
    .end local v6           #ret:F
    .local v4, ret:F
    const/16 p10, 0x1

    .end local v14           #havewid:Z
    .local p10, havewid:Z
    move v10, v4

    .line 133
    .end local v4           #ret:F
    .local v10, ret:F
    :goto_b8
    const/4 v4, -0x1

    move/from16 v0, p4

    move v1, v4

    if-ne v0, v1, :cond_149

    .line 134
    sub-float v5, p6, v10

    move/from16 v0, p7

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, p9

    int-to-float v0, v0

    move v8, v0

    move-object v4, p0

    move/from16 v7, p6

    move-object/from16 v9, p12

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 138
    .end local v8           #spans:[Landroid/text/style/CharacterStyle;
    :goto_d0
    move-object/from16 v0, p12

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 139
    move-object/from16 v0, p12

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    move/from16 p7, v10

    .end local v10           #ret:F
    .local p7, ret:F
    move/from16 p1, p10

    .line 142
    .end local v11           #s:Landroid/graphics/Paint$Style;
    .end local p10           #havewid:Z
    .local p1, havewid:Z
    :goto_e1
    const/16 p9, -0x1

    move/from16 v0, p4

    move/from16 v1, p9

    if-ne v0, v1, :cond_15d

    .line 143
    .end local p9
    if-nez p1, :cond_f8

    .line 145
    move-object/from16 v0, p12

    move-object v1, v12

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p7

    .line 148
    const/16 p1, 0x1

    .line 151
    :cond_f8
    sub-float v8, p6, p7

    move-object/from16 v0, p12

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move/from16 p6, v0

    .end local p6
    add-int p6, p6, p8

    move/from16 v0, p6

    int-to-float v0, v0

    move v9, v0

    move-object v4, p0

    move-object v5, v12

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v10, p12

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    move/from16 p6, p7

    .line 211
    .end local v12           #tmpstr:Ljava/lang/StringBuilder;
    .end local p7           #ret:F
    .end local p8
    .local p6, ret:F
    :goto_113
    if-eqz p0, :cond_12b

    if-eqz p5, :cond_12b

    .line 212
    const/16 p1, 0x0

    move-object v0, p0

    move-object/from16 v1, p12

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->setR2LFlip(Landroid/graphics/Paint;Z)V

    .line 213
    .end local p1           #havewid:Z
    const/16 p1, 0x0

    move-object v0, p0

    move-object/from16 v1, p11

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->setR2LFlip(Landroid/graphics/Paint;Z)V

    .line 217
    :cond_12b
    const/4 p0, -0x1

    move/from16 v0, p4

    move v1, p0

    if-ne v0, v1, :cond_1f8

    .line 218
    .end local p0
    move/from16 v0, p6

    neg-float v0, v0

    move p0, v0

    .line 220
    :goto_135
    return p0

    .line 86
    .local v4, replacement:Landroid/text/style/ReplacementSpan;
    .restart local v6       #ret:F
    .restart local v8       #spans:[Landroid/text/style/CharacterStyle;
    .restart local v12       #tmpstr:Ljava/lang/StringBuilder;
    .restart local v14       #havewid:Z
    .restart local p0
    .local p1, text:Landroid/text/Spanned;
    .local p6, x:F
    .local p7, top:I
    .restart local p8
    .restart local p9
    .local p10, fmi:Landroid/graphics/Paint$FontMetricsInt;
    :cond_136
    const/16 v5, 0x200e

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_63

    .line 101
    :cond_13d
    move-object v0, v12

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto/16 :goto_71

    .line 136
    .end local v4           #replacement:Landroid/text/style/ReplacementSpan;
    .end local v6           #ret:F
    .end local v14           #havewid:Z
    .restart local v10       #ret:F
    .restart local v11       #s:Landroid/graphics/Paint$Style;
    .local p1, c:I
    .local p10, havewid:Z
    :cond_149
    move/from16 v0, p7

    int-to-float v0, v0

    move v6, v0

    add-float v7, p6, v10

    move/from16 v0, p9

    int-to-float v0, v0

    move v8, v0

    move-object v4, p0

    move/from16 v5, p6

    move-object/from16 v9, p12

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_d0

    .line 158
    .end local v8           #spans:[Landroid/text/style/CharacterStyle;
    .end local v10           #ret:F
    .end local v11           #s:Landroid/graphics/Paint$Style;
    .end local p9
    .end local p10           #havewid:Z
    .local p1, havewid:Z
    .local p7, ret:F
    :cond_15d
    if-eqz p13, :cond_16e

    .line 159
    if-nez p1, :cond_16e

    .line 161
    move-object/from16 v0, p12

    move-object v1, v12

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p7

    .line 164
    const/16 p1, 0x1

    .line 168
    :cond_16e
    move-object/from16 v0, p12

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move/from16 p9, v0

    add-int p8, p8, p9

    move/from16 v0, p8

    int-to-float v0, v0

    move v9, v0

    move-object v4, p0

    move-object v5, v12

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p6

    move-object/from16 v10, p12

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .end local p8
    move/from16 p6, p7

    .end local p7           #ret:F
    .local p6, ret:F
    goto :goto_113

    .line 176
    .end local p1           #havewid:Z
    .restart local v4       #replacement:Landroid/text/style/ReplacementSpan;
    .restart local v6       #ret:F
    .restart local v8       #spans:[Landroid/text/style/CharacterStyle;
    .restart local v14       #havewid:Z
    .local p6, x:F
    .local p7, top:I
    .restart local p8
    .restart local p9
    .local p10, fmi:Landroid/graphics/Paint$FontMetricsInt;
    :cond_18a
    if-eqz p13, :cond_202

    if-nez v14, :cond_1fc

    .line 178
    move-object/from16 v0, p12

    move-object v1, v12

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p6

    .line 182
    .end local v6           #ret:F
    .local p6, ret:F
    const/16 p1, 0x1

    .end local v14           #havewid:Z
    .restart local p1       #havewid:Z
    goto/16 :goto_113

    .line 188
    .restart local v6       #ret:F
    .restart local v14       #havewid:Z
    .local p1, text:Landroid/text/Spanned;
    .local p6, x:F
    :cond_19d
    move-object v0, v12

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 189
    const/4 v7, 0x0

    sub-int p1, p3, p2

    add-int/lit8 v8, p1, 0x1

    move-object/from16 v5, p12

    move-object v6, v12

    move-object/from16 v9, p10

    invoke-virtual/range {v4 .. v9}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    .end local v6           #ret:F
    .end local v8           #spans:[Landroid/text/style/CharacterStyle;
    .end local p1           #text:Landroid/text/Spanned;
    move-result p1

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 p1, v0

    .line 193
    .local p1, ret:F
    if-eqz p0, :cond_1f2

    .line 195
    const/16 p10, -0x1

    move/from16 v0, p4

    move/from16 v1, p10

    if-ne v0, v1, :cond_1de

    .line 196
    .end local p10           #fmi:Landroid/graphics/Paint$FontMetricsInt;
    const/4 v7, 0x0

    sub-int p10, p3, p2

    add-int/lit8 v8, p10, 0x1

    sub-float v9, p6, p1

    move-object v5, p0

    move-object v6, v12

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p12

    invoke-virtual/range {v4 .. v13}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    .end local v12           #tmpstr:Ljava/lang/StringBuilder;
    move/from16 p6, p1

    .end local p1           #ret:F
    .local p6, ret:F
    move/from16 p1, v14

    .end local v14           #havewid:Z
    .local p1, havewid:Z
    goto/16 :goto_113

    .line 201
    .restart local v12       #tmpstr:Ljava/lang/StringBuilder;
    .restart local v14       #havewid:Z
    .local p1, ret:F
    .local p6, x:F
    :cond_1de
    const/4 v7, 0x0

    sub-int p10, p3, p2

    add-int/lit8 v8, p10, 0x1

    move-object v5, p0

    move-object v6, v12

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p12

    invoke-virtual/range {v4 .. v13}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    .end local v12           #tmpstr:Ljava/lang/StringBuilder;
    :cond_1f2
    move/from16 p6, p1

    .end local p1           #ret:F
    .local p6, ret:F
    move/from16 p1, v14

    .end local v14           #havewid:Z
    .local p1, havewid:Z
    goto/16 :goto_113

    .end local v4           #replacement:Landroid/text/style/ReplacementSpan;
    .end local p0
    .end local p1           #havewid:Z
    .end local p7           #top:I
    .end local p8
    .end local p9
    :cond_1f8
    move/from16 p0, p6

    .line 220
    goto/16 :goto_135

    .restart local v4       #replacement:Landroid/text/style/ReplacementSpan;
    .restart local v6       #ret:F
    .restart local v8       #spans:[Landroid/text/style/CharacterStyle;
    .restart local v12       #tmpstr:Ljava/lang/StringBuilder;
    .restart local v14       #havewid:Z
    .restart local p0
    .local p6, x:F
    .restart local p7       #top:I
    .restart local p8
    .restart local p9
    .restart local p10       #fmi:Landroid/graphics/Paint$FontMetricsInt;
    :cond_1fc
    move/from16 p6, v6

    .end local v6           #ret:F
    .local p6, ret:F
    move/from16 p1, v14

    .end local v14           #havewid:Z
    .restart local p1       #havewid:Z
    goto/16 :goto_113

    .end local p1           #havewid:Z
    .restart local v6       #ret:F
    .restart local v14       #havewid:Z
    .local p6, x:F
    :cond_202
    move/from16 p6, v6

    .end local v6           #ret:F
    .local p6, ret:F
    move/from16 p1, v14

    .end local v14           #havewid:Z
    .restart local p1       #havewid:Z
    goto/16 :goto_113

    .end local p10           #fmi:Landroid/graphics/Paint$FontMetricsInt;
    .restart local v6       #ret:F
    .restart local v11       #s:Landroid/graphics/Paint$Style;
    .restart local v14       #havewid:Z
    .local p1, c:I
    .local p6, x:F
    :cond_208
    move v10, v6

    .end local v6           #ret:F
    .restart local v10       #ret:F
    move/from16 p10, v14

    .end local v14           #havewid:Z
    .local p10, havewid:Z
    goto/16 :goto_b8

    .end local v10           #ret:F
    .end local v11           #s:Landroid/graphics/Paint$Style;
    .end local p1           #c:I
    .restart local v6       #ret:F
    .restart local v14       #havewid:Z
    .local p10, fmi:Landroid/graphics/Paint$FontMetricsInt;
    :cond_20d
    move/from16 p7, v6

    .end local v6           #ret:F
    .local p7, ret:F
    move/from16 p1, v14

    .end local v14           #havewid:Z
    .local p1, havewid:Z
    goto/16 :goto_e1
.end method

.method private static foreach(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Landroid/text/TextPaint;Z)F
    .registers 37
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "dir"
    .parameter "reverse"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "fmi"
    .parameter "paint"
    .parameter "workPaint"
    .parameter "needWidth"

    .prologue
    .line 282
    if-eqz p0, :cond_14

    .line 284
    move-object/from16 v0, p0

    move-object/from16 v1, p11

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->setR2LFlip(Landroid/graphics/Paint;Z)V

    .line 285
    move-object/from16 v0, p0

    move-object/from16 v1, p12

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->setR2LFlip(Landroid/graphics/Paint;Z)V

    .line 290
    :cond_14
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v4, v0

    if-nez v4, :cond_96

    .line 291
    const/16 p7, 0x0

    .line 293
    .local p7, ret:F
    if-eqz p5, :cond_70

    .line 294
    invoke-static/range {p1 .. p3}, Landroid/text/TextUtils;->getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 295
    .local v5, tmp:Ljava/lang/CharSequence;
    sub-int v7, p3, p2

    .line 297
    .local v7, tmpend:I
    if-nez p0, :cond_29

    if-eqz p13, :cond_164

    .line 298
    :cond_29
    const/16 p1, 0x0

    move-object/from16 v0, p11

    move-object v1, v5

    move/from16 v2, p1

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    .end local p1
    move-result p1

    .line 300
    .end local p7           #ret:F
    .local p1, ret:F
    :goto_35
    if-eqz p0, :cond_45

    .line 301
    const/4 v6, 0x0

    sub-float v8, p6, p1

    move/from16 v0, p8

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v4, p0

    move-object/from16 v10, p11

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 311
    .end local v5           #tmp:Ljava/lang/CharSequence;
    .end local v7           #tmpend:I
    :cond_45
    :goto_45
    if-eqz p10, :cond_4e

    .line 312
    move-object/from16 v0, p11

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 316
    :cond_4e
    if-eqz p0, :cond_68

    if-eqz p5, :cond_68

    .line 317
    const/16 p2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p12

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->setR2LFlip(Landroid/graphics/Paint;Z)V

    .line 318
    .end local p2
    const/16 p2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p11

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->setR2LFlip(Landroid/graphics/Paint;Z)V

    .line 321
    :cond_68
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 p0, v0

    mul-float p0, p0, p1

    .line 375
    .end local p0
    .end local p1           #ret:F
    :goto_6f
    return p0

    .line 304
    .restart local p0
    .local p1, text:Ljava/lang/CharSequence;
    .restart local p2
    .restart local p7       #ret:F
    :cond_70
    if-eqz p13, :cond_7e

    .line 305
    move-object/from16 v0, p11

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p7

    .line 307
    :cond_7e
    if-eqz p0, :cond_93

    .line 308
    move/from16 v0, p8

    int-to-float v0, v0

    move v13, v0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p6

    move-object/from16 v14, p11

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :cond_93
    move/from16 p1, p7

    .end local p7           #ret:F
    .local p1, ret:F
    goto :goto_45

    .line 324
    .local p1, text:Ljava/lang/CharSequence;
    .local p7, top:I
    :cond_96
    move/from16 v22, p6

    .line 325
    .local v22, ox:F
    const/4 v4, 0x0

    .local v4, asc:I
    const/4 v5, 0x0

    .line 326
    .local v5, desc:I
    const/4 v8, 0x0

    .local v8, ftop:I
    const/4 v7, 0x0

    .line 328
    .local v7, fbot:I
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v9, v0

    .line 331
    .local v9, sp:Landroid/text/Spanned;
    if-nez p0, :cond_118

    .line 332
    const-class p1, Landroid/text/style/MetricAffectingSpan;

    .local p1, division:Ljava/lang/Class;
    move-object/from16 v6, p1

    .line 337
    .end local p1           #division:Ljava/lang/Class;
    .local v6, division:Ljava/lang/Class;
    :goto_a7
    move/from16 v10, p2

    .local v10, i:I
    move/from16 p1, v4

    .end local v4           #asc:I
    .local p1, asc:I
    move v4, v5

    .end local v5           #desc:I
    .local v4, desc:I
    move v5, v7

    .end local v7           #fbot:I
    .local v5, fbot:I
    move v7, v8

    .end local v8           #ftop:I
    .local v7, ftop:I
    :goto_ae
    move v0, v10

    move/from16 v1, p3

    if-ge v0, v1, :cond_121

    .line 338
    move-object v0, v9

    move v1, v10

    move/from16 v2, p3

    move-object v3, v6

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v11

    .line 340
    .local v11, next:I
    if-nez p13, :cond_c3

    move v0, v11

    move/from16 v1, p3

    if-eq v0, v1, :cond_11d

    :cond_c3
    const/4 v8, 0x1

    move/from16 v21, v8

    :goto_c6
    move-object/from16 v8, p0

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    move-object/from16 v18, p10

    move-object/from16 v19, p11

    move-object/from16 v20, p12

    invoke-static/range {v8 .. v21}, Landroid/text/Styled;->each(Landroid/graphics/Canvas;Landroid/text/Spanned;IIIZFIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move-result v8

    add-float p6, p6, v8

    .line 344
    if-eqz p10, :cond_116

    .line 345
    move-object/from16 v0, p10

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v8, v0

    move v0, v8

    move/from16 v1, p1

    if-ge v0, v1, :cond_f2

    .line 346
    move-object/from16 v0, p10

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p1, v0

    .line 347
    :cond_f2
    move-object/from16 v0, p10

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v8, v0

    if-le v8, v4, :cond_fe

    .line 348
    move-object/from16 v0, p10

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v4, v0

    .line 350
    :cond_fe
    move-object/from16 v0, p10

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move v8, v0

    if-ge v8, v7, :cond_10a

    .line 351
    move-object/from16 v0, p10

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move v7, v0

    .line 352
    :cond_10a
    move-object/from16 v0, p10

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v8, v0

    if-le v8, v5, :cond_116

    .line 353
    move-object/from16 v0, p10

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v5, v0

    .line 337
    :cond_116
    move v10, v11

    goto :goto_ae

    .line 334
    .end local v6           #division:Ljava/lang/Class;
    .end local v10           #i:I
    .end local v11           #next:I
    .local v4, asc:I
    .local v5, desc:I
    .local v7, fbot:I
    .restart local v8       #ftop:I
    .local p1, text:Ljava/lang/CharSequence;
    :cond_118
    const-class p1, Landroid/text/style/CharacterStyle;

    .local p1, division:Ljava/lang/Class;
    move-object/from16 v6, p1

    .end local p1           #division:Ljava/lang/Class;
    .restart local v6       #division:Ljava/lang/Class;
    goto :goto_a7

    .line 340
    .end local v8           #ftop:I
    .local v4, desc:I
    .local v5, fbot:I
    .local v7, ftop:I
    .restart local v10       #i:I
    .restart local v11       #next:I
    .local p1, asc:I
    :cond_11d
    const/4 v8, 0x0

    move/from16 v21, v8

    goto :goto_c6

    .line 357
    .end local v11           #next:I
    :cond_121
    if-eqz p10, :cond_130

    .line 358
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_14e

    .line 359
    move-object/from16 v0, p11

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 369
    :cond_130
    :goto_130
    if-eqz p0, :cond_14a

    if-eqz p5, :cond_14a

    .line 370
    const/16 p1, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p12

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->setR2LFlip(Landroid/graphics/Paint;Z)V

    .line 371
    .end local p1           #asc:I
    const/16 p1, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p11

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->setR2LFlip(Landroid/graphics/Paint;Z)V

    .line 375
    :cond_14a
    sub-float p0, p6, v22

    goto/16 :goto_6f

    .line 361
    .restart local p1       #asc:I
    :cond_14e
    move/from16 v0, p1

    move-object/from16 v1, p10

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 362
    move v0, v4

    move-object/from16 v1, p10

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 363
    move v0, v7

    move-object/from16 v1, p10

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 364
    move v0, v5

    move-object/from16 v1, p10

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_130

    .end local v4           #desc:I
    .end local v6           #division:Ljava/lang/Class;
    .end local v9           #sp:Landroid/text/Spanned;
    .end local v10           #i:I
    .end local v22           #ox:F
    .local v5, tmp:Ljava/lang/CharSequence;
    .local v7, tmpend:I
    .local p1, text:Ljava/lang/CharSequence;
    .local p7, ret:F
    :cond_164
    move/from16 p1, p7

    .end local p7           #ret:F
    .local p1, ret:F
    goto/16 :goto_35
.end method

.method public static getTextWidths(Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/text/Spanned;II[FLandroid/graphics/Paint$FontMetricsInt;)I
    .registers 14
    .parameter "paint"
    .parameter "workPaint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "widths"
    .parameter "fmi"

    .prologue
    .line 242
    const-class v1, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {p2, p3, p4, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/MetricAffectingSpan;

    .line 244
    .local v3, spans:[Landroid/text/style/MetricAffectingSpan;
    const/4 v1, 0x0

    .line 245
    .local v1, replacement:Landroid/text/style/ReplacementSpan;
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 247
    const/4 p0, 0x0

    .local p0, i:I
    :goto_d
    array-length v2, v3

    if-ge p0, v2, :cond_21

    .line 248
    aget-object v2, v3, p0

    .line 249
    .local v2, span:Landroid/text/style/MetricAffectingSpan;
    instance-of v4, v2, Landroid/text/style/ReplacementSpan;

    if-eqz v4, :cond_1d

    .line 250
    move-object v0, v2

    check-cast v0, Landroid/text/style/ReplacementSpan;

    move-object v1, v0

    .line 247
    :goto_1a
    add-int/lit8 p0, p0, 0x1

    goto :goto_d

    .line 253
    :cond_1d
    invoke-virtual {v2, p1}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_1a

    .line 257
    .end local v2           #span:Landroid/text/style/MetricAffectingSpan;
    :cond_21
    if-nez v1, :cond_2c

    .line 258
    invoke-virtual {p1, p6}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 259
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    .line 270
    .end local v3           #spans:[Landroid/text/style/MetricAffectingSpan;
    .end local p0           #i:I
    .end local p1
    .end local p2
    :cond_29
    sub-int p0, p4, p3

    return p0

    .restart local v3       #spans:[Landroid/text/style/MetricAffectingSpan;
    .restart local p0       #i:I
    .restart local p1
    .restart local p2
    :cond_2c
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p6

    .line 261
    invoke-virtual/range {v1 .. v6}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    .end local v3           #spans:[Landroid/text/style/MetricAffectingSpan;
    move-result p0

    .line 263
    .local p0, wid:I
    if-le p4, p3, :cond_29

    .line 264
    const/4 p1, 0x0

    int-to-float p0, p0

    aput p0, p5, p1

    .line 266
    .end local p0           #wid:I
    .end local p1
    add-int/lit8 p0, p3, 0x1

    .end local p2
    .local p0, i:I
    :goto_3d
    if-ge p0, p4, :cond_29

    .line 267
    sub-int p1, p0, p3

    const/4 p2, 0x0

    aput p2, p5, p1

    .line 266
    add-int/lit8 p0, p0, 0x1

    goto :goto_3d
.end method

.method public static measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F
    .registers 20
    .parameter "paint"
    .parameter "workPaint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "fmi"

    .prologue
    .line 469
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v10, p5

    move-object v11, p0

    move-object v12, p1

    invoke-static/range {v0 .. v13}, Landroid/text/Styled;->foreach(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move-result p0

    .end local p0
    return p0
.end method
