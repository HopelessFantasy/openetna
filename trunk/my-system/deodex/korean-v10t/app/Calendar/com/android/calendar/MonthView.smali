.class public Lcom/android/calendar/MonthView;
.super Landroid/view/View;
.source "MonthView.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/MonthView$DismissPopup;,
        Lcom/android/calendar/MonthView$ContextMenuHandler;
    }
.end annotation


# static fields
.field private static final BUSYBIT_RIGHT_MARGIN:I = 0x3

.field private static final BUSYBIT_TOP_BOTTOM_MARGIN:I = 0x7

.field private static final BUSYBIT_WIDTH:I = 0xa

.field private static final BUSY_SLOT_MASK:I = 0xf

.field private static final DEBUG_BUSYBITS:Z = false

.field private static final HORIZONTAL_FLING_THRESHOLD:I = 0x32

.field private static final HOURS_PER_BUSY_SLOT:I = 0x4

.field private static final HOUR_GAP:F = 0.5f

.field private static final INTERVALS_PER_BUSY_SLOT:I = 0x4

.field private static final MODULO_SHIFT:I = 0x10

.field private static final MONTH_DAY_GAP:I = 0x1

.field private static final MONTH_DAY_TEXT_SIZE:I = 0x14

.field private static final POPUP_DISMISS_DELAY:I = 0xbb8

.field private static final POPUP_HEIGHT:I = 0x64

.field private static final PROFILE_LOAD_TIME:Z = false

.field private static final SELECTION_HIDDEN:I = 0x0

.field private static final SELECTION_LONGPRESS:I = 0x3

.field private static final SELECTION_PRESSED:I = 0x1

.field private static final SELECTION_SELECTED:I = 0x2

.field private static final SLOTS_PER_DAY:I = 0x6

.field private static final WEEK_BANNER_HEIGHT:I = 0x11

.field private static final WEEK_GAP:I = 0x0

.field private static final WEEK_TEXT_PADDING:I = 0x3

.field private static final WEEK_TEXT_SIZE:I = 0xf


