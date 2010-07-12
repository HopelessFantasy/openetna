.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$1;,
        Landroid/text/Layout$Alignment;,
        Landroid/text/Layout$DefaultCursorDir;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$Ellipsizer;,
        Landroid/text/Layout$Directions;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions; = null

.field static final DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions; = null

.field public static final DIR_LEFT_TO_RIGHT:I = 0x1

.field public static final DIR_RIGHT_TO_LEFT:I = -0x1

.field static final EMOJI_FACTORY:Landroid/emoji/EmojiFactory; = null

#the value of this static final field might be set in the static constructor
.field static final MAX_EMOJI:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final MIN_EMOJI:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field public static mDefaultCursorDir:Landroid/text/Layout$DefaultCursorDir;

.field public static mIsRTLanguage:Z

.field public static mWritingLanguageR2L:Z

.field private static sTempRect:Landroid/graphics/Rect;


# instance fields
.field protected mAlignment:Landroid/text/Layout$Alignment;

.field private mEmojiRect:Landroid/graphics/RectF;

.field protected mIsBoring:Z

.field protected mIsHint:Z

.field private mPaint:Landroid/text/TextPaint;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannedText:Z

.field private mText:Ljava/lang/CharSequence;

.field protected mTextEditable:Z

.field private mWidth:I

