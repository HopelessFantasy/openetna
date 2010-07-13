.class public Lcom/lge/hiddenmenu/device_test/FontTest;
.super Landroid/app/Activity;
.source "FontTest.java"


# static fields
.field private static final BACKGROUND_PICKED:I = 0x1

.field private static final FONT_INDEX_MONO:I = 0x2

.field private static final FONT_INDEX_SANS:I = 0x0

.field private static final FONT_INDEX_SERIF:I = 0x1

.field private static final MAX_SCALE_X:F = 2.0f

.field private static final MAX_SIZE:I = 0x3c

.field private static final MIN_SCALE_X:F = 0.5f

.field private static final MIN_SIZE:I = 0x1

.field private static final sStyleName:[Ljava/lang/String;

.field private static final sTypeface:[Landroid/graphics/Typeface;

.field private static final sTypefaceName:[Ljava/lang/String;


# instance fields
.field private mBGColor:I

.field private mColumn1:Landroid/widget/TextView;

.field private mContentView:Landroid/view/View;

.field private mFGColor:I

.field private mFlagClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mFontClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mFontIndex:I

.field private mFontSize:I

.field private mFontStyle:I

.field mInvertCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mStyleClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mTextCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mTextIndex:I

.field private mTextScaleX:F

.field private sText:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Regular"

    aput-object v1, v0, v2

    const-string v1, "Bold"

    aput-object v1, v0, v3

    const-string v1, "Italic"

    aput-object v1, v0, v4

    const-string v1, "Bold Italic"

    aput-object v1, v0, v5

    sput-object v0, Lcom/lge/hiddenmenu/device_test/FontTest;->sStyleName:[Ljava/lang/String;

    .line 85
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Droid Sans"

    aput-object v1, v0, v2

    const-string v1, "Droid Serif"

    aput-object v1, v0, v3

    const-string v1, "Droid Mono"

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/hiddenmenu/device_test/FontTest;->sTypefaceName:[Ljava/lang/String;

    .line 90
    new-array v0, v5, [Landroid/graphics/Typeface;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/hiddenmenu/device_test/FontTest;->sTypeface:[Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->sText:[Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/lge/hiddenmenu/device_test/FontTest$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/device_test/FontTest$1;-><init>(Lcom/lge/hiddenmenu/device_test/FontTest;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mFontClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 126
    new-instance v0, Lcom/lge/hiddenmenu/device_test/FontTest$2;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/device_test/FontTest$2;-><init>(Lcom/lge/hiddenmenu/device_test/FontTest;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mStyleClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 149
    new-instance v0, Lcom/lge/hiddenmenu/device_test/FontTest$3;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/device_test/FontTest$3;-><init>(Lcom/lge/hiddenmenu/device_test/FontTest;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mFlagClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 273
    new-instance v0, Lcom/lge/hiddenmenu/device_test/FontTest$4;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/device_test/FontTest$4;-><init>(Lcom/lge/hiddenmenu/device_test/FontTest;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mInvertCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 283
    new-instance v0, Lcom/lge/hiddenmenu/device_test/FontTest$5;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/device_test/FontTest$5;-><init>(Lcom/lge/hiddenmenu/device_test/FontTest;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mTextCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 295
    iput v1, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mFontIndex:I

    .line 296
    iput v1, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mFontStyle:I

    .line 297
    const/16 v0, 0x12

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mFontSize:I

    .line 298
    const/high16 v0, -0x100

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mFGColor:I

    .line 299
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mBGColor:I

    .line 301
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mTextScaleX:F

    .line 38
    return-void
.end method

.method static synthetic access$002(Lcom/lge/hiddenmenu/device_test/FontTest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mFontIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/device_test/FontTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/FontTest;->refreshFont()V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/device_test/FontTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mFontStyle:I

    return v0
.end method

.method static synthetic access$202(Lcom/lge/hiddenmenu/device_test/FontTest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mFontStyle:I

    return p1
.end method

.method static synthetic access$300(Lcom/lge/hiddenmenu/device_test/FontTest;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mColumn1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/hiddenmenu/device_test/FontTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mFGColor:I

    return v0
.end method

.method static synthetic access$402(Lcom/lge/hiddenmenu/device_test/FontTest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mFGColor:I

    return p1
.end method

.method static synthetic access$500(Lcom/lge/hiddenmenu/device_test/FontTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mBGColor:I

    return v0
.end method

.method static synthetic access$502(Lcom/lge/hiddenmenu/device_test/FontTest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mBGColor:I

    return p1
.end method

.method static synthetic access$600(Lcom/lge/hiddenmenu/device_test/FontTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/FontTest;->updateColors()V

    return-void
.end method

.method static synthetic access$712(Lcom/lge/hiddenmenu/device_test/FontTest;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mTextIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mTextIndex:I

    return v0
.end method

.method static synthetic access$800(Lcom/lge/hiddenmenu/device_test/FontTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/FontTest;->updateText()V

    return-void
.end method

.method private addFlagMenu(Landroid/view/Menu;ILjava/lang/String;C)V
    .registers 9
    .parameter "menu"
    .parameter "paintFlag"
    .parameter "label"
    .parameter "shortCut"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 160
    invoke-interface {p1, v2, p2, v2, p3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 161
    .local v0, item:Landroid/view/MenuItem;
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 162
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mFlagClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 163
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mColumn1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    and-int/2addr v1, p2

    if-eqz v1, :cond_21

    move v1, v3

    :goto_18
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 164
    if-eqz p4, :cond_20

    .line 165
    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 167
    :cond_20
    return-void

    :cond_21
    move v1, v2

    .line 163
    goto :goto_18
.end method

.method private addFontMenu(Landroid/view/Menu;I)V
    .registers 7
    .parameter "menu"
    .parameter "index"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    sget-object v1, Lcom/lge/hiddenmenu/device_test/FontTest;->sTypefaceName:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-interface {p1, v2, p2, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 121
    .local v0, item:Landroid/view/MenuItem;
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 122
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mFontClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 123
    iget v1, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mFontIndex:I

    if-ne p2, v1, :cond_1b

    move v1, v3

    :goto_17
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 124
    return-void

    :cond_1b
    move v1, v2

    .line 123
    goto :goto_17
.end method

.method private static addListenerMenu(Landroid/view/MenuItem;Landroid/view/MenuItem$OnMenuItemClickListener;C)V
    .registers 3
    .parameter "item"
    .parameter "listener"
    .parameter "keyChar"

    .prologue
    .line 172
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 173
    if-eqz p2, :cond_8

    .line 174
    invoke-interface {p0, p2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 176
    :cond_8
    return-void
.end method

.method private addStyleMenu(Landroid/view/Menu;IC)V
    .registers 8
    .parameter "menu"
    .parameter "style"
    .parameter "shortCut"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 136
    if-ne p2, v3, :cond_21

    const-string v1, "Bold"

    :goto_6
    invoke-interface {p1, v2, p2, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 137
    .local v0, item:Landroid/view/MenuItem;
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 138
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mStyleClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 139
    iget v1, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mFontStyle:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_24

    move v1, v3

    :goto_18
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 144
    if-eqz p3, :cond_20

    .line 145
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 147
    :cond_20
    return-void

    .line 136
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_21
    const-string v1, "Italic"

    goto :goto_6

    .restart local v0       #item:Landroid/view/MenuItem;
    :cond_24
    move v1, v2

    .line 139
    goto :goto_18
.end method

.method private static canSupportStyle(Landroid/graphics/Typeface;I)Z
    .registers 3
    .parameter "tf"
    .parameter "styleBits"

    .prologue
    .line 100
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    .line 101
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private refreshFont()V
    .registers 4

    .prologue
    .line 105
    sget-object v1, Lcom/lge/hiddenmenu/device_test/FontTest;->sTypeface:[Landroid/graphics/Typeface;

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mFontIndex:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mFontStyle:I

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 106
    .local v0, tf:Landroid/graphics/Typeface;
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mColumn1:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 107
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/FontTest;->updateTitle()V

    .line 108
    return-void
.end method

.method private setFont(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/util/Map;)V
    .registers 8
    .parameter "t"
    .parameter "f"
    .parameter "extras"

    .prologue
    const-string v3, "style"

    .line 266
    const-string v2, "style"

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_27

    const/4 v2, 0x0

    move v1, v2

    .line 267
    .end local p0
    .local v1, style:I
    :goto_c
    const-string v2, "font"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 268
    .local v0, font:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 270
    const-string v2, "title"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    return-void

    .line 266
    .end local v0           #font:Ljava/lang/String;
    .end local v1           #style:I
    .restart local p0
    :cond_27
    const-string v2, "style"

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v1, v2

    goto :goto_c
.end method

.method private updateColors()V
    .registers 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mColumn1:Landroid/widget/TextView;

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mFGColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mContentView:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/PaintDrawable;

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mBGColor:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    return-void
.end method

.method private updateText()V
    .registers 4

    .prologue
    .line 31
    iget v1, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mTextIndex:I

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->sText:[Ljava/lang/String;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mTextIndex:I

    .line 32
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->sText:[Ljava/lang/String;

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mTextIndex:I

    aget-object v0, v1, v2

    .line 33
    .local v0, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mColumn1:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    return-void
.end method

.method private updateTitle()V
    .registers 6

    .prologue
    .line 67
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mColumn1:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 68
    .local v0, tf:Landroid/graphics/Typeface;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mFontSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pt  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mTextScaleX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " scale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/lge/hiddenmenu/device_test/FontTest;->sTypefaceName:[Ljava/lang/String;

    iget v4, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mFontIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/lge/hiddenmenu/device_test/FontTest;->sStyleName:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/device_test/FontTest;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILjava/lang/String;Ljava/util/Map;)V
    .registers 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"
    .parameter "extras"

    .prologue
    const/4 v5, 0x0

    const-string v4, "text"

    const-string v6, "bgcolor"

    .line 203
    const/4 v3, -0x1

    if-ne p2, v3, :cond_b

    .line 204
    packed-switch p1, :pswitch_data_64

    .line 225
    :cond_b
    :goto_b
    return-void

    .line 207
    :pswitch_c
    const-string v3, "text"

    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_39

    move v0, v5

    .line 208
    .local v0, color:I
    :goto_15
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mColumn1:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    const v3, 0xffffff

    and-int/2addr v3, v0

    const/high16 v4, 0x7700

    add-int v1, v3, v4

    .line 212
    .local v1, colorTranslucent:I
    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/FontTest;->setTitleColor(I)V

    .line 214
    const-string v3, "texture"

    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 215
    .local v2, texture:Ljava/lang/Integer;
    if-eqz v2, :cond_47

    .line 216
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_b

    .line 207
    .end local v0           #color:I
    .end local v1           #colorTranslucent:I
    .end local v2           #texture:Ljava/lang/Integer;
    :cond_39
    const-string v3, "text"

    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v0, v3

    goto :goto_15

    .line 218
    .restart local v0       #color:I
    .restart local v1       #colorTranslucent:I
    .restart local v2       #texture:Ljava/lang/Integer;
    :cond_47
    const-string v3, "bgcolor"

    invoke-interface {p4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_56

    move v0, v5

    .line 219
    :goto_50
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mContentView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_b

    .line 218
    :cond_56
    const-string v3, "bgcolor"

    invoke-interface {p4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v0, v3

    goto :goto_50

    .line 204
    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    const/4 v4, 0x2

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/FontTest;->setContentView(I)V

    .line 43
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->sText:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/FontTest;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080128

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 44
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->sText:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/FontTest;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080129

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 45
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->sText:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/FontTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08012a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 47
    const v0, 0x7f07006a

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/FontTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mColumn1:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f070069

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/FontTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mContentView:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mColumn1:Landroid/widget/TextView;

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mFontSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 51
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mColumn1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mColumn1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 53
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/FontTest;->refreshFont()V

    .line 54
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/FontTest;->updateTitle()V

    .line 55
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/FontTest;->updateColors()V

    .line 56
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/FontTest;->updateText()V

    .line 58
    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/device_test/FontTest;->setDefaultKeyMode(I)V

    .line 59
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const v2, 0x3d4ccccd

    const/4 v4, 0x1

    .line 228
    iget v1, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mFontSize:I

    .line 229
    .local v1, size:I
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mTextScaleX:F

    .line 231
    .local v0, scaleX:F
    packed-switch p1, :pswitch_data_56

    .line 246
    :goto_b
    const/16 v2, 0x3c

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 247
    iget v2, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mFontSize:I

    if-eq v1, v2, :cond_32

    .line 248
    iput v1, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mFontSize:I

    .line 249
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mColumn1:Landroid/widget/TextView;

    iget v3, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mFontSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 250
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/FontTest;->updateTitle()V

    move v2, v4

    .line 262
    :goto_27
    return v2

    .line 233
    :pswitch_28
    add-int/lit8 v1, v1, -0x1

    .line 234
    goto :goto_b

    .line 236
    :pswitch_2b
    add-int/lit8 v1, v1, 0x1

    .line 237
    goto :goto_b

    .line 239
    :pswitch_2e
    add-float/2addr v0, v2

    .line 240
    goto :goto_b

    .line 242
    :pswitch_30
    sub-float/2addr v0, v2

    goto :goto_b

    .line 254
    :cond_32
    const/high16 v2, 0x4000

    const/high16 v3, 0x3f00

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 255
    iget v2, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mTextScaleX:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_50

    .line 256
    iput v0, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mTextScaleX:F

    .line 257
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mColumn1:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 258
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/FontTest;->updateTitle()V

    move v2, v4

    .line 259
    goto :goto_27

    .line 262
    :cond_50
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_27

    .line 231
    nop

    :pswitch_data_56
    .packed-switch 0x13
        :pswitch_2b
        :pswitch_28
        :pswitch_30
        :pswitch_2e
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 184
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 185
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 187
    invoke-direct {p0, p1, v3}, Lcom/lge/hiddenmenu/device_test/FontTest;->addFontMenu(Landroid/view/Menu;I)V

    .line 188
    invoke-direct {p0, p1, v4}, Lcom/lge/hiddenmenu/device_test/FontTest;->addFontMenu(Landroid/view/Menu;I)V

    .line 189
    invoke-direct {p0, p1, v1}, Lcom/lge/hiddenmenu/device_test/FontTest;->addFontMenu(Landroid/view/Menu;I)V

    .line 190
    const/16 v0, 0x62

    invoke-direct {p0, p1, v4, v0}, Lcom/lge/hiddenmenu/device_test/FontTest;->addStyleMenu(Landroid/view/Menu;IC)V

    .line 191
    const/16 v0, 0x69

    invoke-direct {p0, p1, v1, v0}, Lcom/lge/hiddenmenu/device_test/FontTest;->addStyleMenu(Landroid/view/Menu;IC)V

    .line 192
    const/16 v0, 0x100

    const-string v1, "DevKern"

    const/16 v2, 0x6b

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/lge/hiddenmenu/device_test/FontTest;->addFlagMenu(Landroid/view/Menu;ILjava/lang/String;C)V

    .line 195
    const-string v0, "Text"

    invoke-interface {p1, v3, v3, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mTextCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x74

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 196
    const-string v0, "Invert"

    invoke-interface {p1, v3, v3, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/FontTest;->mInvertCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x76

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 198
    return v4
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "state"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 80
    return-void
.end method