# instance fields
.field private mAllDayCounts:[I

.field private mAnimating:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapRect:Landroid/graphics/Rect;

.field private mBorder:I

.field private mBoxLongPressed:Landroid/graphics/drawable/Drawable;

.field private mBoxPressed:Landroid/graphics/drawable/Drawable;

.field private mBoxSelected:Landroid/graphics/drawable/Drawable;

.field private mBusyBits:[[B

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCellHeight:I

.field private mCellWidth:I

.field private mContextMenuHandler:Lcom/android/calendar/MonthView$ContextMenuHandler;

.field private mCursor:Landroid/util/DayOfMonthCursor;

.field private mDayBackground:Landroid/graphics/drawable/Drawable;

.field private mDayBitmapCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mDetailedView:Ljava/lang/String;

.field private mDismissPopup:Lcom/android/calendar/MonthView$DismissPopup;

.field private mDnaBottom:Landroid/graphics/drawable/Drawable;

.field private mDnaEmpty:Landroid/graphics/drawable/Drawable;

.field private mDnaMiddle:Landroid/graphics/drawable/Drawable;

.field private mDnaTop:Landroid/graphics/drawable/Drawable;

.field private mEventBitmapCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventGeometry:Lcom/android/calendar/EventGeometry;

.field private final mEventLoader:Lcom/android/calendar/EventLoader;

.field private mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstJulianDay:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLaunchDayView:Z

.field private mMonthDayNumberColor:I

.field private mMonthOtherMonthBannerColor:I

.field private mMonthOtherMonthColor:I

.field private mMonthOtherMonthDayNumberColor:I

.field private mMonthTodayNumberColor:I

.field private mMonthWeekBannerColor:I

.field private mNavigator:Lcom/android/calendar/Navigator;

.field private mOtherViewCalendar:Landroid/text/format/Time;

.field private mParentActivity:Lcom/android/calendar/MonthActivity;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPopupView:Landroid/view/View;

.field private mPreviousPopupHeight:I

.field private mRawBusyBits:[I

.field private mRect:Landroid/graphics/Rect;

.field private mRedrawScreen:Z

.field private mResources:Landroid/content/res/Resources;

.field private mSavedTime:Landroid/text/format/Time;

.field private mSelectionMode:I

.field private mShowToast:Z

.field private mShowWeekNumbers:Z

.field private mTempTime:Landroid/text/format/Time;

.field private mToday:Landroid/text/format/Time;

.field private mTodayBackground:Landroid/graphics/drawable/Drawable;

.field private mViewCalendar:Landroid/text/format/Time;


# direct methods
.method public constructor <init>(Lcom/android/calendar/MonthActivity;Lcom/android/calendar/Navigator;)V
    .registers 7
    .parameter "activity"
    .parameter "navigator"

    .prologue
    const/16 v3, 0x1f

    const/4 v2, 0x0

    .line 198
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 83
    sget-object v0, Lcom/android/calendar/CalendarPreferenceActivity;->DEFAULT_DETAILED_VIEW:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mDetailedView:Ljava/lang/String;

    .line 87
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;

    .line 90
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    .line 94
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    .line 113
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mRect:Landroid/graphics/Rect;

    .line 129
    const/4 v0, 0x6

    filled-new-array {v3, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mBusyBits:[[B

    .line 132
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mRawBusyBits:[I

    .line 133
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mAllDayCounts:[I

    .line 140
    new-instance v0, Lcom/android/calendar/MonthView$DismissPopup;

    invoke-direct {v0, p0}, Lcom/android/calendar/MonthView$DismissPopup;-><init>(Lcom/android/calendar/MonthView;)V

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mDismissPopup:Lcom/android/calendar/MonthView$DismissPopup;

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    .line 146
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    .line 150
    iput-boolean v2, p0, Lcom/android/calendar/MonthView;->mShowWeekNumbers:Z

    .line 151
    iput-boolean v2, p0, Lcom/android/calendar/MonthView;->mShowToast:Z

    .line 159
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mEventBitmapCache:Landroid/util/SparseArray;

    .line 160
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mDayBitmapCache:Landroid/util/SparseArray;

    .line 162
    new-instance v0, Lcom/android/calendar/MonthView$ContextMenuHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/MonthView$ContextMenuHandler;-><init>(Lcom/android/calendar/MonthView;Lcom/android/calendar/MonthView$1;)V

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mContextMenuHandler:Lcom/android/calendar/MonthView$ContextMenuHandler;

    .line 175
    iput v2, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mEvents:Ljava/util/ArrayList;

    .line 199
    iget-object v0, p1, Lcom/android/calendar/MonthActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mEventLoader:Lcom/android/calendar/EventLoader;

    .line 200
    iput-object p2, p0, Lcom/android/calendar/MonthView;->mNavigator:Lcom/android/calendar/Navigator;

    .line 201
    new-instance v0, Lcom/android/calendar/EventGeometry;

    invoke-direct {v0}, Lcom/android/calendar/EventGeometry;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    .line 202
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventGeometry;->setMinEventHeight(F)V

    .line 203
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventGeometry;->setHourGap(F)V

    .line 204
    invoke-direct {p0, p1}, Lcom/android/calendar/MonthView;->init(Lcom/android/calendar/MonthActivity;)V

    .line 205
    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/MonthView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/calendar/MonthView;->mLaunchDayView:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/calendar/MonthView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/calendar/MonthView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/calendar/MonthView;->mLaunchDayView:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/calendar/MonthView;II)J
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/MonthView;->getSelectedMillisFor(II)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/calendar/MonthView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mDetailedView:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/calendar/MonthView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/calendar/MonthView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/calendar/MonthView;->convertBusyBits()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/calendar/MonthView;)Landroid/widget/PopupWindow;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/MonthView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/calendar/MonthView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/MonthView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/calendar/MonthView;->mCellHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/calendar/MonthView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/calendar/MonthView;->mBorder:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/calendar/MonthView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/calendar/MonthView;->mCellWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/calendar/MonthView;)Landroid/util/DayOfMonthCursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    return-object v0
.end method

.method private clearBitmapCache()V
    .registers 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mEventBitmapCache:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/android/calendar/MonthView;->recycleAndClearBitmapCache(Landroid/util/SparseArray;)V

    .line 606
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mDayBitmapCache:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/android/calendar/MonthView;->recycleAndClearBitmapCache(Landroid/util/SparseArray;)V

    .line 607
    return-void
.end method

.method private convertBusyBits()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 829
    const/4 v1, 0x0

    .local v1, day:I
    :goto_3
    const/16 v4, 0x1f

    if-ge v1, v4, :cond_3a

    .line 830
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mRawBusyBits:[I

    aget v0, v4, v1

    .line 831
    .local v0, bits:I
    const/4 v2, 0x0

    .local v2, slot:I
    :goto_c
    const/4 v4, 0x6

    if-ge v2, v4, :cond_25

    .line 832
    and-int/lit8 v3, v0, 0xf

    .line 833
    .local v3, val:I
    ushr-int/lit8 v0, v0, 0x4

    .line 834
    if-nez v3, :cond_1e

    .line 835
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mBusyBits:[[B

    aget-object v4, v4, v1

    aput-byte v6, v4, v2

    .line 831
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 837
    :cond_1e
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mBusyBits:[[B

    aget-object v4, v4, v1

    aput-byte v5, v4, v2

    goto :goto_1b

    .line 840
    .end local v3           #val:I
    :cond_25
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mAllDayCounts:[I

    aget v4, v4, v1

    if-lez v4, :cond_37

    .line 841
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mBusyBits:[[B

    aget-object v4, v4, v1

    aput-byte v5, v4, v6

    .line 842
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mBusyBits:[[B

    aget-object v4, v4, v1

    aput-byte v5, v4, v5

    .line 829
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 845
    .end local v0           #bits:I
    .end local v2           #slot:I
    :cond_3a
    return-void
.end method

.method private createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .registers 8
    .parameter "drawable"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 592
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {p2, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 595
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 596
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1, v3, v3, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 597
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 598
    return-object v0
.end method

.method private createEventBitmap([BLandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .registers 29
    .parameter "busyBits"
    .parameter "rect"

    .prologue
    .line 856
    const/4 v15, 0x0

    .line 857
    .local v15, left:I
    const/16 v18, 0xa

    .line 858
    .local v18, right:I
    const/16 v20, 0x0

    .line 859
    .local v20, top:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    const/16 v23, 0xe

    sub-int v6, v22, v23

    .line 860
    .local v6, bottom:I
    const/16 v22, 0x0

    sub-int v12, v6, v22

    .line 861
    .local v12, height:I
    const/16 v21, 0xa

    .line 863
    .local v21, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mDnaEmpty:Landroid/graphics/drawable/Drawable;

    move-object v9, v0

    .line 864
    .local v9, dnaEmpty:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mDnaTop:Landroid/graphics/drawable/Drawable;

    move-object v11, v0

    .line 865
    .local v11, dnaTop:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mDnaMiddle:Landroid/graphics/drawable/Drawable;

    move-object v10, v0

    .line 866
    .local v10, dnaMiddle:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mDnaBottom:Landroid/graphics/drawable/Drawable;

    move-object v8, v0

    .line 867
    .local v8, dnaBottom:Landroid/graphics/drawable/Drawable;
    move v0, v12

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40c0

    div-float v19, v22, v23

    .line 870
    .local v19, slotHeight:F
    const/16 v22, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v23

    move/from16 v0, v22

    move v1, v12

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 873
    .local v5, bitmap:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 874
    .local v7, canvas:Landroid/graphics/Canvas;
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xa

    move-object v0, v9

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 875
    invoke-virtual {v9, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 878
    const/16 v22, 0x0

    aget-byte v22, p1, v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_91

    .line 879
    const/16 v22, 0x0

    add-float v16, v22, v19

    .line 880
    .local v16, rectBottom:F
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xa

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v25, v0

    move-object v0, v11

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 881
    invoke-virtual {v11, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 885
    .end local v16           #rectBottom:F
    :cond_91
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    sub-int v14, v22, v23

    .line 886
    .local v14, lastIndex:I
    aget-byte v22, p1, v14

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c1

    .line 887
    move v0, v6

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v17, v22, v19

    .line 888
    .local v17, rectTop:F
    const/16 v22, 0x0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v23, v0

    const/16 v24, 0xa

    move-object v0, v8

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 889
    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 894
    .end local v17           #rectTop:F
    :cond_c1
    const/16 v22, 0x0

    add-float v17, v22, v19

    .line 895
    .restart local v17       #rectTop:F
    const/4 v13, 0x1

    .local v13, index:I
    :goto_c6
    if-ge v13, v14, :cond_f6

    .line 896
    add-float v16, v17, v19

    .line 897
    .restart local v16       #rectBottom:F
    aget-byte v22, p1, v13

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f1

    .line 898
    const/16 v22, 0x0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v23, v0

    const/16 v24, 0xa

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v25, v0

    move-object v0, v10

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 899
    invoke-virtual {v10, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 901
    :cond_f1
    move/from16 v17, v16

    .line 895
    add-int/lit8 v13, v13, 0x1

    goto :goto_c6

    .line 903
    .end local v16           #rectBottom:F
    :cond_f6
    return-object v5
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .registers 15
    .parameter "canvas"

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_47

    const/4 v0, 0x1

    move v8, v0

    .line 518
    .local v8, isLandscape:Z
    :goto_f
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 519
    .local v6, p:Landroid/graphics/Paint;
    iget-object v7, p0, Lcom/android/calendar/MonthView;->mRect:Landroid/graphics/Rect;

    .line 520
    .local v7, r:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/DayOfMonthCursor;->getColumnOf(I)I

    move-result v10

    .line 523
    .local v10, columnDay1:I
    iget v0, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    sub-int v1, v0, v10

    .line 525
    .local v1, day:I
    const/4 v2, 0x0

    .line 526
    .local v2, weekNum:I
    const/4 v9, 0x0

    .line 527
    .local v9, calendar:Ljava/util/Calendar;
    iget-boolean v0, p0, Lcom/android/calendar/MonthView;->mShowWeekNumbers:Z

    if-eqz v0, :cond_35

    .line 528
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 529
    if-nez v10, :cond_4a

    const/4 v0, 0x1

    move v12, v0

    .line 532
    .local v12, noPrevMonth:Z
    :goto_2f
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v12, v9}, Lcom/android/calendar/MonthView;->getWeekOfYear(IIZLjava/util/Calendar;)I

    .end local v2           #weekNum:I
    move-result v2

    .line 535
    .end local v12           #noPrevMonth:Z
    .restart local v2       #weekNum:I
    :cond_35
    const/4 v3, 0x0

    .local v3, row:I
    :goto_36
    const/4 v0, 0x6

    if-ge v3, v0, :cond_6e

    .line 536
    const/4 v4, 0x0

    .local v4, column:I
    :goto_3a
    const/4 v0, 0x7

    if-ge v4, v0, :cond_4d

    move-object v0, p0

    move-object v5, p1

    .line 537
    invoke-direct/range {v0 .. v8}, Lcom/android/calendar/MonthView;->drawBox(IIIILandroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Z)V

    .line 538
    add-int/lit8 v1, v1, 0x1

    .line 536
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 515
    .end local v1           #day:I
    .end local v2           #weekNum:I
    .end local v3           #row:I
    .end local v4           #column:I
    .end local v6           #p:Landroid/graphics/Paint;
    .end local v7           #r:Landroid/graphics/Rect;
    .end local v8           #isLandscape:Z
    .end local v9           #calendar:Ljava/util/Calendar;
    .end local v10           #columnDay1:I
    :cond_47
    const/4 v0, 0x0

    move v8, v0

    goto :goto_f

    .line 529
    .restart local v1       #day:I
    .restart local v2       #weekNum:I
    .restart local v6       #p:Landroid/graphics/Paint;
    .restart local v7       #r:Landroid/graphics/Rect;
    .restart local v8       #isLandscape:Z
    .restart local v9       #calendar:Ljava/util/Calendar;
    .restart local v10       #columnDay1:I
    :cond_4a
    const/4 v0, 0x0

    move v12, v0

    goto :goto_2f

    .line 541
    .restart local v3       #row:I
    .restart local v4       #column:I
    :cond_4d
    iget-boolean v0, p0, Lcom/android/calendar/MonthView;->mShowWeekNumbers:Z

    if-eqz v0, :cond_68

    .line 542
    add-int/lit8 v2, v2, 0x1

    .line 543
    const/16 v0, 0x35

    if-lt v2, v0, :cond_68

    .line 544
    iget v0, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    sub-int v0, v1, v0

    const/16 v2, 0x1f

    if-ge v0, v2, :cond_6b

    .end local v2           #weekNum:I
    const/4 v0, 0x1

    move v11, v0

    .line 545
    .local v11, inCurrentMonth:Z
    :goto_61
    add-int/lit8 v0, v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v11, v9}, Lcom/android/calendar/MonthView;->getWeekOfYear(IIZLjava/util/Calendar;)I

    move-result v2

    .line 535
    .end local v11           #inCurrentMonth:Z
    .restart local v2       #weekNum:I
    :cond_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 544
    .end local v2           #weekNum:I
    :cond_6b
    const/4 v0, 0x0

    move v11, v0

    goto :goto_61

    .line 550
    .end local v4           #column:I
    .restart local v2       #weekNum:I
    :cond_6e
    invoke-direct {p0, p1, v6}, Lcom/android/calendar/MonthView;->drawGrid(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 551
    return-void
.end method

.method private drawBox(IIIILandroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Z)V
    .registers 34
    .parameter "day"
    .parameter "weekNum"
    .parameter "row"
    .parameter "column"
    .parameter "canvas"
    .parameter "p"
    .parameter "r"
    .parameter "isLandscape"

    .prologue
    .line 656
    const/4 v9, 0x0

    .line 657
    .local v9, drawSelection:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_19

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/util/DayOfMonthCursor;->isSelected(II)Z

    move-result v9

    .line 661
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v19

    .line 662
    .local v19, withinCurrentMonth:Z
    const/4 v13, 0x0

    .line 663
    .local v13, isToday:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/util/DayOfMonthCursor;->getDayAt(II)I

    move-result v8

    .line 664
    .local v8, dayOfBox:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mToday:Landroid/text/format/Time;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v22, v0

    move v0, v8

    move/from16 v1, v22

    if-ne v0, v1, :cond_84

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/DayOfMonthCursor;->getYear()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mToday:Landroid/text/format/Time;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_84

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/DayOfMonthCursor;->getMonth()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mToday:Landroid/text/format/Time;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_84

    .line 666
    const/4 v13, 0x1

    .line 669
    :cond_84
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mCellHeight:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x0

    mul-int v22, v22, p3

    add-int/lit8 v21, v22, 0x0

    .line 670
    .local v21, y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mBorder:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mCellWidth:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    mul-int v23, v23, p4

    add-int v20, v22, v23

    .line 672
    .local v20, x:I
    move/from16 v0, v20

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 673
    move/from16 v0, v21

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 674
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mCellWidth:I

    move/from16 v22, v0

    add-int v22, v22, v20

    move/from16 v0, v22

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 675
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mCellHeight:I

    move/from16 v22, v0

    add-int v22, v22, v21

    move/from16 v0, v22

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 680
    if-nez p4, :cond_283

    .line 681
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 686
    :cond_d4
    :goto_d4
    const/16 v22, 0x5

    move/from16 v0, p3

    move/from16 v1, v22

    if-ne v0, v1, :cond_e6

    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/MonthView;->getMeasuredHeight()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 691
    :cond_e6
    if-nez v19, :cond_2a3

    .line 692
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/MonthView;->isFirstDayOfNextMonth(II)Z

    move-result v10

    .line 696
    .local v10, firstDayOfNextmonth:Z
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    const/16 v23, 0x1

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 697
    if-eqz p4, :cond_114

    .line 698
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    const/16 v23, 0x1

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 741
    .end local v10           #firstDayOfNextmonth:Z
    :cond_114
    :goto_114
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/MonthView;->mShowWeekNumbers:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1ee

    if-nez p4, :cond_1ee

    .line 743
    sget-object v22, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 744
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mMonthWeekBannerColor:I

    move/from16 v22, v0

    move-object/from16 v0, p6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 745
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v14, v0

    .line 746
    .local v14, right:I
    const/16 v22, 0xa

    sub-int v22, v14, v22

    const/16 v23, 0x3

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 747
    if-eqz p8, :cond_3bf

    .line 748
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v7, v0

    .line 749
    .local v7, bottom:I
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x11

    move/from16 v0, v22

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 750
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 751
    move-object/from16 v0, p5

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 752
    move v0, v7

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 753
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    const/16 v23, 0x1

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 762
    .end local v7           #bottom:I
    :goto_188
    move v0, v14

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 765
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mMonthOtherMonthBannerColor:I

    move/from16 v22, v0

    move-object/from16 v0, p6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 766
    const/16 v22, 0x1

    move-object/from16 v0, p6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 767
    const/16 v22, 0x0

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 768
    const/high16 v22, 0x4170

    move-object/from16 v0, p6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 769
    sget-object v22, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 771
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    add-int/lit8 v15, v22, 0x3

    .line 773
    .local v15, textX:I
    if-eqz p8, :cond_404

    .line 774
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x11

    const/16 v23, 0x3

    sub-int v16, v22, v23

    .line 779
    .local v16, textY:I
    :goto_1d4
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move v0, v15

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 783
    .end local v14           #right:I
    .end local v15           #textX:I
    .end local v16           #textY:I
    :cond_1ee
    sget-object v22, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 784
    const/16 v22, 0x1

    move-object/from16 v0, p6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 785
    const/16 v22, 0x0

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 786
    const/high16 v22, 0x41a0

    move-object/from16 v0, p6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 788
    if-nez v19, :cond_410

    .line 789
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mMonthOtherMonthDayNumberColor:I

    move/from16 v22, v0

    move-object/from16 v0, p6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 796
    :goto_221
    sget-object v22, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 797
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    const/16 v23, 0xa

    sub-int v22, v22, v23

    const/16 v23, 0x3

    sub-int v14, v22, v23

    .line 798
    .restart local v14       #right:I
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v23, v14, v23

    div-int/lit8 v23, v23, 0x2

    add-int v15, v22, v23

    .line 799
    .restart local v15       #textX:I
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    const/16 v23, 0x7

    sub-int v22, v22, v23

    const/16 v23, 0x2

    sub-int v16, v22, v23

    .line 800
    .restart local v16       #textY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/util/DayOfMonthCursor;->getDayAt(II)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move v0, v15

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 801
    return-void

    .line 682
    .end local v14           #right:I
    .end local v15           #textX:I
    .end local v16           #textY:I
    :cond_283
    const/16 v22, 0x6

    move/from16 v0, p4

    move/from16 v1, v22

    if-ne v0, v1, :cond_d4

    .line 683
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mBorder:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x2

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_d4

    .line 700
    :cond_2a3
    if-eqz v9, :cond_32b

    .line 701
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2e7

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mBoxSelected:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mBoxSelected:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 712
    :goto_2cd
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/MonthView;->drawEvents(ILandroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 713
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/MonthView;->mAnimating:Z

    move/from16 v22, v0

    if-nez v22, :cond_114

    .line 714
    invoke-direct/range {p0 .. p1}, Lcom/android/calendar/MonthView;->updateEventDetails(I)V

    goto/16 :goto_114

    .line 704
    :cond_2e7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_310

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mBoxPressed:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mBoxPressed:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2cd

    .line 708
    :cond_310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mBoxLongPressed:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mBoxLongPressed:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2cd

    .line 718
    :cond_32b
    if-eqz v13, :cond_34d

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mTodayBackground:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    .line 722
    .local v5, background:Landroid/graphics/drawable/Drawable;
    move-object v0, v5

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 723
    move-object v0, v5

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 737
    .end local v5           #background:Landroid/graphics/drawable/Drawable;
    :goto_33e
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/MonthView;->drawEvents(ILandroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_114

    .line 726
    :cond_34d
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v18, v22, v23

    .line 727
    .local v18, width:I
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v11, v22, v23

    .line 729
    .local v11, height:I
    shl-int/lit8 v22, v11, 0x10

    or-int v12, v22, v18

    .line 730
    .local v12, id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mDayBitmapCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 731
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-nez v6, :cond_39c

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mDayBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v18

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/MonthView;->createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mDayBitmapCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v12

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 735
    :cond_39c
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p5

    move-object v1, v6

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_33e

    .line 755
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v11           #height:I
    .end local v12           #id:I
    .end local v18           #width:I
    .restart local v14       #right:I
    :cond_3bf
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    .line 756
    .local v17, top:I
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    const/16 v23, 0x11

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 757
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 758
    move-object/from16 v0, p5

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 759
    move/from16 v0, v17

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 760
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    const/16 v23, 0x1

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_188

    .line 776
    .end local v17           #top:I
    .restart local v15       #textX:I
    :cond_404
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    const/16 v23, 0x3

    sub-int v16, v22, v23

    .restart local v16       #textY:I
    goto/16 :goto_1d4

    .line 790
    .end local v14           #right:I
    .end local v15           #textX:I
    .end local v16           #textY:I
    :cond_410
    if-nez v9, :cond_414

    if-nez v13, :cond_423

    .line 791
    :cond_414
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mMonthDayNumberColor:I

    move/from16 v22, v0

    move-object/from16 v0, p6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_221

    .line 793
    :cond_423
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mMonthTodayNumberColor:I

    move/from16 v22, v0

    move-object/from16 v0, p6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_221
.end method

.method private drawEvents(ILandroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 16
    .parameter "date"
    .parameter "canvas"
    .parameter "rect"
    .parameter "p"

    .prologue
    .line 908
    iget v9, p3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v8, v9, 0x7

    .line 909
    .local v8, top:I
    iget v9, p3, Landroid/graphics/Rect;->right:I

    const/4 v10, 0x3

    sub-int v7, v9, v10

    .line 910
    .local v7, right:I
    const/16 v9, 0xa

    sub-int v6, v7, v9

    .line 913
    .local v6, left:I
    iget v9, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    sub-int v3, p1, v9

    .line 914
    .local v3, day:I
    iget-object v9, p0, Lcom/android/calendar/MonthView;->mBusyBits:[[B

    aget-object v1, v9, v3

    .line 915
    .local v1, busyBits:[B
    array-length v9, v1

    const/4 v10, 0x1

    sub-int v5, v9, v10

    .line 918
    .local v5, lastIndex:I
    const/4 v2, 0x0

    .line 919
    .local v2, cacheIndex:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1b
    if-gt v4, v5, :cond_24

    aget-byte v9, v1, v4

    shl-int/2addr v9, v4

    or-int/2addr v2, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 920
    :cond_24
    iget-object v9, p0, Lcom/android/calendar/MonthView;->mEventBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 921
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_37

    .line 924
    invoke-direct {p0, v1, p3}, Lcom/android/calendar/MonthView;->createEventBitmap([BLandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 925
    iget-object v9, p0, Lcom/android/calendar/MonthView;->mEventBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v9, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 927
    :cond_37
    int-to-float v9, v6

    int-to-float v10, v8

    invoke-virtual {p2, v0, v9, v10, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 928
    return-void
.end method

.method private drawGrid(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 15
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 624
    iget v0, p0, Lcom/android/calendar/MonthView;->mMonthOtherMonthColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 625
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 627
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getMeasuredWidth()I

    move-result v9

    .line 628
    .local v9, width:I
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getMeasuredHeight()I

    move-result v7

    .line 630
    .local v7, height:I
    const/4 v8, 0x0

    .local v8, row:I
    :goto_12
    const/4 v0, 0x6

    if-ge v8, v0, :cond_2b

    .line 631
    iget v0, p0, Lcom/android/calendar/MonthView;->mCellHeight:I

    add-int/lit8 v0, v0, 0x0

    mul-int/2addr v0, v8

    add-int/lit8 v0, v0, 0x0

    const/4 v1, 0x1

    sub-int v11, v0, v1

    .line 632
    .local v11, y:I
    const/4 v1, 0x0

    int-to-float v2, v11

    int-to-float v3, v9

    int-to-float v4, v11

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 630
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    .line 634
    .end local v11           #y:I
    :cond_2b
    const/4 v6, 0x1

    .local v6, column:I
    :goto_2c
    const/4 v0, 0x7

    if-ge v6, v0, :cond_46

    .line 635
    iget v0, p0, Lcom/android/calendar/MonthView;->mBorder:I

    iget v1, p0, Lcom/android/calendar/MonthView;->mCellWidth:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, v6

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int v10, v0, v1

    .line 636
    .local v10, x:I
    int-to-float v1, v10

    const/4 v2, 0x0

    int-to-float v3, v10

    int-to-float v4, v7

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 634
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    .line 638
    .end local v10           #x:I
    :cond_46
    return-void
.end method

.method private drawingCalc(II)V
    .registers 7
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 1022
    sub-int v0, p2, v3

    div-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/android/calendar/MonthView;->mCellHeight:I

    .line 1023
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    iget v1, p0, Lcom/android/calendar/MonthView;->mCellHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x4148

    sub-float/2addr v1, v2

    const/high16 v2, 0x41c0

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventGeometry;->setHourHeight(F)V

    .line 1024
    const/4 v0, 0x6

    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/android/calendar/MonthView;->mCellWidth:I

    .line 1025
    iget v0, p0, Lcom/android/calendar/MonthView;->mCellWidth:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x6

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/calendar/MonthView;->mCellWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/calendar/MonthView;->mBorder:I

    .line 1027
    iget-boolean v0, p0, Lcom/android/calendar/MonthView;->mShowToast:Z

    if-eqz v0, :cond_44

    .line 1028
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1029
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x14

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1030
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1033
    :cond_44
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_60

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, p1, :cond_7e

    :cond_60
    if-lez p1, :cond_7e

    if-lez p2, :cond_7e

    .line 1038
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6d

    .line 1039
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1041
    :cond_6d
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    .line 1042
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mCanvas:Landroid/graphics/Canvas;

    .line 1045
    :cond_7e
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 1046
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1047
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 1048
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 1049
    return-void
.end method

.method private getSelectedMillisFor(II)J
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 563
    const/4 v4, 0x0

    sub-int v4, p2, v4

    iget v5, p0, Lcom/android/calendar/MonthView;->mCellHeight:I

    add-int/lit8 v5, v5, 0x0

    div-int v2, v4, v5

    .line 564
    .local v2, row:I
    iget v4, p0, Lcom/android/calendar/MonthView;->mBorder:I

    sub-int v4, p1, v4

    iget v5, p0, Lcom/android/calendar/MonthView;->mCellWidth:I

    add-int/lit8 v5, v5, 0x1

    div-int v1, v4, v5

    .line 565
    .local v1, column:I
    const/4 v4, 0x6

    if-le v1, v4, :cond_17

    .line 566
    const/4 v1, 0x6

    .line 569
    :cond_17
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    .line 570
    .local v0, c:Landroid/util/DayOfMonthCursor;
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    .line 571
    .local v3, time:Landroid/text/format/Time;
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 578
    mul-int/lit8 v4, v2, 0x7

    add-int/2addr v4, v1

    invoke-virtual {v0}, Landroid/util/DayOfMonthCursor;->getOffset()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/text/format/Time;->monthDay:I

    .line 579
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    return-wide v4
.end method

.method private getWeekOfYear(IIZLjava/util/Calendar;)I
    .registers 11
    .parameter "row"
    .parameter "column"
    .parameter "isWithinCurrentMonth"
    .parameter "calendar"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 942
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v3, p1, p2}, Landroid/util/DayOfMonthCursor;->getDayAt(II)I

    move-result v3

    invoke-virtual {p4, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 943
    if-eqz p3, :cond_26

    .line 944
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v2}, Landroid/util/DayOfMonthCursor;->getMonth()I

    move-result v2

    invoke-virtual {p4, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 945
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v2}, Landroid/util/DayOfMonthCursor;->getYear()I

    move-result v2

    invoke-virtual {p4, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 970
    :goto_20
    const/4 v2, 0x3

    invoke-virtual {p4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    return v2

    .line 947
    :cond_26
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v2}, Landroid/util/DayOfMonthCursor;->getMonth()I

    move-result v0

    .line 948
    .local v0, month:I
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v2}, Landroid/util/DayOfMonthCursor;->getYear()I

    move-result v1

    .line 949
    .local v1, year:I
    if-ge p1, v4, :cond_44

    .line 951
    if-nez v0, :cond_41

    .line 952
    add-int/lit8 v1, v1, -0x1

    .line 953
    const/16 v0, 0xb

    .line 966
    :goto_3a
    invoke-virtual {p4, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 967
    invoke-virtual {p4, v5, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_20

    .line 955
    :cond_41
    add-int/lit8 v0, v0, -0x1

    goto :goto_3a

    .line 959
    :cond_44
    const/16 v2, 0xb

    if-ne v0, v2, :cond_4c

    .line 960
    add-int/lit8 v1, v1, 0x1

    .line 961
    const/4 v0, 0x0

    goto :goto_3a

    .line 963
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a
.end method

.method private init(Lcom/android/calendar/MonthActivity;)V
    .registers 15
    .parameter "activity"

    .prologue
    .line 208
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/calendar/MonthView;->setFocusable(Z)V

    .line 209
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/calendar/MonthView;->setClickable(Z)V

    .line 210
    invoke-virtual {p0, p0}, Lcom/android/calendar/MonthView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 211
    iput-object p1, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    .line 212
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 214
    .local v4, now:J
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v8, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 215
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    const/4 v9, 0x1

    iput v9, v8, Landroid/text/format/Time;->monthDay:I

    .line 216
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 217
    .local v2, millis:J
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget-wide v8, v8, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    .line 218
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v8, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 220
    new-instance v8, Landroid/util/DayOfMonthCursor;

    iget-object v9, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->year:I

    iget-object v10, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->month:I

    iget-object v11, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget v11, v11, Landroid/text/format/Time;->monthDay:I

    iget-object v12, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v12}, Lcom/android/calendar/MonthActivity;->getStartDay()I

    move-result v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/util/DayOfMonthCursor;-><init>(IIII)V

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    .line 222
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mToday:Landroid/text/format/Time;

    .line 223
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mToday:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 225
    invoke-virtual {p1}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    .line 226
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f02001c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mBoxSelected:Landroid/graphics/drawable/Drawable;

    .line 227
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f02001b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mBoxPressed:Landroid/graphics/drawable/Drawable;

    .line 228
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f02001a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mBoxLongPressed:Landroid/graphics/drawable/Drawable;

    .line 230
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f020010

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mDnaEmpty:Landroid/graphics/drawable/Drawable;

    .line 231
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f02000d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mDnaTop:Landroid/graphics/drawable/Drawable;

    .line 232
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f02000e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mDnaMiddle:Landroid/graphics/drawable/Drawable;

    .line 233
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f02000f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mDnaBottom:Landroid/graphics/drawable/Drawable;

    .line 234
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f02001d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mTodayBackground:Landroid/graphics/drawable/Drawable;

    .line 235
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f020019

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mDayBackground:Landroid/graphics/drawable/Drawable;

    .line 238
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 239
    .local v6, res:Landroid/content/res/Resources;
    const v8, 0x7f070018

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mMonthOtherMonthColor:I

    .line 240
    const v8, 0x7f07001b

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mMonthWeekBannerColor:I

    .line 241
    const v8, 0x7f07001a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mMonthOtherMonthBannerColor:I

    .line 242
    const v8, 0x7f070019

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mMonthOtherMonthDayNumberColor:I

    .line 243
    const v8, 0x7f070016

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mMonthDayNumberColor:I

    .line 244
    const v8, 0x7f070017

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mMonthTodayNumberColor:I

    .line 246
    iget-boolean v8, p0, Lcom/android/calendar/MonthView;->mShowToast:Z

    if-eqz v8, :cond_151

    .line 248
    const-string v8, "layout_inflater"

    invoke-virtual {p1, v8}, Lcom/android/calendar/MonthActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 249
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f030012

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    .line 250
    new-instance v8, Landroid/widget/PopupWindow;

    invoke-direct {v8, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    .line 251
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    iget-object v9, p0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 253
    .local v0, dialogTheme:Landroid/content/res/Resources$Theme;
    const v8, 0x103000b

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 254
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const v10, 0x1010054

    aput v10, v8, v9

    invoke-virtual {v0, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 256
    .local v7, ta:Landroid/content/res/TypedArray;
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 260
    .end local v0           #dialogTheme:Landroid/content/res/Resources$Theme;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v7           #ta:Landroid/content/res/TypedArray;
    :cond_151
    new-instance v8, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/android/calendar/MonthView$1;

    invoke-direct {v10, p0}, Lcom/android/calendar/MonthView$1;-><init>(Lcom/android/calendar/MonthView;)V

    invoke-direct {v8, v9, v10}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 367
    return-void
.end method

.method private isFirstDayOfNextMonth(II)Z
    .registers 4
    .parameter "row"
    .parameter "column"

    .prologue
    .line 931
    if-nez p2, :cond_c

    .line 932
    const/4 p2, 0x6

    .line 933
    add-int/lit8 p1, p1, -0x1

    .line 937
    :goto_5
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v0, p1, p2}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    return v0

    .line 935
    :cond_c
    add-int/lit8 p2, p2, -0x1

    goto :goto_5
.end method

.method private recycleAndClearBitmapCache(Landroid/util/SparseArray;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 610
    .local p1, bitmapCache:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/graphics/Bitmap;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 611
    .local v1, size:I
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_13

    .line 612
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 611
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 614
    :cond_13
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 616
    return-void
.end method

.method private updateEventDetails(I)V
    .registers 28
    .parameter "date"

    .prologue
    .line 1052
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/MonthView;->mShowToast:Z

    move v5, v0

    if-nez v5, :cond_8

    .line 1208
    :goto_7
    return-void

    .line 1056
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/MonthView;->getHandler()Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mDismissPopup:Lcom/android/calendar/MonthView$DismissPopup;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mEvents:Ljava/util/ArrayList;

    move-object v13, v0

    .line 1058
    .local v13, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 1059
    .local v17, numEvents:I
    if-nez v17, :cond_28

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_7

    .line 1064
    :cond_28
    const/4 v12, 0x0

    .line 1065
    .local v12, eventIndex:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2a
    move v0, v15

    move/from16 v1, v17

    if-ge v0, v1, :cond_11f

    .line 1066
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/calendar/Event;

    .line 1068
    .local v11, event:Lcom/android/calendar/Event;
    iget v5, v11, Lcom/android/calendar/Event;->startDay:I

    move v0, v5

    move/from16 v1, p1

    if-gt v0, v1, :cond_43

    iget v5, v11, Lcom/android/calendar/Event;->endDay:I

    move v0, v5

    move/from16 v1, p1

    if-ge v0, v1, :cond_46

    .line 1065
    :cond_43
    :goto_43
    add-int/lit8 v15, v15, 0x1

    goto :goto_2a

    .line 1074
    :cond_46
    const/4 v5, 0x4

    if-lt v12, v5, :cond_4c

    .line 1075
    add-int/lit8 v12, v12, 0x1

    .line 1076
    goto :goto_43

    .line 1080
    :cond_4c
    const/16 v20, 0x0

    .line 1081
    .local v20, showEndTime:Z
    iget-boolean v5, v11, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v5, :cond_8b

    .line 1082
    iget v5, v11, Lcom/android/calendar/Event;->endDay:I

    iget v6, v11, Lcom/android/calendar/Event;->startDay:I

    sub-int v16, v5, v6

    .line 1083
    .local v16, numDays:I
    if-nez v16, :cond_85

    .line 1084
    const v10, 0x82012

    .line 1099
    .end local v16           #numDays:I
    .local v10, flags:I
    :cond_5d
    :goto_5d
    if-eqz v20, :cond_9b

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    move-object v5, v0

    iget-wide v6, v11, Lcom/android/calendar/Event;->startMillis:J

    iget-wide v8, v11, Lcom/android/calendar/Event;->endMillis:J

    invoke-static/range {v5 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v21

    .line 1107
    .local v21, timeRange:Ljava/lang/String;
    :goto_6c
    const/16 v22, 0x0

    .line 1108
    .local v22, timeView:Landroid/widget/TextView;
    const/16 v23, 0x0

    .line 1109
    .local v23, titleView:Landroid/widget/TextView;
    packed-switch v12, :pswitch_data_330

    .line 1128
    :goto_73
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    iget-object v5, v11, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1130
    add-int/lit8 v12, v12, 0x1

    goto :goto_43

    .line 1087
    .end local v10           #flags:I
    .end local v21           #timeRange:Ljava/lang/String;
    .end local v22           #timeView:Landroid/widget/TextView;
    .end local v23           #titleView:Landroid/widget/TextView;
    .restart local v16       #numDays:I
    :cond_85
    const/16 v20, 0x1

    .line 1088
    const v10, 0x82010

    .restart local v10       #flags:I
    goto :goto_5d

    .line 1092
    .end local v10           #flags:I
    .end local v16           #numDays:I
    :cond_8b
    const/16 v10, 0x1401

    .line 1093
    .restart local v10       #flags:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 1094
    or-int/lit16 v10, v10, 0x80

    goto :goto_5d

    .line 1103
    :cond_9b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    move-object v5, v0

    iget-wide v6, v11, Lcom/android/calendar/Event;->startMillis:J

    iget-wide v8, v11, Lcom/android/calendar/Event;->startMillis:J

    invoke-static/range {v5 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v21

    .restart local v21       #timeRange:Ljava/lang/String;
    goto :goto_6c

    .line 1111
    .restart local v22       #timeView:Landroid/widget/TextView;
    .restart local v23       #titleView:Landroid/widget/TextView;
    :pswitch_a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c0058

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .end local v22           #timeView:Landroid/widget/TextView;
    check-cast v22, Landroid/widget/TextView;

    .line 1112
    .restart local v22       #timeView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c0059

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .end local v23           #titleView:Landroid/widget/TextView;
    check-cast v23, Landroid/widget/TextView;

    .line 1113
    .restart local v23       #titleView:Landroid/widget/TextView;
    goto :goto_73

    .line 1115
    :pswitch_c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c005b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .end local v22           #timeView:Landroid/widget/TextView;
    check-cast v22, Landroid/widget/TextView;

    .line 1116
    .restart local v22       #timeView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c005c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .end local v23           #titleView:Landroid/widget/TextView;
    check-cast v23, Landroid/widget/TextView;

    .line 1117
    .restart local v23       #titleView:Landroid/widget/TextView;
    goto :goto_73

    .line 1119
    :pswitch_e3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c005e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .end local v22           #timeView:Landroid/widget/TextView;
    check-cast v22, Landroid/widget/TextView;

    .line 1120
    .restart local v22       #timeView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c005f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .end local v23           #titleView:Landroid/widget/TextView;
    check-cast v23, Landroid/widget/TextView;

    .line 1121
    .restart local v23       #titleView:Landroid/widget/TextView;
    goto/16 :goto_73

    .line 1123
    :pswitch_101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c0061

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .end local v22           #timeView:Landroid/widget/TextView;
    check-cast v22, Landroid/widget/TextView;

    .line 1124
    .restart local v22       #timeView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c0062

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .end local v23           #titleView:Landroid/widget/TextView;
    check-cast v23, Landroid/widget/TextView;

    .restart local v23       #titleView:Landroid/widget/TextView;
    goto/16 :goto_73

    .line 1132
    .end local v10           #flags:I
    .end local v11           #event:Lcom/android/calendar/Event;
    .end local v20           #showEndTime:Z
    .end local v21           #timeRange:Ljava/lang/String;
    .end local v22           #timeView:Landroid/widget/TextView;
    .end local v23           #titleView:Landroid/widget/TextView;
    :cond_11f
    if-nez v12, :cond_12b

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_7

    .line 1140
    :cond_12b
    packed-switch v12, :pswitch_data_33c

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c005a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1183
    .local v25, view:Landroid/view/View;
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c005d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1185
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c0060

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1187
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c0063

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 1189
    .local v24, tv:Landroid/widget/TextView;
    const/4 v5, 0x0

    move-object/from16 v0, v24

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    move-object v5, v0

    const v6, 0x7f080017

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1191
    .local v14, format:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x4

    sub-int v7, v12, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v14, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 1192
    .local v18, plusMore:Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1196
    .end local v14           #format:Ljava/lang/String;
    .end local v18           #plusMore:Ljava/lang/String;
    .end local v24           #tv:Landroid/widget/TextView;
    :goto_1a0
    const/4 v5, 0x5

    if-le v12, v5, :cond_1a4

    .line 1197
    const/4 v12, 0x5

    .line 1199
    :cond_1a4
    mul-int/lit8 v5, v12, 0x14

    add-int/lit8 v19, v5, 0xf

    .line 1200
    .local v19, popupHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1202
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mPreviousPopupHeight:I

    move v5, v0

    move v0, v5

    move/from16 v1, v19

    if-eq v0, v1, :cond_1cb

    .line 1203
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/MonthView;->mPreviousPopupHeight:I

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1206
    :cond_1cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    const/16 v6, 0x53

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mDismissPopup:Lcom/android/calendar/MonthView$DismissPopup;

    move-object v5, v0

    const-wide/16 v6, 0xbb8

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/MonthView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_7

    .line 1142
    .end local v19           #popupHeight:I
    .end local v25           #view:Landroid/view/View;
    :pswitch_1ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c005a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1143
    .restart local v25       #view:Landroid/view/View;
    const/16 v5, 0x8

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c005d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1145
    const/16 v5, 0x8

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c0060

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1147
    const/16 v5, 0x8

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c0063

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1149
    const/16 v5, 0x8

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1a0

    .line 1152
    .end local v25           #view:Landroid/view/View;
    :pswitch_23f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c005a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1153
    .restart local v25       #view:Landroid/view/View;
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c005d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1155
    const/16 v5, 0x8

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c0060

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1157
    const/16 v5, 0x8

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c0063

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1159
    const/16 v5, 0x8

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1a0

    .line 1162
    .end local v25           #view:Landroid/view/View;
    :pswitch_290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c005a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1163
    .restart local v25       #view:Landroid/view/View;
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c005d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1165
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c0060

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1167
    const/16 v5, 0x8

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c0063

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1169
    const/16 v5, 0x8

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1a0

    .line 1172
    .end local v25           #view:Landroid/view/View;
    :pswitch_2e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c005a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1173
    .restart local v25       #view:Landroid/view/View;
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c005d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1175
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c0060

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1177
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c0063

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1179
    const/16 v5, 0x8

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1a0

    .line 1109
    nop

    :pswitch_data_330
    .packed-switch 0x0
        :pswitch_a9
        :pswitch_c6
        :pswitch_e3
        :pswitch_101
    .end packed-switch

    .line 1140
    :pswitch_data_33c
    .packed-switch 0x1
        :pswitch_1ed
        :pswitch_23f
        :pswitch_290
        :pswitch_2e0
    .end packed-switch
.end method


# virtual methods
.method animationFinished()V
    .registers 2

    .prologue
    .line 469
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/MonthView;->mAnimating:Z

    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    .line 471
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->invalidate()V

    .line 472
    return-void
.end method

.method animationStarted()V
    .registers 2

    .prologue
    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/MonthView;->mAnimating:Z

    .line 466
    return-void
.end method

.method dismissPopup()V
    .registers 3

    .prologue
    .line 1352
    iget-boolean v1, p0, Lcom/android/calendar/MonthView;->mShowToast:Z

    if-nez v1, :cond_5

    .line 1365
    :cond_4
    :goto_4
    return-void

    .line 1357
    :cond_5
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_e

    .line 1358
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1361
    :cond_e
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1362
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_4

    .line 1363
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mDismissPopup:Lcom/android/calendar/MonthView$DismissPopup;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method public getSelectedTimeInMillis()J
    .registers 4

    .prologue
    .line 995
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    .line 996
    .local v0, time:Landroid/text/format/Time;
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 998
    iget v1, v0, Landroid/text/format/Time;->month:I

    iget-object v2, p0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v2}, Landroid/util/DayOfMonthCursor;->getSelectedMonthOffset()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 999
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v1}, Landroid/util/DayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    .line 1003
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->second:I

    iput v1, v0, Landroid/text/format/Time;->second:I

    .line 1004
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->minute:I

    iput v1, v0, Landroid/text/format/Time;->minute:I

    .line 1005
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->hour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 1006
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method public getSelectionMode()I
    .registers 2

    .prologue
    .line 1014
    iget v0, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    return v0
.end method

.method getTime()Landroid/text/format/Time;
    .registers 2

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 12
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const/4 v7, 0x0

    .line 372
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getSelectedTimeInMillis()J

    move-result-wide v2

    .line 373
    .local v2, startMillis:J
    const v0, 0x10012

    .line 376
    .local v0, flags:I
    iget-object v5, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    const v6, 0x10012

    invoke-static {v5, v2, v3, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    .line 377
    .local v4, title:Ljava/lang/String;
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 379
    const/4 v5, 0x3

    const v6, 0x7f08000a

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 380
    .local v1, item:Landroid/view/MenuItem;
    iget-object v5, p0, Lcom/android/calendar/MonthView;->mContextMenuHandler:Lcom/android/calendar/MonthView$ContextMenuHandler;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 381
    const v5, 0x108003b

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 382
    const/16 v5, 0x64

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 384
    const/4 v5, 0x2

    const v6, 0x7f080009

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 385
    iget-object v5, p0, Lcom/android/calendar/MonthView;->mContextMenuHandler:Lcom/android/calendar/MonthView$ContextMenuHandler;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 386
    const v5, 0x1080034

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 387
    const/16 v5, 0x61

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 389
    const/4 v5, 0x6

    const v6, 0x7f080010

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 390
    iget-object v5, p0, Lcom/android/calendar/MonthView;->mContextMenuHandler:Lcom/android/calendar/MonthView$ContextMenuHandler;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 391
    const v5, 0x1080033

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 392
    const/16 v5, 0x6e

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 393
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 483
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 485
    invoke-direct {p0}, Lcom/android/calendar/MonthView;->clearBitmapCache()V

    .line 486
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_f

    .line 487
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 489
    :cond_f
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 493
    iget-boolean v1, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    if-eqz v1, :cond_24

    .line 494
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mCanvas:Landroid/graphics/Canvas;

    if-nez v1, :cond_14

    .line 495
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/calendar/MonthView;->drawingCalc(II)V

    .line 499
    :cond_14
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_24

    .line 501
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mCanvas:Landroid/graphics/Canvas;

    .line 502
    .local v0, bitmapCanvas:Landroid/graphics/Canvas;
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 503
    invoke-direct {p0, v0}, Lcom/android/calendar/MonthView;->doDraw(Landroid/graphics/Canvas;)V

    .line 504
    iput-boolean v3, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    .line 509
    .end local v0           #bitmapCanvas:Landroid/graphics/Canvas;
    :cond_24
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_32

    .line 510
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/calendar/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 512
    :cond_32
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 1249
    iget v4, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    if-nez v4, :cond_30

    .line 1250
    const/16 v4, 0x42

    if-eq p1, v4, :cond_1a

    const/16 v4, 0x16

    if-eq p1, v4, :cond_1a

    const/16 v4, 0x15

    if-eq p1, v4, :cond_1a

    const/16 v4, 0x13

    if-eq p1, v4, :cond_1a

    const/16 v4, 0x14

    if-ne p1, v4, :cond_23

    .line 1255
    :cond_1a
    iput v5, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    .line 1256
    iput-boolean v6, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    .line 1257
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->invalidate()V

    move v4, v6

    .line 1340
    :goto_22
    return v4

    .line 1259
    :cond_23
    const/16 v4, 0x17

    if-ne p1, v4, :cond_30

    .line 1262
    iput v6, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    .line 1263
    iput-boolean v6, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    .line 1264
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->invalidate()V

    move v4, v6

    .line 1265
    goto :goto_22

    .line 1269
    :cond_30
    iput v5, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    .line 1270
    const/4 v3, 0x0

    .line 1271
    .local v3, redraw:Z
    const/4 v2, 0x0

    .line 1273
    .local v2, other:Landroid/text/format/Time;
    sparse-switch p1, :sswitch_data_f0

    .line 1332
    :goto_37
    if-eqz v2, :cond_e7

    .line 1333
    invoke-virtual {v2, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 1334
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mNavigator:Lcom/android/calendar/Navigator;

    invoke-interface {v4, v2}, Lcom/android/calendar/Navigator;->goTo(Landroid/text/format/Time;)V

    :cond_41
    :goto_41
    move v4, v3

    .line 1340
    goto :goto_22

    .line 1275
    :sswitch_43
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getSelectedTimeInMillis()J

    move-result-wide v0

    .line 1276
    .local v0, millis:J
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/calendar/MonthView;->mDetailedView:Ljava/lang/String;

    invoke-static {v4, v5, v0, v1}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1277
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v4}, Lcom/android/calendar/MonthActivity;->finish()V

    move v4, v6

    .line 1278
    goto :goto_22

    .line 1280
    .end local v0           #millis:J
    :sswitch_57
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v4}, Landroid/util/DayOfMonthCursor;->up()Z

    move-result v4

    if-eqz v4, :cond_78

    .line 1281
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    .line 1282
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1283
    iget v4, v2, Landroid/text/format/Time;->month:I

    sub-int/2addr v4, v6

    iput v4, v2, Landroid/text/format/Time;->month:I

    .line 1284
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v4}, Landroid/util/DayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v4

    iput v4, v2, Landroid/text/format/Time;->monthDay:I

    .line 1287
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v4}, Landroid/util/DayOfMonthCursor;->down()Z

    .line 1289
    :cond_78
    const/4 v3, 0x1

    .line 1290
    goto :goto_37

    .line 1293
    :sswitch_7a
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v4}, Landroid/util/DayOfMonthCursor;->down()Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 1294
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    .line 1295
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1296
    iget v4, v2, Landroid/text/format/Time;->month:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Landroid/text/format/Time;->month:I

    .line 1297
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v4}, Landroid/util/DayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v4

    iput v4, v2, Landroid/text/format/Time;->monthDay:I

    .line 1300
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v4}, Landroid/util/DayOfMonthCursor;->up()Z

    .line 1302
    :cond_9c
    const/4 v3, 0x1

    .line 1303
    goto :goto_37

    .line 1306
    :sswitch_9e
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v4}, Landroid/util/DayOfMonthCursor;->left()Z

    move-result v4

    if-eqz v4, :cond_bf

    .line 1307
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    .line 1308
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1309
    iget v4, v2, Landroid/text/format/Time;->month:I

    sub-int/2addr v4, v6

    iput v4, v2, Landroid/text/format/Time;->month:I

    .line 1310
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v4}, Landroid/util/DayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v4

    iput v4, v2, Landroid/text/format/Time;->monthDay:I

    .line 1313
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v4}, Landroid/util/DayOfMonthCursor;->right()Z

    .line 1315
    :cond_bf
    const/4 v3, 0x1

    .line 1316
    goto/16 :goto_37

    .line 1319
    :sswitch_c2
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v4}, Landroid/util/DayOfMonthCursor;->right()Z

    move-result v4

    if-eqz v4, :cond_e4

    .line 1320
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    .line 1321
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1322
    iget v4, v2, Landroid/text/format/Time;->month:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Landroid/text/format/Time;->month:I

    .line 1323
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v4}, Landroid/util/DayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v4

    iput v4, v2, Landroid/text/format/Time;->monthDay:I

    .line 1326
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v4}, Landroid/util/DayOfMonthCursor;->left()Z

    .line 1328
    :cond_e4
    const/4 v3, 0x1

    goto/16 :goto_37

    .line 1335
    :cond_e7
    if-eqz v3, :cond_41

    .line 1336
    iput-boolean v6, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    .line 1337
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->invalidate()V

    goto/16 :goto_41

    .line 1273
    :sswitch_data_f0
    .sparse-switch
        0x13 -> :sswitch_57
        0x14 -> :sswitch_7a
        0x15 -> :sswitch_9e
        0x16 -> :sswitch_c2
        0x42 -> :sswitch_43
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    .line 1212
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 1214
    .local v0, duration:J
    packed-switch p1, :pswitch_data_4c

    .line 1244
    :cond_e
    :goto_e
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    return v4

    .line 1216
    :pswitch_13
    iget v4, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    if-eqz v4, :cond_e

    .line 1221
    iget v4, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    if-ne v4, v8, :cond_24

    .line 1226
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    .line 1227
    iput-boolean v8, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    .line 1228
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->invalidate()V

    goto :goto_e

    .line 1233
    :cond_24
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_40

    .line 1234
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getSelectedTimeInMillis()J

    move-result-wide v2

    .line 1235
    .local v2, millis:J
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/calendar/MonthView;->mDetailedView:Ljava/lang/String;

    invoke-static {v4, v5, v2, v3}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1236
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v4}, Lcom/android/calendar/MonthActivity;->finish()V

    goto :goto_e

    .line 1238
    .end local v2           #millis:J
    :cond_40
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    .line 1239
    iput-boolean v8, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    .line 1240
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->invalidate()V

    .line 1241
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->performLongClick()Z

    goto :goto_e

    .line 1214
    :pswitch_data_4c
    .packed-switch 0x17
        :pswitch_13
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .parameter "width"
    .parameter "height"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 476
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/MonthView;->drawingCalc(II)V

    .line 478
    invoke-direct {p0}, Lcom/android/calendar/MonthView;->clearBitmapCache()V

    .line 479
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 556
    const/4 v0, 0x1

    .line 559
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method reloadEvents()V
    .registers 12

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 430
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    .line 431
    .local v8, monthStart:Landroid/text/format/Time;
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v8, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 432
    iput v3, v8, Landroid/text/format/Time;->monthDay:I

    .line 433
    iput v2, v8, Landroid/text/format/Time;->hour:I

    .line 434
    iput v2, v8, Landroid/text/format/Time;->minute:I

    .line 435
    iput v2, v8, Landroid/text/format/Time;->second:I

    .line 436
    invoke-virtual {v8, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v6

    .line 437
    .local v6, millis:J
    iget-wide v2, v8, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v6, v7, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 440
    .local v1, startDay:I
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v0}, Lcom/android/calendar/MonthActivity;->startProgressSpinner()V

    .line 446
    const-wide/16 v9, 0x0

    .line 448
    .local v9, startMillis:J
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mEventLoader:Lcom/android/calendar/EventLoader;

    const/16 v2, 0x1f

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mRawBusyBits:[I

    iget-object v4, p0, Lcom/android/calendar/MonthView;->mAllDayCounts:[I

    new-instance v5, Lcom/android/calendar/MonthView$2;

    invoke-direct {v5, p0, v9, v10}, Lcom/android/calendar/MonthView$2;-><init>(Lcom/android/calendar/MonthView;J)V

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/EventLoader;->loadBusyBitsInBackground(II[I[ILjava/lang/Runnable;)V

    .line 462
    return-void
.end method

.method setDetailedView(Ljava/lang/String;)V
    .registers 2
    .parameter "detailedView"

    .prologue
    .line 974
    iput-object p1, p0, Lcom/android/calendar/MonthView;->mDetailedView:Ljava/lang/String;

    .line 975
    return-void
.end method

.method setSelectedTime(Landroid/text/format/Time;)V
    .registers 10
    .parameter "time"

    .prologue
    const/4 v7, 0x1

    .line 979
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 981
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 982
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iput v7, v2, Landroid/text/format/Time;->monthDay:I

    .line 983
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 984
    .local v0, millis:J
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    .line 985
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 987
    new-instance v2, Landroid/util/DayOfMonthCursor;

    iget v3, p1, Landroid/text/format/Time;->year:I

    iget v4, p1, Landroid/text/format/Time;->month:I

    iget v5, p1, Landroid/text/format/Time;->monthDay:I

    iget-object v6, p0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    invoke-virtual {v6}, Landroid/util/DayOfMonthCursor;->getWeekStartDay()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/util/DayOfMonthCursor;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/calendar/MonthView;->mCursor:Landroid/util/DayOfMonthCursor;

    .line 990
    iput-boolean v7, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    .line 991
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->invalidate()V

    .line 992
    return-void
.end method

.method public setSelectionMode(I)V
    .registers 2
    .parameter "selectionMode"

    .prologue
    .line 1018
    iput p1, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    .line 1019
    return-void
.end method