.field mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 51
    invoke-static {}, Landroid/emoji/EmojiFactory;->newAvailableInstance()Landroid/emoji/EmojiFactory;

    move-result-object v0

    sput-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    .line 56
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    if-eqz v0, :cond_47

    .line 57
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMinimumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MIN_EMOJI:I

    .line 58
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMaximumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MAX_EMOJI:I

    .line 1923
    :goto_1c
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    .line 1931
    sput-boolean v3, Landroid/text/Layout;->mWritingLanguageR2L:Z

    .line 1932
    sput-boolean v3, Landroid/text/Layout;->mIsRTLanguage:Z

    .line 1936
    sget-object v0, Landroid/text/Layout$DefaultCursorDir;->CURSOR_DEPEND_ON_LANGUAGE:Landroid/text/Layout$DefaultCursorDir;

    sput-object v0, Landroid/text/Layout;->mDefaultCursorDir:Landroid/text/Layout$DefaultCursorDir;

    .line 1962
    new-instance v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x1

    new-array v1, v1, [S

    const/16 v2, 0x7fff

    aput-short v2, v1, v3

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([S)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 1964
    new-instance v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x2

    new-array v1, v1, [S

    fill-array-data v1, :array_4c

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([S)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-void

    .line 60
    :cond_47
    sput v1, Landroid/text/Layout;->MIN_EMOJI:I

    .line 61
    sput v1, Landroid/text/Layout;->MAX_EMOJI:I

    goto :goto_1c

    .line 1964
    :array_4c
    .array-data 0x2
        0x0t 0x0t
        0xfft 0x7ft
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .registers 10
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1918
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 1933
    iput-boolean v1, p0, Landroid/text/Layout;->mTextEditable:Z

    .line 1945
    iput-boolean v1, p0, Landroid/text/Layout;->mIsHint:Z

    .line 1948
    iput-boolean v1, p0, Landroid/text/Layout;->mIsBoring:Z

    .line 112
    if-gez p3, :cond_2f

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_2f
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 116
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 117
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 118
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 119
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 120
    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 121
    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 122
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 123
    return-void
.end method

.method static synthetic access$100(Landroid/text/Layout;III[CI)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p5}, Landroid/text/Layout;->ellipsize(III[CI)V

    return-void
.end method

.method private addSelection(IIIIILandroid/graphics/Path;)V
    .registers 26
    .parameter "line"
    .parameter "start"
    .parameter "end"
    .parameter "top"
    .parameter "bottom"
    .parameter "dest"

    .prologue
    .line 1214
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v16

    .line 1215
    .local v16, linestart:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v15

    .line 1216
    .local v15, lineend:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v11

    .line 1218
    .local v11, dirs:Landroid/text/Layout$Directions;
    move v0, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v5, v0

    const/4 v6, 0x1

    sub-int v6, v15, v6

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_23

    .line 1219
    add-int/lit8 v15, v15, -0x1

    .line 1221
    :cond_23
    move/from16 v13, v16

    .line 1222
    .local v13, here:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_26
    invoke-static {v11}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v5

    array-length v5, v5

    if-ge v14, v5, :cond_8a

    .line 1223
    invoke-static {v11}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v5

    aget-short v5, v5, v14

    add-int v18, v13, v5

    .line 1224
    .local v18, there:I
    move/from16 v0, v18

    move v1, v15

    if-le v0, v1, :cond_3c

    .line 1225
    move/from16 v18, v15

    .line 1227
    :cond_3c
    move/from16 v0, p2

    move/from16 v1, v18

    if-gt v0, v1, :cond_85

    move/from16 v0, p3

    move v1, v13

    if-lt v0, v1, :cond_85

    .line 1228
    move/from16 v0, p2

    move v1, v13

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1229
    .local v17, st:I
    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1231
    .local v12, en:I
    move/from16 v0, v17

    move v1, v12

    if-eq v0, v1, :cond_85

    .line 1232
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v5

    move v3, v6

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/Layout;->getHorizontal(IZZI)F

    move-result v6

    .line 1233
    .local v6, h1:F
    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v12

    move v2, v5

    move v3, v7

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/Layout;->getHorizontal(IZZI)F

    move-result v8

    .line 1235
    .local v8, h2:F
    move/from16 v0, p4

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move v9, v0

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v5, p6

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1239
    .end local v6           #h1:F
    .end local v8           #h2:F
    .end local v12           #en:I
    .end local v17           #st:I
    :cond_85
    move/from16 v13, v18

    .line 1222
    add-int/lit8 v14, v14, 0x1

    goto :goto_26

    .line 1241
    .end local v18           #there:I
    :cond_8a
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;FIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z[Ljava/lang/Object;)V
    .registers 46
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "dir"
    .parameter "directions"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "paint"
    .parameter "workPaint"
    .parameter "hasTabs"
    .parameter "parspans"

    .prologue
    .line 1390
    if-nez p13, :cond_b7

    .line 1391
    sget-object v5, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, p6

    move-object v1, v5

    if-ne v0, v1, :cond_26

    .line 1395
    const/4 v10, 0x0

    const/16 v17, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    invoke-static/range {v5 .. v17}, Landroid/text/Styled;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    .line 1471
    :cond_25
    :goto_25
    return-void

    .line 1398
    :cond_26
    const/16 v20, 0x0

    .line 1404
    .local v20, buf:[C
    :goto_28
    const/16 v22, 0x0

    .line 1406
    .local v22, h:F
    const/16 v23, 0x0

    .line 1407
    .local v23, here:I
    const/16 v24, 0x0

    .local v24, i:I
    :goto_2e
    invoke-static/range {p6 .. p6}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v5

    array-length v5, v5

    move/from16 v0, v24

    move v1, v5

    if-ge v0, v1, :cond_1bb

    .line 1408
    invoke-static/range {p6 .. p6}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v5

    aget-short v5, v5, v24

    add-int v29, v23, v5

    .line 1409
    .local v29, there:I
    sub-int v5, p4, p3

    move/from16 v0, v29

    move v1, v5

    if-le v0, v1, :cond_49

    .line 1410
    sub-int v29, p4, p3

    .line 1412
    :cond_49
    move/from16 v27, v23

    .line 1413
    .local v27, segstart:I
    if-eqz p13, :cond_cc

    move/from16 v25, v23

    .local v25, j:I
    :goto_4f
    move/from16 v0, v25

    move/from16 v1, v29

    if-gt v0, v1, :cond_1b5

    .line 1414
    move/from16 v0, v25

    move/from16 v1, v29

    if-eq v0, v1, :cond_61

    aget-char v5, v20, v25

    const/16 v6, 0x9

    if-ne v5, v6, :cond_d6

    .line 1415
    :cond_61
    add-int v7, p3, v27

    add-int v8, p3, v25

    and-int/lit8 v5, v24, 0x1

    if-eqz v5, :cond_cf

    const/4 v5, 0x1

    move v10, v5

    :goto_6b
    add-float v11, p7, v22

    add-int v5, p3, v25

    move v0, v5

    move/from16 v1, p4

    if-eq v0, v1, :cond_d2

    const/4 v5, 0x1

    move/from16 v17, v5

    :goto_77
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v9, p5

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    invoke-static/range {v5 .. v17}, Landroid/text/Styled;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move-result v5

    add-float v22, v22, v5

    .line 1421
    move/from16 v0, v25

    move/from16 v1, v29

    if-eq v0, v1, :cond_b2

    aget-char v5, v20, v25

    const/16 v6, 0x9

    if-ne v5, v6, :cond_b2

    .line 1422
    move/from16 v0, p5

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move v6, v0

    mul-float v6, v6, v22

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move v3, v6

    move-object/from16 v4, p14

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/Layout;->nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F

    move-result v6

    mul-float v22, v5, v6

    .line 1424
    :cond_b2
    add-int/lit8 v27, v25, 0x1

    .line 1413
    :cond_b4
    :goto_b4
    add-int/lit8 v25, v25, 0x1

    goto :goto_4f

    .line 1400
    .end local v20           #buf:[C
    .end local v22           #h:F
    .end local v23           #here:I
    .end local v24           #i:I
    .end local v25           #j:I
    .end local v27           #segstart:I
    .end local v29           #there:I
    :cond_b7
    sub-int v5, p4, p3

    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v20

    .line 1401
    .restart local v20       #buf:[C
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, v20

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    goto/16 :goto_28

    .restart local v22       #h:F
    .restart local v23       #here:I
    .restart local v24       #i:I
    .restart local v27       #segstart:I
    .restart local v29       #there:I
    :cond_cc
    move/from16 v25, v29

    .line 1413
    goto :goto_4f

    .line 1415
    .restart local v25       #j:I
    :cond_cf
    const/4 v5, 0x0

    move v10, v5

    goto :goto_6b

    :cond_d2
    const/4 v5, 0x0

    move/from16 v17, v5

    goto :goto_77

    .line 1425
    :cond_d6
    if-eqz p13, :cond_b4

    aget-char v5, v20, v25

    const v6, 0xd800

    if-lt v5, v6, :cond_b4

    aget-char v5, v20, v25

    const v6, 0xdfff

    if-gt v5, v6, :cond_b4

    add-int/lit8 v5, v25, 0x1

    move v0, v5

    move/from16 v1, v29

    if-ge v0, v1, :cond_b4

    .line 1426
    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v21

    .line 1428
    .local v21, emoji:I
    sget v5, Landroid/text/Layout;->MIN_EMOJI:I

    move/from16 v0, v21

    move v1, v5

    if-lt v0, v1, :cond_b4

    sget v5, Landroid/text/Layout;->MAX_EMOJI:I

    move/from16 v0, v21

    move v1, v5

    if-gt v0, v1, :cond_b4

    .line 1429
    sget-object v5, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 1432
    .local v19, bm:Landroid/graphics/Bitmap;
    if-eqz v19, :cond_b4

    .line 1433
    add-int v7, p3, v27

    add-int v8, p3, v25

    and-int/lit8 v5, v24, 0x1

    if-eqz v5, :cond_1ac

    const/4 v5, 0x1

    move v10, v5

    :goto_118
    add-float v11, p7, v22

    add-int v5, p3, v25

    move v0, v5

    move/from16 v1, p4

    if-eq v0, v1, :cond_1b0

    const/4 v5, 0x1

    move/from16 v17, v5

    :goto_124
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v9, p5

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    invoke-static/range {v5 .. v17}, Landroid/text/Styled;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move-result v5

    add-float v22, v22, v5

    .line 1439
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mEmojiRect:Landroid/graphics/RectF;

    move-object v5, v0

    if-nez v5, :cond_14b

    .line 1440
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/Layout;->mEmojiRect:Landroid/graphics/RectF;

    .line 1443
    :cond_14b
    move-object/from16 v0, p12

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1444
    add-int v8, p3, v25

    add-int v5, p3, v25

    add-int/lit8 v9, v5, 0x1

    const/4 v10, 0x0

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    move-object/from16 v7, p2

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    .line 1448
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move v0, v5

    int-to-float v0, v0

    move/from16 v18, v0

    .line 1449
    .local v18, bitmapHeight:F
    invoke-virtual/range {p12 .. p12}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    move v0, v5

    neg-float v0, v0

    move/from16 v28, v0

    .line 1450
    .local v28, textHeight:F
    div-float v26, v28, v18

    .line 1451
    .local v26, scale:F
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v30, v5, v26

    .line 1453
    .local v30, width:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mEmojiRect:Landroid/graphics/RectF;

    move-object v5, v0

    add-float v6, p7, v22

    move/from16 v0, p9

    int-to-float v0, v0

    move v7, v0

    sub-float v7, v7, v28

    add-float v8, p7, v22

    add-float v8, v8, v30

    move/from16 v0, p9

    int-to-float v0, v0

    move v9, v0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1456
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mEmojiRect:Landroid/graphics/RectF;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object v2, v5

    move-object v3, v6

    move-object/from16 v4, p11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1457
    add-float v22, v22, v30

    .line 1459
    add-int/lit8 v25, v25, 0x1

    .line 1460
    add-int/lit8 v27, v25, 0x1

    goto/16 :goto_b4

    .line 1433
    .end local v18           #bitmapHeight:F
    .end local v26           #scale:F
    .end local v28           #textHeight:F
    .end local v30           #width:F
    :cond_1ac
    const/4 v5, 0x0

    move v10, v5

    goto/16 :goto_118

    :cond_1b0
    const/4 v5, 0x0

    move/from16 v17, v5

    goto/16 :goto_124

    .line 1466
    .end local v19           #bm:Landroid/graphics/Bitmap;
    .end local v21           #emoji:I
    :cond_1b5
    move/from16 v23, v29

    .line 1407
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_2e

    .line 1469
    .end local v25           #j:I
    .end local v27           #segstart:I
    .end local v29           #there:I
    :cond_1bb
    if-eqz p13, :cond_25

    .line 1470
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->recycle([C)V

    goto/16 :goto_25
.end method

.method private ellipsize(III[CI)V
    .registers 13
    .parameter "start"
    .parameter "end"
    .parameter "line"
    .parameter "dest"
    .parameter "destoff"

    .prologue
    .line 1753
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    .line 1755
    .local v2, ellipsisCount:I
    if-nez v2, :cond_7

    .line 1777
    :cond_6
    return-void

    .line 1759
    :cond_7
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v3

    .line 1760
    .local v3, ellipsisStart:I
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 1762
    .local v5, linestart:I
    move v4, v3

    .local v4, i:I
    :goto_10
    add-int v6, v3, v2

    if-ge v4, v6, :cond_6

    .line 1765
    if-ne v4, v3, :cond_26

    .line 1766
    const/16 v1, 0x2026

    .line 1771
    .local v1, c:C
    :goto_18
    add-int v0, v4, v5

    .line 1773
    .local v0, a:I
    if-lt v0, p1, :cond_23

    if-ge v0, p2, :cond_23

    .line 1774
    add-int v6, p5, v0

    sub-int/2addr v6, p1

    aput-char v1, p4, v6

    .line 1762
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 1768
    .end local v0           #a:I
    .end local v1           #c:C
    :cond_26
    const v1, 0xfeff

    .restart local v1       #c:C
    goto :goto_18
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .registers 14
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "paint"

    .prologue
    const/4 v5, 0x0

    .line 83
    const/4 v8, 0x0

    .line 84
    .local v8, need:F
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    .line 87
    .local v1, workPaint:Landroid/text/TextPaint;
    move v3, p1

    .local v3, i:I
    :goto_8
    if-gt v3, p2, :cond_24

    .line 88
    const/16 v0, 0xa

    invoke-static {p0, v0, v3, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    .line 90
    .local v4, next:I
    if-gez v4, :cond_13

    .line 91
    move v4, p2

    .line 93
    :cond_13
    const/4 v6, 0x1

    move-object v0, p3

    move-object v2, p0

    move-object v7, v5

    invoke-static/range {v0 .. v7}, Landroid/text/Layout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    move-result v9

    .line 96
    .local v9, w:F
    cmpl-float v0, v9, v8

    if-lez v0, :cond_20

    .line 97
    move v8, v9

    .line 99
    :cond_20
    add-int/lit8 v4, v4, 0x1

    .line 87
    move v3, v4

    goto :goto_8

    .line 102
    .end local v4           #next:I
    .end local v9           #w:F
    :cond_24
    return v8
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .registers 4
    .parameter "source"
    .parameter "paint"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method private getHorizontal(IZZ)F
    .registers 6
    .parameter "offset"
    .parameter "trailing"
    .parameter "alt"

    .prologue
    .line 556
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 558
    .local v0, line:I
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/Layout;->getHorizontal(IZZI)F

    move-result v1

    return v1
.end method

.method private getHorizontal(IZZI)F
    .registers 33
    .parameter "offset"
    .parameter "trailing"
    .parameter "alt"
    .parameter "line"

    .prologue
    .line 563
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 564
    .local v5, start:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v7

    .line 565
    .local v7, end:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v8

    .line 566
    .local v8, dir:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v12

    .line 567
    .local v12, tab:Z
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v9

    .line 569
    .local v9, directions:Landroid/text/Layout$Directions;
    const/4 v13, 0x0

    .line 570
    .local v13, tabs:[Landroid/text/style/TabStopSpan;
    if-eqz v12, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v2, v0

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_43

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v2, v0

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-interface {v2, v5, v7, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    .end local v13           #tabs:[Landroid/text/style/TabStopSpan;
    check-cast v13, [Landroid/text/style/TabStopSpan;

    .line 574
    .restart local v13       #tabs:[Landroid/text/style/TabStopSpan;
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v4, v0

    move/from16 v6, p1

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-static/range {v2 .. v13}, Landroid/text/Layout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IIIILandroid/text/Layout$Directions;ZZZ[Ljava/lang/Object;)F

    move-result v27

    .line 577
    .local v27, wid:F
    move/from16 v0, p1

    move v1, v7

    if-le v0, v1, :cond_84

    .line 578
    const/4 v2, -0x1

    if-ne v8, v2, :cond_ad

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    const/16 v19, 0x0

    move/from16 v17, v7

    move/from16 v18, p1

    move/from16 v20, v12

    move-object/from16 v21, v13

    invoke-static/range {v14 .. v21}, Landroid/text/Layout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    move-result v2

    sub-float v27, v27, v2

    .line 586
    :cond_84
    :goto_84
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v22

    .line 587
    .local v22, align:Landroid/text/Layout$Alignment;
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v24

    .line 588
    .local v24, left:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v26

    .line 590
    .local v26, right:I
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v22

    move-object v1, v2

    if-ne v0, v1, :cond_d5

    .line 591
    const/4 v2, -0x1

    if-ne v8, v2, :cond_ce

    .line 592
    move/from16 v0, v26

    int-to-float v0, v0

    move v2, v0

    add-float v2, v2, v27

    .line 610
    :goto_ac
    return v2

    .line 582
    .end local v22           #align:Landroid/text/Layout$Alignment;
    .end local v24           #left:I
    .end local v26           #right:I
    :cond_ad
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    const/16 v19, 0x0

    move/from16 v17, v7

    move/from16 v18, p1

    move/from16 v20, v12

    move-object/from16 v21, v13

    invoke-static/range {v14 .. v21}, Landroid/text/Layout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    move-result v2

    add-float v27, v27, v2

    goto :goto_84

    .line 594
    .restart local v22       #align:Landroid/text/Layout$Alignment;
    .restart local v24       #left:I
    .restart local v26       #right:I
    :cond_ce
    move/from16 v0, v24

    int-to-float v0, v0

    move v2, v0

    add-float v2, v2, v27

    goto :goto_ac

    .line 597
    :cond_d5
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v25

    .line 599
    .local v25, max:F
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v22

    move-object v1, v2

    if-ne v0, v1, :cond_f9

    .line 600
    const/4 v2, -0x1

    if-ne v8, v2, :cond_f0

    .line 601
    move/from16 v0, v24

    int-to-float v0, v0

    move v2, v0

    add-float v2, v2, v25

    add-float v2, v2, v27

    goto :goto_ac

    .line 603
    :cond_f0
    move/from16 v0, v26

    int-to-float v0, v0

    move v2, v0

    sub-float v2, v2, v25

    add-float v2, v2, v27

    goto :goto_ac

    .line 605
    :cond_f9
    move/from16 v0, v25

    float-to-int v0, v0

    move v2, v0

    and-int/lit8 v23, v2, -0x2

    .line 607
    .local v23, imax:I
    const/4 v2, -0x1

    if-ne v8, v2, :cond_10e

    .line 608
    sub-int v2, v26, v24

    sub-int v2, v2, v23

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v26, v2

    int-to-float v2, v2

    add-float v2, v2, v27

    goto :goto_ac

    .line 610
    :cond_10e
    sub-int v2, v26, v24

    sub-int v2, v2, v23

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, v24

    int-to-float v2, v2

    add-float v2, v2, v27

    goto :goto_ac
.end method

.method private getLineMax(I[Ljava/lang/Object;Z)F
    .registers 12
    .parameter "line"
    .parameter "tabs"
    .parameter "full"

    .prologue
    .line 685
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 688
    .local v3, start:I
    if-eqz p3, :cond_2f

    .line 689
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 693
    .local v4, end:I
    :goto_a
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v6

    .line 695
    .local v6, tab:Z
    if-nez p2, :cond_22

    if-eqz v6, :cond_22

    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_22

    .line 696
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    const-class v1, Landroid/text/style/TabStopSpan;

    invoke-interface {v0, v3, v4, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    .line 699
    :cond_22
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Landroid/text/Layout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    move-result v0

    return v0

    .line 691
    .end local v4           #end:I
    .end local v6           #tab:Z
    :cond_2f
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v4

    .restart local v4       #end:I
    goto :goto_a
.end method

.method private getLineVisibleEnd(III)I
    .registers 8
    .parameter "line"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x1

    .line 849
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 851
    .local v1, text:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-ne p1, v2, :cond_e

    move v2, p3

    .line 868
    :goto_b
    return v2

    .line 855
    .local v0, ch:C
    :cond_c
    add-int/lit8 p3, p3, -0x1

    .end local v0           #ch:C
    :cond_e
    if-le p3, p2, :cond_25

    .line 856
    sub-int v2, p3, v3

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 858
    .restart local v0       #ch:C
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1d

    .line 859
    sub-int v2, p3, v3

    goto :goto_b

    .line 862
    :cond_1d
    const/16 v2, 0x20

    if-eq v0, v2, :cond_c

    const/16 v2, 0x9

    if-eq v0, v2, :cond_c

    .end local v0           #ch:C
    :cond_25
    move v2, p3

    .line 868
    goto :goto_b
.end method

.method private getOffsetAtStartOf(I)I
    .registers 12
    .parameter "offset"

    .prologue
    .line 1096
    if-nez p1, :cond_4

    .line 1097
    const/4 v8, 0x0

    .line 1122
    :goto_3
    return v8

    .line 1099
    :cond_4
    iget-object v7, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1100
    .local v7, text:Ljava/lang/CharSequence;
    invoke-interface {v7, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1102
    .local v1, c:C
    const v8, 0xdc00

    if-lt v1, v8, :cond_27

    const v8, 0xdfff

    if-gt v1, v8, :cond_27

    .line 1103
    const/4 v8, 0x1

    sub-int v8, p1, v8

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1105
    .local v2, c1:C
    const v8, 0xd800

    if-lt v2, v8, :cond_27

    const v8, 0xdbff

    if-gt v2, v8, :cond_27

    .line 1106
    add-int/lit8 p1, p1, -0x1

    .line 1109
    .end local v2           #c1:C
    :cond_27
    iget-boolean v8, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v8, :cond_57

    .line 1110
    move-object v0, v7

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    const-class v9, Landroid/text/style/ReplacementSpan;

    invoke-interface {v8, p1, p1, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ReplacementSpan;

    .line 1113
    .local v5, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_38
    array-length v8, v5

    if-ge v4, v8, :cond_57

    .line 1114
    move-object v0, v7

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    aget-object v9, v5, v4

    invoke-interface {v8, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 1115
    .local v6, start:I
    move-object v0, v7

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    aget-object v9, v5, v4

    invoke-interface {v8, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 1117
    .local v3, end:I
    if-ge v6, p1, :cond_54

    if-le v3, p1, :cond_54

    .line 1118
    move p1, v6

    .line 1113
    :cond_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .end local v3           #end:I
    .end local v4           #i:I
    .end local v5           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v6           #start:I
    :cond_57
    move v8, p1

    .line 1122
    goto :goto_3
.end method

.method public static isCursorDirRight()Z
    .registers 2

    .prologue
    .line 1895
    sget-object v0, Landroid/text/Layout$1;->$SwitchMap$android$text$Layout$DefaultCursorDir:[I

    sget-object v1, Landroid/text/Layout;->mDefaultCursorDir:Landroid/text/Layout$DefaultCursorDir;

    invoke-virtual {v1}, Landroid/text/Layout$DefaultCursorDir;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 1905
    sget-boolean v0, Landroid/text/Layout;->mWritingLanguageR2L:Z

    :goto_f
    return v0

    .line 1897
    :pswitch_10
    const/4 v0, 0x1

    goto :goto_f

    .line 1899
    :pswitch_12
    const/4 v0, 0x0

    goto :goto_f

    .line 1901
    :pswitch_14
    sget-boolean v0, Landroid/text/Layout;->mWritingLanguageR2L:Z

    goto :goto_f

    .line 1903
    :pswitch_17
    invoke-static {}, Landroid/provider/Settings$System;->getCursorDirection()Z

    move-result v0

    goto :goto_f

    .line 1895
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_10
        :pswitch_12
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method

.method private static measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IIIILandroid/text/Layout$Directions;ZZZ[Ljava/lang/Object;)F
    .registers 31
    .parameter "paint"
    .parameter "workPaint"
    .parameter "text"
    .parameter "start"
    .parameter "offset"
    .parameter "end"
    .parameter "dir"
    .parameter "directions"
    .parameter "trailing"
    .parameter "alt"
    .parameter "hasTabs"
    .parameter "tabs"

    .prologue
    .line 1480
    const/4 v5, 0x0

    .line 1482
    .local v5, buf:[C
    if-eqz p10, :cond_15

    .line 1483
    sub-int v5, p5, p3

    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    .end local v5           #buf:[C
    move-result-object v5

    .line 1484
    .restart local v5       #buf:[C
    const/4 v6, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p5

    move-object v3, v5

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    :cond_15
    move-object v12, v5

    .line 1487
    .end local v5           #buf:[C
    .local v12, buf:[C
    const/4 v5, 0x0

    .line 1489
    .local v5, h:F
    if-eqz p9, :cond_23

    .line 1490
    const/4 v6, -0x1

    move/from16 v0, p6

    move v1, v6

    if-ne v0, v1, :cond_23

    .line 1491
    if-nez p8, :cond_b7

    const/16 p8, 0x1

    .line 1494
    :cond_23
    :goto_23
    const/4 v6, 0x0

    .line 1495
    .local v6, here:I
    const/4 v7, 0x0

    .local v7, i:I
    move v14, v7

    .end local v7           #i:I
    .local v14, i:I
    :goto_26
    invoke-static/range {p7 .. p7}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v7

    array-length v7, v7

    if-ge v14, v7, :cond_1b8

    .line 1496
    if-eqz p9, :cond_33

    .line 1497
    if-nez p8, :cond_bb

    const/16 p8, 0x1

    .line 1499
    :cond_33
    :goto_33
    invoke-static/range {p7 .. p7}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v7

    aget-short v7, v7, v14

    add-int/2addr v7, v6

    .line 1500
    .local v7, there:I
    sub-int v8, p5, p3

    if-le v7, v8, :cond_1d1

    .line 1501
    sub-int v7, p5, p3

    move/from16 v18, v7

    .line 1503
    .end local v7           #there:I
    .local v18, there:I
    :goto_42
    move v7, v6

    .line 1504
    .local v7, segstart:I
    if-eqz p10, :cond_bf

    .local v6, j:I
    :goto_45
    move v15, v6

    .end local v6           #j:I
    .local v15, j:I
    move/from16 v16, v7

    .end local v7           #segstart:I
    .local v16, segstart:I
    move v13, v5

    .end local v5           #h:F
    .local v13, h:F
    :goto_49
    move v0, v15

    move/from16 v1, v18

    if-gt v0, v1, :cond_1af

    .line 1505
    const/4 v6, 0x0

    .line 1506
    .local v6, codept:I
    const/4 v5, 0x0

    .line 1508
    .local v5, bm:Landroid/graphics/Bitmap;
    if-eqz p10, :cond_59

    move v0, v15

    move/from16 v1, v18

    if-ge v0, v1, :cond_59

    .line 1509
    aget-char v6, v12, v15

    .line 1512
    :cond_59
    const v7, 0xd800

    if-lt v6, v7, :cond_1cd

    const v7, 0xdfff

    if-gt v6, v7, :cond_1cd

    add-int/lit8 v7, v15, 0x1

    move v0, v7

    move/from16 v1, v18

    if-ge v0, v1, :cond_1cd

    .line 1513
    invoke-static {v12, v15}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v6

    .line 1515
    sget v7, Landroid/text/Layout;->MIN_EMOJI:I

    if-lt v6, v7, :cond_1cd

    sget v7, Landroid/text/Layout;->MAX_EMOJI:I

    if-gt v6, v7, :cond_1cd

    .line 1516
    sget-object v5, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    .end local v5           #bm:Landroid/graphics/Bitmap;
    invoke-virtual {v5, v6}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v5

    .restart local v5       #bm:Landroid/graphics/Bitmap;
    move-object v11, v5

    .end local v5           #bm:Landroid/graphics/Bitmap;
    .local v11, bm:Landroid/graphics/Bitmap;
    move v5, v6

    .line 1520
    .end local v6           #codept:I
    .local v5, codept:I
    :goto_7e
    move v0, v15

    move/from16 v1, v18

    if-eq v0, v1, :cond_89

    const/16 v6, 0x9

    if-eq v5, v6, :cond_89

    if-eqz v11, :cond_1c8

    .line 1523
    :cond_89
    add-int v5, p3, v15

    move/from16 v0, p4

    move v1, v5

    if-lt v0, v1, :cond_99

    .end local v5           #codept:I
    if-eqz p8, :cond_e0

    add-int v5, p3, v15

    move/from16 v0, p4

    move v1, v5

    if-gt v0, v1, :cond_e0

    .line 1525
    :cond_99
    const/4 v5, 0x1

    move/from16 v0, p6

    move v1, v5

    if-ne v0, v1, :cond_c2

    and-int/lit8 v5, v14, 0x1

    if-nez v5, :cond_c2

    .line 1526
    add-int v8, p3, v16

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p4

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result p0

    .end local p0
    add-float p0, p0, v13

    .end local v13           #h:F
    .local p0, h:F
    move/from16 p1, p0

    .line 1602
    .end local v11           #bm:Landroid/graphics/Bitmap;
    .end local v15           #j:I
    .end local v16           #segstart:I
    .end local v18           #there:I
    .end local p0           #h:F
    .local p1, h:F
    :goto_b6
    return p1

    .line 1491
    .end local v14           #i:I
    .local v5, h:F
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    :cond_b7
    const/16 p8, 0x0

    goto/16 :goto_23

    .line 1497
    .local v6, here:I
    .restart local v14       #i:I
    :cond_bb
    const/16 p8, 0x0

    goto/16 :goto_33

    .restart local v7       #segstart:I
    .restart local v18       #there:I
    :cond_bf
    move/from16 v6, v18

    .line 1504
    goto :goto_45

    .line 1532
    .end local v5           #h:F
    .end local v6           #here:I
    .end local v7           #segstart:I
    .restart local v11       #bm:Landroid/graphics/Bitmap;
    .restart local v13       #h:F
    .restart local v15       #j:I
    .restart local v16       #segstart:I
    :cond_c2
    const/4 v5, -0x1

    move/from16 v0, p6

    move v1, v5

    if-ne v0, v1, :cond_e0

    and-int/lit8 v5, v14, 0x1

    if-eqz v5, :cond_e0

    .line 1533
    add-int v8, p3, v16

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p4

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result p0

    .end local p0           #paint:Landroid/text/TextPaint;
    sub-float p0, v13, p0

    .end local v13           #h:F
    .local p0, h:F
    move/from16 p1, p0

    .line 1536
    .end local p0           #h:F
    .local p1, h:F
    goto :goto_b6

    .line 1540
    .restart local v13       #h:F
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    :cond_e0
    add-int v8, p3, v16

    add-int v9, p3, v15

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v17

    .line 1544
    .local v17, segw:F
    add-int v5, p3, v15

    move/from16 v0, p4

    move v1, v5

    if-lt v0, v1, :cond_ff

    if-eqz p8, :cond_137

    add-int v5, p3, v15

    move/from16 v0, p4

    move v1, v5

    if-gt v0, v1, :cond_137

    .line 1546
    :cond_ff
    const/4 v5, 0x1

    move/from16 v0, p6

    move v1, v5

    if-ne v0, v1, :cond_11b

    .line 1547
    add-int v8, p3, v16

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p4

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result p0

    .end local p0           #paint:Landroid/text/TextPaint;
    sub-float p0, v17, p0

    add-float p0, p0, v13

    .end local v13           #h:F
    .local p0, h:F
    move/from16 p1, p0

    .line 1551
    .end local p0           #h:F
    .local p1, h:F
    goto :goto_b6

    .line 1554
    .restart local v13       #h:F
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    :cond_11b
    const/4 v5, -0x1

    move/from16 v0, p6

    move v1, v5

    if-ne v0, v1, :cond_137

    .line 1555
    add-int v8, p3, v16

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p4

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result p0

    .end local p0           #paint:Landroid/text/TextPaint;
    sub-float p0, v17, p0

    sub-float p0, v13, p0

    .end local v13           #h:F
    .local p0, h:F
    move/from16 p1, p0

    .line 1559
    .end local p0           #h:F
    .local p1, h:F
    goto :goto_b6

    .line 1563
    .restart local v13       #h:F
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    :cond_137
    const/4 v5, -0x1

    move/from16 v0, p6

    move v1, v5

    if-ne v0, v1, :cond_157

    .line 1564
    sub-float v5, v13, v17

    .line 1568
    .end local v13           #h:F
    .restart local v5       #h:F
    :goto_13f
    move v0, v15

    move/from16 v1, v18

    if-eq v0, v1, :cond_1c6

    aget-char v6, v12, v15

    const/16 v7, 0x9

    if-ne v6, v7, :cond_1c6

    .line 1569
    add-int v6, p3, v15

    move/from16 v0, p4

    move v1, v6

    if-ne v0, v1, :cond_15a

    move/from16 p0, v5

    .end local v5           #h:F
    .local p0, h:F
    move/from16 p1, v5

    .line 1570
    .end local p0           #h:F
    .local p1, h:F
    goto/16 :goto_b6

    .line 1566
    .restart local v13       #h:F
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    :cond_157
    add-float v5, v13, v17

    .end local v13           #h:F
    .restart local v5       #h:F
    goto :goto_13f

    .line 1572
    :cond_15a
    move/from16 v0, p6

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, p6

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v5, v7

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p5

    move v3, v5

    move-object/from16 v4, p11

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/Layout;->nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F

    .end local v5           #h:F
    move-result v5

    mul-float/2addr v5, v6

    .restart local v5       #h:F
    move v13, v5

    .line 1575
    .end local v5           #h:F
    .restart local v13       #h:F
    :goto_172
    if-eqz v11, :cond_1c3

    .line 1576
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1577
    add-int/lit8 v9, v15, 0x2

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move v8, v15

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    .line 1580
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 1583
    .local v5, wid:F
    const/4 v6, -0x1

    move/from16 v0, p6

    move v1, v6

    if-ne v0, v1, :cond_1ad

    .line 1584
    sub-float v5, v13, v5

    .line 1589
    .end local v13           #h:F
    .local v5, h:F
    :goto_1a1
    add-int/lit8 v6, v15, 0x1

    .line 1592
    .end local v15           #j:I
    .local v6, j:I
    :goto_1a3
    add-int/lit8 v7, v6, 0x1

    .line 1504
    .end local v16           #segstart:I
    .end local v17           #segw:F
    .restart local v7       #segstart:I
    :goto_1a5
    add-int/lit8 v6, v6, 0x1

    move v15, v6

    .end local v6           #j:I
    .restart local v15       #j:I
    move/from16 v16, v7

    .end local v7           #segstart:I
    .restart local v16       #segstart:I
    move v13, v5

    .end local v5           #h:F
    .restart local v13       #h:F
    goto/16 :goto_49

    .line 1586
    .local v5, wid:F
    .restart local v17       #segw:F
    :cond_1ad
    add-float/2addr v5, v13

    .end local v13           #h:F
    .local v5, h:F
    goto :goto_1a1

    .line 1596
    .end local v5           #h:F
    .end local v11           #bm:Landroid/graphics/Bitmap;
    .end local v17           #segw:F
    .restart local v13       #h:F
    :cond_1af
    move/from16 v5, v18

    .line 1495
    .local v5, here:I
    add-int/lit8 v6, v14, 0x1

    .end local v14           #i:I
    .local v6, i:I
    move v14, v6

    .end local v6           #i:I
    .restart local v14       #i:I
    move v6, v5

    .end local v5           #here:I
    .local v6, here:I
    move v5, v13

    .end local v13           #h:F
    .local v5, h:F
    goto/16 :goto_26

    .line 1599
    .end local v15           #j:I
    .end local v16           #segstart:I
    .end local v18           #there:I
    :cond_1b8
    if-eqz p10, :cond_1bd

    .line 1600
    invoke-static {v12}, Landroid/text/TextUtils;->recycle([C)V

    :cond_1bd
    move/from16 p0, v5

    .end local v5           #h:F
    .local p0, h:F
    move/from16 p1, v5

    .line 1602
    .end local p0           #h:F
    .local p1, h:F
    goto/16 :goto_b6

    .end local v6           #here:I
    .restart local v11       #bm:Landroid/graphics/Bitmap;
    .restart local v13       #h:F
    .restart local v15       #j:I
    .restart local v16       #segstart:I
    .restart local v17       #segw:F
    .restart local v18       #there:I
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    :cond_1c3
    move v6, v15

    .end local v15           #j:I
    .local v6, j:I
    move v5, v13

    .end local v13           #h:F
    .restart local v5       #h:F
    goto :goto_1a3

    .end local v6           #j:I
    .restart local v15       #j:I
    :cond_1c6
    move v13, v5

    .end local v5           #h:F
    .restart local v13       #h:F
    goto :goto_172

    .end local v17           #segw:F
    .local v5, codept:I
    :cond_1c8
    move v6, v15

    .end local v15           #j:I
    .restart local v6       #j:I
    move/from16 v7, v16

    .end local v16           #segstart:I
    .restart local v7       #segstart:I
    move v5, v13

    .end local v13           #h:F
    .local v5, h:F
    goto :goto_1a5

    .end local v7           #segstart:I
    .end local v11           #bm:Landroid/graphics/Bitmap;
    .local v5, bm:Landroid/graphics/Bitmap;
    .local v6, codept:I
    .restart local v13       #h:F
    .restart local v15       #j:I
    .restart local v16       #segstart:I
    :cond_1cd
    move-object v11, v5

    .end local v5           #bm:Landroid/graphics/Bitmap;
    .restart local v11       #bm:Landroid/graphics/Bitmap;
    move v5, v6

    .end local v6           #codept:I
    .local v5, codept:I
    goto/16 :goto_7e

    .end local v11           #bm:Landroid/graphics/Bitmap;
    .end local v13           #h:F
    .end local v15           #j:I
    .end local v16           #segstart:I
    .end local v18           #there:I
    .local v5, h:F
    .local v6, here:I
    .local v7, there:I
    :cond_1d1
    move/from16 v18, v7

    .end local v7           #there:I
    .restart local v18       #there:I
    goto/16 :goto_42
.end method

.method static measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F
    .registers 28
    .parameter "paint"
    .parameter "workPaint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "fm"
    .parameter "hasTabs"
    .parameter "tabs"

    .prologue
    .line 1611
    const/4 v5, 0x0

    .line 1613
    .local v5, buf:[C
    if-eqz p6, :cond_15

    .line 1614
    sub-int v5, p4, p3

    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    .end local v5           #buf:[C
    move-result-object v5

    .line 1615
    .restart local v5       #buf:[C
    const/4 v6, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move-object v3, v5

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    :cond_15
    move-object v15, v5

    .line 1618
    .end local v5           #buf:[C
    .local v15, buf:[C
    sub-int v18, p4, p3

    .line 1620
    .local v18, len:I
    const/4 v9, 0x0

    .line 1621
    .local v9, here:I
    const/4 v8, 0x0

    .line 1622
    .local v8, h:F
    const/4 v5, 0x0

    .local v5, ab:I
    const/4 v6, 0x0

    .line 1623
    .local v6, be:I
    const/4 v11, 0x0

    .local v11, top:I
    const/4 v7, 0x0

    .line 1625
    .local v7, bot:I
    if-eqz p5, :cond_2c

    .line 1626
    const/4 v10, 0x0

    move v0, v10

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1627
    const/4 v10, 0x0

    move v0, v10

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1630
    :cond_2c
    if-eqz p6, :cond_11f

    const/4 v10, 0x0

    .local v10, i:I
    :goto_2f
    move/from16 v17, v10

    .end local v10           #i:I
    .local v17, i:I
    move v14, v7

    .end local v7           #bot:I
    .local v14, bot:I
    move/from16 v19, v11

    .end local v11           #top:I
    .local v19, top:I
    move v12, v6

    .end local v6           #be:I
    .local v12, be:I
    move/from16 v16, v8

    .end local v8           #h:F
    .local v16, h:F
    move v11, v5

    .end local v5           #ab:I
    .local v11, ab:I
    move v7, v9

    .end local v9           #here:I
    .local v7, here:I
    :goto_39
    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_175

    .line 1631
    const/4 v6, 0x0

    .line 1632
    .local v6, codept:I
    const/4 v5, 0x0

    .line 1634
    .local v5, bm:Landroid/graphics/Bitmap;
    if-eqz p6, :cond_4b

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4b

    .line 1635
    aget-char v6, v15, v17

    .line 1638
    :cond_4b
    const v8, 0xd800

    if-lt v6, v8, :cond_1b9

    const v8, 0xdfff

    if-gt v6, v8, :cond_1b9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1b9

    .line 1639
    move-object v0, v15

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v6

    .line 1641
    sget v8, Landroid/text/Layout;->MIN_EMOJI:I

    if-lt v6, v8, :cond_1b9

    sget v8, Landroid/text/Layout;->MAX_EMOJI:I

    if-gt v6, v8, :cond_1b9

    .line 1642
    sget-object v5, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    .end local v5           #bm:Landroid/graphics/Bitmap;
    invoke-virtual {v5, v6}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v5

    .restart local v5       #bm:Landroid/graphics/Bitmap;
    move-object v13, v5

    .end local v5           #bm:Landroid/graphics/Bitmap;
    .local v13, bm:Landroid/graphics/Bitmap;
    move v5, v6

    .line 1646
    .end local v6           #codept:I
    .local v5, codept:I
    :goto_72
    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7e

    const/16 v6, 0x9

    if-eq v5, v6, :cond_7e

    if-eqz v13, :cond_1ad

    .line 1647
    :cond_7e
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p1

    iput v0, v1, Landroid/text/TextPaint;->baselineShift:I

    .line 1649
    .end local v5           #codept:I
    add-int v8, p3, v7

    add-int v9, p3, v17

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p5

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    .end local v7           #here:I
    move-result v5

    add-float v16, v16, v5

    .line 1653
    if-eqz p5, :cond_bf

    .line 1654
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move v5, v0

    if-gez v5, :cond_123

    .line 1655
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move v6, v0

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1656
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move v6, v0

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1663
    :cond_bf
    :goto_bf
    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1a7

    .line 1664
    if-nez v13, :cond_145

    .line 1665
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, v16

    move-object/from16 v4, p7

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/Layout;->nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F

    move-result v5

    .end local v16           #h:F
    .local v5, h:F
    move/from16 v10, v17

    .end local v17           #i:I
    .restart local v10       #i:I
    move v8, v5

    .line 1679
    .end local v5           #h:F
    .restart local v8       #h:F
    :goto_d8
    if-eqz p5, :cond_1a0

    .line 1680
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v5, v0

    if-ge v5, v11, :cond_19d

    .line 1681
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v5, v0

    .line 1683
    .end local v11           #ab:I
    .local v5, ab:I
    :goto_e6
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v6, v0

    if-le v6, v12, :cond_19a

    .line 1684
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v6, v0

    .line 1687
    .end local v12           #be:I
    .local v6, be:I
    :goto_f2
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move v7, v0

    move v0, v7

    move/from16 v1, v19

    if-ge v0, v1, :cond_196

    .line 1688
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move v7, v0

    .end local v19           #top:I
    .local v7, top:I
    move v9, v7

    .line 1690
    .end local v7           #top:I
    .local v9, top:I
    :goto_102
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v7, v0

    if-le v7, v14, :cond_192

    .line 1691
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v7, v0

    .end local v14           #bot:I
    .local v7, bot:I
    move v11, v9

    .line 1700
    .end local v9           #top:I
    .local v11, top:I
    :goto_10f
    add-int/lit8 v9, v10, 0x1

    .line 1630
    .local v9, here:I
    :goto_111
    add-int/lit8 v10, v10, 0x1

    move/from16 v17, v10

    .end local v10           #i:I
    .restart local v17       #i:I
    move v14, v7

    .end local v7           #bot:I
    .restart local v14       #bot:I
    move/from16 v19, v11

    .end local v11           #top:I
    .restart local v19       #top:I
    move v12, v6

    .end local v6           #be:I
    .restart local v12       #be:I
    move/from16 v16, v8

    .end local v8           #h:F
    .restart local v16       #h:F
    move v11, v5

    .end local v5           #ab:I
    .local v11, ab:I
    move v7, v9

    .end local v9           #here:I
    .local v7, here:I
    goto/16 :goto_39

    .end local v12           #be:I
    .end local v13           #bm:Landroid/graphics/Bitmap;
    .end local v14           #bot:I
    .end local v16           #h:F
    .end local v17           #i:I
    .end local v19           #top:I
    .restart local v5       #ab:I
    .restart local v6       #be:I
    .local v7, bot:I
    .restart local v8       #h:F
    .restart local v9       #here:I
    .local v11, top:I
    :cond_11f
    move/from16 v10, v18

    goto/16 :goto_2f

    .line 1658
    .end local v5           #ab:I
    .end local v6           #be:I
    .end local v7           #bot:I
    .end local v8           #h:F
    .end local v9           #here:I
    .local v11, ab:I
    .restart local v12       #be:I
    .restart local v13       #bm:Landroid/graphics/Bitmap;
    .restart local v14       #bot:I
    .restart local v16       #h:F
    .restart local v17       #i:I
    .restart local v19       #top:I
    :cond_123
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move v6, v0

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1659
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move v6, v0

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto/16 :goto_bf

    .line 1667
    :cond_145
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1668
    add-int v8, p3, v17

    add-int v5, p3, v17

    add-int/lit8 v9, v5, 0x1

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    .line 1671
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 1674
    .local v5, wid:F
    add-float v5, v5, v16

    .line 1675
    .end local v16           #h:F
    .local v5, h:F
    add-int/lit8 v6, v17, 0x1

    .end local v17           #i:I
    .local v6, i:I
    move v10, v6

    .end local v6           #i:I
    .restart local v10       #i:I
    move v8, v5

    .end local v5           #h:F
    .restart local v8       #h:F
    goto/16 :goto_d8

    .line 1704
    .end local v8           #h:F
    .end local v10           #i:I
    .end local v13           #bm:Landroid/graphics/Bitmap;
    .local v7, here:I
    .restart local v16       #h:F
    .restart local v17       #i:I
    :cond_175
    if-eqz p5, :cond_18c

    .line 1705
    move v0, v11

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1706
    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1707
    move/from16 v0, v19

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1708
    move v0, v14

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1711
    :cond_18c
    if-eqz p6, :cond_191

    .line 1712
    invoke-static {v15}, Landroid/text/TextUtils;->recycle([C)V

    .line 1714
    :cond_191
    return v16

    .end local v7           #here:I
    .end local v11           #ab:I
    .end local v12           #be:I
    .end local v16           #h:F
    .end local v17           #i:I
    .end local v19           #top:I
    .local v5, ab:I
    .local v6, be:I
    .restart local v8       #h:F
    .local v9, top:I
    .restart local v10       #i:I
    .restart local v13       #bm:Landroid/graphics/Bitmap;
    :cond_192
    move v7, v14

    .end local v14           #bot:I
    .local v7, bot:I
    move v11, v9

    .end local v9           #top:I
    .local v11, top:I
    goto/16 :goto_10f

    .end local v7           #bot:I
    .end local v11           #top:I
    .restart local v14       #bot:I
    .restart local v19       #top:I
    :cond_196
    move/from16 v9, v19

    .end local v19           #top:I
    .restart local v9       #top:I
    goto/16 :goto_102

    .end local v6           #be:I
    .end local v9           #top:I
    .restart local v12       #be:I
    .restart local v19       #top:I
    :cond_19a
    move v6, v12

    .end local v12           #be:I
    .restart local v6       #be:I
    goto/16 :goto_f2

    .end local v5           #ab:I
    .end local v6           #be:I
    .local v11, ab:I
    .restart local v12       #be:I
    :cond_19d
    move v5, v11

    .end local v11           #ab:I
    .restart local v5       #ab:I
    goto/16 :goto_e6

    .end local v5           #ab:I
    .restart local v11       #ab:I
    :cond_1a0
    move v7, v14

    .end local v14           #bot:I
    .restart local v7       #bot:I
    move v6, v12

    .end local v12           #be:I
    .restart local v6       #be:I
    move v5, v11

    .end local v11           #ab:I
    .restart local v5       #ab:I
    move/from16 v11, v19

    .end local v19           #top:I
    .local v11, top:I
    goto/16 :goto_10f

    .end local v5           #ab:I
    .end local v6           #be:I
    .end local v7           #bot:I
    .end local v8           #h:F
    .end local v10           #i:I
    .local v11, ab:I
    .restart local v12       #be:I
    .restart local v14       #bot:I
    .restart local v16       #h:F
    .restart local v17       #i:I
    .restart local v19       #top:I
    :cond_1a7
    move/from16 v10, v17

    .end local v17           #i:I
    .restart local v10       #i:I
    move/from16 v8, v16

    .end local v16           #h:F
    .restart local v8       #h:F
    goto/16 :goto_d8

    .end local v8           #h:F
    .end local v10           #i:I
    .local v5, codept:I
    .local v7, here:I
    .restart local v16       #h:F
    .restart local v17       #i:I
    :cond_1ad
    move/from16 v10, v17

    .end local v17           #i:I
    .restart local v10       #i:I
    move v6, v12

    .end local v12           #be:I
    .restart local v6       #be:I
    move v5, v11

    .end local v11           #ab:I
    .local v5, ab:I
    move/from16 v8, v16

    .end local v16           #h:F
    .restart local v8       #h:F
    move v9, v7

    .end local v7           #here:I
    .local v9, here:I
    move v7, v14

    .end local v14           #bot:I
    .local v7, bot:I
    move/from16 v11, v19

    .end local v19           #top:I
    .local v11, top:I
    goto/16 :goto_111

    .end local v8           #h:F
    .end local v9           #here:I
    .end local v10           #i:I
    .end local v13           #bm:Landroid/graphics/Bitmap;
    .local v5, bm:Landroid/graphics/Bitmap;
    .local v6, codept:I
    .local v7, here:I
    .local v11, ab:I
    .restart local v12       #be:I
    .restart local v14       #bot:I
    .restart local v16       #h:F
    .restart local v17       #i:I
    .restart local v19       #top:I
    :cond_1b9
    move-object v13, v5

    .end local v5           #bm:Landroid/graphics/Bitmap;
    .restart local v13       #bm:Landroid/graphics/Bitmap;
    move v5, v6

    .end local v6           #codept:I
    .local v5, codept:I
    goto/16 :goto_72
.end method

.method static nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .registers 11
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "h"
    .parameter "tabs"

    .prologue
    const/high16 v5, 0x41a0

    .line 1719
    const v2, 0x7f7fffff

    .line 1720
    .local v2, nh:F
    const/4 v0, 0x0

    .line 1722
    .local v0, alltabs:Z
    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_41

    .line 1723
    if-nez p4, :cond_15

    .line 1724
    check-cast p0, Landroid/text/Spanned;

    .end local p0
    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-interface {p0, p1, p2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    .line 1725
    const/4 v0, 0x1

    .line 1728
    :cond_15
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    array-length v4, p4

    if-ge v1, v4, :cond_38

    .line 1729
    if-nez v0, :cond_24

    .line 1730
    aget-object v4, p4, v1

    instance-of v4, v4, Landroid/text/style/TabStopSpan;

    if-nez v4, :cond_24

    .line 1728
    :cond_21
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1734
    :cond_24
    aget-object p0, p4, v1

    check-cast p0, Landroid/text/style/TabStopSpan;

    invoke-interface {p0}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v3

    .line 1736
    .local v3, where:I
    int-to-float v4, v3

    cmpg-float v4, v4, v2

    if-gez v4, :cond_21

    int-to-float v4, v3

    cmpl-float v4, v4, p3

    if-lez v4, :cond_21

    .line 1737
    int-to-float v2, v3

    goto :goto_21

    .line 1740
    .end local v3           #where:I
    :cond_38
    const v4, 0x7f7fffff

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_41

    move v4, v2

    .line 1744
    .end local v1           #i:I
    :goto_40
    return v4

    :cond_41
    add-float v4, p3, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    goto :goto_40
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 149
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .registers 71
    .parameter "c"
    .parameter "highlight"
    .parameter "highlightpaint"
    .parameter "cursorOffsetVertical"

    .prologue
    .line 159
    sget-object v5, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v5

    .line 160
    :try_start_3
    sget-object v6, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 161
    monitor-exit v5

    .line 389
    .end local p2
    :cond_f
    return-void

    .line 164
    .restart local p2
    :cond_10
    sget-object v6, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    move-object v0, v6

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v50, v0

    .line 165
    .local v50, dtop:I
    sget-object v6, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    move-object v0, v6

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v49, v0

    .line 166
    .local v49, dbottom:I
    monitor-exit v5
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_ed

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object v6, v0

    .line 170
    .local v6, paint:Landroid/text/TextPaint;
    const/16 v64, 0x0

    .line 172
    .local v64, top:I
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v48

    .line 175
    .local v48, bottom:I
    move/from16 v0, v50

    move/from16 v1, v64

    if-le v0, v1, :cond_39

    .line 176
    move/from16 v64, v50

    .line 178
    :cond_39
    move/from16 v0, v49

    move/from16 v1, v48

    if-ge v0, v1, :cond_41

    .line 179
    move/from16 v48, v49

    .line 182
    :cond_41
    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v51

    .line 183
    .local v51, first:I
    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v53

    .line 185
    .local v53, last:I
    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v58

    .line 186
    .local v58, previousLineBottom:I
    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v59

    .line 188
    .local v59, previousLineEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v12, v0

    .line 190
    .local v12, buf:Ljava/lang/CharSequence;
    const-class v5, Landroid/text/style/ParagraphStyle;

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v57

    check-cast v57, [Landroid/text/style/ParagraphStyle;

    .line 191
    .local v57, nospans:[Landroid/text/style/ParagraphStyle;
    move-object/from16 v46, v57

    .line 192
    .local v46, spans:[Landroid/text/style/ParagraphStyle;
    const/16 v61, 0x0

    .line 193
    .local v61, spanend:I
    const/16 v63, 0x0

    .line 194
    .local v63, textLength:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mSpannedText:Z

    move/from16 v62, v0

    .line 196
    .local v62, spannedText:Z
    if-eqz v62, :cond_107

    .line 197
    const/16 v61, 0x0

    .line 198
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v63

    .line 199
    move/from16 v15, v51

    .local v15, i:I
    :goto_84
    move v0, v15

    move/from16 v1, v53

    if-gt v0, v1, :cond_f3

    .line 200
    move/from16 v13, v59

    .line 201
    .local v13, start:I
    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    .line 202
    .local v14, end:I
    move/from16 v59, v14

    .line 204
    move/from16 v9, v58

    .line 205
    .local v9, ltop:I
    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    .line 206
    .local v11, lbottom:I
    move/from16 v58, v11

    .line 207
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v5

    sub-int v10, v11, v5

    .line 209
    .local v10, lbaseline:I
    move v0, v13

    move/from16 v1, v61

    if-lt v0, v1, :cond_d0

    .line 210
    move-object v0, v12

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v60, v0

    .line 211
    .local v60, sp:Landroid/text/Spanned;
    const-class v5, Landroid/text/style/LineBackgroundSpan;

    move-object/from16 v0, v60

    move v1, v13

    move/from16 v2, v63

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v61

    .line 213
    const-class v5, Landroid/text/style/LineBackgroundSpan;

    move-object/from16 v0, v60

    move v1, v13

    move/from16 v2, v61

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v46

    .end local v46           #spans:[Landroid/text/style/ParagraphStyle;
    check-cast v46, [Landroid/text/style/ParagraphStyle;

    .line 217
    .end local v60           #sp:Landroid/text/Spanned;
    .restart local v46       #spans:[Landroid/text/style/ParagraphStyle;
    :cond_d0
    const/16 v56, 0x0

    .local v56, n:I
    :goto_d2
    move-object/from16 v0, v46

    array-length v0, v0

    move v5, v0

    move/from16 v0, v56

    move v1, v5

    if-ge v0, v1, :cond_f0

    .line 218
    aget-object v4, v46, v56

    check-cast v4, Landroid/text/style/LineBackgroundSpan;

    .line 220
    .local v4, back:Landroid/text/style/LineBackgroundSpan;
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move v8, v0

    move-object/from16 v5, p1

    invoke-interface/range {v4 .. v15}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    .line 217
    add-int/lit8 v56, v56, 0x1

    goto :goto_d2

    .line 166
    .end local v4           #back:Landroid/text/style/LineBackgroundSpan;
    .end local v6           #paint:Landroid/text/TextPaint;
    .end local v9           #ltop:I
    .end local v10           #lbaseline:I
    .end local v11           #lbottom:I
    .end local v12           #buf:Ljava/lang/CharSequence;
    .end local v13           #start:I
    .end local v14           #end:I
    .end local v15           #i:I
    .end local v46           #spans:[Landroid/text/style/ParagraphStyle;
    .end local v48           #bottom:I
    .end local v49           #dbottom:I
    .end local v50           #dtop:I
    .end local v51           #first:I
    .end local v53           #last:I
    .end local v56           #n:I
    .end local v57           #nospans:[Landroid/text/style/ParagraphStyle;
    .end local v58           #previousLineBottom:I
    .end local v59           #previousLineEnd:I
    .end local v61           #spanend:I
    .end local v62           #spannedText:Z
    .end local v63           #textLength:I
    .end local v64           #top:I
    :catchall_ed
    move-exception v6

    :try_start_ee
    monitor-exit v5
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ed

    throw v6

    .line 199
    .restart local v6       #paint:Landroid/text/TextPaint;
    .restart local v9       #ltop:I
    .restart local v10       #lbaseline:I
    .restart local v11       #lbottom:I
    .restart local v12       #buf:Ljava/lang/CharSequence;
    .restart local v13       #start:I
    .restart local v14       #end:I
    .restart local v15       #i:I
    .restart local v46       #spans:[Landroid/text/style/ParagraphStyle;
    .restart local v48       #bottom:I
    .restart local v49       #dbottom:I
    .restart local v50       #dtop:I
    .restart local v51       #first:I
    .restart local v53       #last:I
    .restart local v56       #n:I
    .restart local v57       #nospans:[Landroid/text/style/ParagraphStyle;
    .restart local v58       #previousLineBottom:I
    .restart local v59       #previousLineEnd:I
    .restart local v61       #spanend:I
    .restart local v62       #spannedText:Z
    .restart local v63       #textLength:I
    .restart local v64       #top:I
    :cond_f0
    add-int/lit8 v15, v15, 0x1

    goto :goto_84

    .line 227
    .end local v9           #ltop:I
    .end local v10           #lbaseline:I
    .end local v11           #lbottom:I
    .end local v13           #start:I
    .end local v14           #end:I
    .end local v56           #n:I
    :cond_f3
    const/16 v61, 0x0

    .line 228
    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v58

    .line 229
    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v59

    .line 230
    move-object/from16 v46, v57

    .line 235
    .end local v15           #i:I
    :cond_107
    if-eqz p2, :cond_129

    .line 236
    if-eqz p4, :cond_117

    .line 237
    const/4 v5, 0x0

    move/from16 v0, p4

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 240
    :cond_117
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 242
    if-eqz p4, :cond_129

    .line 243
    const/4 v5, 0x0

    move/from16 v0, p4

    neg-int v0, v0

    move v7, v0

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 247
    :cond_129
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v47, v0

    .line 249
    .local v47, align:Landroid/text/Layout$Alignment;
    move/from16 v15, v51

    .end local p2
    .restart local v15       #i:I
    :goto_131
    move v0, v15

    move/from16 v1, v53

    if-gt v0, v1, :cond_f

    .line 250
    move/from16 v13, v59

    .line 252
    .restart local v13       #start:I
    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v59

    .line 253
    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v59

    invoke-direct {v0, v1, v2, v3}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v14

    .line 255
    .restart local v14       #end:I
    move/from16 v9, v58

    .line 256
    .restart local v9       #ltop:I
    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    .line 257
    .restart local v11       #lbottom:I
    move/from16 v58, v11

    .line 258
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v5

    sub-int v10, v11, v5

    .line 260
    .restart local v10       #lbaseline:I
    const/16 v27, 0x0

    .line 261
    .local v27, par:Z
    if-eqz v62, :cond_1b5

    .line 262
    if-eqz v13, :cond_172

    const/4 v5, 0x1

    sub-int v5, v13, v5

    invoke-interface {v12, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v7, 0xa

    if-ne v5, v7, :cond_174

    .line 263
    :cond_172
    const/16 v27, 0x1

    .line 265
    :cond_174
    move v0, v13

    move/from16 v1, v61

    if-lt v0, v1, :cond_1b5

    .line 267
    move-object v0, v12

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v60, v0

    .line 269
    .restart local v60       #sp:Landroid/text/Spanned;
    const-class v5, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v60

    move v1, v13

    move/from16 v2, v63

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v61

    .line 271
    const-class v5, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v60

    move v1, v13

    move/from16 v2, v61

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v46

    .end local v46           #spans:[Landroid/text/style/ParagraphStyle;
    check-cast v46, [Landroid/text/style/ParagraphStyle;

    .line 273
    .restart local v46       #spans:[Landroid/text/style/ParagraphStyle;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v47, v0

    .line 275
    move-object/from16 v0, v46

    array-length v0, v0

    move v5, v0

    const/4 v7, 0x1

    sub-int v56, v5, v7

    .restart local v56       #n:I
    :goto_1a5
    if-ltz v56, :cond_1b5

    .line 276
    aget-object v5, v46, v56

    instance-of v5, v5, Landroid/text/style/AlignmentSpan;

    if-eqz v5, :cond_205

    .line 277
    aget-object p2, v46, v56

    check-cast p2, Landroid/text/style/AlignmentSpan;

    invoke-interface/range {p2 .. p2}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v47

    .line 284
    .end local v56           #n:I
    .end local v60           #sp:Landroid/text/Spanned;
    :cond_1b5
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v20

    .line 285
    .local v20, dir:I
    const/16 v31, 0x0

    .line 286
    .local v31, left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move/from16 v19, v0

    .line 288
    .local v19, right:I
    if-eqz v62, :cond_22e

    .line 289
    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v54, v0

    .line 290
    .local v54, length:I
    const/16 v56, 0x0

    .restart local v56       #n:I
    :goto_1cd
    move/from16 v0, v56

    move/from16 v1, v54

    if-ge v0, v1, :cond_22e

    .line 291
    aget-object v5, v46, v56

    instance-of v5, v5, Landroid/text/style/LeadingMarginSpan;

    if-eqz v5, :cond_202

    .line 292
    aget-object v16, v46, v56

    check-cast v16, Landroid/text/style/LeadingMarginSpan;

    .line 294
    .local v16, margin:Landroid/text/style/LeadingMarginSpan;
    const/4 v5, -0x1

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_208

    move-object/from16 v17, p1

    move-object/from16 v18, v6

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v28, p0

    .line 295
    invoke-interface/range {v16 .. v28}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 299
    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v19, v19, v5

    .line 290
    .end local v16           #margin:Landroid/text/style/LeadingMarginSpan;
    :cond_202
    :goto_202
    add-int/lit8 v56, v56, 0x1

    goto :goto_1cd

    .line 275
    .end local v19           #right:I
    .end local v20           #dir:I
    .end local v31           #left:I
    .end local v54           #length:I
    .restart local v60       #sp:Landroid/text/Spanned;
    :cond_205
    add-int/lit8 v56, v56, -0x1

    goto :goto_1a5

    .end local v60           #sp:Landroid/text/Spanned;
    .restart local v16       #margin:Landroid/text/style/LeadingMarginSpan;
    .restart local v19       #right:I
    .restart local v20       #dir:I
    .restart local v31       #left:I
    .restart local v54       #length:I
    :cond_208
    move-object/from16 v28, v16

    move-object/from16 v29, p1

    move-object/from16 v30, v6

    move/from16 v32, v20

    move/from16 v33, v9

    move/from16 v34, v10

    move/from16 v35, v11

    move-object/from16 v36, v12

    move/from16 v37, v13

    move/from16 v38, v14

    move/from16 v39, v27

    move-object/from16 v40, p0

    .line 301
    invoke-interface/range {v28 .. v40}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 305
    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    add-int v31, v31, v5

    goto :goto_202

    .line 312
    .end local v16           #margin:Landroid/text/style/LeadingMarginSpan;
    .end local v54           #length:I
    .end local v56           #n:I
    :cond_22e
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v47

    move-object v1, v5

    if-ne v0, v1, :cond_2b6

    .line 313
    const/4 v5, 0x1

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_2b3

    .line 314
    move/from16 v65, v31

    .line 338
    .local v65, x:I
    :goto_23d
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v38

    .line 339
    .local v38, directions:Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v45

    .line 342
    .local v45, hasTab:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mTextEditable:Z

    move v5, v0

    if-nez v5, :cond_31e

    .line 343
    sget-boolean v5, Landroid/text/Layout;->mIsRTLanguage:Z

    if-eqz v5, :cond_307

    .line 348
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mIsBoring:Z

    move v5, v0

    if-eqz v5, :cond_2f0

    .line 349
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->setBaseDir(Landroid/graphics/Paint;I)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v5, v0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->setBaseDir(Landroid/graphics/Paint;I)V

    .line 368
    :goto_272
    sget-object v5, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, v38

    move-object v1, v5

    if-ne v0, v1, :cond_335

    if-nez v62, :cond_335

    if-nez v45, :cond_335

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mTextEditable:Z

    move v5, v0

    if-nez v5, :cond_335

    .line 376
    move/from16 v0, v65

    int-to-float v0, v0

    move/from16 v36, v0

    move v0, v10

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v32, p1

    move-object/from16 v33, v12

    move/from16 v34, v13

    move/from16 v35, v14

    move-object/from16 v38, v6

    invoke-virtual/range {v32 .. v38}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 384
    .end local v38           #directions:Landroid/text/Layout$Directions;
    :goto_29a
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->setBaseDir(Landroid/graphics/Paint;I)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v5, v0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->setBaseDir(Landroid/graphics/Paint;I)V

    .line 249
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_131

    .line 316
    .end local v45           #hasTab:Z
    .end local v65           #x:I
    :cond_2b3
    move/from16 v65, v19

    .restart local v65       #x:I
    goto :goto_23d

    .line 319
    .end local v65           #x:I
    :cond_2b6
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v46

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/text/Layout;->getLineMax(I[Ljava/lang/Object;Z)F

    move-result v5

    move v0, v5

    float-to-int v0, v0

    move/from16 v55, v0

    .line 320
    .local v55, max:I
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v47

    move-object v1, v5

    if-ne v0, v1, :cond_2da

    .line 321
    const/4 v5, -0x1

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_2d6

    .line 322
    add-int v65, v31, v55

    .restart local v65       #x:I
    goto/16 :goto_23d

    .line 324
    .end local v65           #x:I
    :cond_2d6
    sub-int v65, v19, v55

    .restart local v65       #x:I
    goto/16 :goto_23d

    .line 328
    .end local v65           #x:I
    :cond_2da
    and-int/lit8 v55, v55, -0x2

    .line 329
    sub-int v5, v19, v31

    sub-int v5, v5, v55

    shr-int/lit8 v52, v5, 0x1

    .line 330
    .local v52, half:I
    const/4 v5, -0x1

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_2ec

    .line 331
    sub-int v65, v19, v52

    .restart local v65       #x:I
    goto/16 :goto_23d

    .line 333
    .end local v65           #x:I
    :cond_2ec
    add-int v65, v31, v52

    .restart local v65       #x:I
    goto/16 :goto_23d

    .line 352
    .end local v52           #half:I
    .end local v55           #max:I
    .restart local v38       #directions:Landroid/text/Layout$Directions;
    .restart local v45       #hasTab:Z
    :cond_2f0
    const/4 v5, 0x2

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->setBaseDir(Landroid/graphics/Paint;I)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v5, v0

    const/4 v7, 0x2

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->setBaseDir(Landroid/graphics/Paint;I)V

    goto/16 :goto_272

    .line 357
    :cond_307
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->setBaseDir(Landroid/graphics/Paint;I)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v5, v0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->setBaseDir(Landroid/graphics/Paint;I)V

    goto/16 :goto_272

    .line 361
    :cond_31e
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->setBaseDir(Landroid/graphics/Paint;I)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v5, v0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->setBaseDir(Landroid/graphics/Paint;I)V

    goto/16 :goto_272

    .line 378
    :cond_335
    move/from16 v0, v65

    int-to-float v0, v0

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v44, v0

    move-object/from16 v32, p0

    move-object/from16 v33, p1

    move-object/from16 v34, v12

    move/from16 v35, v13

    move/from16 v36, v14

    move/from16 v37, v20

    move/from16 v40, v9

    move/from16 v41, v10

    move/from16 v42, v11

    move-object/from16 v43, v6

    invoke-direct/range {v32 .. v46}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;FIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z[Ljava/lang/Object;)V

    goto/16 :goto_29a
.end method

.method public final getAlignment()Landroid/text/Layout$Alignment;
    .registers 2

    .prologue
    .line 446
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public abstract getBottomPadding()I
.end method

.method public getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .registers 15
    .parameter "point"
    .parameter "dest"
    .parameter "editingBuffer"

    .prologue
    .line 1133
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 1135
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 1136
    .local v6, line:I
    invoke-virtual {p0, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    .line 1137
    .local v7, top:I
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p0, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 1139
    .local v0, bottom:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    const/high16 v9, 0x3f00

    sub-float v4, v8, v9

    .line 1140
    .local v4, h1:F
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v8

    const/high16 v9, 0x3f00

    sub-float v5, v8, v9

    .line 1143
    .local v5, h2:F
    move v5, v4

    .line 1146
    const/4 v8, 0x1

    invoke-static {p3, v8}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v8

    const/high16 v9, 0x1

    invoke-static {p3, v9}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v9

    or-int v1, v8, v9

    .line 1150
    .local v1, caps:I
    const/4 v8, 0x2

    invoke-static {p3, v8}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1152
    .local v3, fn:I
    const/4 v2, 0x0

    .line 1154
    .local v2, dist:I
    if-nez v1, :cond_39

    if-eqz v3, :cond_43

    .line 1155
    :cond_39
    sub-int v8, v0, v7

    shr-int/lit8 v2, v8, 0x2

    .line 1157
    if-eqz v3, :cond_40

    .line 1158
    add-int/2addr v7, v2

    .line 1159
    :cond_40
    if-eqz v1, :cond_43

    .line 1160
    sub-int/2addr v0, v2

    .line 1163
    :cond_43
    const/high16 v8, 0x3f00

    cmpg-float v8, v4, v8

    if-gez v8, :cond_4b

    .line 1164
    const/high16 v4, 0x3f00

    .line 1165
    :cond_4b
    const/high16 v8, 0x3f00

    cmpg-float v8, v5, v8

    if-gez v8, :cond_53

    .line 1166
    const/high16 v5, 0x3f00

    .line 1168
    :cond_53
    cmpl-float v8, v4, v5

    if-nez v8, :cond_98

    .line 1169
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1170
    int-to-float v8, v0

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1179
    :goto_5f
    const/4 v8, 0x2

    if-ne v1, v8, :cond_b1

    .line 1180
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1181
    int-to-float v8, v2

    sub-float v8, v5, v8

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1182
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1183
    int-to-float v8, v2

    add-float/2addr v8, v5

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1195
    :cond_7b
    :goto_7b
    const/4 v8, 0x2

    if-ne v3, v8, :cond_e5

    .line 1196
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1197
    int-to-float v8, v2

    sub-float v8, v4, v8

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1198
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1199
    int-to-float v8, v2

    add-float/2addr v8, v4

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1210
    :cond_97
    :goto_97
    return-void

    .line 1172
    :cond_98
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1173
    add-int v8, v7, v0

    shr-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1175
    add-int v8, v7, v0

    shr-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1176
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_5f

    .line 1184
    :cond_b1
    const/4 v8, 0x1

    if-ne v1, v8, :cond_7b

    .line 1185
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1186
    int-to-float v8, v2

    sub-float v8, v5, v8

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1188
    int-to-float v8, v2

    sub-float v8, v5, v8

    add-int v9, v0, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    sub-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1189
    int-to-float v8, v2

    add-float/2addr v8, v5

    add-int v9, v0, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    sub-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1191
    int-to-float v8, v2

    add-float/2addr v8, v5

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1192
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_7b

    .line 1200
    :cond_e5
    const/4 v8, 0x1

    if-ne v3, v8, :cond_97

    .line 1201
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1202
    int-to-float v8, v2

    sub-float v8, v4, v8

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1204
    int-to-float v8, v2

    sub-float v8, v4, v8

    sub-int v9, v7, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1205
    int-to-float v8, v2

    add-float/2addr v8, v4

    sub-int v9, v7, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1207
    int-to-float v8, v2

    add-float/2addr v8, v4

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1208
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_97
.end method

.method public abstract getEllipsisCount(I)I
.end method

.method public abstract getEllipsisStart(I)I
.end method

.method public getEllipsizedWidth()I
    .registers 2

    .prologue
    .line 419
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 439
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public final getLineAscent(I)I
    .registers 5
    .parameter "line"

    .prologue
    .line 892
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBaseline(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 883
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBottom(I)I
    .registers 3
    .parameter "line"

    .prologue
    .line 875
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .registers 4
    .parameter "line"
    .parameter "bounds"

    .prologue
    .line 477
    if-eqz p2, :cond_15

    .line 478
    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 479
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 480
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 481
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 483
    :cond_15
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    return v0
.end method

.method public abstract getLineContainsTab(I)Z
.end method

.method public abstract getLineCount()I
.end method

.method public abstract getLineDescent(I)I
.end method

.method public abstract getLineDirections(I)Landroid/text/Layout$Directions;
.end method

.method public final getLineEnd(I)I
    .registers 3
    .parameter "line"

    .prologue
    .line 833
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public getLineForOffset(I)I
    .registers 7
    .parameter "offset"

    .prologue
    .line 733
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, high:I
    const/4 v2, -0x1

    .line 735
    .local v2, low:I
    :goto_5
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_18

    .line 736
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 738
    .local v0, guess:I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_16

    .line 739
    move v1, v0

    goto :goto_5

    .line 741
    :cond_16
    move v2, v0

    goto :goto_5

    .line 744
    .end local v0           #guess:I
    :cond_18
    if-gez v2, :cond_1c

    .line 745
    const/4 v3, 0x0

    .line 747
    :goto_1b
    return v3

    :cond_1c
    move v3, v2

    goto :goto_1b
.end method

.method public getLineForVertical(I)I
    .registers 7
    .parameter "vertical"

    .prologue
    .line 710
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, high:I
    const/4 v2, -0x1

    .line 712
    .local v2, low:I
    :goto_5
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_18

    .line 713
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 715
    .local v0, guess:I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_16

    .line 716
    move v1, v0

    goto :goto_5

    .line 718
    :cond_16
    move v2, v0

    goto :goto_5

    .line 721
    .end local v0           #guess:I
    :cond_18
    if-gez v2, :cond_1c

    .line 722
    const/4 v3, 0x0

    .line 724
    :goto_1b
    return v3

    :cond_1c
    move v3, v2

    goto :goto_1b
.end method

.method public getLineLeft(I)F
    .registers 10
    .parameter "line"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 619
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 620
    .local v1, dir:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 622
    .local v0, align:Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_1d

    .line 623
    if-ne v1, v7, :cond_1b

    .line 624
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    .line 637
    :goto_1a
    return v5

    :cond_1b
    move v5, v6

    .line 626
    goto :goto_1a

    .line 627
    :cond_1d
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_2e

    .line 628
    if-ne v1, v7, :cond_25

    move v5, v6

    .line 629
    goto :goto_1a

    .line 631
    :cond_25
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_1a

    .line 633
    :cond_2e
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 634
    .local v2, left:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 635
    .local v4, right:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 637
    .local v3, max:I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    goto :goto_1a
.end method

.method public getLineMax(I)F
    .registers 4
    .parameter "line"

    .prologue
    .line 673
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineMax(I[Ljava/lang/Object;Z)F

    move-result v0

    return v0
.end method

.method public getLineRight(I)F
    .registers 9
    .parameter "line"

    .prologue
    const/4 v6, -0x1

    .line 646
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 647
    .local v1, dir:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 649
    .local v0, align:Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_1e

    .line 650
    if-ne v1, v6, :cond_13

    .line 651
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    .line 664
    :goto_12
    return v5

    .line 653
    :cond_13
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_12

    .line 654
    :cond_1e
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_2d

    .line 655
    if-ne v1, v6, :cond_29

    .line 656
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    goto :goto_12

    .line 658
    :cond_29
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    goto :goto_12

    .line 660
    :cond_2d
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 661
    .local v2, left:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 662
    .local v4, right:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 664
    .local v3, max:I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    int-to-float v5, v5

    goto :goto_12
.end method

.method public abstract getLineStart(I)I
.end method

.method public abstract getLineTop(I)I
.end method

.method public getLineVisibleEnd(I)I
    .registers 4
    .parameter "line"

    .prologue
    .line 841
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v0

    return v0
.end method

.method public getLineWidth(I)F
    .registers 4
    .parameter "line"

    .prologue
    .line 681
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineMax(I[Ljava/lang/Object;Z)F

    move-result v0

    return v0
.end method

.method public getOffsetForHorizontal(IF)I
    .registers 23
    .parameter "line"
    .parameter "horiz"

    .prologue
    .line 755
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v18

    const/16 v19, 0x1

    sub-int v13, v18, v19

    .line 756
    .local v13, max:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    .line 757
    .local v14, min:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 759
    .local v6, dirs:Landroid/text/Layout$Directions;
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v18

    const/16 v19, 0x1

    sub-int v18, v18, v19

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_20

    .line 760
    add-int/lit8 v13, v13, 0x1

    .line 762
    :cond_20
    move v4, v14

    .line 763
    .local v4, best:I
    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 765
    .local v5, bestdist:F
    move v9, v14

    .line 766
    .local v9, here:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_30
    invoke-static {v6}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move v0, v11

    move/from16 v1, v18

    if-ge v0, v1, :cond_fe

    .line 767
    invoke-static {v6}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v18

    aget-short v18, v18, v11

    add-int v17, v9, v18

    .line 768
    .local v17, there:I
    and-int/lit8 v18, v11, 0x1

    if-nez v18, :cond_91

    const/16 v18, 0x1

    move/from16 v16, v18

    .line 770
    .local v16, swap:I
    :goto_4e
    move/from16 v0, v17

    move v1, v13

    if-le v0, v1, :cond_55

    .line 771
    move/from16 v17, v13

    .line 773
    :cond_55
    const/16 v18, 0x1

    sub-int v18, v17, v18

    add-int/lit8 v10, v18, 0x1

    .local v10, high:I
    add-int/lit8 v18, v9, 0x1

    const/16 v19, 0x1

    sub-int v12, v18, v19

    .line 775
    .local v12, low:I
    :goto_61
    sub-int v18, v10, v12

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_98

    .line 776
    add-int v18, v10, v12

    div-int/lit8 v8, v18, 0x2

    .line 777
    .local v8, guess:I
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v2

    .line 779
    .local v2, adguess:I
    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, p2

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_96

    .line 780
    move v10, v8

    goto :goto_61

    .line 768
    .end local v2           #adguess:I
    .end local v8           #guess:I
    .end local v10           #high:I
    .end local v12           #low:I
    .end local v16           #swap:I
    :cond_91
    const/16 v18, -0x1

    move/from16 v16, v18

    goto :goto_4e

    .line 782
    .restart local v2       #adguess:I
    .restart local v8       #guess:I
    .restart local v10       #high:I
    .restart local v12       #low:I
    .restart local v16       #swap:I
    :cond_96
    move v12, v8

    goto :goto_61

    .line 785
    .end local v2           #adguess:I
    .end local v8           #guess:I
    :cond_98
    add-int/lit8 v18, v9, 0x1

    move v0, v12

    move/from16 v1, v18

    if-ge v0, v1, :cond_a1

    .line 786
    add-int/lit8 v12, v9, 0x1

    .line 788
    :cond_a1
    move v0, v12

    move/from16 v1, v17

    if-ge v0, v1, :cond_e5

    .line 789
    move-object/from16 v0, p0

    move v1, v12

    invoke-direct {v0, v1}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v12

    .line 791
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 793
    .local v7, dist:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v12

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 794
    .local v3, aft:I
    move v0, v3

    move/from16 v1, v17

    if-ge v0, v1, :cond_df

    .line 795
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 797
    .local v15, other:F
    cmpg-float v18, v15, v7

    if-gez v18, :cond_df

    .line 798
    move v7, v15

    .line 799
    move v12, v3

    .line 803
    .end local v15           #other:F
    :cond_df
    cmpg-float v18, v7, v5

    if-gez v18, :cond_e5

    .line 804
    move v5, v7

    .line 805
    move v4, v12

    .line 809
    .end local v3           #aft:I
    .end local v7           #dist:F
    :cond_e5
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 811
    .restart local v7       #dist:F
    cmpg-float v18, v7, v5

    if-gez v18, :cond_f8

    .line 812
    move v5, v7

    .line 813
    move v4, v9

    .line 816
    :cond_f8
    move/from16 v9, v17

    .line 766
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_30

    .line 819
    .end local v7           #dist:F
    .end local v10           #high:I
    .end local v12           #low:I
    .end local v16           #swap:I
    .end local v17           #there:I
    :cond_fe
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 821
    .restart local v7       #dist:F
    cmpg-float v18, v7, v5

    if-gez v18, :cond_111

    .line 822
    move v5, v7

    .line 823
    move v4, v13

    .line 826
    :cond_111
    return v4
.end method

.method public getOffsetToLeftOf(I)I
    .registers 20
    .parameter "offset"

    .prologue
    .line 900
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v13

    .line 901
    .local v13, line:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    .line 902
    .local v14, start:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    .line 903
    .local v8, end:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 905
    .local v7, dirs:Landroid/text/Layout$Directions;
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v16

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_28

    .line 906
    add-int/lit8 v8, v8, -0x1

    .line 908
    :cond_28
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v11

    .line 910
    .local v11, horiz:F
    move/from16 v3, p1

    .line 911
    .local v3, best:I
    const/high16 v4, -0x3100

    .line 914
    .local v4, besth:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 915
    .local v5, candidate:I
    if-lt v5, v14, :cond_53

    if-gt v5, v8, :cond_53

    .line 916
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 918
    .local v9, h:F
    cmpg-float v16, v9, v11

    if-gez v16, :cond_53

    cmpl-float v16, v9, v4

    if-lez v16, :cond_53

    .line 919
    move v3, v5

    .line 920
    move v4, v9

    .line 924
    .end local v9           #h:F
    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 925
    if-lt v5, v14, :cond_76

    if-gt v5, v8, :cond_76

    .line 926
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 928
    .restart local v9       #h:F
    cmpg-float v16, v9, v11

    if-gez v16, :cond_76

    cmpl-float v16, v9, v4

    if-lez v16, :cond_76

    .line 929
    move v3, v5

    .line 930
    move v4, v9

    .line 934
    .end local v9           #h:F
    :cond_76
    move v10, v14

    .line 935
    .local v10, here:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_78
    invoke-static {v7}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move v0, v12

    move/from16 v1, v16

    if-ge v0, v1, :cond_ea

    .line 936
    invoke-static {v7}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v16

    aget-short v16, v16, v12

    add-int v15, v10, v16

    .line 937
    .local v15, there:I
    if-le v15, v8, :cond_91

    .line 938
    move v15, v8

    .line 940
    :cond_91
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 942
    .restart local v9       #h:F
    cmpg-float v16, v9, v11

    if-gez v16, :cond_a2

    cmpl-float v16, v9, v4

    if-lez v16, :cond_a2

    .line 943
    move v3, v10

    .line 944
    move v4, v9

    .line 947
    :cond_a2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v10

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 948
    if-lt v5, v14, :cond_c4

    if-gt v5, v8, :cond_c4

    .line 949
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 951
    cmpg-float v16, v9, v11

    if-gez v16, :cond_c4

    cmpl-float v16, v9, v4

    if-lez v16, :cond_c4

    .line 952
    move v3, v5

    .line 953
    move v4, v9

    .line 957
    :cond_c4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v15

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 958
    if-lt v5, v14, :cond_e6

    if-gt v5, v8, :cond_e6

    .line 959
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 961
    cmpg-float v16, v9, v11

    if-gez v16, :cond_e6

    cmpl-float v16, v9, v4

    if-lez v16, :cond_e6

    .line 962
    move v3, v5

    .line 963
    move v4, v9

    .line 967
    :cond_e6
    move v10, v15

    .line 935
    add-int/lit8 v12, v12, 0x1

    goto :goto_78

    .line 970
    .end local v9           #h:F
    .end local v15           #there:I
    :cond_ea
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 972
    .restart local v9       #h:F
    cmpg-float v16, v9, v11

    if-gez v16, :cond_fb

    cmpl-float v16, v9, v4

    if-lez v16, :cond_fb

    .line 973
    move v3, v8

    .line 974
    move v4, v9

    .line 977
    :cond_fb
    move v0, v3

    move/from16 v1, p1

    if-eq v0, v1, :cond_103

    move/from16 v16, v3

    .line 991
    :goto_102
    return v16

    .line 980
    :cond_103
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 982
    .local v6, dir:I
    if-lez v6, :cond_123

    .line 983
    if-nez v13, :cond_111

    move/from16 v16, v3

    .line 984
    goto :goto_102

    .line 986
    :cond_111
    const/16 v16, 0x1

    sub-int v16, v13, v16

    const v17, 0x461c4000

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v16

    goto :goto_102

    .line 988
    :cond_123
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v16

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move v0, v13

    move/from16 v1, v16

    if-ne v0, v1, :cond_133

    move/from16 v16, v3

    .line 989
    goto :goto_102

    .line 991
    :cond_133
    add-int/lit8 v16, v13, 0x1

    const v17, 0x461c4000

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v16

    goto :goto_102
.end method

.method public getOffsetToRightOf(I)I
    .registers 20
    .parameter "offset"

    .prologue
    .line 1000
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v13

    .line 1001
    .local v13, line:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    .line 1002
    .local v14, start:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    .line 1003
    .local v8, end:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 1005
    .local v7, dirs:Landroid/text/Layout$Directions;
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v16

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_28

    .line 1006
    add-int/lit8 v8, v8, -0x1

    .line 1008
    :cond_28
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v11

    .line 1010
    .local v11, horiz:F
    move/from16 v3, p1

    .line 1011
    .local v3, best:I
    const/high16 v4, 0x4f00

    .line 1014
    .local v4, besth:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1015
    .local v5, candidate:I
    if-lt v5, v14, :cond_53

    if-gt v5, v8, :cond_53

    .line 1016
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1018
    .local v9, h:F
    cmpl-float v16, v9, v11

    if-lez v16, :cond_53

    cmpg-float v16, v9, v4

    if-gez v16, :cond_53

    .line 1019
    move v3, v5

    .line 1020
    move v4, v9

    .line 1024
    .end local v9           #h:F
    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1025
    if-lt v5, v14, :cond_76

    if-gt v5, v8, :cond_76

    .line 1026
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1028
    .restart local v9       #h:F
    cmpl-float v16, v9, v11

    if-lez v16, :cond_76

    cmpg-float v16, v9, v4

    if-gez v16, :cond_76

    .line 1029
    move v3, v5

    .line 1030
    move v4, v9

    .line 1034
    .end local v9           #h:F
    :cond_76
    move v10, v14

    .line 1035
    .local v10, here:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_78
    invoke-static {v7}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move v0, v12

    move/from16 v1, v16

    if-ge v0, v1, :cond_ea

    .line 1036
    invoke-static {v7}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v16

    aget-short v16, v16, v12

    add-int v15, v10, v16

    .line 1037
    .local v15, there:I
    if-le v15, v8, :cond_91

    .line 1038
    move v15, v8

    .line 1040
    :cond_91
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1042
    .restart local v9       #h:F
    cmpl-float v16, v9, v11

    if-lez v16, :cond_a2

    cmpg-float v16, v9, v4

    if-gez v16, :cond_a2

    .line 1043
    move v3, v10

    .line 1044
    move v4, v9

    .line 1047
    :cond_a2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v10

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1048
    if-lt v5, v14, :cond_c4

    if-gt v5, v8, :cond_c4

    .line 1049
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1051
    cmpl-float v16, v9, v11

    if-lez v16, :cond_c4

    cmpg-float v16, v9, v4

    if-gez v16, :cond_c4

    .line 1052
    move v3, v5

    .line 1053
    move v4, v9

    .line 1057
    :cond_c4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v15

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1058
    if-lt v5, v14, :cond_e6

    if-gt v5, v8, :cond_e6

    .line 1059
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1061
    cmpl-float v16, v9, v11

    if-lez v16, :cond_e6

    cmpg-float v16, v9, v4

    if-gez v16, :cond_e6

    .line 1062
    move v3, v5

    .line 1063
    move v4, v9

    .line 1067
    :cond_e6
    move v10, v15

    .line 1035
    add-int/lit8 v12, v12, 0x1

    goto :goto_78

    .line 1070
    .end local v9           #h:F
    .end local v15           #there:I
    :cond_ea
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1072
    .restart local v9       #h:F
    cmpl-float v16, v9, v11

    if-lez v16, :cond_fb

    cmpg-float v16, v9, v4

    if-gez v16, :cond_fb

    .line 1073
    move v3, v8

    .line 1074
    move v4, v9

    .line 1077
    :cond_fb
    move v0, v3

    move/from16 v1, p1

    if-eq v0, v1, :cond_103

    move/from16 v16, v3

    .line 1091
    :goto_102
    return v16

    .line 1080
    :cond_103
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 1082
    .local v6, dir:I
    if-lez v6, :cond_12c

    .line 1083
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v16

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move v0, v13

    move/from16 v1, v16

    if-ne v0, v1, :cond_11c

    move/from16 v16, v3

    .line 1084
    goto :goto_102

    .line 1086
    :cond_11c
    add-int/lit8 v16, v13, 0x1

    const v17, -0x39e3c000

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v16

    goto :goto_102

    .line 1088
    :cond_12c
    if-nez v13, :cond_131

    move/from16 v16, v3

    .line 1089
    goto :goto_102

    .line 1091
    :cond_131
    const/16 v16, 0x1

    sub-int v16, v13, v16

    const v17, -0x39e3c000

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v16

    goto :goto_102
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .registers 2

    .prologue
    .line 404
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .registers 9
    .parameter "line"

    .prologue
    .line 1306
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 1308
    .local v0, align:Landroid/text/Layout$Alignment;
    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_26

    .line 1309
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    .line 1310
    .local v1, sp:Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    const-class v6, Landroid/text/style/AlignmentSpan;

    invoke-interface {v1, v4, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/AlignmentSpan;

    .line 1314
    .local v3, spans:[Landroid/text/style/AlignmentSpan;
    array-length v2, v3

    .line 1315
    .local v2, spanLength:I
    if-lez v2, :cond_26

    .line 1316
    const/4 v4, 0x1

    sub-int v4, v2, v4

    aget-object v4, v3, v4

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 1320
    .end local v1           #sp:Landroid/text/Spanned;
    .end local v2           #spanLength:I
    .end local v3           #spans:[Landroid/text/style/AlignmentSpan;
    :cond_26
    return-object v0
.end method

.method public abstract getParagraphDirection(I)I
.end method

.method public final getParagraphLeft(I)I
    .registers 12
    .parameter "line"

    .prologue
    const/4 v9, 0x1

    .line 1327
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1329
    .local v0, dir:I
    const/4 v2, 0x0

    .line 1331
    .local v2, left:I
    const/4 v4, 0x0

    .line 1332
    .local v4, par:Z
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 1333
    .local v3, off:I
    if-eqz v3, :cond_19

    iget-object v7, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    sub-int v8, v3, v9

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_1a

    .line 1334
    :cond_19
    const/4 v4, 0x1

    .line 1336
    :cond_1a
    if-ne v0, v9, :cond_42

    .line 1337
    iget-boolean v7, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v7, :cond_42

    .line 1338
    iget-object v5, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spanned;

    .line 1339
    .local v5, sp:Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    const-class v9, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v5, v7, v8, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/LeadingMarginSpan;

    .line 1343
    .local v6, spans:[Landroid/text/style/LeadingMarginSpan;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_35
    array-length v7, v6

    if-ge v1, v7, :cond_42

    .line 1344
    aget-object v7, v6, v1

    invoke-interface {v7, v4}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v7

    add-int/2addr v2, v7

    .line 1343
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 1349
    .end local v1           #i:I
    .end local v5           #sp:Landroid/text/Spanned;
    .end local v6           #spans:[Landroid/text/style/LeadingMarginSpan;
    :cond_42
    return v2
.end method

.method public final getParagraphRight(I)I
    .registers 12
    .parameter "line"

    .prologue
    .line 1356
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1358
    .local v0, dir:I
    iget v4, p0, Landroid/text/Layout;->mWidth:I

    .line 1360
    .local v4, right:I
    const/4 v3, 0x0

    .line 1361
    .local v3, par:Z
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 1362
    .local v2, off:I
    if-eqz v2, :cond_1a

    iget-object v7, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/4 v8, 0x1

    sub-int v8, v2, v8

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_1b

    .line 1363
    :cond_1a
    const/4 v3, 0x1

    .line 1366
    :cond_1b
    const/4 v7, -0x1

    if-ne v0, v7, :cond_44

    .line 1367
    iget-boolean v7, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v7, :cond_44

    .line 1368
    iget-object v5, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spanned;

    .line 1369
    .local v5, sp:Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    const-class v9, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v5, v7, v8, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/LeadingMarginSpan;

    .line 1373
    .local v6, spans:[Landroid/text/style/LeadingMarginSpan;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_37
    array-length v7, v6

    if-ge v1, v7, :cond_44

    .line 1374
    aget-object v7, v6, v1

    invoke-interface {v7, v3}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v7

    sub-int/2addr v4, v7

    .line 1373
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 1379
    .end local v1           #i:I
    .end local v5           #sp:Landroid/text/Spanned;
    .end local v6           #spans:[Landroid/text/style/LeadingMarginSpan;
    :cond_44
    return v4
.end method

.method public getPrimaryHorizontal(I)F
    .registers 4
    .parameter "offset"

    .prologue
    .line 543
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v0

    return v0
.end method

.method public getSecondaryHorizontal(I)F
    .registers 3
    .parameter "offset"

    .prologue
    const/4 v0, 0x1

    .line 552
    invoke-direct {p0, p1, v0, v0}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v0

    return v0
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .registers 23
    .parameter "start"
    .parameter "end"
    .parameter "dest"

    .prologue
    .line 1250
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    .line 1252
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_a

    .line 1299
    :goto_9
    return-void

    .line 1255
    :cond_a
    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_16

    .line 1256
    move/from16 v17, p2

    .line 1257
    .local v17, temp:I
    move/from16 p2, p1

    .line 1258
    move/from16 p1, v17

    .line 1261
    .end local v17           #temp:I
    :cond_16
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 1262
    .local v3, startline:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v15

    .line 1264
    .local v15, endline:I
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1265
    .local v6, top:I
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1267
    .local v7, bottom:I
    if-ne v3, v15, :cond_3e

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v8, p3

    .line 1268
    invoke-direct/range {v2 .. v8}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    goto :goto_9

    .line 1270
    :cond_3e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move v2, v0

    move v0, v2

    int-to-float v0, v0

    move/from16 v18, v0

    .line 1272
    .local v18, width:F
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v11

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    move-object/from16 v8, p0

    move v9, v3

    move/from16 v10, p1

    move v12, v6

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 1275
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_a8

    .line 1276
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    int-to-float v10, v6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1282
    :goto_82
    add-int/lit8 v16, v3, 0x1

    .local v16, i:I
    :goto_84
    move/from16 v0, v16

    move v1, v15

    if-ge v0, v1, :cond_c2

    .line 1283
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1284
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1285
    const/4 v9, 0x0

    int-to-float v10, v6

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1282
    add-int/lit8 v16, v16, 0x1

    goto :goto_84

    .line 1279
    .end local v16           #i:I
    :cond_a8
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v9

    int-to-float v10, v6

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_82

    .line 1288
    .restart local v16       #i:I
    :cond_c2
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1289
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1291
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    move-object/from16 v8, p0

    move v9, v15

    move/from16 v11, p2

    move v12, v6

    move v13, v7

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 1294
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_101

    .line 1295
    .end local v3           #startline:I
    int-to-float v10, v6

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v9, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_9

    .line 1297
    :cond_101
    const/4 v9, 0x0

    int-to-float v10, v6

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_9
.end method

.method public final getSpacingAdd()F
    .registers 2

    .prologue
    .line 460
    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return v0
.end method

.method public final getSpacingMultiplier()F
    .registers 2

    .prologue
    .line 453
    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 395
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public abstract getTopPadding()I
.end method

.method public final getWidth()I
    .registers 2

    .prologue
    .line 411
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public final increaseWidthTo(I)V
    .registers 4
    .parameter "wid"

    .prologue
    .line 428
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-ge p1, v0, :cond_c

    .line 429
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "attempted to reduce Layout width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_c
    iput p1, p0, Landroid/text/Layout;->mWidth:I

    .line 433
    return-void
.end method

.method protected final isSpanned()Z
    .registers 2

    .prologue
    .line 1748
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return v0
.end method

.method replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .registers 10
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"

    .prologue
    .line 131
    if-gez p3, :cond_21

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_21
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 136
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 137
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 138
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 139
    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 140
    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 141
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 142
    return-void
.end method
