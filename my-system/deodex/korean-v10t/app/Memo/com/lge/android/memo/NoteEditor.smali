.class public Lcom/lge/android/memo/NoteEditor;
.super Landroid/widget/EditText;
.source "NoteEditor.java"


# static fields
.field protected static filePath:Ljava/lang/String;

.field protected static lineCounter:I

.field protected static memoTitle:Ljava/lang/String;


# instance fields
.field protected isTitlePresent:Z

.field private isYellowStyle:Z

.field private lineColors:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field protected midImage:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const-string v0, ""

    sput-object v0, Lcom/lge/android/memo/NoteEditor;->memoTitle:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/android/memo/NoteEditor;->filePath:Ljava/lang/String;

    .line 51
    const/16 v0, 0x7d0

    sput v0, Lcom/lge/android/memo/NoteEditor;->lineCounter:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-boolean v3, p0, Lcom/lge/android/memo/NoteEditor;->isTitlePresent:Z

    .line 50
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/android/memo/NoteEditor;->midImage:Landroid/graphics/drawable/BitmapDrawable;

    .line 52
    const/high16 v1, -0x100

    iput v1, p0, Lcom/lge/android/memo/NoteEditor;->lineColors:I

    .line 53
    iput-boolean v4, p0, Lcom/lge/android/memo/NoteEditor;->isYellowStyle:Z

    .line 61
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/lge/android/memo/NoteEditor;->mRect:Landroid/graphics/Rect;

    .line 62
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/lge/android/memo/NoteEditor;->mPaint:Landroid/graphics/Paint;

    .line 63
    iget-object v1, p0, Lcom/lge/android/memo/NoteEditor;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object v1, p0, Lcom/lge/android/memo/NoteEditor;->mPaint:Landroid/graphics/Paint;

    const v2, 0x3fa66666

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    sget-boolean v1, Lcom/lge/android/memo/DialogLauncher;->isEditButtonPressed:Z

    invoke-virtual {p0, v1}, Lcom/lge/android/memo/NoteEditor;->setEnabled(Z)V

    .line 67
    sget-boolean v1, Lcom/lge/android/memo/DialogLauncher;->isEditButtonPressed:Z

    invoke-virtual {p0, v1}, Lcom/lge/android/memo/NoteEditor;->setFocusableInTouchMode(Z)V

    .line 68
    sget-boolean v1, Lcom/lge/android/memo/DialogLauncher;->isEditButtonPressed:Z

    invoke-virtual {p0, v1}, Lcom/lge/android/memo/NoteEditor;->setFocusable(Z)V

    .line 69
    sget-boolean v1, Lcom/lge/android/memo/DialogLauncher;->isEditButtonPressed:Z

    invoke-virtual {p0, v1}, Lcom/lge/android/memo/NoteEditor;->setCursorVisible(Z)V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 72
    .local v0, res:Landroid/content/res/Resources;
    sget v1, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_5d

    .line 73
    const v1, 0x7f050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/lge/android/memo/NoteEditor;->lineColors:I

    .line 74
    iput-boolean v3, p0, Lcom/lge/android/memo/NoteEditor;->isYellowStyle:Z

    .line 82
    :goto_55
    iget-object v1, p0, Lcom/lge/android/memo/NoteEditor;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/lge/android/memo/NoteEditor;->lineColors:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    return-void

    .line 75
    :cond_5d
    sget v1, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_6f

    .line 76
    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/lge/android/memo/NoteEditor;->lineColors:I

    .line 77
    iput-boolean v3, p0, Lcom/lge/android/memo/NoteEditor;->isYellowStyle:Z

    goto :goto_55

    .line 79
    :cond_6f
    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/lge/android/memo/NoteEditor;->lineColors:I

    .line 80
    iput-boolean v4, p0, Lcom/lge/android/memo/NoteEditor;->isYellowStyle:Z

    goto :goto_55
.end method


# virtual methods
.method public getFloat(Ljava/lang/String;)F
    .registers 3
    .parameter "param"

    .prologue
    .line 194
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 195
    .local v0, parsedFloat:F
    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 3
    .parameter "param"

    .prologue
    .line 183
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 184
    .local v0, parsedInt:I
    return v0
.end method

.method public getSubstring(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "string"
    .parameter "stringIndex"

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 173
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15
    .parameter "canvas"

    .prologue
    const/16 v0, 0xff

    .line 93
    iget-object v12, p0, Lcom/lge/android/memo/NoteEditor;->mRect:Landroid/graphics/Rect;

    .line 94
    .local v12, r:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/lge/android/memo/NoteEditor;->mPaint:Landroid/graphics/Paint;

    .line 95
    .local v5, paint1:Landroid/graphics/Paint;
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 96
    .local v11, p:Landroid/graphics/Paint;
    invoke-virtual {v11, v0, v0, v0, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 98
    const/4 v10, 0x0

    .line 99
    .local v10, initialBaseline:I
    invoke-virtual {p0}, Lcom/lge/android/memo/NoteEditor;->getLineHeight()I

    move-result v8

    .line 100
    .local v8, gap:I
    invoke-virtual {p0}, Lcom/lge/android/memo/NoteEditor;->getLineCount()I

    move-result v7

    .line 102
    .local v7, count:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_18
    if-ge v9, v7, :cond_31

    .line 104
    invoke-virtual {p0, v9, v12}, Lcom/lge/android/memo/NoteEditor;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v10

    .line 105
    iget v0, v12, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    add-int/lit8 v0, v10, 0x5

    int-to-float v2, v0

    iget v0, v12, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    add-int/lit8 v0, v10, 0x5

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 102
    add-int/lit8 v9, v9, 0x1

    goto :goto_18

    .line 107
    :cond_31
    const/4 v9, 0x0

    :goto_32
    const/4 v0, 0x6

    sub-int/2addr v0, v7

    if-ge v9, v0, :cond_4e

    .line 109
    add-int/lit8 v0, v9, 0x1

    mul-int/2addr v0, v8

    add-int v6, v10, v0

    .line 110
    .local v6, baseline2:I
    iget v0, v12, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    add-int/lit8 v0, v6, 0x5

    int-to-float v2, v0

    iget v0, v12, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    add-int/lit8 v0, v6, 0x5

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 107
    add-int/lit8 v9, v9, 0x1

    goto :goto_32

    .line 159
    .end local v6           #baseline2:I
    :cond_4e
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 161
    return-void
.end method

.method protected onSelectionChanged(II)V
    .registers 3
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    .line 200
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 214
    return-void
.end method
