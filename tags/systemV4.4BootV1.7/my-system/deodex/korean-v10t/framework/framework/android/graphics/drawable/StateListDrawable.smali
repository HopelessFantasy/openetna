.class public Landroid/graphics/drawable/StateListDrawable;
.super Landroid/graphics/drawable/DrawableContainer;
.source "StateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/StateListDrawable$1;,
        Landroid/graphics/drawable/StateListDrawable$StateListState;
    }
.end annotation


# instance fields
.field private mMutated:Z

.field private final mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;)V

    .line 58
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/StateListDrawable$StateListState;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 278
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    .line 279
    new-instance v0, Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-direct {v0, p1, p0}, Landroid/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/graphics/drawable/StateListDrawable;)V

    .line 280
    .local v0, as:Landroid/graphics/drawable/StateListDrawable$StateListState;
    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    .line 281
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/StateListDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 282
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    .line 283
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/graphics/drawable/StateListDrawable$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;)V

    return-void
.end method


# virtual methods
.method public addState([ILandroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "stateSet"
    .parameter "drawable"

    .prologue
    .line 68
    if-eqz p2, :cond_e

    .line 69
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    .line 71
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    .line 73
    :cond_e
    return-void
.end method

.method public getStateCount()I
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getStateDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter "index"

    .prologue
    .line 204
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getStateDrawableIndex([I)I
    .registers 3
    .parameter "stateSet"

    .prologue
    .line 217
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-static {v0, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->access$000(Landroid/graphics/drawable/StateListDrawable$StateListState;[I)I

    move-result v0

    return v0
.end method

.method getStateListState()Landroid/graphics/drawable/StateListDrawable$StateListState;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    return-object v0
.end method

.method public getStateSet(I)[I
    .registers 3
    .parameter "index"

    .prologue
    .line 191
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-static {v0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->access$100(Landroid/graphics/drawable/StateListDrawable$StateListState;)[[I

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .registers 24
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    sget-object v17, Lcom/android/internal/R$styleable;->StateListDrawable:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 100
    .local v5, a:Landroid/content/res/TypedArray;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    move/from16 v4, v17

    invoke-super {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/DrawableContainer;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object v0, v5

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/StateListDrawable$StateListState;->setVariablePadding(Z)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    const/16 v19, 0x0

    move-object v0, v5

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/StateListDrawable$StateListState;->setConstantSize(Z)V

    .line 108
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    add-int/lit8 v10, v17, 0x1

    .line 115
    .local v10, innerDepth:I
    :cond_4f
    :goto_4f
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    .local v16, type:I
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_11c

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .local v6, depth:I
    if-ge v6, v10, :cond_69

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_11c

    .line 117
    :cond_69
    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4f

    .line 121
    if-gt v6, v10, :cond_4f

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "item"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4f

    .line 125
    const/4 v8, 0x0

    .line 128
    .local v8, drawableRes:I
    const/4 v11, 0x0

    .line 129
    .local v11, j:I
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v13

    .line 130
    .local v13, numAttrs:I
    new-array v15, v13, [I

    .line 131
    .local v15, states:[I
    const/4 v9, 0x0

    .local v9, i:I
    move v12, v11

    .end local v11           #j:I
    .local v12, j:I
    :goto_89
    if-ge v9, v13, :cond_94

    .line 132
    move-object/from16 v0, p3

    move v1, v9

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v14

    .line 133
    .local v14, stateResId:I
    if-nez v14, :cond_af

    .line 142
    .end local v14           #stateResId:I
    :cond_94
    invoke-static {v15, v12}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v15

    .line 145
    if-eqz v8, :cond_e0

    .line 146
    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 159
    .local v7, dr:Landroid/graphics/drawable/Drawable;
    :goto_a1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v15

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    goto :goto_4f

    .line 134
    .end local v7           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v14       #stateResId:I
    :cond_af
    const v17, 0x1010199

    move v0, v14

    move/from16 v1, v17

    if-ne v0, v1, :cond_c7

    .line 135
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move v1, v9

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v8

    move v11, v12

    .line 131
    .end local v12           #j:I
    .restart local v11       #j:I
    :goto_c3
    add-int/lit8 v9, v9, 0x1

    move v12, v11

    .end local v11           #j:I
    .restart local v12       #j:I
    goto :goto_89

    .line 137
    :cond_c7
    add-int/lit8 v11, v12, 0x1

    .end local v12           #j:I
    .restart local v11       #j:I
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move v1, v9

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v17

    if-eqz v17, :cond_db

    move/from16 v17, v14

    :goto_d8
    aput v17, v15, v12

    goto :goto_c3

    :cond_db
    move v0, v14

    neg-int v0, v0

    move/from16 v17, v0

    goto :goto_d8

    .line 148
    .end local v11           #j:I
    .end local v14           #stateResId:I
    .restart local v12       #j:I
    :cond_e0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_e0

    .line 150
    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_117

    .line 151
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": <item> tag requires a \'drawable\' attribute or "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "child tag defining a drawable"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 156
    :cond_117
    invoke-static/range {p1 .. p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .restart local v7       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_a1

    .line 162
    .end local v6           #depth:I
    .end local v7           #dr:Landroid/graphics/drawable/Drawable;
    .end local v8           #drawableRes:I
    .end local v9           #i:I
    .end local v12           #j:I
    .end local v13           #numAttrs:I
    .end local v15           #states:[I
    :cond_11c
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    .line 163
    return-void
.end method

.method public isStateful()Z
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    .line 222
    iget-boolean v3, p0, Landroid/graphics/drawable/StateListDrawable;->mMutated:Z

    if-nez v3, :cond_31

    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-ne v3, p0, :cond_31

    .line 223
    iget-object v3, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-static {v3}, Landroid/graphics/drawable/StateListDrawable$StateListState;->access$100(Landroid/graphics/drawable/StateListDrawable$StateListState;)[[I

    move-result-object v2

    .line 224
    .local v2, sets:[[I
    array-length v0, v2

    .line 225
    .local v0, count:I
    iget-object v3, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    new-array v4, v0, [[I

    invoke-static {v3, v4}, Landroid/graphics/drawable/StateListDrawable$StateListState;->access$102(Landroid/graphics/drawable/StateListDrawable$StateListState;[[I)[[I

    .line 226
    const/4 v1, 0x0

    .local v1, i:I
    :goto_19
    if-ge v1, v0, :cond_2e

    .line 227
    iget-object v3, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-static {v3}, Landroid/graphics/drawable/StateListDrawable$StateListState;->access$100(Landroid/graphics/drawable/StateListDrawable$StateListState;)[[I

    move-result-object v4

    aget-object v3, v2, v1

    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    aput-object v3, v4, v1

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 229
    :cond_2e
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/graphics/drawable/StateListDrawable;->mMutated:Z

    .line 231
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #sets:[[I
    :cond_31
    return-object p0
.end method

.method protected onStateChange([I)Z
    .registers 5
    .parameter "stateSet"

    .prologue
    .line 82
    iget-object v1, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-static {v1, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->access$000(Landroid/graphics/drawable/StateListDrawable$StateListState;[I)I

    move-result v0

    .line 83
    .local v0, idx:I
    if-gez v0, :cond_10

    .line 84
    iget-object v1, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    sget-object v2, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-static {v1, v2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->access$000(Landroid/graphics/drawable/StateListDrawable$StateListState;[I)I

    move-result v0

    .line 86
    :cond_10
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/StateListDrawable;->selectDrawable(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 87
    const/4 v1, 0x1

    .line 89
    :goto_17
    return v1

    :cond_18
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->onStateChange([I)Z

    move-result v1

    goto :goto_17
.end method
