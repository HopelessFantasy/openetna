.class public Landroid/widget/AutoCompleteTextView;
.super Landroid/widget/EditText;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AutoCompleteTextView$PassThroughClickListener;,
        Landroid/widget/AutoCompleteTextView$Validator;,
        Landroid/widget/AutoCompleteTextView$DropDownListView;,
        Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;,
        Landroid/widget/AutoCompleteTextView$PopupTouchIntercepter;,
        Landroid/widget/AutoCompleteTextView$ListSelectorHider;,
        Landroid/widget/AutoCompleteTextView$MyWatcher;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final HINT_VIEW_ID:I = 0x17

.field static final TAG:Ljava/lang/String; = "AutoCompleteTextView"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mBlockCompletion:Z

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorId:I

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownDismissedOnCompletion:Z

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private final mDropDownItemClickListener:Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;

.field private mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownWidth:I

.field private mFilter:Landroid/widget/Filter;

.field private mForceIgnoreOutsideTouch:Z

.field private mHideSelector:Landroid/widget/AutoCompleteTextView$ListSelectorHider;

.field private mHintResource:I

.field private mHintText:Ljava/lang/CharSequence;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLastKeyCode:I

.field private mOpenBefore:Z

.field private mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mThreshold:I

.field private mValidator:Landroid/widget/AutoCompleteTextView$Validator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 140
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 144
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mTempRect:Landroid/graphics/Rect;

    .line 114
    new-instance v2, Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;

    invoke-direct {v2, p0, v6}, Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownItemClickListener:Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;

    .line 117
    iput-boolean v4, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    .line 119
    iput-boolean v5, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    .line 121
    iput-boolean v4, p0, Landroid/widget/AutoCompleteTextView;->mForceIgnoreOutsideTouch:Z

    .line 123
    iput v4, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    .line 126
    iput-object v6, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    .line 146
    new-instance v2, Landroid/widget/PopupWindow;

    const v3, 0x101006b

    invoke-direct {v2, p1, p2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    .line 148
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 150
    sget-object v2, Lcom/android/internal/R$styleable;->AutoCompleteTextView:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 154
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    .line 157
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    .line 159
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 161
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownVerticalOffset:I

    .line 163
    const/16 v2, 0x9

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHorizontalOffset:I

    .line 170
    const/4 v2, 0x6

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    .line 175
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    .line 177
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    .line 180
    const v2, 0x1090058

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mHintResource:I

    .line 185
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getInputType()I

    move-result v1

    .line 186
    .local v1, inputType:I
    and-int/lit8 v2, v1, 0xf

    if-ne v2, v5, :cond_8b

    .line 188
    const/high16 v2, 0x1

    or-int/2addr v1, v2

    .line 189
    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setRawInputType(I)V

    .line 192
    :cond_8b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 194
    invoke-virtual {p0, v5}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 196
    new-instance v2, Landroid/widget/AutoCompleteTextView$MyWatcher;

    invoke-direct {v2, p0, v6}, Landroid/widget/AutoCompleteTextView$MyWatcher;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    invoke-virtual {p0, v2}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 198
    new-instance v2, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-direct {v2, p0, v6}, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    .line 199
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-super {p0, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    return-void
.end method

.method static synthetic access$1000(Landroid/widget/AutoCompleteTextView;Landroid/view/View;IJ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$1100(Landroid/widget/AutoCompleteTextView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->onClickImpl()V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/AutoCompleteTextView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/AutoCompleteTextView;)Landroid/widget/AutoCompleteTextView$DropDownListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/AutoCompleteTextView;)Landroid/widget/PopupWindow;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private buildDropDown()I
    .registers 32

    .prologue
    .line 1223
    const/16 v27, 0x0

    .line 1225
    .local v27, otherHeights:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v5, v0

    if-eqz v5, :cond_5f

    .line 1226
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v24

    .line 1227
    .local v24, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v24, :cond_5f

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v5, v0

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v11

    .line 1229
    .local v11, N:I
    const/16 v5, 0x14

    if-le v11, v5, :cond_1e

    const/16 v11, 0x14

    .line 1230
    :cond_1e
    new-array v13, v11, [Landroid/view/inputmethod/CompletionInfo;

    .line 1231
    .local v13, completions:[Landroid/view/inputmethod/CompletionInfo;
    const/16 v20, 0x0

    .local v20, i:I
    :goto_22
    move/from16 v0, v20

    move v1, v11

    if-ge v0, v1, :cond_57

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v25

    .line 1233
    .local v25, item:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v21

    .line 1234
    .local v21, id:J
    new-instance v5, Landroid/view/inputmethod/CompletionInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v0, v5

    move-wide/from16 v1, v21

    move/from16 v3, v20

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/inputmethod/CompletionInfo;-><init>(JILjava/lang/CharSequence;)V

    aput-object v5, v13, v20

    .line 1231
    add-int/lit8 v20, v20, 0x1

    goto :goto_22

    .line 1237
    .end local v21           #id:J
    .end local v25           #item:Ljava/lang/Object;
    :cond_57
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 1241
    .end local v11           #N:I
    .end local v13           #completions:[Landroid/view/inputmethod/CompletionInfo;
    .end local v20           #i:I
    .end local v24           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    if-nez v5, :cond_1bb

    .line 1242
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 1244
    .local v14, context:Landroid/content/Context;
    new-instance v5, Landroid/widget/AutoCompleteTextView$ListSelectorHider;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/widget/AutoCompleteTextView$ListSelectorHider;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AutoCompleteTextView;->mHideSelector:Landroid/widget/AutoCompleteTextView$ListSelectorHider;

    .line 1252
    new-instance v5, Landroid/widget/AutoCompleteTextView$1;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AutoCompleteTextView$1;-><init>(Landroid/widget/AutoCompleteTextView;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AutoCompleteTextView;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 1262
    new-instance v5, Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-direct {v5, v14}, Landroid/widget/AutoCompleteTextView$DropDownListView;-><init>(Landroid/content/Context;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownItemClickListener:Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setFocusable(Z)V

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setFocusableInTouchMode(Z)V

    .line 1269
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    new-instance v6, Landroid/widget/AutoCompleteTextView$2;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AutoCompleteTextView$2;-><init>(Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1286
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v5, v0

    if-eqz v5, :cond_f6

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1290
    :cond_f6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v15, v0

    .line 1292
    .local v15, dropDownView:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Landroid/widget/AutoCompleteTextView;->getHintView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v19

    .line 1293
    .local v19, hintView:Landroid/view/View;
    if-eqz v19, :cond_15e

    .line 1296
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1297
    .local v17, hintContainer:Landroid/widget/LinearLayout;
    const/4 v5, 0x1

    move-object/from16 v0, v17

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1299
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1302
    .local v18, hintParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v17

    move-object v1, v15

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1303
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1307
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getWidth()I

    move-result v5

    const/high16 v6, -0x8000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    .line 1308
    .local v30, widthSpec:I
    const/16 v16, 0x0

    .line 1309
    .local v16, heightSpec:I
    move-object/from16 v0, v19

    move/from16 v1, v30

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1311
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    .end local v18           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v18, Landroid/widget/LinearLayout$LayoutParams;

    .line 1312
    .restart local v18       #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v6, v0

    add-int/2addr v5, v6

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v6, v0

    add-int v27, v5, v6

    .line 1315
    move-object/from16 v15, v17

    .line 1318
    .end local v16           #heightSpec:I
    .end local v17           #hintContainer:Landroid/widget/LinearLayout;
    .end local v18           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v30           #widthSpec:I
    :cond_15e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    invoke-virtual {v5, v15}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1331
    .end local v14           #context:Landroid/content/Context;
    .end local v19           #hintView:Landroid/view/View;
    :cond_166
    :goto_166
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1e6

    const/4 v5, 0x1

    move/from16 v23, v5

    .line 1333
    .local v23, ignoreBottomDecorations:Z
    :goto_175
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    invoke-direct/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownVerticalOffset:I

    move v7, v0

    move-object v0, v5

    move-object v1, v6

    move v2, v7

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v26

    .line 1336
    .local v26, maxHeight:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    move v5, v0

    if-eqz v5, :cond_1ea

    .line 1339
    const/16 v28, 0x0

    .line 1340
    .local v28, padding:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 1341
    .local v12, background:Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_1b8

    .line 1342
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v12, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mTempRect:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int v28, v5, v6

    .line 1345
    :cond_1b8
    add-int v5, v26, v28

    .line 1348
    .end local v12           #background:Landroid/graphics/drawable/Drawable;
    .end local v28           #padding:I
    :goto_1ba
    return v5

    .line 1320
    .end local v15           #dropDownView:Landroid/view/ViewGroup;
    .end local v23           #ignoreBottomDecorations:Z
    .end local v26           #maxHeight:I
    :cond_1bb
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    .line 1321
    .restart local v15       #dropDownView:Landroid/view/ViewGroup;
    const/16 v5, 0x17

    invoke-virtual {v15, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v29

    .line 1322
    .local v29, view:Landroid/view/View;
    if-eqz v29, :cond_166

    .line 1323
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout$LayoutParams;

    .line 1325
    .restart local v18       #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v6, v0

    add-int/2addr v5, v6

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v6, v0

    add-int v27, v5, v6

    goto :goto_166

    .line 1331
    .end local v18           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v29           #view:Landroid/view/View;
    :cond_1e6
    const/4 v5, 0x0

    move/from16 v23, v5

    goto :goto_175

    .line 1348
    .restart local v23       #ignoreBottomDecorations:Z
    .restart local v26       #maxHeight:I
    :cond_1ea
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    sub-int v9, v26, v27

    const/4 v10, 0x2

    invoke-virtual/range {v5 .. v10}, Landroid/widget/AutoCompleteTextView$DropDownListView;->measureHeightOfChildren(IIIII)I

    move-result v5

    add-int v5, v5, v27

    goto :goto_1ba
.end method

.method private getDropDownAnchorView()Landroid/view/View;
    .registers 3

    .prologue
    .line 1090
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorView:Landroid/view/View;

    if-nez v0, :cond_15

    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    .line 1091
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getRootView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorView:Landroid/view/View;

    .line 1093
    :cond_15
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorView:Landroid/view/View;

    if-nez v0, :cond_1b

    move-object v0, p0

    :goto_1a
    return-object v0

    :cond_1b
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorView:Landroid/view/View;

    goto :goto_1a
.end method

.method private getHintView(Landroid/content/Context;)Landroid/view/View;
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 1353
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2c

    .line 1354
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Landroid/widget/AutoCompleteTextView;->mHintResource:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1356
    .local v0, hintView:Landroid/widget/TextView;
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1357
    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    move-object v1, v0

    .line 1360
    .end local v0           #hintView:Landroid/widget/TextView;
    :goto_2b
    return-object v1

    :cond_2c
    move-object v1, v3

    goto :goto_2b
.end method

.method private onClickImpl()V
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isInputMethodNotNeeded()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 214
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->ensureImeVisible()V

    .line 216
    :cond_11
    return-void
.end method

.method private performCompletion(Landroid/view/View;IJ)V
    .registers 12
    .parameter "selectedView"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 917
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 919
    if-gez p2, :cond_18

    .line 920
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    .line 924
    .local v6, selectedItem:Ljava/lang/Object;
    :goto_e
    if-nez v6, :cond_1f

    .line 925
    const-string v0, "AutoCompleteTextView"

    const-string v2, "performCompletion: no selected item"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    .end local v6           #selectedItem:Ljava/lang/Object;
    :cond_17
    :goto_17
    return-void

    .line 922
    :cond_18
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    .restart local v6       #selectedItem:Ljava/lang/Object;
    goto :goto_e

    .line 929
    :cond_1f
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 930
    invoke-virtual {p0, v6}, Landroid/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 931
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 933
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_4a

    .line 934
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    .line 936
    .local v1, list:Landroid/widget/AutoCompleteTextView$DropDownListView;
    if-eqz p1, :cond_36

    if-gez p2, :cond_42

    .line 937
    :cond_36
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object p1

    .line 938
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedItemPosition()I

    move-result p2

    .line 939
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedItemId()J

    move-result-wide p3

    .line 941
    :cond_42
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 945
    .end local v1           #list:Landroid/widget/AutoCompleteTextView$DropDownListView;
    .end local v6           #selectedItem:Ljava/lang/Object;
    :cond_4a
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v0, :cond_17

    .line 946
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_17
.end method


# virtual methods
.method public clearListSelection()V
    .registers 3

    .prologue
    .line 826
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    .line 827
    .local v0, list:Landroid/widget/AutoCompleteTextView$DropDownListView;
    if-eqz v0, :cond_e

    .line 829
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->access$402(Landroid/widget/AutoCompleteTextView$DropDownListView;Z)Z

    .line 830
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView$DropDownListView;->hideSelector()V

    .line 831
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView$DropDownListView;->requestLayout()V

    .line 833
    :cond_e
    return-void
.end method

.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "selectedItem"

    .prologue
    .line 818
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public dismissDropDown()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1064
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1065
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_a

    .line 1066
    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 1068
    :cond_a
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1069
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1070
    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    .line 1071
    return-void
.end method

.method doAfterTextChanged()V
    .registers 3

    .prologue
    .line 773
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    if-eqz v0, :cond_5

    .line 798
    :cond_4
    :goto_4
    return-void

    .line 780
    :cond_5
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mOpenBefore:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 786
    :cond_f
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 787
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_4

    .line 788
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/AutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    goto :goto_4

    .line 793
    :cond_23
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 794
    :cond_2a
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_4

    .line 795
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method doBeforeTextChanged()V
    .registers 2

    .prologue
    .line 764
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    if-eqz v0, :cond_5

    .line 770
    :goto_4
    return-void

    .line 768
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mOpenBefore:Z

    goto :goto_4
.end method

.method public enoughToFilter()Z
    .registers 3

    .prologue
    .line 744
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    if-lt v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public ensureImeVisible()V
    .registers 3

    .prologue
    .line 1111
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1112
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 1113
    return-void
.end method

.method finishInit()V
    .registers 1

    .prologue
    .line 223
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->setSingleLine()V

    .line 224
    return-void
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 582
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getDropDownAnchor()I
    .registers 2

    .prologue
    .line 301
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    return v0
.end method

.method public getDropDownAnimationStyle()I
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getDropDownBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 328
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getDropDownChildCount()I
    .registers 2

    .prologue
    .line 872
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getChildCount()I

    move-result v0

    goto :goto_5
.end method

.method public getDropDownHeight()I
    .registers 2

    .prologue
    .line 276
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    return v0
.end method

.method public getDropDownHorizontalOffset()I
    .registers 2

    .prologue
    .line 426
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .registers 2

    .prologue
    .line 404
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownVerticalOffset:I

    return v0
.end method

.method public getDropDownWidth()I
    .registers 2

    .prologue
    .line 249
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    return v0
.end method

.method protected getFilter()Landroid/widget/Filter;
    .registers 2

    .prologue
    .line 1410
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 540
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 553
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getListSelection()I
    .registers 2

    .prologue
    .line 859
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    if-eqz v0, :cond_13

    .line 860
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    .line 862
    :goto_12
    return v0

    :cond_13
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 563
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .registers 2

    .prologue
    .line 573
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getThreshold()I
    .registers 2

    .prologue
    .line 485
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    return v0
.end method

.method public getValidator()Landroid/widget/AutoCompleteTextView$Validator;
    .registers 2

    .prologue
    .line 1384
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    return-object v0
.end method

.method public isDropDownAlwaysVisible()Z
    .registers 2

    .prologue
    .line 435
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isDropDownDismissedOnCompletion()Z
    .registers 2

    .prologue
    .line 461
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .registers 3

    .prologue
    .line 1119
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isPerformingCompletion()Z
    .registers 2

    .prologue
    .line 955
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    return v0
.end method

.method public isPopupShowing()Z
    .registers 2

    .prologue
    .line 806
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 1051
    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    .line 1052
    return-void
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .registers 8
    .parameter "completion"

    .prologue
    .line 901
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 902
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 903
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 904
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 906
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_27

    .line 907
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    .line 910
    .local v1, list:Landroid/widget/AutoCompleteTextView$DropDownListView;
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getPosition()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getId()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 914
    .end local v1           #list:Landroid/widget/AutoCompleteTextView$DropDownListView;
    :cond_27
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 1056
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1057
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    .line 1058
    return-void
.end method

.method public onFilterComplete(I)V
    .registers 4
    .parameter "count"

    .prologue
    .line 1013
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getWindowVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    .line 1029
    :cond_8
    :goto_8
    return-void

    .line 1022
    :cond_9
    if-gtz p1, :cond_f

    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-eqz v0, :cond_25

    :cond_f
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1023
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1024
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_8

    .line 1026
    :cond_25
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v0, :cond_8

    .line 1027
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_8
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1042
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1043
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performValidation()V

    .line 1044
    if-nez p1, :cond_f

    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v0, :cond_f

    .line 1045
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1047
    :cond_f
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 13
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v9, 0x14

    const/16 v6, 0x13

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 653
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 659
    const/16 v5, 0x3e

    if-eq p1, v5, :cond_73

    iget-object v5, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedItemPosition()I

    move-result v5

    if-gez v5, :cond_20

    const/16 v5, 0x42

    if-eq p1, v5, :cond_73

    const/16 v5, 0x17

    if-eq p1, v5, :cond_73

    .line 663
    :cond_20
    iget-object v5, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedItemPosition()I

    move-result v3

    .line 665
    .local v3, curIndex:I
    iget-object v5, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v5

    if-nez v5, :cond_53

    move v1, v7

    .line 666
    .local v1, below:Z
    :goto_2f
    if-eqz v1, :cond_35

    if-ne p1, v6, :cond_35

    if-lez v3, :cond_46

    :cond_35
    if-nez v1, :cond_55

    if-ne p1, v9, :cond_55

    iget-object v5, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    sub-int/2addr v5, v7

    if-lt v3, v5, :cond_55

    .line 671
    :cond_46
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->clearListSelection()V

    .line 672
    iget-object v5, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 673
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    move v5, v7

    .line 732
    .end local v1           #below:Z
    .end local v3           #curIndex:I
    :goto_52
    return v5

    .restart local v3       #curIndex:I
    :cond_53
    move v1, v8

    .line 665
    goto :goto_2f

    .line 678
    .restart local v1       #below:Z
    :cond_55
    iget-object v5, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-static {v5, v8}, Landroid/widget/AutoCompleteTextView$DropDownListView;->access$402(Landroid/widget/AutoCompleteTextView$DropDownListView;Z)Z

    .line 681
    iget-object v5, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v5, p1, p2}, Landroid/widget/AutoCompleteTextView$DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 684
    .local v2, consumed:Z
    if-eqz v2, :cond_8e

    .line 687
    iget-object v5, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 692
    iget-object v5, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView$DropDownListView;->requestFocusFromTouch()Z

    .line 693
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 695
    sparse-switch p1, :sswitch_data_b4

    .line 724
    .end local v1           #below:Z
    .end local v2           #consumed:Z
    .end local v3           #curIndex:I
    :cond_73
    :goto_73
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    .line 725
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    .line 726
    .local v4, handled:Z
    iput v8, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    .line 728
    if-eqz v4, :cond_8a

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v5

    if-eqz v5, :cond_8a

    iget-object v5, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    if-eqz v5, :cond_8a

    .line 729
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->clearListSelection()V

    :cond_8a
    move v5, v4

    .line 732
    goto :goto_52

    .end local v4           #handled:Z
    .restart local v1       #below:Z
    .restart local v2       #consumed:Z
    .restart local v3       #curIndex:I
    :sswitch_8c
    move v5, v7

    .line 702
    goto :goto_52

    .line 705
    :cond_8e
    if-eqz v1, :cond_a3

    if-ne p1, v9, :cond_a3

    .line 708
    iget-object v5, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 709
    .local v0, adapter:Landroid/widget/Adapter;
    if-eqz v0, :cond_73

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    sub-int/2addr v5, v7

    if-ne v3, v5, :cond_73

    move v5, v7

    .line 710
    goto :goto_52

    .line 712
    .end local v0           #adapter:Landroid/widget/Adapter;
    :cond_a3
    if-nez v1, :cond_73

    if-ne p1, v6, :cond_73

    if-nez v3, :cond_73

    move v5, v7

    .line 713
    goto :goto_52

    .line 718
    .end local v1           #below:Z
    .end local v2           #consumed:Z
    .end local v3           #curIndex:I
    :cond_ab
    packed-switch p1, :pswitch_data_c6

    goto :goto_73

    .line 720
    :pswitch_af
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performValidation()V

    goto :goto_73

    .line 695
    nop

    :sswitch_data_b4
    .sparse-switch
        0x13 -> :sswitch_8c
        0x14 -> :sswitch_8c
        0x17 -> :sswitch_8c
        0x42 -> :sswitch_8c
    .end sparse-switch

    .line 718
    :pswitch_data_c6
    .packed-switch 0x14
        :pswitch_af
    .end packed-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 620
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 623
    const/4 v0, 0x4

    if-ne p1, v0, :cond_12

    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v0, :cond_12

    .line 624
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 625
    const/4 v0, 0x1

    .line 628
    :goto_11
    return v0

    :cond_12
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 633
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedItemPosition()I

    move-result v1

    if-ltz v1, :cond_19

    .line 634
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/AutoCompleteTextView$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 635
    .local v0, consumed:Z
    if-eqz v0, :cond_19

    .line 636
    sparse-switch p1, :sswitch_data_24

    .line 647
    .end local v0           #consumed:Z
    :cond_19
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_1d
    return v1

    .line 642
    .restart local v0       #consumed:Z
    :sswitch_1e
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performCompletion()V

    .line 643
    const/4 v1, 0x1

    goto :goto_1d

    .line 636
    nop

    :sswitch_data_24
    .sparse-switch
        0x17 -> :sswitch_1e
        0x42 -> :sswitch_1e
    .end sparse-switch
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3
    .parameter "hasWindowFocus"

    .prologue
    .line 1033
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    .line 1034
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performValidation()V

    .line 1035
    if-nez p1, :cond_f

    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v0, :cond_f

    .line 1036
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1038
    :cond_f
    return-void
.end method

.method public performCompletion()V
    .registers 5

    .prologue
    .line 896
    const/4 v0, 0x0

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/AutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    .line 897
    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .registers 4
    .parameter "text"
    .parameter "keyCode"

    .prologue
    .line 887
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 888
    return-void
.end method

.method public performValidation()V
    .registers 3

    .prologue
    .line 1395
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-nez v1, :cond_5

    .line 1402
    :cond_4
    :goto_4
    return-void

    .line 1397
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1399
    .local v0, text:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v1, v0}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1400
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v1, v0}, Landroid/widget/AutoCompleteTextView$Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 1002
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->clearComposingText()V

    .line 1004
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1006
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1007
    .local v0, spannable:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1008
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 605
    .local p1, adapter:Landroid/widget/ListAdapter;,"TT;"
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    .line 606
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1c

    .line 608
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    .line 613
    :goto_10
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    if-eqz v0, :cond_1b

    .line 614
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 616
    :cond_1b
    return-void

    .line 610
    :cond_1c
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    goto :goto_10
.end method

.method public setCompletionHint(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "hint"

    .prologue
    .line 236
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    .line 237
    return-void
.end method

.method public setDropDownAlwaysVisible(Z)V
    .registers 2
    .parameter "dropDownAlwaysVisible"

    .prologue
    .line 452
    iput-boolean p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    .line 453
    return-void
.end method

.method public setDropDownAnchor(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 314
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorView:Landroid/view/View;

    .line 316
    return-void
.end method

.method public setDropDownAnimationStyle(I)V
    .registers 3
    .parameter "animationStyle"

    .prologue
    .line 370
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 371
    return-void
.end method

.method public setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "d"

    .prologue
    .line 341
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 342
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .registers 4
    .parameter "id"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 355
    return-void
.end method

.method public setDropDownDismissedOnCompletion(Z)V
    .registers 2
    .parameter "dropDownDismissedOnCompletion"

    .prologue
    .line 473
    iput-boolean p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    .line 474
    return-void
.end method

.method public setDropDownHeight(I)V
    .registers 2
    .parameter "height"

    .prologue
    .line 290
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    .line 291
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .registers 2
    .parameter "offset"

    .prologue
    .line 415
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHorizontalOffset:I

    .line 416
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .registers 2
    .parameter "offset"

    .prologue
    .line 393
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownVerticalOffset:I

    .line 394
    return-void
.end method

.method public setDropDownWidth(I)V
    .registers 2
    .parameter "width"

    .prologue
    .line 262
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    .line 263
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .registers 2
    .parameter "forceIgnoreOutsideTouch"

    .prologue
    .line 1212
    iput-boolean p1, p0, Landroid/widget/AutoCompleteTextView;->mForceIgnoreOutsideTouch:Z

    .line 1213
    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 9
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1075
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setFrame(IIII)Z

    move-result v0

    .line 1077
    .local v0, result:Z
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1078
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    sub-int v2, p3, p1

    const/4 v3, -0x1

    invoke-virtual {v1, p0, v2, v3}, Landroid/widget/PopupWindow;->update(Landroid/view/View;II)V

    .line 1081
    :cond_14
    return v0
.end method

.method public setListSelection(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 841
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    if-eqz v0, :cond_17

    .line 842
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->access$402(Landroid/widget/AutoCompleteTextView$DropDownListView;Z)Z

    .line 843
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setSelection(I)V

    .line 846
    :cond_17
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 204
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-static {v0, p1}, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;->access$302(Landroid/widget/AutoCompleteTextView$PassThroughClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    .line 205
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 517
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 518
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 527
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 528
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .registers 4
    .parameter "text"
    .parameter "filter"

    .prologue
    .line 967
    if-eqz p2, :cond_6

    .line 968
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 974
    :goto_5
    return-void

    .line 970
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 971
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 972
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    goto :goto_5
.end method

.method public setTextKeepState(Ljava/lang/CharSequence;Z)V
    .registers 4
    .parameter "text"
    .parameter "filter"

    .prologue
    .line 985
    if-eqz p2, :cond_6

    .line 986
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 992
    :goto_5
    return-void

    .line 988
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 989
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 990
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    goto :goto_5
.end method

.method public setThreshold(I)V
    .registers 2
    .parameter "threshold"

    .prologue
    .line 503
    if-gtz p1, :cond_3

    .line 504
    const/4 p1, 0x1

    .line 507
    :cond_3
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    .line 508
    return-void
.end method

.method public setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V
    .registers 2
    .parameter "validator"

    .prologue
    .line 1373
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    .line 1374
    return-void
.end method

.method public showDropDown()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v3, -0x2

    const/4 v2, 0x0

    const/4 v8, -0x1

    .line 1126
    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->buildDropDown()I

    move-result v6

    .line 1128
    .local v6, height:I
    const/4 v4, 0x0

    .line 1129
    .local v4, widthSpec:I
    const/4 v5, 0x0

    .line 1131
    .local v5, heightSpec:I
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isInputMethodNotNeeded()Z

    move-result v7

    .line 1133
    .local v7, noInputMethod:Z
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 1134
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    if-ne v0, v8, :cond_46

    .line 1137
    const/4 v4, -0x1

    .line 1144
    :goto_1b
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    if-ne v0, v8, :cond_67

    .line 1147
    if-eqz v7, :cond_56

    move v5, v6

    .line 1148
    :goto_22
    if-eqz v7, :cond_5a

    .line 1149
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    if-ne v1, v8, :cond_58

    move v1, v8

    :goto_2b
    invoke-virtual {v0, v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 1164
    :goto_2e
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Landroid/widget/AutoCompleteTextView;->mForceIgnoreOutsideTouch:Z

    if-eqz v1, :cond_70

    move v1, v2

    :goto_35
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1166
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHorizontalOffset:I

    iget v3, p0, Landroid/widget/AutoCompleteTextView;->mDropDownVerticalOffset:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 1202
    :goto_45
    return-void

    .line 1138
    :cond_46
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    if-ne v0, v3, :cond_53

    .line 1139
    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_1b

    .line 1141
    :cond_53
    iget v4, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    goto :goto_1b

    :cond_56
    move v5, v8

    .line 1147
    goto :goto_22

    :cond_58
    move v1, v2

    .line 1149
    goto :goto_2b

    .line 1153
    :cond_5a
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    if-ne v1, v8, :cond_65

    move v1, v8

    :goto_61
    invoke-virtual {v0, v1, v8}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    goto :goto_2e

    :cond_65
    move v1, v2

    goto :goto_61

    .line 1158
    :cond_67
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    if-ne v0, v3, :cond_6d

    .line 1159
    move v5, v6

    goto :goto_2e

    .line 1161
    :cond_6d
    iget v5, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    goto :goto_2e

    .line 1164
    :cond_70
    iget-boolean v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v1, :cond_76

    move v1, v9

    goto :goto_35

    :cond_76
    move v1, v2

    goto :goto_35

    .line 1169
    :cond_78
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    if-ne v0, v8, :cond_bc

    .line 1170
    const/4 v4, -0x1

    .line 1179
    :goto_7d
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    if-ne v0, v8, :cond_d6

    .line 1180
    const/4 v5, -0x1

    .line 1189
    :goto_82
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4, v5}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 1190
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v9}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1194
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Landroid/widget/AutoCompleteTextView;->mForceIgnoreOutsideTouch:Z

    if-eqz v1, :cond_e8

    move v1, v2

    :goto_93
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1195
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/widget/AutoCompleteTextView$PopupTouchIntercepter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/AutoCompleteTextView$PopupTouchIntercepter;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 1196
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHorizontalOffset:I

    iget v3, p0, Landroid/widget/AutoCompleteTextView;->mDropDownVerticalOffset:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1198
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v0, v8}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setSelection(I)V

    .line 1199
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->clearListSelection()V

    .line 1200
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mHideSelector:Landroid/widget/AutoCompleteTextView$ListSelectorHider;

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_45

    .line 1172
    :cond_bc
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    if-ne v0, v3, :cond_ce

    .line 1173
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_7d

    .line 1175
    :cond_ce
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_7d

    .line 1182
    :cond_d6
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    if-ne v0, v3, :cond_e0

    .line 1183
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_82

    .line 1185
    :cond_e0
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_82

    .line 1194
    :cond_e8
    iget-boolean v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v1, :cond_ee

    move v1, v9

    goto :goto_93

    :cond_ee
    move v1, v2

    goto :goto_93
.end method

.method public showDropDownAfterLayout()V
    .registers 2

    .prologue
    .line 1102
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    .line 1103
    return-void
.end method
