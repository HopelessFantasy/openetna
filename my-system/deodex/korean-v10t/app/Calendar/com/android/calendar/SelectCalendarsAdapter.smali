.class public Lcom/android/calendar/SelectCalendarsAdapter;
.super Landroid/widget/CursorAdapter;
.source "SelectCalendarsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/SelectCalendarsAdapter$1;,
        Lcom/android/calendar/SelectCalendarsAdapter$CheckBoxListener;
    }
.end annotation


# static fields
.field private static final CHECKED:Ljava/lang/Boolean; = null

.field private static final CLEAR_ALPHA_MASK:I = 0xffffff

.field private static final CORNERS:[F = null

.field private static final HIGH_ALPHA:I = -0x1000000

.field private static final LOW_ALPHA:I = -0x6a000000

.field private static final MED_ALPHA:I = -0x4c000000

.field private static final TAG:Ljava/lang/String; = "Calendar"

.field private static final UNCHECKED:Ljava/lang/Boolean;


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsChecked:[Ljava/lang/Boolean;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/calendar/SelectCalendarsAdapter;->CORNERS:[F

    .line 53
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/SelectCalendarsAdapter;->CHECKED:Ljava/lang/Boolean;

    .line 54
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/SelectCalendarsAdapter;->UNCHECKED:Ljava/lang/Boolean;

    return-void

    .line 45
    :array_18
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 4
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 51
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mValues:Landroid/content/ContentValues;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mIsChecked:[Ljava/lang/Boolean;

    .line 81
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mResolver:Landroid/content/ContentResolver;

    .line 83
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/SelectCalendarsAdapter;->updateIsCheckedArray(I)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/SelectCalendarsAdapter;)Landroid/content/ContentValues;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/SelectCalendarsAdapter;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/SelectCalendarsAdapter;)[Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mIsChecked:[Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Boolean;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/calendar/SelectCalendarsAdapter;->CHECKED:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/Boolean;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/calendar/SelectCalendarsAdapter;->UNCHECKED:Ljava/lang/Boolean;

    return-object v0
.end method

.method private getColorChip(I)Landroid/graphics/drawable/Drawable;
    .registers 8
    .parameter "color"

    .prologue
    .line 142
    const v5, 0xffffff

    and-int/2addr p1, v5

    .line 143
    const/high16 v5, -0x100

    or-int v4, p1, v5

    .line 144
    .local v4, startColor:I
    const/high16 v5, -0x4c00

    or-int v3, p1, v5

    .line 145
    .local v3, middleColor:I
    const/high16 v5, -0x6a00

    or-int v2, p1, v5

    .line 146
    .local v2, endColor:I
    const/4 v5, 0x3

    new-array v0, v5, [I

    const/4 v5, 0x0

    aput v4, v0, v5

    const/4 v5, 0x1

    aput v3, v0, v5

    const/4 v5, 0x2

    aput v2, v0, v5

    .line 147
    .local v0, colors:[I
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v5, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 148
    .local v1, d:Landroid/graphics/drawable/GradientDrawable;
    sget-object v5, Lcom/android/calendar/SelectCalendarsAdapter;->CORNERS:[F

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 149
    return-object v1
.end method

.method private static setText(Landroid/view/View;ILjava/lang/String;)V
    .registers 5
    .parameter "view"
    .parameter "id"
    .parameter "text"

    .prologue
    .line 123
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 128
    :goto_6
    return-void

    .line 126
    :cond_7
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 127
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method

.method private updateIsCheckedArray(I)V
    .registers 3
    .parameter "cursorCount"

    .prologue
    .line 76
    new-array v0, p1, [Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mIsChecked:[Ljava/lang/Boolean;

    .line 77
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 20
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 93
    const-string v3, "_id"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 94
    .local v13, idColumn:I
    const-string v3, "displayName"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 95
    .local v14, nameColumn:I
    const-string v3, "selected"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 96
    .local v15, selectedColumn:I
    const-string v3, "color"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 97
    .local v11, colorColumn:I
    const v3, 0x7f0c0013

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p3

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/calendar/SelectCalendarsAdapter;->getColorChip(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    const v3, 0x7f0c0015

    move-object/from16 v0, p3

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move v1, v3

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/calendar/SelectCalendarsAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 99
    const v3, 0x7f0c0014

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    .line 100
    .local v9, box:Landroid/widget/CheckBox;
    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 103
    .local v5, id:J
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 104
    .local v12, cursorCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/SelectCalendarsAdapter;->mIsChecked:[Ljava/lang/Boolean;

    move-object v3, v0

    array-length v3, v3

    if-eq v12, v3, :cond_75

    .line 105
    move-object/from16 v0, p0

    move v1, v12

    invoke-direct {v0, v1}, Lcom/android/calendar/SelectCalendarsAdapter;->updateIsCheckedArray(I)V

    .line 110
    :cond_75
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    .line 111
    .local v7, position:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/SelectCalendarsAdapter;->mIsChecked:[Ljava/lang/Boolean;

    move-object v3, v0

    aget-object v3, v3, v7

    if-nez v3, :cond_a3

    .line 112
    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_a0

    const/4 v3, 0x1

    move v10, v3

    .line 117
    .local v10, checked:Z
    :goto_8d
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 118
    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 119
    new-instance v3, Lcom/android/calendar/SelectCalendarsAdapter$CheckBoxListener;

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/calendar/SelectCalendarsAdapter$CheckBoxListener;-><init>(Lcom/android/calendar/SelectCalendarsAdapter;JILcom/android/calendar/SelectCalendarsAdapter$1;)V

    invoke-virtual {v9, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 120
    return-void

    .line 112
    .end local v10           #checked:Z
    :cond_a0
    const/4 v3, 0x0

    move v10, v3

    goto :goto_8d

    .line 114
    :cond_a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/SelectCalendarsAdapter;->mIsChecked:[Ljava/lang/Boolean;

    move-object v3, v0

    aget-object v3, v3, v7

    sget-object v4, Lcom/android/calendar/SelectCalendarsAdapter;->CHECKED:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_b1

    const/4 v3, 0x1

    move v10, v3

    .restart local v10       #checked:Z
    :goto_b0
    goto :goto_8d

    .end local v10           #checked:Z
    :cond_b1
    const/4 v3, 0x0

    move v10, v3

    goto :goto_b0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
