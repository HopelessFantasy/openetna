.class public Lcom/android/calendar/CalendarView;
.super Landroid/view/View;
.source "CalendarView.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/CalendarView$DismissPopup;,
        Lcom/android/calendar/CalendarView$ContinueScroll;,
        Lcom/android/calendar/CalendarView$ContextMenuHandler;,
        Lcom/android/calendar/CalendarView$DayHeader;
    }
.end annotation


# static fields
.field private static final ALLDAY_TOP_MARGIN:I = 0x3

.field private static final ALL_DAY_TEXT_TOP_MARGIN:I = 0x0

.field private static final AMPM_FONT_SIZE:I = 0x9

.field private static final ATTENDEES_INDEX_RELATIONSHIP:I = 0x1

.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String; = null

.field private static final ATTENDEES_WHERE:Ljava/lang/String; = "event_id=%d"

.field private static final CALENDARS_INDEX_ACCESS_LEVEL:I = 0x1

.field private static final CALENDARS_PROJECTION:[Ljava/lang/String; = null

.field private static final CALENDARS_WHERE:Ljava/lang/String; = "_id=%d"

.field private static final DAY_GAP:I = 0x1

.field private static final EVENT_TEXT_FONT_SIZE:I = 0xc

.field private static final FROM_ABOVE:I = 0x1

.field private static final FROM_BELOW:I = 0x2

.field private static final FROM_LEFT:I = 0x4

.field private static final FROM_NONE:I = 0x0

.field private static final FROM_RIGHT:I = 0x8

.field private static final HORIZONTAL_SCROLL_THRESHOLD:I = 0x32

.field private static final HOURS_FONT_SIZE:I = 0xc

.field private static final HOURS_LEFT_MARGIN:I = 0x2

.field private static final HOURS_MARGIN:I = 0x6

.field private static final HOURS_RIGHT_MARGIN:I = 0x4

.field private static final HOUR_GAP:I = 0x1

.field private static final MAX_ALLDAY_EVENT_HEIGHT:I = 0x12

.field private static final MAX_ALLDAY_HEIGHT:I = 0x48

.field private static final MAX_EVENT_TEXT_LEN:I = 0x1f4

.field static final MILLIS_PER_DAY:I = 0x5265c00

.field static final MILLIS_PER_HOUR:I = 0x36ee80

.field static final MILLIS_PER_MINUTE:I = 0xea60

.field static final MINUTES_PER_DAY:I = 0x5a0

.field static final MINUTES_PER_HOUR:I = 0x3c

.field private static final MIN_CELL_WIDTH_FOR_TEXT:I = 0xa

.field private static final MIN_EVENT_HEIGHT:F = 15.0f

.field private static final NORMAL_FONT_SIZE:I = 0xc

.field private static final NORMAL_TEXT_TOP_MARGIN:I = 0x2

.field private static final POPUP_DISMISS_DELAY:I = 0xbb8

.field private static final SELECTION_HIDDEN:I = 0x0

.field private static final SELECTION_LONGPRESS:I = 0x3

.field private static final SELECTION_PRESSED:I = 0x1

.field private static final SELECTION_SELECTED:I = 0x2

.field private static final SINGLE_ALLDAY_HEIGHT:I = 0x14

.field private static final SMALL_ROUND_RADIUS:F = 3.0f

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_HSCROLL:I = 0x40

.field private static final TOUCH_MODE_INITIAL_STATE:I = 0x0

.field private static final TOUCH_MODE_VSCROLL:I = 0x20

.field private static mCalendarAllDayBackground:I

.field private static mCalendarAmPmLabel:I

.field private static mCalendarDateBannerBackground:I

.field private static mCalendarDateBannerTextColor:I

.field private static mCalendarDateSelected:I

.field private static mCalendarGridAreaBackground:I

.field private static mCalendarGridAreaSelected:I

.field private static mCalendarGridLineHorizontalColor:I

.field private static mCalendarGridLineVerticalColor:I

.field private static mCalendarHourBackground:I

.field private static mCalendarHourLabel:I

.field private static mCalendarHourSelected:I

.field private static mEventTextColor:I

.field private static mPressedColor:I

.field private static mSelectedEventTextColor:I

.field private static mSelectionColor:I

.field private static mWeek_weekendColor:I


# instance fields
.field private dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

.field private drawTextSanitizerFilter:Ljava/util/regex/Pattern;

.field private mAllDayHeight:I

.field private mAmString:Ljava/lang/String;

.field private mBannerPlusMargin:I

.field mBaseDate:Landroid/text/format/Time;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBold:Landroid/graphics/Typeface;

.field protected mCalendarApp:Lcom/android/calendar/CalendarApplication;

.field private mCancelCallback:Ljava/lang/Runnable;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCellHeight:I

.field private mCellWidth:I

.field private mCharWidths:[F

.field private mComputeSelectedEvents:Z

.field private mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

.field private mContinueScroll:Lcom/android/calendar/CalendarView$ContinueScroll;

.field private mDateRange:Ljava/lang/String;

.field private mDateStrWidth:I

.field private mDayStrs:[Ljava/lang/String;

.field private mDayStrs2Letter:[Ljava/lang/String;

.field private mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

.field private mDestRect:Landroid/graphics/Rect;

.field private mDetailedView:Ljava/lang/String;

.field private mDismissPopup:Lcom/android/calendar/CalendarView$DismissPopup;

.field protected mDrawTextInEventRect:Z

.field private mEarliestStartHour:[I

.field protected final mEventGeometry:Lcom/android/calendar/EventGeometry;

.field private final mEventLoader:Lcom/android/calendar/EventLoader;

.field private mEventTextAscent:I

.field private mEventTextHeight:I

.field private mEventTextPaint:Landroid/graphics/Paint;

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

.field private mFirstCell:I

.field private mFirstDate:I

.field private mFirstHour:I

.field private mFirstHourOffset:I

.field private mFirstJulianDay:I

.field private mGridAreaHeight:I

.field private mHasAllDayEvent:[Z

.field private mHourStrs:[Ljava/lang/String;

.field private mHoursTextHeight:I

.field private mHoursWidth:I

.field private mIs24HourFormat:Z

.field private mLastJulianDay:I

.field private mLastReloadMillis:J

.field private mLaunchNewView:Z

.field private mMaxAllDayEvents:I

.field private mMaxViewStartY:I

.field private mMonthLength:I

.field protected mNumDays:I

.field private mNumHours:I

.field private mOnFlingCalled:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintBorder:Landroid/graphics/Paint;

.field protected mParentActivity:Lcom/android/calendar/CalendarActivity;

.field private mPath:Landroid/graphics/Path;

.field private mPmString:Ljava/lang/String;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPopupView:Landroid/view/View;

.field private mPrevBox:Landroid/graphics/Rect;

.field private mPrevSelectedEvent:Lcom/android/calendar/Event;

.field private mPreviousDirection:I

.field private mPreviousDistanceX:I

.field private mRect:Landroid/graphics/Rect;

.field private mRectF:Landroid/graphics/RectF;

.field private mRedrawScreen:Z

.field private mRemeasure:Z

.field protected final mResources:Landroid/content/res/Resources;

.field private mScrollStartY:I

.field private mScrolling:Z

.field private mSelectedEvent:Lcom/android/calendar/Event;

.field private mSelectedEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field mSelectionAllDay:Z

.field private mSelectionDay:I

.field private mSelectionHour:I

.field private mSelectionMode:I

.field private mSelectionPaint:Landroid/graphics/Paint;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mStartDay:I

.field private mTitleTextView:Landroid/widget/TextView;

.field private mTouchMode:I

.field private mViewHeight:I

.field private mViewStartX:I

.field private mViewStartY:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v5, "_id"

    .line 82
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v2

    const-string v1, "access_level"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/calendar/CalendarView;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 89
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v2

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/calendar/CalendarView;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/CalendarActivity;)V
    .registers 6
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 312
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 106
    new-instance v0, Lcom/android/calendar/CalendarView$ContinueScroll;

    invoke-direct {v0, p0, v3}, Lcom/android/calendar/CalendarView$ContinueScroll;-><init>(Lcom/android/calendar/CalendarView;Lcom/android/calendar/CalendarView$1;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mContinueScroll:Lcom/android/calendar/CalendarView$ContinueScroll;

    .line 113
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/android/calendar/CalendarView$DayHeader;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

    .line 118
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mBold:Landroid/graphics/Typeface;

    .line 127
    sget-object v0, Lcom/android/calendar/CalendarPreferenceActivity;->DEFAULT_DETAILED_VIEW:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mDetailedView:Ljava/lang/String;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mRect:Landroid/graphics/Rect;

    .line 152
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mRectF:Landroid/graphics/RectF;

    .line 153
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSrcRect:Landroid/graphics/Rect;

    .line 154
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mDestRect:Landroid/graphics/Rect;

    .line 155
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mPaint:Landroid/graphics/Paint;

    .line 156
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    .line 157
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mEventTextPaint:Landroid/graphics/Paint;

    .line 158
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectionPaint:Landroid/graphics/Paint;

    .line 159
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mPath:Landroid/graphics/Path;

    .line 169
    new-instance v0, Lcom/android/calendar/CalendarView$DismissPopup;

    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarView$DismissPopup;-><init>(Lcom/android/calendar/CalendarView;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mDismissPopup:Lcom/android/calendar/CalendarView$DismissPopup;

    .line 174
    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 175
    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    .line 248
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    .line 249
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    .line 253
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    .line 260
    const/16 v0, 0x1f4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mCharWidths:[F

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    .line 265
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    .line 271
    new-instance v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/calendar/CalendarView$ContextMenuHandler;-><init>(Lcom/android/calendar/CalendarView;Lcom/android/calendar/CalendarView$1;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

    .line 294
    iput v2, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    .line 304
    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 306
    iput-boolean v2, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    .line 1114
    new-instance v0, Lcom/android/calendar/CalendarView$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarView$1;-><init>(Lcom/android/calendar/CalendarView;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mCancelCallback:Ljava/lang/Runnable;

    .line 2152
    const-string v0, "[\t\n],"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->drawTextSanitizerFilter:Ljava/util/regex/Pattern;

    .line 313
    invoke-virtual {p1}, Lcom/android/calendar/CalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    .line 314
    iget-object v0, p1, Lcom/android/calendar/CalendarActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mEventLoader:Lcom/android/calendar/EventLoader;

    .line 315
    new-instance v0, Lcom/android/calendar/EventGeometry;

    invoke-direct {v0}, Lcom/android/calendar/EventGeometry;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    .line 316
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventGeometry;->setMinEventHeight(F)V

    .line 317
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventGeometry;->setHourGap(F)V

    .line 318
    iput-object p1, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    .line 319
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarApplication;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mCalendarApp:Lcom/android/calendar/CalendarApplication;

    .line 320
    new-instance v0, Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {v0, p1, v2}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 322
    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView;->init(Landroid/content/Context;)V

    .line 323
    return-void
.end method

.method static synthetic access$1000(Lcom/android/calendar/CalendarView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/calendar/CalendarView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/calendar/CalendarView;)Lcom/android/calendar/DeleteEventHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/calendar/CalendarView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/calendar/CalendarView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    return p1
.end method

.method static synthetic access$1312(Lcom/android/calendar/CalendarView;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    return v0
.end method

.method static synthetic access$1320(Lcom/android/calendar/CalendarView;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/calendar/CalendarView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/calendar/CalendarView;->mMaxViewStartY:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/calendar/CalendarView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->computeFirstHour()V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/calendar/CalendarView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/calendar/CalendarView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->resetSelectedHour()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/calendar/CalendarView;)Landroid/widget/PopupWindow;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/calendar/CalendarView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/calendar/CalendarView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/calendar/CalendarView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/calendar/CalendarView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/calendar/CalendarView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->recalc()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/calendar/CalendarView;)Lcom/android/calendar/Event;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/calendar/CalendarView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private adjustHourSelection()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x18

    const/16 v2, 0x17

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1055
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    if-gez v1, :cond_15

    .line 1056
    iput v4, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 1057
    iget v1, p0, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    if-lez v1, :cond_15

    .line 1058
    iput-object v6, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1059
    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    .line 1063
    :cond_15
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    if-le v1, v2, :cond_1b

    .line 1064
    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 1069
    :cond_1b
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_63

    .line 1077
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    sub-int v0, v1, v2

    .line 1078
    .local v0, daynum:I
    iget v1, p0, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    if-lez v1, :cond_4a

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mEarliestStartHour:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    if-le v1, v2, :cond_4a

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    if-lez v1, :cond_4a

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_4a

    .line 1080
    iput-object v6, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1081
    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    .line 1082
    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 1108
    .end local v0           #daynum:I
    :cond_49
    :goto_49
    return-void

    .line 1086
    .restart local v0       #daynum:I
    :cond_4a
    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    if-lez v1, :cond_63

    .line 1087
    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    .line 1088
    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    .line 1089
    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    if-gez v1, :cond_49

    .line 1090
    iput v4, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    goto :goto_49

    .line 1096
    .end local v0           #daynum:I
    :cond_63
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    add-int/2addr v2, v3

    const/4 v3, 0x3

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_49

    .line 1097
    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    sub-int v2, v5, v2

    if-ge v1, v2, :cond_96

    .line 1098
    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    .line 1099
    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    .line 1100
    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_49

    .line 1101
    iget v1, p0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    goto :goto_49

    .line 1104
    :cond_96
    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    sub-int v2, v5, v2

    if-ne v1, v2, :cond_49

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    if-lez v1, :cond_49

    .line 1105
    iget v1, p0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    goto :goto_49
.end method

.method private computeAllDayNeighbors()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 1675
    iget-object v11, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1676
    .local v3, len:I
    if-eqz v3, :cond_d

    iget-object v11, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v11, :cond_e

    .line 1730
    :cond_d
    :goto_d
    return-void

    .line 1681
    :cond_e
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_f
    if-ge v1, v3, :cond_24

    .line 1682
    iget-object v11, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 1683
    .local v0, ev:Lcom/android/calendar/Event;
    iput-object v12, v0, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    .line 1684
    iput-object v12, v0, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    .line 1685
    iput-object v12, v0, Lcom/android/calendar/Event;->nextLeft:Lcom/android/calendar/Event;

    .line 1686
    iput-object v12, v0, Lcom/android/calendar/Event;->nextRight:Lcom/android/calendar/Event;

    .line 1681
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1696
    .end local v0           #ev:Lcom/android/calendar/Event;
    :cond_24
    const/4 v10, -0x1

    .line 1697
    .local v10, startPosition:I
    iget-object v11, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v11, :cond_35

    iget-object v11, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    iget-boolean v11, v11, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v11, :cond_35

    .line 1698
    iget-object v11, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    invoke-virtual {v11}, Lcom/android/calendar/Event;->getColumn()I

    move-result v10

    .line 1700
    :cond_35
    const/4 v4, -0x1

    .line 1701
    .local v4, maxPosition:I
    const/4 v9, 0x0

    .line 1702
    .local v9, startEvent:Lcom/android/calendar/Event;
    const/4 v5, 0x0

    .line 1703
    .local v5, maxPositionEvent:Lcom/android/calendar/Event;
    const/4 v1, 0x0

    :goto_39
    if-ge v1, v3, :cond_75

    .line 1704
    iget-object v11, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 1705
    .restart local v0       #ev:Lcom/android/calendar/Event;
    invoke-virtual {v0}, Lcom/android/calendar/Event;->getColumn()I

    move-result v8

    .line 1706
    .local v8, position:I
    if-ne v8, v10, :cond_52

    .line 1707
    move-object v9, v0

    .line 1712
    :cond_4a
    :goto_4a
    const/4 v2, 0x0

    .local v2, jj:I
    :goto_4b
    if-ge v2, v3, :cond_72

    .line 1713
    if-ne v2, v1, :cond_57

    .line 1712
    :cond_4f
    :goto_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 1708
    .end local v2           #jj:I
    :cond_52
    if-le v8, v4, :cond_4a

    .line 1709
    move-object v5, v0

    .line 1710
    move v4, v8

    goto :goto_4a

    .line 1716
    .restart local v2       #jj:I
    :cond_57
    iget-object v11, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calendar/Event;

    .line 1717
    .local v6, neighbor:Lcom/android/calendar/Event;
    invoke-virtual {v6}, Lcom/android/calendar/Event;->getColumn()I

    move-result v7

    .line 1718
    .local v7, neighborPosition:I
    const/4 v11, 0x1

    sub-int v11, v8, v11

    if-ne v7, v11, :cond_6b

    .line 1719
    iput-object v6, v0, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    goto :goto_4f

    .line 1720
    :cond_6b
    add-int/lit8 v11, v8, 0x1

    if-ne v7, v11, :cond_4f

    .line 1721
    iput-object v6, v0, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    goto :goto_4f

    .line 1703
    .end local v6           #neighbor:Lcom/android/calendar/Event;
    .end local v7           #neighborPosition:I
    :cond_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 1725
    .end local v0           #ev:Lcom/android/calendar/Event;
    .end local v2           #jj:I
    .end local v8           #position:I
    :cond_75
    if-eqz v9, :cond_7a

    .line 1726
    iput-object v9, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    goto :goto_d

    .line 1728
    :cond_7a
    iput-object v5, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    goto :goto_d
.end method

.method private computeFirstHour()V
    .registers 3

    .prologue
    .line 1050
    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    .line 1051
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    .line 1052
    return-void
.end method

.method private computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I
    .registers 13
    .parameter "currentMax"
    .parameter "strings"
    .parameter "p"

    .prologue
    .line 1528
    const/4 v3, 0x0

    .line 1530
    .local v3, maxWidthF:F
    array-length v1, p2

    .line 1531
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    if-ge v0, v1, :cond_12

    .line 1532
    aget-object v5, p2, v0

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 1533
    .local v4, width:F
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1531
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1535
    .end local v4           #width:F
    :cond_12
    float-to-double v5, v3

    const-wide/high16 v7, 0x3fe0

    add-double/2addr v5, v7

    double-to-int v2, v5

    .line 1536
    .local v2, maxWidth:I
    if-ge v2, p1, :cond_1a

    .line 1537
    move v2, p1

    .line 1539
    :cond_1a
    return v2
.end method

.method private computeNeighbors()V
    .registers 46

    .prologue
    .line 1801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 1802
    .local v20, len:I
    if-eqz v20, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v43, v0

    if-eqz v43, :cond_15

    .line 2083
    :cond_14
    :goto_14
    return-void

    .line 1807
    :cond_15
    const/4 v15, 0x0

    .local v15, ii:I
    :goto_16
    move v0, v15

    move/from16 v1, v20

    if-ge v0, v1, :cond_49

    .line 1808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/calendar/Event;

    .line 1809
    .local v14, ev:Lcom/android/calendar/Event;
    const/16 v43, 0x0

    move-object/from16 v0, v43

    move-object v1, v14

    iput-object v0, v1, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    .line 1810
    const/16 v43, 0x0

    move-object/from16 v0, v43

    move-object v1, v14

    iput-object v0, v1, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    .line 1811
    const/16 v43, 0x0

    move-object/from16 v0, v43

    move-object v1, v14

    iput-object v0, v1, Lcom/android/calendar/Event;->nextLeft:Lcom/android/calendar/Event;

    .line 1812
    const/16 v43, 0x0

    move-object/from16 v0, v43

    move-object v1, v14

    iput-object v0, v1, Lcom/android/calendar/Event;->nextRight:Lcom/android/calendar/Event;

    .line 1807
    add-int/lit8 v15, v15, 0x1

    goto :goto_16

    .line 1815
    .end local v14           #ev:Lcom/android/calendar/Event;
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/calendar/Event;

    .line 1816
    .local v36, startEvent:Lcom/android/calendar/Event;
    const v37, 0x186a0

    .line 1817
    .local v37, startEventDistance1:I
    const v38, 0x186a0

    .line 1818
    .local v38, startEventDistance2:I
    const/16 v30, 0x0

    .line 1823
    .local v30, prevLocation:I
    const/16 v28, 0x0

    .line 1824
    .local v28, prevCenter:I
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->getCurrentSelectionPosition()Landroid/graphics/Rect;

    move-result-object v3

    .line 1825
    .local v3, box:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v43, v0

    if-eqz v43, :cond_227

    .line 1826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/calendar/Event;->top:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v32, v0

    .line 1827
    .local v32, prevTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/calendar/Event;->bottom:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v27, v0

    .line 1828
    .local v27, prevBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/calendar/Event;->left:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v29, v0

    .line 1829
    .local v29, prevLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/calendar/Event;->right:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v31, v0

    .line 1833
    .local v31, prevRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    move/from16 v0, v32

    move/from16 v1, v43

    if-ge v0, v1, :cond_f9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    move/from16 v0, v27

    move/from16 v1, v43

    if-le v0, v1, :cond_f9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v43, v0

    move/from16 v0, v31

    move/from16 v1, v43

    if-le v0, v1, :cond_f9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v43, v0

    move/from16 v0, v29

    move/from16 v1, v43

    if-lt v0, v1, :cond_1e9

    .line 1835
    :cond_f9
    const/16 v43, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    .line 1837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    .line 1838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    .line 1839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    .line 1858
    :cond_131
    :goto_131
    move-object v0, v3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v43, v0

    move/from16 v0, v29

    move/from16 v1, v43

    if-lt v0, v1, :cond_259

    .line 1860
    const/16 v30, 0x8

    .line 1861
    add-int v43, v32, v27

    div-int/lit8 v28, v43, 0x2

    .line 1879
    :cond_142
    :goto_142
    const/4 v15, 0x0

    :goto_143
    move v0, v15

    move/from16 v1, v20

    if-ge v0, v1, :cond_4af

    .line 1880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/calendar/Event;

    .line 1882
    .restart local v14       #ev:Lcom/android/calendar/Event;
    move-object v0, v14

    iget v0, v0, Lcom/android/calendar/Event;->startTime:I

    move/from16 v39, v0

    .line 1883
    .local v39, startTime:I
    iget v13, v14, Lcom/android/calendar/Event;->endTime:I

    .line 1884
    .local v13, endTime:I
    move-object v0, v14

    iget v0, v0, Lcom/android/calendar/Event;->left:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v17, v0

    .line 1885
    .local v17, left:I
    move-object v0, v14

    iget v0, v0, Lcom/android/calendar/Event;->right:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v33, v0

    .line 1886
    .local v33, right:I
    move-object v0, v14

    iget v0, v0, Lcom/android/calendar/Event;->top:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v40, v0

    .line 1887
    .local v40, top:I
    move-object v0, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    move/from16 v0, v40

    move/from16 v1, v43

    if-ge v0, v1, :cond_18c

    .line 1888
    move-object v0, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v40, v0

    .line 1890
    :cond_18c
    move-object v0, v14

    iget v0, v0, Lcom/android/calendar/Event;->bottom:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move v2, v0

    .line 1891
    .local v2, bottom:I
    move-object v0, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    move v0, v2

    move/from16 v1, v43

    if-le v0, v1, :cond_1a1

    .line 1892
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 1905
    :cond_1a1
    const/16 v41, 0x2710

    .line 1906
    .local v41, upDistanceMin:I
    const/16 v11, 0x2710

    .line 1907
    .local v11, downDistanceMin:I
    const/16 v18, 0x2710

    .line 1908
    .local v18, leftDistanceMin:I
    const/16 v34, 0x2710

    .line 1909
    .local v34, rightDistanceMin:I
    const/16 v42, 0x0

    .line 1910
    .local v42, upEvent:Lcom/android/calendar/Event;
    const/4 v12, 0x0

    .line 1911
    .local v12, downEvent:Lcom/android/calendar/Event;
    const/16 v19, 0x0

    .line 1912
    .local v19, leftEvent:Lcom/android/calendar/Event;
    const/16 v35, 0x0

    .line 1916
    .local v35, rightEvent:Lcom/android/calendar/Event;
    const/4 v9, 0x0

    .line 1917
    .local v9, distance1:I
    const/4 v10, 0x0

    .line 1918
    .local v10, distance2:I
    const/16 v43, 0x1

    move/from16 v0, v30

    move/from16 v1, v43

    if-ne v0, v1, :cond_29c

    .line 1919
    move/from16 v0, v17

    move/from16 v1, v28

    if-lt v0, v1, :cond_292

    .line 1920
    sub-int v9, v17, v28

    .line 1924
    :cond_1c2
    :goto_1c2
    sub-int v10, v40, v27

    .line 1947
    :cond_1c4
    :goto_1c4
    move v0, v9

    move/from16 v1, v37

    if-lt v0, v1, :cond_1d3

    move v0, v9

    move/from16 v1, v37

    if-ne v0, v1, :cond_1d9

    move v0, v10

    move/from16 v1, v38

    if-ge v0, v1, :cond_1d9

    .line 1949
    :cond_1d3
    move-object/from16 v36, v14

    .line 1950
    move/from16 v37, v9

    .line 1951
    move/from16 v38, v10

    .line 1956
    :cond_1d9
    const/16 v16, 0x0

    .local v16, jj:I
    :goto_1db
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_49a

    .line 1957
    move/from16 v0, v16

    move v1, v15

    if-ne v0, v1, :cond_2f1

    .line 1956
    :cond_1e6
    :goto_1e6
    add-int/lit8 v16, v16, 0x1

    goto :goto_1db

    .line 1842
    .end local v2           #bottom:I
    .end local v9           #distance1:I
    .end local v10           #distance2:I
    .end local v11           #downDistanceMin:I
    .end local v12           #downEvent:Lcom/android/calendar/Event;
    .end local v13           #endTime:I
    .end local v14           #ev:Lcom/android/calendar/Event;
    .end local v16           #jj:I
    .end local v17           #left:I
    .end local v18           #leftDistanceMin:I
    .end local v19           #leftEvent:Lcom/android/calendar/Event;
    .end local v33           #right:I
    .end local v34           #rightDistanceMin:I
    .end local v35           #rightEvent:Lcom/android/calendar/Event;
    .end local v39           #startTime:I
    .end local v40           #top:I
    .end local v41           #upDistanceMin:I
    .end local v42           #upEvent:Lcom/android/calendar/Event;
    :cond_1e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    move/from16 v0, v32

    move/from16 v1, v43

    if-ge v0, v1, :cond_207

    .line 1843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    .line 1845
    :cond_207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    move/from16 v0, v27

    move/from16 v1, v43

    if-le v0, v1, :cond_131

    .line 1846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    goto/16 :goto_131

    .line 1851
    .end local v27           #prevBottom:I
    .end local v29           #prevLeft:I
    .end local v31           #prevRight:I
    .end local v32           #prevTop:I
    :cond_227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    .line 1852
    .restart local v32       #prevTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    .line 1853
    .restart local v27       #prevBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    .line 1854
    .restart local v29       #prevLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    .restart local v31       #prevRight:I
    goto/16 :goto_131

    .line 1862
    :cond_259
    move-object v0, v3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v43, v0

    move/from16 v0, v31

    move/from16 v1, v43

    if-gt v0, v1, :cond_26c

    .line 1864
    const/16 v30, 0x4

    .line 1865
    add-int v43, v32, v27

    div-int/lit8 v28, v43, 0x2

    goto/16 :goto_142

    .line 1866
    :cond_26c
    move-object v0, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    move/from16 v0, v27

    move/from16 v1, v43

    if-gt v0, v1, :cond_27f

    .line 1868
    const/16 v30, 0x1

    .line 1869
    add-int v43, v29, v31

    div-int/lit8 v28, v43, 0x2

    goto/16 :goto_142

    .line 1870
    :cond_27f
    move-object v0, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    move/from16 v0, v32

    move/from16 v1, v43

    if-lt v0, v1, :cond_142

    .line 1872
    const/16 v30, 0x2

    .line 1873
    add-int v43, v29, v31

    div-int/lit8 v28, v43, 0x2

    goto/16 :goto_142

    .line 1921
    .restart local v2       #bottom:I
    .restart local v9       #distance1:I
    .restart local v10       #distance2:I
    .restart local v11       #downDistanceMin:I
    .restart local v12       #downEvent:Lcom/android/calendar/Event;
    .restart local v13       #endTime:I
    .restart local v14       #ev:Lcom/android/calendar/Event;
    .restart local v17       #left:I
    .restart local v18       #leftDistanceMin:I
    .restart local v19       #leftEvent:Lcom/android/calendar/Event;
    .restart local v33       #right:I
    .restart local v34       #rightDistanceMin:I
    .restart local v35       #rightEvent:Lcom/android/calendar/Event;
    .restart local v39       #startTime:I
    .restart local v40       #top:I
    .restart local v41       #upDistanceMin:I
    .restart local v42       #upEvent:Lcom/android/calendar/Event;
    :cond_292
    move/from16 v0, v33

    move/from16 v1, v28

    if-gt v0, v1, :cond_1c2

    .line 1922
    sub-int v9, v28, v33

    goto/16 :goto_1c2

    .line 1925
    :cond_29c
    const/16 v43, 0x2

    move/from16 v0, v30

    move/from16 v1, v43

    if-ne v0, v1, :cond_2b9

    .line 1926
    move/from16 v0, v17

    move/from16 v1, v28

    if-lt v0, v1, :cond_2b0

    .line 1927
    sub-int v9, v17, v28

    .line 1931
    :cond_2ac
    :goto_2ac
    sub-int v10, v32, v2

    goto/16 :goto_1c4

    .line 1928
    :cond_2b0
    move/from16 v0, v33

    move/from16 v1, v28

    if-gt v0, v1, :cond_2ac

    .line 1929
    sub-int v9, v28, v33

    goto :goto_2ac

    .line 1932
    :cond_2b9
    const/16 v43, 0x4

    move/from16 v0, v30

    move/from16 v1, v43

    if-ne v0, v1, :cond_2d5

    .line 1933
    move v0, v2

    move/from16 v1, v28

    if-gt v0, v1, :cond_2cc

    .line 1934
    sub-int v9, v28, v2

    .line 1938
    :cond_2c8
    :goto_2c8
    sub-int v10, v17, v31

    goto/16 :goto_1c4

    .line 1935
    :cond_2cc
    move/from16 v0, v40

    move/from16 v1, v28

    if-lt v0, v1, :cond_2c8

    .line 1936
    sub-int v9, v40, v28

    goto :goto_2c8

    .line 1939
    :cond_2d5
    const/16 v43, 0x8

    move/from16 v0, v30

    move/from16 v1, v43

    if-ne v0, v1, :cond_1c4

    .line 1940
    move v0, v2

    move/from16 v1, v28

    if-gt v0, v1, :cond_2e8

    .line 1941
    sub-int v9, v28, v2

    .line 1945
    :cond_2e4
    :goto_2e4
    sub-int v10, v29, v33

    goto/16 :goto_1c4

    .line 1942
    :cond_2e8
    move/from16 v0, v40

    move/from16 v1, v28

    if-lt v0, v1, :cond_2e4

    .line 1943
    sub-int v9, v40, v28

    goto :goto_2e4

    .line 1960
    .restart local v16       #jj:I
    :cond_2f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/calendar/Event;

    .line 1961
    .local v21, neighbor:Lcom/android/calendar/Event;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/calendar/Event;->left:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v24, v0

    .line 1962
    .local v24, neighborLeft:I
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/calendar/Event;->right:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v25, v0

    .line 1963
    .local v25, neighborRight:I
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/calendar/Event;->endTime:I

    move/from16 v43, v0

    move/from16 v0, v43

    move/from16 v1, v39

    if-gt v0, v1, :cond_3b5

    .line 1966
    move/from16 v0, v24

    move/from16 v1, v33

    if-ge v0, v1, :cond_340

    move/from16 v0, v25

    move/from16 v1, v17

    if-le v0, v1, :cond_340

    .line 1967
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/calendar/Event;->endTime:I

    move/from16 v43, v0

    sub-int v8, v39, v43

    .line 1968
    .local v8, distance:I
    move v0, v8

    move/from16 v1, v41

    if-ge v0, v1, :cond_373

    .line 1969
    move/from16 v41, v8

    .line 1970
    move-object/from16 v42, v21

    .line 2027
    .end local v8           #distance:I
    :cond_340
    :goto_340
    move/from16 v0, v24

    move/from16 v1, v33

    if-lt v0, v1, :cond_440

    .line 2030
    add-int v43, v40, v2

    div-int/lit8 v4, v43, 0x2

    .line 2031
    .local v4, center:I
    const/4 v8, 0x0

    .line 2032
    .restart local v8       #distance:I
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/calendar/Event;->bottom:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v22, v0

    .line 2033
    .local v22, neighborBottom:I
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/calendar/Event;->top:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v26, v0

    .line 2034
    .local v26, neighborTop:I
    move/from16 v0, v22

    move v1, v4

    if-gt v0, v1, :cond_418

    .line 2035
    sub-int v8, v4, v22

    .line 2039
    :cond_368
    :goto_368
    move v0, v8

    move/from16 v1, v34

    if-ge v0, v1, :cond_421

    .line 2040
    move/from16 v34, v8

    .line 2041
    move-object/from16 v35, v21

    goto/16 :goto_1e6

    .line 1971
    .end local v4           #center:I
    .end local v22           #neighborBottom:I
    .end local v26           #neighborTop:I
    :cond_373
    move v0, v8

    move/from16 v1, v41

    if-ne v0, v1, :cond_340

    .line 1972
    add-int v43, v17, v33

    div-int/lit8 v4, v43, 0x2

    .line 1973
    .restart local v4       #center:I
    const/4 v5, 0x0

    .line 1974
    .local v5, currentDistance:I
    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/calendar/Event;->left:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move v6, v0

    .line 1975
    .local v6, currentLeft:I
    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/calendar/Event;->right:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move v7, v0

    .line 1976
    .local v7, currentRight:I
    if-gt v7, v4, :cond_3a8

    .line 1977
    sub-int v5, v4, v7

    .line 1982
    :cond_395
    :goto_395
    const/16 v23, 0x0

    .line 1983
    .local v23, neighborDistance:I
    move/from16 v0, v25

    move v1, v4

    if-gt v0, v1, :cond_3ad

    .line 1984
    sub-int v23, v4, v25

    .line 1988
    :cond_39e
    :goto_39e
    move/from16 v0, v23

    move v1, v5

    if-ge v0, v1, :cond_340

    .line 1989
    move/from16 v41, v8

    .line 1990
    move-object/from16 v42, v21

    goto :goto_340

    .line 1978
    .end local v23           #neighborDistance:I
    :cond_3a8
    if-lt v6, v4, :cond_395

    .line 1979
    sub-int v5, v6, v4

    goto :goto_395

    .line 1985
    .restart local v23       #neighborDistance:I
    :cond_3ad
    move/from16 v0, v24

    move v1, v4

    if-lt v0, v1, :cond_39e

    .line 1986
    sub-int v23, v24, v4

    goto :goto_39e

    .line 1994
    .end local v4           #center:I
    .end local v5           #currentDistance:I
    .end local v6           #currentLeft:I
    .end local v7           #currentRight:I
    .end local v8           #distance:I
    .end local v23           #neighborDistance:I
    :cond_3b5
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/calendar/Event;->startTime:I

    move/from16 v43, v0

    move/from16 v0, v43

    move v1, v13

    if-lt v0, v1, :cond_340

    .line 1997
    move/from16 v0, v24

    move/from16 v1, v33

    if-ge v0, v1, :cond_340

    move/from16 v0, v25

    move/from16 v1, v17

    if-le v0, v1, :cond_340

    .line 1998
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/calendar/Event;->startTime:I

    move/from16 v43, v0

    sub-int v8, v43, v13

    .line 1999
    .restart local v8       #distance:I
    if-ge v8, v11, :cond_3db

    .line 2000
    move v11, v8

    .line 2001
    move-object/from16 v12, v21

    goto/16 :goto_340

    .line 2002
    :cond_3db
    if-ne v8, v11, :cond_340

    .line 2003
    add-int v43, v17, v33

    div-int/lit8 v4, v43, 0x2

    .line 2004
    .restart local v4       #center:I
    const/4 v5, 0x0

    .line 2005
    .restart local v5       #currentDistance:I
    move-object v0, v12

    iget v0, v0, Lcom/android/calendar/Event;->left:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move v6, v0

    .line 2006
    .restart local v6       #currentLeft:I
    move-object v0, v12

    iget v0, v0, Lcom/android/calendar/Event;->right:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move v7, v0

    .line 2007
    .restart local v7       #currentRight:I
    if-gt v7, v4, :cond_40b

    .line 2008
    sub-int v5, v4, v7

    .line 2013
    :cond_3f8
    :goto_3f8
    const/16 v23, 0x0

    .line 2014
    .restart local v23       #neighborDistance:I
    move/from16 v0, v25

    move v1, v4

    if-gt v0, v1, :cond_410

    .line 2015
    sub-int v23, v4, v25

    .line 2019
    :cond_401
    :goto_401
    move/from16 v0, v23

    move v1, v5

    if-ge v0, v1, :cond_340

    .line 2020
    move v11, v8

    .line 2021
    move-object/from16 v12, v21

    goto/16 :goto_340

    .line 2009
    .end local v23           #neighborDistance:I
    :cond_40b
    if-lt v6, v4, :cond_3f8

    .line 2010
    sub-int v5, v6, v4

    goto :goto_3f8

    .line 2016
    .restart local v23       #neighborDistance:I
    :cond_410
    move/from16 v0, v24

    move v1, v4

    if-lt v0, v1, :cond_401

    .line 2017
    sub-int v23, v24, v4

    goto :goto_401

    .line 2036
    .end local v5           #currentDistance:I
    .end local v6           #currentLeft:I
    .end local v7           #currentRight:I
    .end local v23           #neighborDistance:I
    .restart local v22       #neighborBottom:I
    .restart local v26       #neighborTop:I
    :cond_418
    move/from16 v0, v26

    move v1, v4

    if-lt v0, v1, :cond_368

    .line 2037
    sub-int v8, v26, v4

    goto/16 :goto_368

    .line 2042
    :cond_421
    move v0, v8

    move/from16 v1, v34

    if-ne v0, v1, :cond_1e6

    .line 2044
    sub-int v23, v24, v33

    .line 2045
    .restart local v23       #neighborDistance:I
    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/calendar/Event;->left:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    sub-int v5, v43, v33

    .line 2046
    .restart local v5       #currentDistance:I
    move/from16 v0, v23

    move v1, v5

    if-ge v0, v1, :cond_1e6

    .line 2047
    move/from16 v34, v8

    .line 2048
    move-object/from16 v35, v21

    goto/16 :goto_1e6

    .line 2051
    .end local v4           #center:I
    .end local v5           #currentDistance:I
    .end local v8           #distance:I
    .end local v22           #neighborBottom:I
    .end local v23           #neighborDistance:I
    .end local v26           #neighborTop:I
    :cond_440
    move/from16 v0, v25

    move/from16 v1, v17

    if-gt v0, v1, :cond_1e6

    .line 2054
    add-int v43, v40, v2

    div-int/lit8 v4, v43, 0x2

    .line 2055
    .restart local v4       #center:I
    const/4 v8, 0x0

    .line 2056
    .restart local v8       #distance:I
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/calendar/Event;->bottom:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v22, v0

    .line 2057
    .restart local v22       #neighborBottom:I
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/calendar/Event;->top:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v26, v0

    .line 2058
    .restart local v26       #neighborTop:I
    move/from16 v0, v22

    move v1, v4

    if-gt v0, v1, :cond_473

    .line 2059
    sub-int v8, v4, v22

    .line 2063
    :cond_468
    :goto_468
    move v0, v8

    move/from16 v1, v18

    if-ge v0, v1, :cond_47b

    .line 2064
    move/from16 v18, v8

    .line 2065
    move-object/from16 v19, v21

    goto/16 :goto_1e6

    .line 2060
    :cond_473
    move/from16 v0, v26

    move v1, v4

    if-lt v0, v1, :cond_468

    .line 2061
    sub-int v8, v26, v4

    goto :goto_468

    .line 2066
    :cond_47b
    move v0, v8

    move/from16 v1, v18

    if-ne v0, v1, :cond_1e6

    .line 2068
    sub-int v23, v17, v25

    .line 2069
    .restart local v23       #neighborDistance:I
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/calendar/Event;->right:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    sub-int v5, v17, v43

    .line 2070
    .restart local v5       #currentDistance:I
    move/from16 v0, v23

    move v1, v5

    if-ge v0, v1, :cond_1e6

    .line 2071
    move/from16 v18, v8

    .line 2072
    move-object/from16 v19, v21

    goto/16 :goto_1e6

    .line 2077
    .end local v4           #center:I
    .end local v5           #currentDistance:I
    .end local v8           #distance:I
    .end local v21           #neighbor:Lcom/android/calendar/Event;
    .end local v22           #neighborBottom:I
    .end local v23           #neighborDistance:I
    .end local v24           #neighborLeft:I
    .end local v25           #neighborRight:I
    .end local v26           #neighborTop:I
    :cond_49a
    move-object/from16 v0, v42

    move-object v1, v14

    iput-object v0, v1, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    .line 2078
    iput-object v12, v14, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    .line 2079
    move-object/from16 v0, v19

    move-object v1, v14

    iput-object v0, v1, Lcom/android/calendar/Event;->nextLeft:Lcom/android/calendar/Event;

    .line 2080
    move-object/from16 v0, v35

    move-object v1, v14

    iput-object v0, v1, Lcom/android/calendar/Event;->nextRight:Lcom/android/calendar/Event;

    .line 1879
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_143

    .line 2082
    .end local v2           #bottom:I
    .end local v9           #distance1:I
    .end local v10           #distance2:I
    .end local v11           #downDistanceMin:I
    .end local v12           #downEvent:Lcom/android/calendar/Event;
    .end local v13           #endTime:I
    .end local v14           #ev:Lcom/android/calendar/Event;
    .end local v16           #jj:I
    .end local v17           #left:I
    .end local v18           #leftDistanceMin:I
    .end local v19           #leftEvent:Lcom/android/calendar/Event;
    .end local v33           #right:I
    .end local v34           #rightDistanceMin:I
    .end local v35           #rightEvent:Lcom/android/calendar/Event;
    .end local v39           #startTime:I
    .end local v40           #top:I
    .end local v41           #upDistanceMin:I
    .end local v42           #upEvent:Lcom/android/calendar/Event;
    :cond_4af
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    goto/16 :goto_14
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .registers 11
    .parameter "canvas"

    .prologue
    .line 1338
    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mPaint:Landroid/graphics/Paint;

    .line 1339
    .local v5, p:Landroid/graphics/Paint;
    iget-object v8, p0, Lcom/android/calendar/CalendarView;->mRect:Landroid/graphics/Rect;

    .line 1341
    .local v8, r:Landroid/graphics/Rect;
    invoke-direct {p0, v8, p1, v5}, Lcom/android/calendar/CalendarView;->drawGridBackground(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1342
    invoke-direct {p0, v8, p1, v5}, Lcom/android/calendar/CalendarView;->drawHours(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1345
    iget v2, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    .line 1346
    .local v2, x:I
    iget v0, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v7, v0, 0x1

    .line 1347
    .local v7, deltaX:I
    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    .line 1348
    .local v1, cell:I
    const/4 v6, 0x0

    .local v6, day:I
    :goto_13
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ge v6, v0, :cond_23

    .line 1349
    const/4 v3, 0x1

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/CalendarView;->drawEvents(IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1350
    add-int/2addr v2, v7

    .line 1348
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1352
    :cond_23
    return-void
.end method

.method private drawAfterScroll(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    .line 1228
    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mPaint:Landroid/graphics/Paint;

    .line 1229
    .local v5, p:Landroid/graphics/Paint;
    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mRect:Landroid/graphics/Rect;

    .line 1231
    .local v3, r:Landroid/graphics/Rect;
    iget v0, p0, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    if-eqz v0, :cond_14

    .line 1232
    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/CalendarView;->drawAllDayEvents(IILandroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1233
    invoke-direct {p0, v3, p1, v5}, Lcom/android/calendar/CalendarView;->drawUpperLeftCorner(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1236
    :cond_14
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1c

    .line 1237
    invoke-direct {p0, v3, p1, v5}, Lcom/android/calendar/CalendarView;->drawDayHeaderLoop(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1241
    :cond_1c
    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mIs24HourFormat:Z

    if-nez v0, :cond_23

    .line 1242
    invoke-direct {p0, p1, v5}, Lcom/android/calendar/CalendarView;->drawAmPm(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1247
    :cond_23
    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    if-nez v0, :cond_30

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1248
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->updateEventDetails()V

    .line 1250
    :cond_30
    return-void
.end method

.method private drawAllDayEvents(IILandroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 42
    .parameter "firstDay"
    .parameter "numDays"
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 1561
    const/high16 v5, 0x4140

    move-object/from16 v0, p5

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1562
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p5

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEventTextPaint:Landroid/graphics/Paint;

    move-object v14, v0

    .line 1566
    .local v14, eventTextPaint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mBannerPlusMargin:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1567
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mAllDayHeight:I

    move v6, v0

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x3

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1568
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1569
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    move v7, v0

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1570
    sget v5, Lcom/android/calendar/CalendarView;->mCalendarAllDayBackground:I

    move-object/from16 v0, p5

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1571
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1574
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1575
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1576
    sget v5, Lcom/android/calendar/CalendarView;->mCalendarGridAreaBackground:I

    move-object/from16 v0, p5

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1577
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1580
    sget v5, Lcom/android/calendar/CalendarView;->mCalendarGridLineVerticalColor:I

    move-object/from16 v0, p5

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1581
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1582
    const/4 v5, 0x0

    move-object/from16 v0, p5

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1583
    const/4 v5, 0x0

    move-object/from16 v0, p5

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1584
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    int-to-float v7, v5

    .line 1585
    .local v7, startY:F
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    int-to-float v9, v5

    .line 1586
    .local v9, stopY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    int-to-float v0, v0

    move/from16 v23, v0

    .line 1587
    .local v23, deltaX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    move v6, v0

    add-int/2addr v5, v6

    int-to-float v6, v5

    .line 1588
    .local v6, x:F
    const/16 v21, 0x0

    .local v21, day:I
    :goto_cc
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move v5, v0

    move/from16 v0, v21

    move v1, v5

    if-gt v0, v1, :cond_e3

    move-object/from16 v5, p4

    move v8, v6

    move-object/from16 v10, p5

    .line 1589
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1590
    add-float v6, v6, v23

    .line 1588
    add-int/lit8 v21, v21, 0x1

    goto :goto_cc

    .line 1592
    :cond_e3
    const/4 v5, 0x1

    move-object/from16 v0, p5

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1593
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1595
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mBannerPlusMargin:I

    move v5, v0

    add-int/lit8 v35, v5, 0x3

    .line 1596
    .local v35, y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    move v5, v0

    move v0, v5

    int-to-float v0, v0

    move/from16 v16, v0

    .line 1597
    .local v16, left:F
    add-int v5, p1, p2

    const/4 v6, 0x1

    sub-int v30, v5, v6

    .line 1598
    .local v30, lastDay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    .line 1599
    .end local v6           #x:F
    .local v27, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v31

    .line 1600
    .local v31, numEvents:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mAllDayHeight:I

    move v5, v0

    move v0, v5

    int-to-float v0, v0

    move/from16 v24, v0

    .line 1601
    .local v24, drawHeight:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    move v5, v0

    move v0, v5

    int-to-float v0, v0

    move/from16 v32, v0

    .line 1602
    .local v32, numRectangles:F
    const/16 v29, 0x0

    .local v29, i:I
    :goto_125
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_1f1

    .line 1603
    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/calendar/Event;

    .line 1604
    .local v11, event:Lcom/android/calendar/Event;
    iget-boolean v5, v11, Lcom/android/calendar/Event;->allDay:Z

    if-nez v5, :cond_13c

    .line 1602
    :cond_139
    :goto_139
    add-int/lit8 v29, v29, 0x1

    goto :goto_125

    .line 1606
    :cond_13c
    move-object v0, v11

    iget v0, v0, Lcom/android/calendar/Event;->startDay:I

    move/from16 v33, v0

    .line 1607
    .local v33, startDay:I
    move-object v0, v11

    iget v0, v0, Lcom/android/calendar/Event;->endDay:I

    move/from16 v25, v0

    .line 1608
    .local v25, endDay:I
    move/from16 v0, v33

    move/from16 v1, v30

    if-gt v0, v1, :cond_139

    move/from16 v0, v25

    move/from16 v1, p1

    if-lt v0, v1, :cond_139

    .line 1610
    move/from16 v0, v33

    move/from16 v1, p1

    if-ge v0, v1, :cond_15a

    .line 1611
    move/from16 v33, p1

    .line 1612
    :cond_15a
    move/from16 v0, v25

    move/from16 v1, v30

    if-le v0, v1, :cond_162

    .line 1613
    move/from16 v25, v30

    .line 1614
    :cond_162
    sub-int v34, v33, p1

    .line 1615
    .local v34, startIndex:I
    sub-int v26, v25, p1

    .line 1616
    .local v26, endIndex:I
    div-float v28, v24, v32

    .line 1619
    .local v28, height:F
    const/high16 v5, 0x4190

    cmpl-float v5, v28, v5

    if-lez v5, :cond_170

    .line 1620
    const/high16 v28, 0x4190

    .line 1625
    :cond_170
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    mul-int v5, v5, v34

    int-to-float v5, v5

    add-float v5, v5, v16

    const/high16 v6, 0x4000

    add-float/2addr v5, v6

    iput v5, v11, Lcom/android/calendar/Event;->left:F

    .line 1626
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    mul-int v5, v5, v26

    int-to-float v5, v5

    add-float v5, v5, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    move v6, v0

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/high16 v6, 0x3f80

    sub-float/2addr v5, v6

    iput v5, v11, Lcom/android/calendar/Event;->right:F

    .line 1627
    move/from16 v0, v35

    int-to-float v0, v0

    move v5, v0

    invoke-virtual {v11}, Lcom/android/calendar/Event;->getColumn()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v28

    add-float/2addr v5, v6

    iput v5, v11, Lcom/android/calendar/Event;->top:F

    .line 1630
    iget v5, v11, Lcom/android/calendar/Event;->top:F

    const v6, 0x3f666666

    mul-float v6, v6, v28

    add-float/2addr v5, v6

    iput v5, v11, Lcom/android/calendar/Event;->bottom:F

    .line 1632
    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/CalendarView;->drawAllDayEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)Landroid/graphics/RectF;

    move-result-object v12

    .line 1633
    .local v12, rf:Landroid/graphics/RectF;
    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object/from16 v13, p4

    invoke-direct/range {v10 .. v15}, Lcom/android/calendar/CalendarView;->drawEventText(Lcom/android/calendar/Event;Landroid/graphics/RectF;Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    .line 1636
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    move v5, v0

    if-eqz v5, :cond_139

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    move v5, v0

    if-eqz v5, :cond_139

    .line 1637
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    move v5, v0

    move/from16 v0, v33

    move v1, v5

    if-gt v0, v1, :cond_139

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    move v5, v0

    move/from16 v0, v25

    move v1, v5

    if-lt v0, v1, :cond_139

    .line 1638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_139

    .line 1643
    .end local v11           #event:Lcom/android/calendar/Event;
    .end local v12           #rf:Landroid/graphics/RectF;
    .end local v25           #endDay:I
    .end local v26           #endIndex:I
    .end local v28           #height:F
    .end local v33           #startDay:I
    .end local v34           #startIndex:I
    :cond_1f1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    move v5, v0

    if-eqz v5, :cond_297

    .line 1646
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->computeAllDayNeighbors()V

    .line 1647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v5, v0

    if-eqz v5, :cond_21b

    .line 1648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v11, v0

    .line 1649
    .restart local v11       #event:Lcom/android/calendar/Event;
    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/CalendarView;->drawAllDayEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)Landroid/graphics/RectF;

    move-result-object v12

    .line 1650
    .restart local v12       #rf:Landroid/graphics/RectF;
    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object/from16 v13, p4

    invoke-direct/range {v10 .. v15}, Lcom/android/calendar/CalendarView;->drawEventText(Lcom/android/calendar/Event;Landroid/graphics/RectF;Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    .line 1654
    .end local v11           #event:Lcom/android/calendar/Event;
    .end local v12           #rf:Landroid/graphics/RectF;
    :cond_21b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mBannerPlusMargin:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    int-to-float v0, v0

    move/from16 v17, v0

    .line 1655
    .local v17, top:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mAllDayHeight:I

    move v5, v0

    int-to-float v5, v5

    add-float v5, v5, v17

    const/high16 v6, 0x4040

    add-float/2addr v5, v6

    const/high16 v6, 0x3f80

    sub-float v19, v5, v6

    .line 1656
    .local v19, bottom:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    move v6, v0

    sub-int v22, v5, v6

    .line 1657
    .local v22, daynum:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    mul-int v6, v6, v22

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    int-to-float v0, v0

    move/from16 v16, v0

    .line 1658
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    move v5, v0

    int-to-float v5, v5

    add-float v5, v5, v16

    const/high16 v6, 0x3f80

    add-float/2addr v5, v6

    const/high16 v6, 0x3f80

    sub-float v18, v5, v6

    .line 1659
    .local v18, right:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_271

    .line 1661
    const/high16 v5, 0x3f80

    sub-float v18, v18, v5

    .line 1663
    :cond_271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPath:Landroid/graphics/Path;

    move-object v15, v0

    .line 1664
    .local v15, path:Landroid/graphics/Path;
    invoke-virtual {v15}, Landroid/graphics/Path;->reset()V

    .line 1665
    sget-object v20, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectionPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p4

    move-object v1, v15

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1670
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/CalendarView;->saveSelectionPosition(FFFF)V

    .line 1672
    .end local v7           #startY:F
    .end local v15           #path:Landroid/graphics/Path;
    .end local v17           #top:F
    .end local v18           #right:F
    .end local v19           #bottom:F
    .end local v22           #daynum:I
    :cond_297
    return-void
.end method

.method private drawAmPm(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 9
    .parameter "canvas"
    .parameter "p"

    .prologue
    const/16 v5, 0xc

    .line 1315
    sget v3, Lcom/android/calendar/CalendarView;->mCalendarAmPmLabel:I

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1316
    const/high16 v3, 0x4110

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1317
    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mBold:Landroid/graphics/Typeface;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1318
    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1319
    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1320
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mAmString:Ljava/lang/String;

    .line 1321
    .local v1, text:Ljava/lang/String;
    iget v3, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    if-lt v3, v5, :cond_24

    .line 1322
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mPmString:Ljava/lang/String;

    .line 1324
    :cond_24
    iget v3, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/calendar/CalendarView;->mHoursTextHeight:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 1325
    .local v2, y:I
    iget v3, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    const/4 v4, 0x4

    sub-int v0, v3, v4

    .line 1326
    .local v0, right:I
    int-to-float v3, v0

    int-to-float v4, v2

    invoke-virtual {p1, v1, v3, v4, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1328
    iget v3, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    if-ge v3, v5, :cond_62

    iget v3, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    add-int/2addr v3, v4

    if-le v3, v5, :cond_62

    .line 1330
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mPmString:Ljava/lang/String;

    .line 1331
    iget v3, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    sub-int v4, v5, v4

    iget v5, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/calendar/CalendarView;->mHoursTextHeight:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 1333
    int-to-float v3, v0

    int-to-float v4, v2

    invoke-virtual {p1, v1, v3, v4, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1335
    :cond_62
    return-void
.end method

.method private drawCalendarView(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 1207
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mSrcRect:Landroid/graphics/Rect;

    .line 1208
    .local v1, src:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mDestRect:Landroid/graphics/Rect;

    .line 1210
    .local v0, dest:Landroid/graphics/Rect;
    iget v2, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1211
    iget v2, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1212
    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 1213
    iget v2, p0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1215
    iget v2, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1216
    iget v2, p0, Lcom/android/calendar/CalendarView;->mViewHeight:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1217
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 1218
    iget v2, p0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1220
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1221
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1222
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1223
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1224
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1225
    return-void
.end method

.method private drawDayHeader(Ljava/lang/String;IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 23
    .parameter "dateStr"
    .parameter "day"
    .parameter "cell"
    .parameter "x"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 1412
    move/from16 v0, p4

    int-to-float v0, v0

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    move v12, v0

    int-to-float v12, v12

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    add-float v9, v11, v12

    .line 1414
    .local v9, xCenter:F
    const/4 v8, 0x0

    .line 1415
    .local v8, isWeekend:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mStartDay:I

    move v11, v0

    if-nez v11, :cond_1f

    if-eqz p2, :cond_43

    const/4 v11, 0x6

    move/from16 v0, p2

    move v1, v11

    if-eq v0, v1, :cond_43

    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mStartDay:I

    move v11, v0

    const/4 v12, 0x1

    if-ne v11, v12, :cond_33

    const/4 v11, 0x5

    move/from16 v0, p2

    move v1, v11

    if-eq v0, v1, :cond_43

    const/4 v11, 0x6

    move/from16 v0, p2

    move v1, v11

    if-eq v0, v1, :cond_43

    :cond_33
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mStartDay:I

    move v11, v0

    const/4 v12, 0x6

    if-ne v11, v12, :cond_44

    if-eqz p2, :cond_43

    const/4 v11, 0x1

    move/from16 v0, p2

    move v1, v11

    if-ne v0, v1, :cond_44

    .line 1418
    :cond_43
    const/4 v8, 0x1

    .line 1421
    :cond_44
    if-eqz v8, :cond_e2

    .line 1422
    sget v11, Lcom/android/calendar/CalendarView;->mWeek_weekendColor:I

    move-object/from16 v0, p6

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1427
    :goto_4e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mFirstDate:I

    move v11, v0

    add-int v5, v11, p2

    .line 1428
    .local v5, dateNum:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mMonthLength:I

    move v11, v0

    if-le v5, v11, :cond_62

    .line 1429
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mMonthLength:I

    move v11, v0

    sub-int/2addr v5, v11

    .line 1434
    :cond_62
    const/16 v11, 0xa

    if-ge v5, v11, :cond_ec

    .line 1435
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1440
    .local v6, dateNumStr:Ljava/lang/String;
    :goto_79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

    move-object v11, v0

    aget-object v7, v11, p2

    .line 1441
    .local v7, header:Lcom/android/calendar/CalendarView$DayHeader;
    if-eqz v7, :cond_89

    iget v11, v7, Lcom/android/calendar/CalendarView$DayHeader;->cell:I

    move v0, v11

    move/from16 v1, p3

    if-eq v0, v1, :cond_c2

    .line 1445
    :cond_89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

    move-object v11, v0

    new-instance v12, Lcom/android/calendar/CalendarView$DayHeader;

    const/4 v13, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/CalendarView$DayHeader;-><init>(Lcom/android/calendar/CalendarView;Lcom/android/calendar/CalendarView$1;)V

    aput-object v12, v11, p2

    .line 1446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

    move-object v11, v0

    aget-object v11, v11, p2

    move/from16 v0, p3

    move-object v1, v11

    iput v0, v1, Lcom/android/calendar/CalendarView$DayHeader;->cell:I

    .line 1447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

    move-object v11, v0

    aget-object v11, v11, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/high16 v13, 0x7f08

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    const/4 v15, 0x1

    aput-object v6, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/calendar/CalendarView$DayHeader;->dateString:Ljava/lang/String;

    .line 1450
    :cond_c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

    move-object v11, v0

    aget-object v11, v11, p2

    move-object v0, v11

    iget-object v0, v0, Lcom/android/calendar/CalendarView$DayHeader;->dateString:Ljava/lang/String;

    move-object/from16 p1, v0

    .line 1452
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mBannerPlusMargin:I

    move v11, v0

    const/4 v12, 0x7

    sub-int/2addr v11, v12

    int-to-float v10, v11

    .line 1453
    .local v10, y:F
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    move v2, v9

    move v3, v10

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1454
    return-void

    .line 1424
    .end local v5           #dateNum:I
    .end local v6           #dateNumStr:Ljava/lang/String;
    .end local v7           #header:Lcom/android/calendar/CalendarView$DayHeader;
    .end local v10           #y:F
    :cond_e2
    sget v11, Lcom/android/calendar/CalendarView;->mCalendarDateBannerTextColor:I

    move-object/from16 v0, p6

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4e

    .line 1437
    .restart local v5       #dateNum:I
    :cond_ec
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #dateNumStr:Ljava/lang/String;
    goto :goto_79
.end method

.method private drawDayHeaderLoop(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 15
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 1266
    sget v0, Lcom/android/calendar/CalendarView;->mCalendarDateBannerBackground:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1267
    iput v6, p1, Landroid/graphics/Rect;->top:I

    .line 1268
    iget v0, p0, Lcom/android/calendar/CalendarView;->mBannerPlusMargin:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1269
    iput v6, p1, Landroid/graphics/Rect;->left:I

    .line 1270
    iget v0, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    iget v5, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v1, v5

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1271
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1274
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1275
    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1276
    sget v0, Lcom/android/calendar/CalendarView;->mCalendarGridAreaBackground:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1277
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1281
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    if-eqz v0, :cond_5b

    .line 1282
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-le v0, v10, :cond_5b

    .line 1283
    sget v0, Lcom/android/calendar/CalendarView;->mCalendarDateSelected:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1284
    iput v6, p1, Landroid/graphics/Rect;->top:I

    .line 1285
    iget v0, p0, Lcom/android/calendar/CalendarView;->mBannerPlusMargin:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1286
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    sub-int v8, v0, v1

    .line 1287
    .local v8, daynum:I
    iget v0, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, v8

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1288
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1289
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1293
    .end local v8           #daynum:I
    :cond_5b
    const/high16 v0, 0x4140

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1294
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1295
    iget v4, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    .line 1296
    .local v4, x:I
    iget v0, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v9, v0, 0x1

    .line 1297
    .local v9, deltaX:I
    iget v3, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    .line 1300
    .local v3, cell:I
    iget v0, p0, Lcom/android/calendar/CalendarView;->mDateStrWidth:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    if-ge v0, v1, :cond_93

    .line 1301
    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    .line 1306
    .local v7, dayNames:[Ljava/lang/String;
    :goto_75
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBold:Landroid/graphics/Typeface;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1307
    invoke-virtual {p3, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1308
    const/4 v2, 0x0

    .local v2, day:I
    :goto_7e
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ge v2, v0, :cond_96

    .line 1309
    iget v0, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    add-int/2addr v0, v2

    aget-object v1, v7, v0

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/CalendarView;->drawDayHeader(Ljava/lang/String;IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1310
    add-int/2addr v4, v9

    .line 1308
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    .line 1303
    .end local v2           #day:I
    .end local v7           #dayNames:[Ljava/lang/String;
    :cond_93
    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    .restart local v7       #dayNames:[Ljava/lang/String;
    goto :goto_75

    .line 1312
    .restart local v2       #day:I
    :cond_96
    return-void
.end method

.method private drawEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)Landroid/graphics/RectF;
    .registers 16
    .parameter "event"
    .parameter "canvas"
    .parameter "p"
    .parameter "eventTextPaint"

    .prologue
    .line 2088
    iget v2, p1, Lcom/android/calendar/Event;->color:I

    .line 2091
    .local v2, color:I
    iget v8, p1, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_9b

    const/4 v8, 0x1

    move v3, v8

    .line 2092
    .local v3, declined:Z
    :goto_9
    if-eqz v3, :cond_32

    .line 2093
    const/high16 v8, -0x100

    and-int v0, v2, v8

    .line 2094
    .local v0, alpha:I
    const v8, 0xffffff

    and-int/2addr v2, v8

    .line 2095
    const/high16 v8, 0xff

    and-int/2addr v8, v2

    shr-int/lit8 v6, v8, 0x10

    .line 2096
    .local v6, red:I
    const v8, 0xff00

    and-int/2addr v8, v2

    shr-int/lit8 v4, v8, 0x8

    .line 2097
    .local v4, green:I
    and-int/lit16 v1, v2, 0xff

    .line 2098
    .local v1, blue:I
    shr-int/lit8 v8, v6, 0x1

    shl-int/lit8 v8, v8, 0x10

    shr-int/lit8 v9, v4, 0x1

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    shr-int/lit8 v9, v1, 0x1

    or-int v2, v8, v9

    .line 2099
    const v8, 0x7f7f7f

    add-int/2addr v8, v0

    add-int/2addr v2, v8

    .line 2103
    .end local v0           #alpha:I
    .end local v1           #blue:I
    .end local v4           #green:I
    .end local v6           #red:I
    :cond_32
    iget-object v8, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-ne v8, p1, :cond_cb

    .line 2104
    iget v8, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9f

    .line 2106
    iput-object p1, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 2108
    sget v8, Lcom/android/calendar/CalendarView;->mPressedColor:I

    invoke-virtual {p3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 2109
    sget v8, Lcom/android/calendar/CalendarView;->mSelectedEventTextColor:I

    invoke-virtual {p4, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 2130
    :goto_47
    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mRectF:Landroid/graphics/RectF;

    .line 2131
    .local v7, rf:Landroid/graphics/RectF;
    iget v8, p1, Lcom/android/calendar/Event;->top:F

    iput v8, v7, Landroid/graphics/RectF;->top:F

    .line 2132
    iget v8, p1, Lcom/android/calendar/Event;->bottom:F

    iput v8, v7, Landroid/graphics/RectF;->bottom:F

    .line 2133
    iget v8, p1, Lcom/android/calendar/Event;->left:F

    iput v8, v7, Landroid/graphics/RectF;->left:F

    .line 2134
    iget v8, p1, Lcom/android/calendar/Event;->right:F

    const/high16 v9, 0x3f80

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 2136
    const/high16 v8, 0x4040

    const/high16 v9, 0x4040

    invoke-virtual {p2, v7, v8, v9, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2139
    const/4 v8, 0x3

    new-array v5, v8, [F

    .line 2140
    .local v5, hsv:[F
    invoke-virtual {p3}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    invoke-static {v8, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 2141
    const/4 v8, 0x1

    const/high16 v9, 0x3f80

    aput v9, v5, v8

    .line 2142
    const/4 v8, 0x2

    aget v9, v5, v8

    const/high16 v10, 0x3f40

    mul-float/2addr v9, v10

    aput v9, v5, v8

    .line 2143
    iget-object v8, p0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 2144
    const/high16 v8, 0x4040

    const/high16 v9, 0x4040

    iget-object v10, p0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {p2, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2146
    iget v8, v7, Landroid/graphics/RectF;->left:F

    const/high16 v9, 0x4000

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->left:F

    .line 2147
    iget v8, v7, Landroid/graphics/RectF;->right:F

    const/high16 v9, 0x4000

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 2149
    return-object v7

    .line 2091
    .end local v3           #declined:Z
    .end local v5           #hsv:[F
    .end local v7           #rf:Landroid/graphics/RectF;
    :cond_9b
    const/4 v8, 0x0

    move v3, v8

    goto/16 :goto_9

    .line 2110
    .restart local v3       #declined:Z
    :cond_9f
    iget v8, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_b1

    .line 2112
    iput-object p1, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 2114
    sget v8, Lcom/android/calendar/CalendarView;->mSelectionColor:I

    invoke-virtual {p3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 2115
    sget v8, Lcom/android/calendar/CalendarView;->mSelectedEventTextColor:I

    invoke-virtual {p4, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_47

    .line 2116
    :cond_b1
    iget v8, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_c1

    .line 2118
    sget v8, Lcom/android/calendar/CalendarView;->mPressedColor:I

    invoke-virtual {p3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 2119
    sget v8, Lcom/android/calendar/CalendarView;->mSelectedEventTextColor:I

    invoke-virtual {p4, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_47

    .line 2121
    :cond_c1
    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2122
    sget v8, Lcom/android/calendar/CalendarView;->mEventTextColor:I

    invoke-virtual {p4, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_47

    .line 2125
    :cond_cb
    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2126
    sget v8, Lcom/android/calendar/CalendarView;->mEventTextColor:I

    invoke-virtual {p4, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_47
.end method

.method private drawEventText(Lcom/android/calendar/Event;Landroid/graphics/RectF;Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V
    .registers 26
    .parameter "event"
    .parameter "rf"
    .parameter "canvas"
    .parameter "p"
    .parameter "topMargin"

    .prologue
    .line 2164
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/CalendarView;->mDrawTextInEventRect:Z

    move/from16 v18, v0

    if-nez v18, :cond_9

    .line 2251
    :cond_8
    return-void

    .line 2168
    :cond_9
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    sub-float v17, v18, v19

    .line 2169
    .local v17, width:F
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    sub-float v8, v18, v19

    .line 2172
    .local v8, height:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mEventTextHeight:I

    move/from16 v18, v0

    add-int/lit8 v12, v18, 0x1

    .line 2175
    .local v12, lineHeight:I
    const/high16 v18, 0x4120

    cmpg-float v18, v17, v18

    if-ltz v18, :cond_8

    move v0, v12

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v8, v18

    if-lez v18, :cond_8

    .line 2180
    invoke-virtual/range {p1 .. p1}, Lcom/android/calendar/Event;->getTitleAndLocation()Ljava/lang/String;

    move-result-object v15

    .line 2182
    .local v15, text:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/calendar/CalendarView;->drawTextSanitizer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2184
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v11

    .line 2185
    .local v11, len:I
    const/16 v18, 0x1f4

    move v0, v11

    move/from16 v1, v18

    if-le v0, v1, :cond_60

    .line 2186
    const/16 v18, 0x0

    const/16 v19, 0x1f4

    move-object v0, v15

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 2187
    const/16 v11, 0x1f4

    .line 2193
    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mCharWidths:[F

    move-object/from16 v18, v0

    move-object/from16 v0, p4

    move-object v1, v15

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 2194
    move-object v7, v15

    .line 2195
    .local v7, fragment:Ljava/lang/String;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mEventTextAscent:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v16, v18, v19

    .line 2196
    .local v16, top:F
    const/4 v13, 0x0

    .line 2199
    .local v13, start:I
    :goto_8a
    if-ge v13, v11, :cond_8

    add-int/lit8 v18, v12, 0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v8, v18

    if-ltz v18, :cond_8

    .line 2200
    mul-int/lit8 v18, v12, 0x2

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v8, v18

    if-gez v18, :cond_107

    const/16 v18, 0x1

    move/from16 v10, v18

    .line 2203
    .local v10, lastLine:Z
    :cond_a8
    :goto_a8
    invoke-virtual {v15, v13}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2204
    .local v5, c:C
    const/16 v18, 0x20

    move v0, v5

    move/from16 v1, v18

    if-eq v0, v1, :cond_10c

    .line 2208
    :goto_b3
    const/4 v14, 0x0

    .line 2209
    .local v14, sum:F
    move v6, v13

    .line 2210
    .local v6, end:I
    move v9, v13

    .local v9, ii:I
    :goto_b6
    if-ge v9, v11, :cond_db

    .line 2211
    invoke-virtual {v15, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2215
    const/16 v18, 0x20

    move v0, v5

    move/from16 v1, v18

    if-ne v0, v1, :cond_c4

    .line 2216
    move v6, v9

    .line 2218
    :cond_c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mCharWidths:[F

    move-object/from16 v18, v0

    aget v18, v18, v9

    add-float v14, v14, v18

    .line 2222
    cmpl-float v18, v14, v17

    if-lez v18, :cond_117

    .line 2223
    if-le v6, v13, :cond_111

    if-nez v10, :cond_111

    .line 2225
    invoke-virtual {v15, v13, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2226
    move v13, v6

    .line 2241
    :cond_db
    :goto_db
    cmpg-float v18, v14, v17

    if-gtz v18, :cond_e4

    .line 2242
    invoke-virtual {v15, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2243
    move v13, v11

    .line 2246
    :cond_e4
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    const/high16 v19, 0x3f80

    add-float v18, v18, v19

    move-object/from16 v0, p3

    move-object v1, v7

    move/from16 v2, v18

    move/from16 v3, v16

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2248
    move v0, v12

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v16, v16, v18

    .line 2249
    move v0, v12

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v8, v8, v18

    .line 2250
    goto :goto_8a

    .line 2200
    .end local v5           #c:C
    .end local v6           #end:I
    .end local v9           #ii:I
    .end local v10           #lastLine:Z
    .end local v14           #sum:F
    :cond_107
    const/16 v18, 0x0

    move/from16 v10, v18

    goto :goto_a8

    .line 2205
    .restart local v5       #c:C
    .restart local v10       #lastLine:Z
    :cond_10c
    add-int/lit8 v13, v13, 0x1

    .line 2206
    if-lt v13, v11, :cond_a8

    goto :goto_b3

    .line 2233
    .restart local v6       #end:I
    .restart local v9       #ii:I
    .restart local v14       #sum:F
    :cond_111
    invoke-virtual {v15, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2234
    move v13, v9

    .line 2235
    goto :goto_db

    .line 2210
    :cond_117
    add-int/lit8 v9, v9, 0x1

    goto :goto_b6
.end method

.method private drawEvents(IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 28
    .parameter "date"
    .parameter "left"
    .parameter "top"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 1758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEventTextPaint:Landroid/graphics/Paint;

    move-object v15, v0

    .line 1759
    .local v15, eventTextPaint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    move v9, v0

    .line 1760
    .local v9, cellWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    move/from16 v17, v0

    .line 1763
    .local v17, cellHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    .line 1764
    .local v21, selectionArea:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    move v6, v0

    add-int/lit8 v7, v17, 0x1

    mul-int/2addr v6, v7

    add-int v6, v6, p3

    move v0, v6

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1765
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    add-int v6, v6, v17

    move v0, v6

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1766
    move/from16 v0, p2

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1767
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    add-int/2addr v6, v9

    move v0, v6

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 1770
    .local v18, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 1771
    .local v20, numEvents:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    move-object v5, v0

    .line 1773
    .local v5, geometry:Lcom/android/calendar/EventGeometry;
    const/16 v19, 0x0

    .local v19, i:I
    :goto_53
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_af

    .line 1774
    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/calendar/Event;

    .local v10, event:Lcom/android/calendar/Event;
    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    .line 1775
    invoke-virtual/range {v5 .. v10}, Lcom/android/calendar/EventGeometry;->computeEventRect(IIIILcom/android/calendar/Event;)Z

    move-result v6

    if-nez v6, :cond_6e

    .line 1773
    :goto_6b
    add-int/lit8 v19, v19, 0x1

    goto :goto_53

    .line 1779
    :cond_6e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    move v6, v0

    move/from16 v0, p1

    move v1, v6

    if-ne v0, v1, :cond_98

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    move v6, v0

    if-nez v6, :cond_98

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    move v6, v0

    if-eqz v6, :cond_98

    move-object v0, v5

    move-object v1, v10

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/EventGeometry;->eventIntersectsSelection(Lcom/android/calendar/Event;Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_98

    .line 1781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1784
    :cond_98
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object v4, v15

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/CalendarView;->drawEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)Landroid/graphics/RectF;

    move-result-object v13

    .line 1785
    .local v13, rf:Landroid/graphics/RectF;
    const/16 v16, 0x2

    move-object/from16 v11, p0

    move-object v12, v10

    move-object/from16 v14, p4

    invoke-direct/range {v11 .. v16}, Lcom/android/calendar/CalendarView;->drawEventText(Lcom/android/calendar/Event;Landroid/graphics/RectF;Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    goto :goto_6b

    .line 1788
    .end local v10           #event:Lcom/android/calendar/Event;
    .end local v13           #rf:Landroid/graphics/RectF;
    :cond_af
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    move v6, v0

    move/from16 v0, p1

    move v1, v6

    if-ne v0, v1, :cond_f6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    move v6, v0

    if-nez v6, :cond_f6

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_f6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    move v6, v0

    if-eqz v6, :cond_f6

    .line 1790
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->computeNeighbors()V

    .line 1791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v6, v0

    if-eqz v6, :cond_f6

    .line 1792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object v4, v15

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/CalendarView;->drawEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)Landroid/graphics/RectF;

    move-result-object v13

    .line 1793
    .restart local v13       #rf:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v12, v0

    const/16 v16, 0x2

    move-object/from16 v11, p0

    move-object/from16 v14, p4

    invoke-direct/range {v11 .. v16}, Lcom/android/calendar/CalendarView;->drawEventText(Lcom/android/calendar/Event;Landroid/graphics/RectF;Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    .line 1796
    .end local v13           #rf:Landroid/graphics/RectF;
    :cond_f6
    return-void
.end method

.method private drawGridBackground(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 22
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 1457
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v17

    .line 1460
    .local v17, savedStyle:Landroid/graphics/Paint$Style;
    sget v3, Lcom/android/calendar/CalendarView;->mCalendarGridAreaBackground:I

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1461
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p1

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1462
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    move v3, v0

    move v0, v3

    move-object/from16 v1, p1

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1463
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p1

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1464
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    move v3, v0

    move v0, v3

    move-object/from16 v1, p1

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1465
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1468
    sget v3, Lcom/android/calendar/CalendarView;->mCalendarGridLineHorizontalColor:I

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1469
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1470
    const/4 v3, 0x0

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1471
    const/4 v3, 0x0

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1472
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    move v3, v0

    int-to-float v4, v3

    .line 1473
    .local v4, startX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move v6, v0

    mul-int/2addr v5, v6

    add-int/2addr v3, v5

    int-to-float v6, v3

    .line 1474
    .local v6, stopX:F
    const/4 v5, 0x0

    .line 1475
    .local v5, y:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    int-to-float v15, v3

    .line 1476
    .local v15, deltaY:F
    const/16 v16, 0x0

    .local v16, hour:I
    :goto_78
    const/16 v3, 0x18

    move/from16 v0, v16

    move v1, v3

    if-gt v0, v1, :cond_8b

    move-object/from16 v3, p2

    move v7, v5

    move-object/from16 v8, p3

    .line 1477
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1478
    add-float/2addr v5, v15

    .line 1476
    add-int/lit8 v16, v16, 0x1

    goto :goto_78

    .line 1482
    :cond_8b
    sget v3, Lcom/android/calendar/CalendarView;->mCalendarGridLineVerticalColor:I

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1483
    const/4 v9, 0x0

    .line 1484
    .local v9, startY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x18

    add-int/lit8 v3, v3, 0x1

    int-to-float v11, v3

    .line 1485
    .local v11, stopY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    int-to-float v14, v3

    .line 1486
    .local v14, deltaX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    move v4, v0

    .end local v4           #startX:F
    add-int/2addr v3, v4

    int-to-float v8, v3

    .line 1487
    .local v8, x:F
    const/4 v13, 0x0

    .local v13, day:I
    :goto_b5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move v3, v0

    if-ge v13, v3, :cond_c8

    move-object/from16 v7, p2

    move v10, v8

    move-object/from16 v12, p3

    .line 1488
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1489
    add-float/2addr v8, v14

    .line 1487
    add-int/lit8 v13, v13, 0x1

    goto :goto_b5

    .line 1493
    :cond_c8
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1494
    const/4 v3, 0x1

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1495
    return-void
.end method

.method private drawHours(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 16
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 1356
    sget v1, Lcom/android/calendar/CalendarView;->mCalendarHourBackground:I

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1357
    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 1358
    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x18

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 1359
    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 1360
    iget v1, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 1361
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1364
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 1365
    iget v1, p0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 1366
    sget v1, Lcom/android/calendar/CalendarView;->mCalendarGridAreaBackground:I

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1367
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1370
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    if-eqz v1, :cond_a8

    iget-boolean v1, p0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    if-nez v1, :cond_a8

    .line 1371
    sget v1, Lcom/android/calendar/CalendarView;->mCalendarHourSelected:I

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1372
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 1373
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 1374
    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 1375
    iget v1, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 1376
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1379
    sget v1, Lcom/android/calendar/CalendarView;->mCalendarGridAreaSelected:I

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1380
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    sub-int v6, v1, v2

    .line 1381
    .local v6, daynum:I
    iget v1, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v6

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 1382
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 1383
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1386
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPath:Landroid/graphics/Path;

    .line 1387
    .local v0, path:Landroid/graphics/Path;
    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 1388
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v11

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 1389
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 1390
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1391
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mSelectionPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1392
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/calendar/CalendarView;->saveSelectionPosition(FFFF)V

    .line 1395
    .end local v0           #path:Landroid/graphics/Path;
    .end local v6           #daynum:I
    :cond_a8
    sget v1, Lcom/android/calendar/CalendarView;->mCalendarHourLabel:I

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1396
    const/high16 v1, 0x4140

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1397
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mBold:Landroid/graphics/Typeface;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1398
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1399
    invoke-virtual {p3, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1401
    iget v1, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    const/4 v2, 0x4

    sub-int v8, v1, v2

    .line 1402
    .local v8, right:I
    iget v1, p0, Lcom/android/calendar/CalendarView;->mHoursTextHeight:I

    add-int/lit8 v10, v1, 0x1

    .line 1404
    .local v10, y:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_c9
    const/16 v1, 0x18

    if-ge v7, v1, :cond_de

    .line 1405
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mHourStrs:[Ljava/lang/String;

    aget-object v9, v1, v7

    .line 1406
    .local v9, time:Ljava/lang/String;
    int-to-float v1, v8

    int-to-float v2, v10

    invoke-virtual {p2, v9, v1, v2, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1407
    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v10, v1

    .line 1404
    add-int/lit8 v7, v7, 0x1

    goto :goto_c9

    .line 1409
    .end local v9           #time:Ljava/lang/String;
    :cond_de
    return-void
.end method

.method private drawTextSanitizer(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "string"

    .prologue
    const/16 v3, 0x20

    const/16 v2, 0xa

    .line 2158
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->drawTextSanitizerFilter:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2159
    .local v0, m:Ljava/util/regex/Matcher;
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 2160
    return-object p1
.end method

.method private drawUpperLeftCorner(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 6
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 1256
    sget v0, Lcom/android/calendar/CalendarView;->mCalendarHourBackground:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1257
    iget v0, p0, Lcom/android/calendar/CalendarView;->mBannerPlusMargin:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1258
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mAllDayHeight:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1259
    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1260
    iget v0, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1261
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1262
    return-void
.end method

.method private findSelectedEvent(II)V
    .registers 38
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2818
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    move v5, v0

    .line 2819
    .local v5, date:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    move v8, v0

    .line 2820
    .local v8, cellWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 2821
    .local v18, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 2822
    .local v25, numEvents:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    move/from16 v34, v0

    sub-int v33, v33, v34

    add-int/lit8 v34, v8, 0x1

    mul-int v33, v33, v34

    add-int v6, v32, v33

    .line 2823
    .local v6, left:I
    const/4 v7, 0x0

    .line 2824
    .local v7, top:I
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 2826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->clear()V

    .line 2827
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    move/from16 v32, v0

    if-eqz v32, :cond_109

    .line 2829
    const v24, 0x461c4000

    .line 2830
    .local v24, minYdistance:F
    const/4 v10, 0x0

    .line 2831
    .local v10, closestEvent:Lcom/android/calendar/Event;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mAllDayHeight:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move v12, v0

    .line 2832
    .local v12, drawHeight:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mBannerPlusMargin:I

    move/from16 v32, v0

    add-int/lit8 v31, v32, 0x3

    .line 2833
    .local v31, yOffset:I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_60
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_e2

    .line 2834
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/Event;

    .line 2835
    .local v9, event:Lcom/android/calendar/Event;
    move-object v0, v9

    iget-boolean v0, v0, Lcom/android/calendar/Event;->allDay:Z

    move/from16 v32, v0

    if-nez v32, :cond_7a

    .line 2833
    :cond_77
    :goto_77
    add-int/lit8 v20, v20, 0x1

    goto :goto_60

    .line 2839
    :cond_7a
    move-object v0, v9

    iget v0, v0, Lcom/android/calendar/Event;->startDay:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_77

    move-object v0, v9

    iget v0, v0, Lcom/android/calendar/Event;->endDay:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_77

    .line 2840
    invoke-virtual {v9}, Lcom/android/calendar/Event;->getMaxColumns()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v26, v0

    .line 2841
    .local v26, numRectangles:F
    div-float v19, v12, v26

    .line 2842
    .local v19, height:F
    const/high16 v32, 0x4190

    cmpl-float v32, v19, v32

    if-lez v32, :cond_af

    .line 2843
    const/high16 v19, 0x4190

    .line 2845
    :cond_af
    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v32, v0

    invoke-virtual {v9}, Lcom/android/calendar/Event;->getColumn()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v33, v33, v19

    add-float v17, v32, v33

    .line 2846
    .local v17, eventTop:F
    add-float v16, v17, v19

    .line 2847
    .local v16, eventBottom:F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v32, v0

    cmpg-float v32, v17, v32

    if-gez v32, :cond_e8

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v32, v0

    cmpl-float v32, v16, v32

    if-lez v32, :cond_e8

    .line 2850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2851
    move-object v10, v9

    .line 2867
    .end local v9           #event:Lcom/android/calendar/Event;
    .end local v16           #eventBottom:F
    .end local v17           #eventTop:F
    .end local v19           #height:F
    .end local v26           #numRectangles:F
    :cond_e2
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 2939
    .end local v10           #closestEvent:Lcom/android/calendar/Event;
    .end local v12           #drawHeight:F
    .end local v24           #minYdistance:F
    .end local v31           #yOffset:I
    :cond_e7
    :goto_e7
    return-void

    .line 2855
    .restart local v9       #event:Lcom/android/calendar/Event;
    .restart local v10       #closestEvent:Lcom/android/calendar/Event;
    .restart local v12       #drawHeight:F
    .restart local v16       #eventBottom:F
    .restart local v17       #eventTop:F
    .restart local v19       #height:F
    .restart local v24       #minYdistance:F
    .restart local v26       #numRectangles:F
    .restart local v31       #yOffset:I
    :cond_e8
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v32, v0

    cmpl-float v32, v17, v32

    if-ltz v32, :cond_101

    .line 2856
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v30, v17, v32

    .line 2860
    .local v30, yDistance:F
    :goto_f8
    cmpg-float v32, v30, v24

    if-gez v32, :cond_77

    .line 2861
    move/from16 v24, v30

    .line 2862
    move-object v10, v9

    goto/16 :goto_77

    .line 2858
    .end local v30           #yDistance:F
    :cond_101
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v30, v32, v16

    .restart local v30       #yDistance:F
    goto :goto_f8

    .line 2872
    .end local v9           #event:Lcom/android/calendar/Event;
    .end local v10           #closestEvent:Lcom/android/calendar/Event;
    .end local v12           #drawHeight:F
    .end local v16           #eventBottom:F
    .end local v17           #eventTop:F
    .end local v19           #height:F
    .end local v20           #i:I
    .end local v24           #minYdistance:F
    .end local v26           #numRectangles:F
    .end local v30           #yDistance:F
    .end local v31           #yOffset:I
    :cond_109
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    add-int p2, p2, v32

    .line 2875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    .line 2876
    .local v27, region:Landroid/graphics/Rect;
    const/16 v32, 0xa

    sub-int v32, p1, v32

    move/from16 v0, v32

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2877
    add-int/lit8 v32, p1, 0xa

    move/from16 v0, v32

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2878
    const/16 v32, 0xa

    sub-int v32, p2, v32

    move/from16 v0, v32

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2879
    add-int/lit8 v32, p2, 0xa

    move/from16 v0, v32

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    move-object v4, v0

    .line 2883
    .local v4, geometry:Lcom/android/calendar/EventGeometry;
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_14a
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_17a

    .line 2884
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/Event;

    .line 2886
    .restart local v9       #event:Lcom/android/calendar/Event;
    invoke-virtual/range {v4 .. v9}, Lcom/android/calendar/EventGeometry;->computeEventRect(IIIILcom/android/calendar/Event;)Z

    move-result v32

    if-nez v32, :cond_163

    .line 2883
    :cond_160
    :goto_160
    add-int/lit8 v20, v20, 0x1

    goto :goto_14a

    .line 2892
    :cond_163
    move-object v0, v4

    move-object v1, v9

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/EventGeometry;->eventIntersectsSelection(Lcom/android/calendar/Event;Landroid/graphics/Rect;)Z

    move-result v32

    if-eqz v32, :cond_160

    .line 2893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_160

    .line 2899
    .end local v9           #event:Lcom/android/calendar/Event;
    :cond_17a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    if-lez v32, :cond_e7

    .line 2900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 2901
    .local v22, len:I
    const/4 v10, 0x0

    .line 2902
    .restart local v10       #closestEvent:Lcom/android/calendar/Event;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mViewHeight:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v23, v0

    .line 2903
    .local v23, minDist:F
    const/16 v21, 0x0

    .local v21, index:I
    :goto_1a6
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1da

    .line 2904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/calendar/Event;

    .line 2905
    .local v15, ev:Lcom/android/calendar/Event;
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v33, v0

    move-object v0, v4

    move/from16 v1, v32

    move/from16 v2, v33

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/EventGeometry;->pointToEvent(FFLcom/android/calendar/Event;)F

    move-result v11

    .line 2906
    .local v11, dist:F
    cmpg-float v32, v11, v23

    if-gez v32, :cond_1d7

    .line 2907
    move/from16 v23, v11

    .line 2908
    move-object v10, v15

    .line 2903
    :cond_1d7
    add-int/lit8 v21, v21, 0x1

    goto :goto_1a6

    .line 2911
    .end local v11           #dist:F
    .end local v15           #ev:Lcom/android/calendar/Event;
    :cond_1da
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 2917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/calendar/Event;->startDay:I

    move/from16 v28, v0

    .line 2918
    .local v28, startDay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/calendar/Event;->endDay:I

    move v13, v0

    .line 2919
    .local v13, endDay:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v28

    if-ge v0, v1, :cond_25a

    .line 2920
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    .line 2925
    :cond_208
    :goto_208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/calendar/Event;->startTime:I

    move/from16 v32, v0

    div-int/lit8 v29, v32, 0x3c

    .line 2927
    .local v29, startHour:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/calendar/Event;->startTime:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/calendar/Event;->endTime:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_26b

    .line 2928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/calendar/Event;->endTime:I

    move/from16 v32, v0

    const/16 v33, 0x1

    sub-int v32, v32, v33

    div-int/lit8 v14, v32, 0x3c

    .line 2933
    .local v14, endHour:I
    :goto_246
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v29

    if-ge v0, v1, :cond_27a

    .line 2934
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    goto/16 :goto_e7

    .line 2921
    .end local v14           #endHour:I
    .end local v29           #startHour:I
    :cond_25a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    move/from16 v32, v0

    move/from16 v0, v32

    move v1, v13

    if-le v0, v1, :cond_208

    .line 2922
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    goto :goto_208

    .line 2930
    .restart local v29       #startHour:I
    :cond_26b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/calendar/Event;->endTime:I

    move/from16 v32, v0

    div-int/lit8 v14, v32, 0x3c

    .restart local v14       #endHour:I
    goto :goto_246

    .line 2935
    :cond_27a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    move/from16 v32, v0

    move/from16 v0, v32

    move v1, v14

    if-le v0, v1, :cond_e7

    .line 2936
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    goto/16 :goto_e7
.end method

.method private getCurrentSelectionPosition()Landroid/graphics/Rect;
    .registers 5

    .prologue
    .line 1550
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1551
    .local v0, box:Landroid/graphics/Rect;
    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1552
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1553
    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    sub-int v1, v2, v3

    .line 1554
    .local v1, daynum:I
    iget v2, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, v1

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1555
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1556
    return-object v0
.end method

.method static getNewEvent(IJI)Lcom/android/calendar/Event;
    .registers 9
    .parameter "julianDay"
    .parameter "utcMillis"
    .parameter "minutesSinceMidnight"

    .prologue
    .line 1517
    invoke-static {}, Lcom/android/calendar/Event;->newInstance()Lcom/android/calendar/Event;

    move-result-object v0

    .line 1518
    .local v0, event:Lcom/android/calendar/Event;
    iput p0, v0, Lcom/android/calendar/Event;->startDay:I

    .line 1519
    iput p0, v0, Lcom/android/calendar/Event;->endDay:I

    .line 1520
    iput-wide p1, v0, Lcom/android/calendar/Event;->startMillis:J

    .line 1521
    iget-wide v1, v0, Lcom/android/calendar/Event;->startMillis:J

    const-wide/32 v3, 0x36ee80

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/calendar/Event;->endMillis:J

    .line 1522
    iput p3, v0, Lcom/android/calendar/Event;->startTime:I

    .line 1523
    iget v1, v0, Lcom/android/calendar/Event;->startTime:I

    add-int/lit8 v1, v1, 0x3c

    iput v1, v0, Lcom/android/calendar/Event;->endTime:I

    .line 1524
    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 21
    .parameter "context"

    .prologue
    .line 326
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarView;->setFocusable(Z)V

    .line 330
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarView;->setFocusableInTouchMode(Z)V

    .line 331
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarView;->setClickable(Z)V

    .line 332
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 334
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mStartDay:I

    .line 335
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mStartDay:I

    move v15, v0

    const/16 v16, 0x7

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_228

    .line 336
    const/4 v15, 0x6

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mStartDay:I

    .line 343
    :goto_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object v15, v0

    const v16, 0x7f070007

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    sput v15, Lcom/android/calendar/CalendarView;->mWeek_weekendColor:I

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object v15, v0

    const v16, 0x7f07000e

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    sput v15, Lcom/android/calendar/CalendarView;->mCalendarDateBannerTextColor:I

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object v15, v0

    const v16, 0x7f070006

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    sput v15, Lcom/android/calendar/CalendarView;->mCalendarAllDayBackground:I

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object v15, v0

    const v16, 0x7f070009

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    sput v15, Lcom/android/calendar/CalendarView;->mCalendarAmPmLabel:I

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object v15, v0

    const v16, 0x7f07000c

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    sput v15, Lcom/android/calendar/CalendarView;->mCalendarDateBannerBackground:I

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object v15, v0

    const v16, 0x7f07000d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    sput v15, Lcom/android/calendar/CalendarView;->mCalendarDateSelected:I

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object v15, v0

    const v16, 0x7f07000f

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    sput v15, Lcom/android/calendar/CalendarView;->mCalendarGridAreaBackground:I

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object v15, v0

    const v16, 0x7f070010

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    sput v15, Lcom/android/calendar/CalendarView;->mCalendarGridAreaSelected:I

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object v15, v0

    const v16, 0x7f070011

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    sput v15, Lcom/android/calendar/CalendarView;->mCalendarGridLineHorizontalColor:I

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object v15, v0

    const v16, 0x7f070012

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    sput v15, Lcom/android/calendar/CalendarView;->mCalendarGridLineVerticalColor:I

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object v15, v0

    const v16, 0x7f07000a

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    sput v15, Lcom/android/calendar/CalendarView;->mCalendarHourBackground:I

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object v15, v0

    const v16, 0x7f070008

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    sput v15, Lcom/android/calendar/CalendarView;->mCalendarHourLabel:I

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object v15, v0

    const v16, 0x7f07000b

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    sput v15, Lcom/android/calendar/CalendarView;->mCalendarHourSelected:I

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object v15, v0

    const v16, 0x7f070014

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    sput v15, Lcom/android/calendar/CalendarView;->mSelectionColor:I

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object v15, v0

    const v16, 0x7f070015

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    sput v15, Lcom/android/calendar/CalendarView;->mPressedColor:I

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object v15, v0

    const v16, 0x7f070004

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    sput v15, Lcom/android/calendar/CalendarView;->mSelectedEventTextColor:I

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object v15, v0

    const v16, 0x7f070005

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    sput v15, Lcom/android/calendar/CalendarView;->mEventTextColor:I

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEventTextPaint:Landroid/graphics/Paint;

    move-object v15, v0

    sget v16, Lcom/android/calendar/CalendarView;->mEventTextColor:I

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setColor(I)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEventTextPaint:Landroid/graphics/Paint;

    move-object v15, v0

    const/high16 v16, 0x4140

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEventTextPaint:Landroid/graphics/Paint;

    move-object v15, v0

    sget-object v16, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEventTextPaint:Landroid/graphics/Paint;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object v15, v0

    const v16, 0x7f070013

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 366
    .local v7, gridLineColor:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectionPaint:Landroid/graphics/Paint;

    move-object v13, v0

    .line 367
    .local v13, p:Landroid/graphics/Paint;
    invoke-virtual {v13, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 368
    sget-object v15, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 369
    const/high16 v15, 0x4000

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 370
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPaint:Landroid/graphics/Paint;

    move-object v13, v0

    .line 373
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    move-object v15, v0

    const v16, -0x373738

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setColor(I)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    move-object v15, v0

    sget-object v16, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    move-object v15, v0

    const/high16 v16, 0x4000

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 382
    const/16 v15, 0xe

    new-array v15, v15, [Ljava/lang/String;

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    .line 385
    const/16 v15, 0xe

    new-array v15, v15, [Ljava/lang/String;

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    .line 387
    const/4 v8, 0x1

    .local v8, i:I
    :goto_1b8
    const/4 v15, 0x7

    if-gt v8, v15, :cond_244

    .line 388
    const/4 v15, 0x1

    sub-int v9, v8, v15

    .line 390
    .local v9, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    move-object v15, v0

    const/16 v16, 0x14

    move v0, v8

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v9

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    move-object v15, v0

    add-int/lit8 v16, v9, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v9

    aput-object v17, v15, v16

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    move-object v15, v0

    const/16 v16, 0x1e

    move v0, v8

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v9

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    move-object v15, v0

    aget-object v15, v15, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v9

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_214

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    move-object v15, v0

    const/16 v16, 0x32

    move v0, v8

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v9

    .line 400
    :cond_214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    move-object v15, v0

    add-int/lit8 v16, v9, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v9

    aput-object v17, v15, v16

    .line 387
    add-int/lit8 v8, v8, 0x1

    goto :goto_1b8

    .line 337
    .end local v7           #gridLineColor:I
    .end local v8           #i:I
    .end local v9           #index:I
    .end local v13           #p:Landroid/graphics/Paint;
    :cond_228
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mStartDay:I

    move v15, v0

    const/16 v16, 0x2

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_23c

    .line 338
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mStartDay:I

    goto/16 :goto_3b

    .line 340
    :cond_23c
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mStartDay:I

    goto/16 :goto_3b

    .line 405
    .restart local v7       #gridLineColor:I
    .restart local v8       #i:I
    .restart local v13       #p:Landroid/graphics/Paint;
    :cond_244
    const/high16 v15, 0x4140

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mBold:Landroid/graphics/Typeface;

    move-object v15, v0

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 407
    const/4 v15, 0x2

    new-array v5, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, " 28"

    aput-object v16, v5, v15

    const/4 v15, 0x1

    const-string v16, " 30"

    aput-object v16, v5, v15

    .line 408
    .local v5, dateStrs:[Ljava/lang/String;
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move-object v2, v5

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/CalendarView;->computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mDateStrWidth:I

    .line 409
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mDateStrWidth:I

    move v15, v0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/CalendarView;->computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v16

    add-int v15, v15, v16

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mDateStrWidth:I

    .line 411
    const/high16 v15, 0x4140

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 412
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 413
    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/CalendarView;->mIs24HourFormat:Z

    .line 414
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/CalendarView;->mIs24HourFormat:Z

    move v15, v0

    if-eqz v15, :cond_3eb

    sget-object v15, Lcom/android/calendar/CalendarData;->s24Hours:[Ljava/lang/String;

    :goto_2a7
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mHourStrs:[Ljava/lang/String;

    .line 415
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mHourStrs:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/CalendarView;->computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    .line 417
    const/4 v15, 0x0

    invoke-static {v15}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mAmString:Ljava/lang/String;

    .line 418
    const/4 v15, 0x1

    invoke-static {v15}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mPmString:Ljava/lang/String;

    .line 419
    const/4 v15, 0x2

    new-array v4, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mAmString:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v4, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPmString:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v4, v15

    .line 420
    .local v4, ampm:[Ljava/lang/String;
    const/high16 v15, 0x4110

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 421
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    move v15, v0

    move-object/from16 v0, p0

    move v1, v15

    move-object v2, v4

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/CalendarView;->computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    .line 422
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    move v15, v0

    add-int/lit8 v15, v15, 0x6

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    .line 425
    const-string v15, "layout_inflater"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 426
    .local v10, inflater:Landroid/view/LayoutInflater;
    const v15, 0x7f030007

    const/16 v16, 0x0

    move-object v0, v10

    move v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mPopupView:Landroid/view/View;

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPopupView:Landroid/view/View;

    move-object v15, v0

    new-instance v16, Landroid/view/ViewGroup$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x2

    invoke-direct/range {v16 .. v18}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    new-instance v15, Landroid/widget/PopupWindow;

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPopupView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .line 433
    .local v6, dialogTheme:Landroid/content/res/Resources$Theme;
    const v15, 0x103000b

    const/16 v16, 0x1

    move-object v0, v6

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 434
    const/4 v15, 0x1

    new-array v15, v15, [I

    const/16 v16, 0x0

    const v17, 0x1010054

    aput v17, v15, v16

    invoke-virtual {v6, v15}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 436
    .local v14, ta:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    move-object v15, v0

    const/16 v16, 0x0

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 437
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPopupView:Landroid/view/View;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    .line 443
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 444
    .local v11, millis:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    move-object v15, v0

    invoke-virtual {v15, v11, v12}, Landroid/text/format/Time;->set(J)V

    .line 446
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move v15, v0

    new-array v15, v15, [I

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mEarliestStartHour:[I

    .line 447
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move v15, v0

    new-array v15, v15, [Z

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mHasAllDayEvent:[Z

    .line 449
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const/high16 v16, 0x7f09

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mNumHours:I

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    move-object v15, v0

    const v16, 0x7f0c0002

    invoke-virtual/range {v15 .. v16}, Lcom/android/calendar/CalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mTitleTextView:Landroid/widget/TextView;

    .line 451
    return-void

    .line 414
    .end local v4           #ampm:[Ljava/lang/String;
    .end local v6           #dialogTheme:Landroid/content/res/Resources$Theme;
    .end local v10           #inflater:Landroid/view/LayoutInflater;
    .end local v11           #millis:J
    .end local v14           #ta:Landroid/content/res/TypedArray;
    .restart local p1
    :cond_3eb
    sget-object v15, Lcom/android/calendar/CalendarData;->s12HoursNoAmPm:[Ljava/lang/String;

    goto/16 :goto_2a7
.end method

.method private initFirstHour()V
    .registers 4

    .prologue
    const/16 v2, 0x18

    .line 1036
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    .line 1037
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    if-gez v0, :cond_13

    .line 1038
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    .line 1042
    :cond_12
    :goto_12
    return-void

    .line 1039
    :cond_13
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    add-int/2addr v0, v1

    if-le v0, v2, :cond_12

    .line 1040
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    sub-int v0, v2, v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    goto :goto_12
.end method

.method private initNextView(I)Z
    .registers 9
    .parameter "deltaX"

    .prologue
    .line 2465
    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v3}, Lcom/android/calendar/CalendarActivity;->getNextView()Lcom/android/calendar/CalendarView;

    move-result-object v2

    .line 2466
    .local v2, view:Lcom/android/calendar/CalendarView;
    iget-object v0, v2, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    .line 2467
    .local v0, date:Landroid/text/format/Time;
    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 2469
    if-lez p1, :cond_3c

    .line 2470
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 2471
    iget v3, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    .line 2472
    const/4 v1, 0x0

    .line 2478
    .local v1, switchForward:Z
    :goto_1e
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 2479
    invoke-direct {p0, v2}, Lcom/android/calendar/CalendarView;->initView(Lcom/android/calendar/CalendarView;)V

    .line 2480
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/calendar/CalendarView;->setFrame(IIII)Z

    .line 2481
    invoke-virtual {v2}, Lcom/android/calendar/CalendarView;->reloadEvents()V

    .line 2482
    return v1

    .line 2474
    .end local v1           #switchForward:Z
    :cond_3c
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 2475
    iget v3, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    .line 2476
    const/4 v1, 0x1

    .restart local v1       #switchForward:Z
    goto :goto_1e
.end method

.method private initView(Lcom/android/calendar/CalendarView;)V
    .registers 6
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 738
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iput v0, p1, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 739
    iget-object v0, p1, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 740
    iput-boolean v2, p1, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    .line 741
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iput v0, p1, Lcom/android/calendar/CalendarView;->mFirstHour:I

    .line 742
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    iput v0, p1, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    .line 743
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getHeight()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/android/calendar/CalendarView;->remeasure(II)V

    .line 745
    iput-object v3, p1, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 746
    iput-object v3, p1, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 747
    iget v0, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    iput v0, p1, Lcom/android/calendar/CalendarView;->mStartDay:I

    .line 748
    iget-object v0, p1, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3a

    .line 749
    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    iput-boolean v0, p1, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    .line 757
    :goto_34
    iput-boolean v2, p1, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 758
    invoke-direct {p1}, Lcom/android/calendar/CalendarView;->recalc()V

    .line 759
    return-void

    .line 751
    :cond_3a
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    goto :goto_34
.end method

.method private static isEventEditable(Landroid/content/Context;Lcom/android/calendar/Event;)Z
    .registers 11
    .parameter "context"
    .parameter "e"

    .prologue
    .line 2727
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2729
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 2730
    .local v8, visibility:I
    const/4 v7, 0x2

    .line 2733
    .local v7, relationship:I
    sget-object p0, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    .end local p0
    iget-wide v1, p1, Lcom/android/calendar/Event;->id:J

    invoke-static {p0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 p0, 0x1

    new-array v2, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    const-string v3, "calendar_id"

    aput-object v3, v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 2738
    .local p0, cursor:Landroid/database/Cursor;
    if-eqz p0, :cond_25

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2a

    .line 2739
    :cond_25
    const/4 p1, 0x0

    move v0, v8

    .end local v8           #visibility:I
    .local v0, visibility:I
    move v1, p1

    move p1, v7

    .line 2766
    .end local v7           #relationship:I
    .local p1, relationship:I
    :goto_29
    return v1

    .line 2741
    .local v0, cr:Landroid/content/ContentResolver;
    .restart local v7       #relationship:I
    .restart local v8       #visibility:I
    .local p1, e:Lcom/android/calendar/Event;
    :cond_2a
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2742
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2743
    .local v2, calId:J
    invoke-interface {p0}, Landroid/database/Cursor;->deactivate()V

    .line 2745
    sget-object v1, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 2746
    .local v1, uri:Landroid/net/Uri;
    const-string p0, "_id=%d"

    .end local p0           #cursor:Landroid/database/Cursor;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .end local v2           #calId:J
    aput-object v2, v4, v5

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2747
    .local v3, where:Ljava/lang/String;
    sget-object v2, Lcom/android/calendar/CalendarView;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2749
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_5d

    .line 2750
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2751
    const/4 p0, 0x1

    invoke-interface {v6, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .line 2752
    .end local v8           #visibility:I
    .local p0, visibility:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v8, p0

    .line 2756
    .end local p0           #visibility:I
    .restart local v8       #visibility:I
    :cond_5d
    sget-object v1, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 2757
    const-string p0, "event_id=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p1, Lcom/android/calendar/Event;->id:J

    .end local v3           #where:Ljava/lang/String;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .end local p1           #e:Lcom/android/calendar/Event;
    aput-object p1, v2, v3

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2758
    .restart local v3       #where:Ljava/lang/String;
    sget-object v2, Lcom/android/calendar/CalendarView;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 2759
    .local p0, attendeesCursor:Landroid/database/Cursor;
    if-eqz p0, :cond_9b

    .line 2760
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_99

    .line 2761
    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 2763
    .end local v7           #relationship:I
    .local p1, relationship:I
    :goto_86
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    move p0, p1

    .line 2766
    .end local p1           #relationship:I
    .local p0, relationship:I
    :goto_8a
    const/16 p1, 0x1f4

    if-lt v8, p1, :cond_97

    const/4 p1, 0x2

    if-lt p0, p1, :cond_97

    const/4 p1, 0x1

    :goto_92
    move v0, v8

    .end local v8           #visibility:I
    .local v0, visibility:I
    move v1, p1

    move p1, p0

    .end local p0           #relationship:I
    .restart local p1       #relationship:I
    move-object p0, v6

    .end local v6           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    goto :goto_29

    .end local p1           #relationship:I
    .local v0, cr:Landroid/content/ContentResolver;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v8       #visibility:I
    .local p0, relationship:I
    :cond_97
    const/4 p1, 0x0

    goto :goto_92

    .restart local v7       #relationship:I
    .local p0, attendeesCursor:Landroid/database/Cursor;
    :cond_99
    move p1, v7

    .end local v7           #relationship:I
    .restart local p1       #relationship:I
    goto :goto_86

    .end local p1           #relationship:I
    .restart local v7       #relationship:I
    :cond_9b
    move p0, v7

    .end local v7           #relationship:I
    .local p0, relationship:I
    goto :goto_8a
.end method

.method private recalc()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 538
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v8, 0x7

    if-ne v0, v8, :cond_20

    .line 539
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v6, v0, Landroid/text/format/Time;->weekDay:I

    .line 540
    .local v6, dayOfWeek:I
    iget v0, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    sub-int v7, v6, v0

    .line 541
    .local v7, diff:I
    if-eqz v7, :cond_20

    .line 542
    if-gez v7, :cond_14

    .line 543
    add-int/lit8 v7, v7, 0x7

    .line 545
    :cond_14
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v8, v0, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v8, v7

    iput v8, v0, Landroid/text/format/Time;->monthDay:I

    .line 546
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v0, v10}, Landroid/text/format/Time;->normalize(Z)J

    .line 550
    .end local v6           #dayOfWeek:I
    .end local v7           #diff:I
    :cond_20
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 551
    .local v1, start:J
    move-wide v3, v1

    .line 552
    .local v3, end:J
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v8, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    .line 553
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    iget v8, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    add-int/2addr v0, v8

    sub-int/2addr v0, v10

    iput v0, p0, Lcom/android/calendar/CalendarView;->mLastJulianDay:I

    .line 555
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mMonthLength:I

    .line 556
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstDate:I

    .line 558
    const/4 v5, 0x4

    .line 559
    .local v5, flags:I
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 560
    or-int/lit16 v5, v5, 0x80

    .line 562
    :cond_54
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-le v0, v10, :cond_7d

    .line 563
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v8, v0, Landroid/text/format/Time;->monthDay:I

    iget v9, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    iput v8, v0, Landroid/text/format/Time;->monthDay:I

    .line 564
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v0, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 565
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v8, v0, Landroid/text/format/Time;->monthDay:I

    iget v9, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    iput v8, v0, Landroid/text/format/Time;->monthDay:I

    .line 566
    or-int/lit8 v5, v5, 0x20

    .line 572
    :goto_74
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    .line 578
    return-void

    .line 568
    :cond_7d
    const v0, 0x10012

    or-int/2addr v5, v0

    goto :goto_74
.end method

.method private remeasure(II)V
    .registers 22
    .parameter "width"
    .parameter "height"

    .prologue
    .line 619
    const/4 v5, 0x0

    .local v5, day:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move/from16 v17, v0

    move v0, v5

    move/from16 v1, v17

    if-ge v0, v1, :cond_23

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEarliestStartHour:[I

    move-object/from16 v17, v0

    const/16 v18, 0x19

    aput v18, v17, v5

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mHasAllDayEvent:[Z

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-boolean v18, v17, v5

    .line 619
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 628
    :cond_23
    const/4 v15, 0x0

    .line 629
    .local v15, maxAllDayEvents:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    move-object v10, v0

    .line 630
    .local v10, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 631
    .local v13, len:I
    const/4 v12, 0x0

    .local v12, ii:I
    :goto_2e
    if-ge v12, v13, :cond_113

    .line 632
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/Event;

    .line 633
    .local v8, event:Lcom/android/calendar/Event;
    move-object v0, v8

    iget v0, v0, Lcom/android/calendar/Event;->startDay:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mLastJulianDay:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_58

    move-object v0, v8

    iget v0, v0, Lcom/android/calendar/Event;->endDay:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5b

    .line 631
    :cond_58
    :goto_58
    add-int/lit8 v12, v12, 0x1

    goto :goto_2e

    .line 635
    :cond_5b
    move-object v0, v8

    iget-boolean v0, v0, Lcom/android/calendar/Event;->allDay:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b2

    .line 636
    invoke-virtual {v8}, Lcom/android/calendar/Event;->getColumn()I

    move-result v17

    add-int/lit8 v14, v17, 0x1

    .line 637
    .local v14, max:I
    if-ge v15, v14, :cond_6b

    .line 638
    move v15, v14

    .line 640
    :cond_6b
    move-object v0, v8

    iget v0, v0, Lcom/android/calendar/Event;->startDay:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    .line 641
    .local v6, daynum:I
    move-object v0, v8

    iget v0, v0, Lcom/android/calendar/Event;->endDay:I

    move/from16 v17, v0

    move-object v0, v8

    iget v0, v0, Lcom/android/calendar/Event;->startDay:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    add-int/lit8 v7, v17, 0x1

    .line 642
    .local v7, durationDays:I
    if-gez v6, :cond_8a

    .line 643
    add-int/2addr v7, v6

    .line 644
    const/4 v6, 0x0

    .line 646
    :cond_8a
    add-int v17, v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_a0

    .line 647
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move/from16 v17, v0

    sub-int v7, v17, v6

    .line 649
    :cond_a0
    move v5, v6

    :goto_a1
    if-lez v7, :cond_58

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mHasAllDayEvent:[Z

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aput-boolean v18, v17, v5

    .line 649
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_a1

    .line 653
    .end local v6           #daynum:I
    .end local v7           #durationDays:I
    .end local v14           #max:I
    :cond_b2
    move-object v0, v8

    iget v0, v0, Lcom/android/calendar/Event;->startDay:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    .line 654
    .restart local v6       #daynum:I
    move-object v0, v8

    iget v0, v0, Lcom/android/calendar/Event;->startTime:I

    move/from16 v17, v0

    div-int/lit8 v11, v17, 0x3c

    .line 655
    .local v11, hour:I
    if-ltz v6, :cond_dd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEarliestStartHour:[I

    move-object/from16 v17, v0

    aget v17, v17, v6

    move v0, v11

    move/from16 v1, v17

    if-ge v0, v1, :cond_dd

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEarliestStartHour:[I

    move-object/from16 v17, v0

    aput v11, v17, v6

    .line 661
    :cond_dd
    move-object v0, v8

    iget v0, v0, Lcom/android/calendar/Event;->endDay:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    .line 662
    move-object v0, v8

    iget v0, v0, Lcom/android/calendar/Event;->endTime:I

    move/from16 v17, v0

    div-int/lit8 v11, v17, 0x3c

    .line 663
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move/from16 v17, v0

    move v0, v6

    move/from16 v1, v17

    if-ge v0, v1, :cond_58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEarliestStartHour:[I

    move-object/from16 v17, v0

    aget v17, v17, v6

    move v0, v11

    move/from16 v1, v17

    if-ge v0, v1, :cond_58

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEarliestStartHour:[I

    move-object/from16 v17, v0

    aput v11, v17, v6

    goto/16 :goto_58

    .line 668
    .end local v6           #daynum:I
    .end local v8           #event:Lcom/android/calendar/Event;
    .end local v11           #hour:I
    :cond_113
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    .line 670
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mBannerPlusMargin:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mFirstCell:I

    .line 671
    const/4 v3, 0x0

    .line 672
    .local v3, allDayHeight:I
    if-lez v15, :cond_2c7

    .line 675
    const/16 v17, 0x1

    move v0, v15

    move/from16 v1, v17

    if-ne v0, v1, :cond_2ba

    .line 676
    const/16 v3, 0x14

    .line 685
    :cond_130
    :goto_130
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mBannerPlusMargin:I

    move/from16 v17, v0

    add-int v17, v17, v3

    add-int/lit8 v17, v17, 0x3

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mFirstCell:I

    .line 689
    :goto_140
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mAllDayHeight:I

    .line 691
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    move/from16 v17, v0

    sub-int v17, p2, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    .line 692
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumHours:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    mul-int/lit8 v18, v18, 0x1

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumHours:I

    move/from16 v18, v0

    div-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mCellHeight:I

    .line 693
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumHours:I

    move/from16 v18, v0

    mul-int v17, v17, v18

    add-int/lit8 v16, v17, 0x1

    .line 694
    .local v16, usedGridAreaHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    move/from16 v17, v0

    sub-int v4, v17, v16

    .line 695
    .local v4, bottomSpace:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/calendar/EventGeometry;->setHourHeight(F)V

    .line 698
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    mul-int/lit8 v17, v17, 0x18

    add-int/lit8 v17, v17, 0x1

    add-int v17, v17, v4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1d3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_217

    :cond_1d3
    if-lez p1, :cond_217

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    move/from16 v17, v0

    if-lez v17, :cond_217

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1ee

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 704
    :cond_1ee
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    move/from16 v17, v0

    sget-object v18, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    .line 705
    new-instance v17, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mCanvas:Landroid/graphics/Canvas;

    .line 707
    :cond_217
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mMaxViewStartY:I

    .line 709
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_244

    .line 710
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->initFirstHour()V

    .line 711
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    .line 718
    :cond_244
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_26a

    .line 719
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    .line 721
    :cond_26a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    mul-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mViewStartY:I

    .line 723
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    mul-int v9, v17, v18

    .line 724
    .local v9, eventAreaWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/PopupWindow;->dismiss()V

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    const/16 v18, 0x14

    sub-int v18, v9, v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    const/16 v18, -0x2

    invoke-virtual/range {v17 .. v18}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 727
    return-void

    .line 680
    .end local v4           #bottomSpace:I
    .end local v9           #eventAreaWidth:I
    .end local v16           #usedGridAreaHeight:I
    :cond_2ba
    mul-int/lit8 v3, v15, 0x12

    .line 681
    const/16 v17, 0x48

    move v0, v3

    move/from16 v1, v17

    if-le v0, v1, :cond_130

    .line 682
    const/16 v3, 0x48

    goto/16 :goto_130

    .line 687
    :cond_2c7
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    goto/16 :goto_140
.end method

.method private resetSelectedHour()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 1022
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_1b

    .line 1023
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 1024
    iput-object v5, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1025
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1026
    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    .line 1033
    :cond_1a
    :goto_1a
    return-void

    .line 1027
    :cond_1b
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v4

    if-le v0, v1, :cond_1a

    .line 1028
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    add-int/2addr v0, v1

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 1029
    iput-object v5, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1030
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1031
    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    goto :goto_1a
.end method

.method private saveSelectionPosition(FFFF)V
    .registers 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1544
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1545
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1546
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p4

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1547
    return-void
.end method

.method private setSelectionFromPosition(II)Z
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2780
    iget v2, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    if-ge p1, v2, :cond_8

    move v2, v5

    .line 2814
    :goto_7
    return v2

    .line 2784
    :cond_8
    iget v2, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v3, v3, 0x1

    div-int v0, v2, v3

    .line 2785
    .local v0, day:I
    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-lt v0, v2, :cond_1a

    .line 2786
    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    sub-int v0, v2, v4

    .line 2788
    :cond_1a
    iget v2, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    add-int/2addr v0, v2

    .line 2790
    iget v2, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    add-int/2addr v2, v3

    if-ge p2, v2, :cond_2d

    .line 2791
    iput-boolean v4, p0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    .line 2798
    :goto_26
    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    .line 2799
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/CalendarView;->findSelectedEvent(II)V

    move v2, v4

    .line 2814
    goto :goto_7

    .line 2793
    :cond_2d
    iget v2, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    div-int v1, v2, v3

    .line 2794
    .local v1, hour:I
    iget v2, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    add-int/2addr v1, v2

    .line 2795
    iput v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 2796
    iput-boolean v5, p0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    goto :goto_26
.end method

.method private switchViews(Z)V
    .registers 14
    .parameter "trackBallSelection"

    .prologue
    .line 769
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 771
    .local v6, selectedEvent:Lcom/android/calendar/Event;
    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v9}, Landroid/widget/PopupWindow;->dismiss()V

    .line 772
    iget v9, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v10, 0x1

    if-le v9, v10, :cond_b7

    .line 777
    if-eqz p1, :cond_6c

    .line 778
    if-nez v6, :cond_3b

    .line 780
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v7

    .line 781
    .local v7, startMillis:J
    const-wide/32 v9, 0x36ee80

    add-long v0, v7, v9

    .line 782
    .local v0, endMillis:J
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 783
    .local v3, intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    const-class v10, Lcom/android/calendar/EditEvent;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 784
    const-string v9, "beginTime"

    invoke-virtual {v3, v9, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 785
    const-string v9, "endTime"

    invoke-virtual {v3, v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 786
    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v9, v3}, Lcom/android/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    .line 843
    .end local v0           #endMillis:J
    .end local v3           #intent:Landroid/content/Intent;
    .end local v7           #startMillis:J
    :goto_3a
    return-void

    .line 789
    :cond_3b
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 790
    .restart local v3       #intent:Landroid/content/Intent;
    sget-object v9, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v6, Lcom/android/calendar/Event;->id:J

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 792
    .local v2, eventUri:Landroid/net/Uri;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 793
    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    const-class v10, Lcom/android/calendar/EventInfoActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 794
    const-string v9, "beginTime"

    iget-wide v10, v6, Lcom/android/calendar/Event;->startMillis:J

    invoke-virtual {v3, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 795
    const-string v9, "endTime"

    iget-wide v10, v6, Lcom/android/calendar/Event;->endMillis:J

    invoke-virtual {v3, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 796
    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v9, v3}, Lcom/android/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3a

    .line 802
    .end local v2           #eventUri:Landroid/net/Uri;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_6c
    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a6

    .line 804
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 805
    .restart local v3       #intent:Landroid/content/Intent;
    sget-object v9, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v6, Lcom/android/calendar/Event;->id:J

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 807
    .restart local v2       #eventUri:Landroid/net/Uri;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 808
    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    const-class v10, Lcom/android/calendar/EventInfoActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    const-string v9, "beginTime"

    iget-wide v10, v6, Lcom/android/calendar/Event;->startMillis:J

    invoke-virtual {v3, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 810
    const-string v9, "endTime"

    iget-wide v10, v6, Lcom/android/calendar/Event;->endMillis:J

    invoke-virtual {v3, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 811
    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v9, v3}, Lcom/android/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3a

    .line 814
    .end local v2           #eventUri:Landroid/net/Uri;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_a6
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v4

    .line 815
    .local v4, millis:J
    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-object v10, p0, Lcom/android/calendar/CalendarView;->mDetailedView:Ljava/lang/String;

    invoke-static {v9, v10, v4, v5}, Lcom/android/calendar/MenuHelper;->switchTo(Landroid/app/Activity;Ljava/lang/String;J)V

    .line 816
    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v9}, Lcom/android/calendar/CalendarActivity;->finish()V

    goto :goto_3a

    .line 823
    .end local v4           #millis:J
    :cond_b7
    if-nez v6, :cond_e5

    .line 825
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v7

    .line 826
    .restart local v7       #startMillis:J
    const-wide/32 v9, 0x36ee80

    add-long v0, v7, v9

    .line 827
    .restart local v0       #endMillis:J
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 828
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    const-class v10, Lcom/android/calendar/EditEvent;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 829
    const-string v9, "beginTime"

    invoke-virtual {v3, v9, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 830
    const-string v9, "endTime"

    invoke-virtual {v3, v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 831
    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v9, v3}, Lcom/android/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3a

    .line 834
    .end local v0           #endMillis:J
    .end local v3           #intent:Landroid/content/Intent;
    .end local v7           #startMillis:J
    :cond_e5
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 835
    .restart local v3       #intent:Landroid/content/Intent;
    sget-object v9, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v6, Lcom/android/calendar/Event;->id:J

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 836
    .restart local v2       #eventUri:Landroid/net/Uri;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 837
    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    const-class v10, Lcom/android/calendar/EventInfoActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    const-string v9, "beginTime"

    iget-wide v10, v6, Lcom/android/calendar/Event;->startMillis:J

    invoke-virtual {v3, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 839
    const-string v9, "endTime"

    iget-wide v10, v6, Lcom/android/calendar/Event;->endMillis:J

    invoke-virtual {v3, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 840
    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v9, v3}, Lcom/android/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3a
.end method

.method private updateEventDetails()V
    .registers 16

    .prologue
    const/16 v14, 0x8

    const/4 v13, 0x0

    .line 2254
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    .line 2256
    :cond_10
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2297
    :goto_15
    return-void

    .line 2261
    :cond_16
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mDismissPopup:Lcom/android/calendar/CalendarView$DismissPopup;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2263
    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 2264
    .local v7, event:Lcom/android/calendar/Event;
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPopupView:Landroid/view/View;

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 2265
    .local v11, titleView:Landroid/widget/TextView;
    iget-object v0, v7, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2267
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPopupView:Landroid/view/View;

    const v1, 0x7f0c0005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 2268
    .local v8, imageView:Landroid/widget/ImageView;
    iget-boolean v0, v7, Lcom/android/calendar/Event;->hasAlarm:Z

    if-eqz v0, :cond_b1

    move v0, v13

    :goto_41
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2270
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPopupView:Landroid/view/View;

    const v1, 0x7f0c000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #imageView:Landroid/widget/ImageView;
    check-cast v8, Landroid/widget/ImageView;

    .line 2271
    .restart local v8       #imageView:Landroid/widget/ImageView;
    iget-boolean v0, v7, Lcom/android/calendar/Event;->isRepeating:Z

    if-eqz v0, :cond_b3

    move v0, v13

    :goto_54
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2274
    iget-boolean v0, v7, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v0, :cond_b5

    .line 2275
    const v5, 0x82012

    .line 2282
    .local v5, flags:I
    :goto_5e
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 2283
    or-int/lit16 v5, v5, 0x80

    .line 2285
    :cond_68
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-wide v1, v7, Lcom/android/calendar/Event;->startMillis:J

    iget-wide v3, v7, Lcom/android/calendar/Event;->endMillis:J

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v9

    .line 2287
    .local v9, timeRange:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPopupView:Landroid/view/View;

    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 2288
    .local v10, timeView:Landroid/widget/TextView;
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2290
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPopupView:Landroid/view/View;

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2291
    .local v12, whereView:Landroid/widget/TextView;
    iget-object v0, v7, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 2292
    .local v6, empty:Z
    if-eqz v6, :cond_b9

    move v0, v14

    :goto_94
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2293
    if-nez v6, :cond_9e

    iget-object v0, v7, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2295
    :cond_9e
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x53

    iget v2, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    const/4 v3, 0x5

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2296
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mDismissPopup:Lcom/android/calendar/CalendarView$DismissPopup;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/calendar/CalendarView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_15

    .end local v5           #flags:I
    .end local v6           #empty:Z
    .end local v9           #timeRange:Ljava/lang/String;
    .end local v10           #timeView:Landroid/widget/TextView;
    .end local v12           #whereView:Landroid/widget/TextView;
    :cond_b1
    move v0, v14

    .line 2268
    goto :goto_41

    :cond_b3
    move v0, v14

    .line 2271
    goto :goto_54

    .line 2278
    :cond_b5
    const v5, 0x81413

    .restart local v5       #flags:I
    goto :goto_5e

    .restart local v6       #empty:Z
    .restart local v9       #timeRange:Ljava/lang/String;
    .restart local v10       #timeView:Landroid/widget/TextView;
    .restart local v12       #whereView:Landroid/widget/TextView;
    :cond_b9
    move v0, v13

    .line 2292
    goto :goto_94
.end method


# virtual methods
.method public cleanup()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3028
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_a

    .line 3029
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3031
    :cond_a
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 3032
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_15

    .line 3033
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mDismissPopup:Lcom/android/calendar/CalendarView$DismissPopup;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3037
    :cond_15
    iput-boolean v2, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    .line 3038
    iput-boolean v2, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 3039
    return-void
.end method

.method clearCachedEvents()V
    .registers 3

    .prologue
    .line 1111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/calendar/CalendarView;->mLastReloadMillis:J

    .line 1112
    return-void
.end method

.method doDown(Landroid/view/MotionEvent;)V
    .registers 4
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 2303
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    .line 2304
    iput v1, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    .line 2305
    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mOnFlingCalled:Z

    .line 2306
    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mLaunchNewView:Z

    .line 2307
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mContinueScroll:Lcom/android/calendar/CalendarView$ContinueScroll;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2308
    return-void
.end method

.method doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .registers 15
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v9, 0x0

    .line 2441
    iput v9, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    .line 2442
    iput v9, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 2443
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mOnFlingCalled:Z

    .line 2444
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    sub-int v0, v6, v7

    .line 2445
    .local v0, deltaX:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 2446
    .local v2, distanceX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    sub-int v1, v6, v7

    .line 2447
    .local v1, deltaY:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 2449
    .local v3, distanceY:I
    const/16 v6, 0x32

    if-lt v2, v6, :cond_4d

    if-le v2, v3, :cond_4d

    .line 2450
    invoke-direct {p0, v0}, Lcom/android/calendar/CalendarView;->initNextView(I)Z

    move-result v4

    .line 2451
    .local v4, switchForward:Z
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v6}, Lcom/android/calendar/CalendarActivity;->getNextView()Lcom/android/calendar/CalendarView;

    move-result-object v5

    .line 2452
    .local v5, view:Lcom/android/calendar/CalendarView;
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v7, v5, Lcom/android/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2453
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget v7, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    int-to-float v8, v8

    invoke-virtual {v6, v4, v7, v8}, Lcom/android/calendar/CalendarActivity;->switchViews(ZFF)Landroid/view/View;

    .line 2454
    iput v9, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    .line 2461
    .end local v4           #switchForward:Z
    .end local v5           #view:Lcom/android/calendar/CalendarView;
    :goto_4c
    return-void

    .line 2459
    :cond_4d
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mContinueScroll:Lcom/android/calendar/CalendarView$ContinueScroll;

    float-to-int v7, p4

    div-int/lit8 v7, v7, 0x14

    invoke-virtual {v6, v7}, Lcom/android/calendar/CalendarView$ContinueScroll;->init(I)V

    .line 2460
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mContinueScroll:Lcom/android/calendar/CalendarView$ContinueScroll;

    invoke-virtual {p0, v6}, Lcom/android/calendar/CalendarView;->post(Ljava/lang/Runnable;)Z

    goto :goto_4c
.end method

.method doLongPress(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "ev"

    .prologue
    .line 2351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mLaunchNewView:Z

    .line 2352
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 2353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 2354
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 2355
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->performLongClick()Z

    .line 2356
    return-void
.end method

.method doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .registers 13
    .parameter "e1"
    .parameter "e2"
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 2359
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mLaunchNewView:Z

    .line 2363
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    sub-int v3, v6, v7

    .line 2364
    .local v3, distanceX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    sub-int v4, v6, v7

    .line 2368
    .local v4, distanceY:I
    iget v6, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6d

    .line 2369
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2370
    .local v0, absDistanceX:I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 2371
    .local v1, absDistanceY:I
    iget v6, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iput v6, p0, Lcom/android/calendar/CalendarView;->mScrollStartY:I

    .line 2372
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/calendar/CalendarView;->mPreviousDistanceX:I

    .line 2373
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/calendar/CalendarView;->mPreviousDirection:I

    .line 2377
    mul-int/lit8 v6, v1, 0x2

    if-lt v0, v6, :cond_68

    .line 2378
    const/16 v6, 0x40

    iput v6, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    .line 2379
    iput v3, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    .line 2380
    iget v6, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    neg-int v6, v6

    invoke-direct {p0, v6}, Lcom/android/calendar/CalendarView;->initNextView(I)Z

    .line 2421
    .end local v0           #absDistanceX:I
    .end local v1           #absDistanceY:I
    :cond_42
    :goto_42
    iget v6, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_57

    .line 2422
    iget v6, p0, Lcom/android/calendar/CalendarView;->mScrollStartY:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    .line 2423
    iget v6, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    if-gez v6, :cond_d0

    .line 2424
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    .line 2428
    :cond_54
    :goto_54
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->computeFirstHour()V

    .line 2431
    :cond_57
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    .line 2433
    iget v6, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    if-eqz v6, :cond_64

    .line 2434
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 2435
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 2437
    :cond_64
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 2438
    return-void

    .line 2382
    .restart local v0       #absDistanceX:I
    .restart local v1       #absDistanceY:I
    :cond_68
    const/16 v6, 0x20

    iput v6, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    goto :goto_42

    .line 2384
    .end local v0           #absDistanceX:I
    .end local v1           #absDistanceY:I
    :cond_6d
    iget v6, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_42

    .line 2388
    iput v3, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    .line 2389
    if-eqz v3, :cond_87

    .line 2390
    if-lez v3, :cond_a1

    const/4 v6, 0x1

    move v2, v6

    .line 2391
    .local v2, direction:I
    :goto_7b
    iget v6, p0, Lcom/android/calendar/CalendarView;->mPreviousDirection:I

    if-eq v2, v6, :cond_87

    .line 2394
    iget v6, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    neg-int v6, v6

    invoke-direct {p0, v6}, Lcom/android/calendar/CalendarView;->initNextView(I)Z

    .line 2395
    iput v2, p0, Lcom/android/calendar/CalendarView;->mPreviousDirection:I

    .line 2402
    .end local v2           #direction:I
    :cond_87
    const/16 v6, 0x32

    if-lt v3, v6, :cond_a4

    .line 2403
    iget v6, p0, Lcom/android/calendar/CalendarView;->mPreviousDistanceX:I

    const/16 v7, 0x32

    if-ge v6, v7, :cond_9e

    .line 2404
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v6}, Lcom/android/calendar/CalendarActivity;->getNextView()Lcom/android/calendar/CalendarView;

    move-result-object v5

    .line 2405
    .local v5, view:Lcom/android/calendar/CalendarView;
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v7, v5, Lcom/android/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2418
    .end local v5           #view:Lcom/android/calendar/CalendarView;
    :cond_9e
    :goto_9e
    iput v3, p0, Lcom/android/calendar/CalendarView;->mPreviousDistanceX:I

    goto :goto_42

    .line 2390
    :cond_a1
    const/4 v6, -0x1

    move v2, v6

    goto :goto_7b

    .line 2407
    :cond_a4
    const/16 v6, -0x32

    if-gt v3, v6, :cond_bc

    .line 2408
    iget v6, p0, Lcom/android/calendar/CalendarView;->mPreviousDistanceX:I

    const/16 v7, -0x32

    if-le v6, v7, :cond_9e

    .line 2409
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v6}, Lcom/android/calendar/CalendarActivity;->getNextView()Lcom/android/calendar/CalendarView;

    move-result-object v5

    .line 2410
    .restart local v5       #view:Lcom/android/calendar/CalendarView;
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v7, v5, Lcom/android/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9e

    .line 2413
    .end local v5           #view:Lcom/android/calendar/CalendarView;
    :cond_bc
    iget v6, p0, Lcom/android/calendar/CalendarView;->mPreviousDistanceX:I

    const/16 v7, 0x32

    if-ge v6, v7, :cond_c8

    iget v6, p0, Lcom/android/calendar/CalendarView;->mPreviousDistanceX:I

    const/16 v7, -0x32

    if-gt v6, v7, :cond_9e

    .line 2415
    :cond_c8
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9e

    .line 2425
    :cond_d0
    iget v6, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v7, p0, Lcom/android/calendar/CalendarView;->mMaxViewStartY:I

    if-le v6, v7, :cond_54

    .line 2426
    iget v6, p0, Lcom/android/calendar/CalendarView;->mMaxViewStartY:I

    iput v6, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    goto/16 :goto_54
.end method

.method doShowPress(Landroid/view/MotionEvent;)V
    .registers 10
    .parameter "ev"

    .prologue
    const/4 v7, 0x1

    .line 2321
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 2322
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 2323
    .local v5, y:I
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 2324
    .local v1, selectedEvent:Lcom/android/calendar/Event;
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    .line 2325
    .local v0, selectedDay:I
    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 2327
    .local v2, selectedHour:I
    invoke-direct {p0, v4, v5}, Lcom/android/calendar/CalendarView;->setSelectionFromPosition(II)Z

    move-result v3

    .line 2328
    .local v3, validPosition:Z
    if-nez v3, :cond_18

    .line 2348
    :cond_17
    :goto_17
    return-void

    .line 2332
    :cond_18
    iput v7, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 2333
    iput-boolean v7, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 2334
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 2338
    if-eqz v1, :cond_28

    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-ne v1, v6, :cond_28

    .line 2341
    iput-boolean v7, p0, Lcom/android/calendar/CalendarView;->mLaunchNewView:Z

    goto :goto_17

    .line 2342
    :cond_28
    if-nez v1, :cond_17

    iget v6, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    if-ne v0, v6, :cond_17

    iget v6, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    if-ne v2, v6, :cond_17

    .line 2346
    iput-boolean v7, p0, Lcom/android/calendar/CalendarView;->mLaunchNewView:Z

    goto :goto_17
.end method

.method doSingleTapUp(Landroid/view/MotionEvent;)V
    .registers 4
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 2311
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 2312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 2313
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 2314
    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mLaunchNewView:Z

    if-eqz v0, :cond_13

    .line 2315
    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mLaunchNewView:Z

    .line 2316
    invoke-direct {p0, v1}, Lcom/android/calendar/CalendarView;->switchViews(Z)V

    .line 2318
    :cond_13
    return-void
.end method

.method drawAllDayEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)Landroid/graphics/RectF;
    .registers 9
    .parameter "event"
    .parameter "canvas"
    .parameter "p"
    .parameter "eventTextPaint"

    .prologue
    const/high16 v3, 0x4040

    const/high16 v2, 0x4000

    .line 1734
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-ne v1, p1, :cond_34

    .line 1736
    iput-object p1, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1737
    sget v1, Lcom/android/calendar/CalendarView;->mSelectionColor:I

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1738
    sget v1, Lcom/android/calendar/CalendarView;->mSelectedEventTextColor:I

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1745
    :goto_14
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mRectF:Landroid/graphics/RectF;

    .line 1746
    .local v0, rf:Landroid/graphics/RectF;
    iget v1, p1, Lcom/android/calendar/Event;->top:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 1747
    iget v1, p1, Lcom/android/calendar/Event;->bottom:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1748
    iget v1, p1, Lcom/android/calendar/Event;->left:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 1749
    iget v1, p1, Lcom/android/calendar/Event;->right:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 1750
    invoke-virtual {p2, v0, v3, v3, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1752
    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 1753
    iget v1, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 1754
    return-object v0

    .line 1741
    .end local v0           #rf:Landroid/graphics/RectF;
    :cond_34
    iget v1, p1, Lcom/android/calendar/Event;->color:I

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1742
    sget v1, Lcom/android/calendar/CalendarView;->mEventTextColor:I

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_14
.end method

.method getNewEvent()Lcom/android/calendar/Event;
    .registers 5

    .prologue
    .line 1511
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedMinutesSinceMidnight()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/CalendarView;->getNewEvent(IJI)Lcom/android/calendar/Event;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedDay()Landroid/text/format/Time;
    .registers 3

    .prologue
    .line 524
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 525
    .local v0, time:Landroid/text/format/Time;
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 526
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 531
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 532
    return-object v0
.end method

.method getSelectedEvent()Lcom/android/calendar/Event;
    .registers 5

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-nez v0, :cond_13

    .line 1500
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedMinutesSinceMidnight()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/CalendarView;->getNewEvent(IJI)Lcom/android/calendar/Event;

    move-result-object v0

    .line 1503
    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    goto :goto_12
.end method

.method getSelectedMinutesSinceMidnight()I
    .registers 2

    .prologue
    .line 498
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    mul-int/lit8 v0, v0, 0x3c

    return v0
.end method

.method getSelectedTime()Landroid/text/format/Time;
    .registers 3

    .prologue
    .line 481
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 482
    .local v0, time:Landroid/text/format/Time;
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 483
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 488
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 489
    return-object v0
.end method

.method getSelectedTimeInMillis()J
    .registers 4

    .prologue
    .line 470
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 471
    .local v0, time:Landroid/text/format/Time;
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 472
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 477
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method isEventSelected()Z
    .registers 2

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPopupView:Landroid/view/View;

    if-ne p1, v0, :cond_8

    .line 460
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/CalendarView;->switchViews(Z)V

    .line 462
    :cond_8
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 16
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const/16 v11, 0x6e

    const/4 v10, 0x6

    const/4 v9, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2552
    iget v6, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    if-eq v6, v9, :cond_11

    .line 2553
    iput v9, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 2554
    iput-boolean v7, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 2555
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 2558
    :cond_11
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v3

    .line 2559
    .local v3, startMillis:J
    const/16 v0, 0x1403

    .line 2562
    .local v0, flags:I
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-static {v6, v3, v4, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v5

    .line 2563
    .local v5, title:Ljava/lang/String;
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2565
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2566
    .local v2, numSelectedEvents:I
    iget v6, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v6, v7, :cond_a6

    .line 2571
    if-lt v2, v7, :cond_90

    .line 2572
    const/4 v6, 0x5

    const v7, 0x7f08000f

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 2573
    .local v1, item:Landroid/view/MenuItem;
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2574
    const v6, 0x1080041

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2576
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    invoke-static {v6, v7}, Lcom/android/calendar/CalendarView;->isEventEditable(Landroid/content/Context;Lcom/android/calendar/Event;)Z

    move-result v6

    if-eqz v6, :cond_75

    .line 2577
    const/4 v6, 0x7

    const v7, 0x7f080011

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 2578
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2579
    const v6, 0x108003e

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2580
    const/16 v6, 0x65

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2582
    const/16 v6, 0x8

    const v7, 0x7f080012

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 2583
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2584
    const v6, 0x108003c

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2587
    :cond_75
    const v6, 0x7f080010

    invoke-interface {p1, v8, v10, v8, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 2588
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2589
    const v6, 0x1080033

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2590
    invoke-interface {v1, v11}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2653
    :goto_8a
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2654
    return-void

    .line 2594
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_90
    const v6, 0x7f080010

    invoke-interface {p1, v8, v10, v8, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 2595
    .restart local v1       #item:Landroid/view/MenuItem;
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2596
    const v6, 0x1080033

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2597
    invoke-interface {v1, v11}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto :goto_8a

    .line 2604
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_a6
    if-lt v2, v7, :cond_137

    .line 2605
    const/4 v6, 0x5

    const v7, 0x7f08000f

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 2606
    .restart local v1       #item:Landroid/view/MenuItem;
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2607
    const v6, 0x1080041

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2609
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    invoke-static {v6, v7}, Lcom/android/calendar/CalendarView;->isEventEditable(Landroid/content/Context;Lcom/android/calendar/Event;)Z

    move-result v6

    if-eqz v6, :cond_f1

    .line 2610
    const/4 v6, 0x7

    const v7, 0x7f080011

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 2611
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2612
    const v6, 0x108003e

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2613
    const/16 v6, 0x65

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2615
    const/16 v6, 0x8

    const v7, 0x7f080012

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 2616
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2617
    const v6, 0x108003c

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2620
    :cond_f1
    const v6, 0x7f080010

    invoke-interface {p1, v8, v10, v8, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 2621
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2622
    const v6, 0x1080033

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2623
    invoke-interface {v1, v11}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2625
    const v6, 0x7f08000a

    invoke-interface {p1, v8, v9, v8, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 2626
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2627
    const v6, 0x108003b

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2628
    const/16 v6, 0x64

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2630
    const/4 v6, 0x2

    const v7, 0x7f080009

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 2631
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2632
    const v6, 0x1080034

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2633
    const/16 v6, 0x61

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto/16 :goto_8a

    .line 2636
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_137
    const v6, 0x7f080010

    invoke-interface {p1, v8, v10, v8, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 2637
    .restart local v1       #item:Landroid/view/MenuItem;
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2638
    const v6, 0x1080033

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2639
    invoke-interface {v1, v11}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2641
    const v6, 0x7f08000a

    invoke-interface {p1, v8, v9, v8, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 2642
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2643
    const v6, 0x108003b

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2644
    const/16 v6, 0x64

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2646
    const/4 v6, 0x2

    const v7, 0x7f080009

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 2647
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2648
    const v6, 0x1080034

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2649
    const/16 v6, 0x61

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto/16 :goto_8a
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 3042
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->cleanup()V

    .line 3043
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_f

    .line 3044
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3045
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    .line 3047
    :cond_f
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 3048
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1163
    iget-boolean v1, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    if-eqz v1, :cond_13

    .line 1164
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/calendar/CalendarView;->remeasure(II)V

    .line 1165
    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    .line 1168
    :cond_13
    iget-boolean v1, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_22

    .line 1169
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v1}, Lcom/android/calendar/CalendarView;->doDraw(Landroid/graphics/Canvas;)V

    .line 1170
    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 1173
    :cond_22
    iget v1, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_50

    .line 1174
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1175
    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    if-lez v1, :cond_66

    .line 1176
    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1180
    :goto_38
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarActivity;->getNextView()Lcom/android/calendar/CalendarView;

    move-result-object v0

    .line 1183
    .local v0, nextView:Lcom/android/calendar/CalendarView;
    iput v3, v0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    .line 1185
    invoke-virtual {v0, p1}, Lcom/android/calendar/CalendarView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1186
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1187
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1188
    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1191
    .end local v0           #nextView:Lcom/android/calendar/CalendarView;
    :cond_50
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_57

    .line 1192
    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView;->drawCalendarView(Landroid/graphics/Canvas;)V

    .line 1196
    :cond_57
    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView;->drawAfterScroll(Landroid/graphics/Canvas;)V

    .line 1197
    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    .line 1199
    iget v1, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_65

    .line 1200
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1202
    :cond_65
    return-void

    .line 1178
    :cond_66
    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    add-int/2addr v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_38
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 17
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 884
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    if-nez v0, :cond_32

    .line 885
    const/16 v0, 0x42

    if-eq p1, v0, :cond_18

    const/16 v0, 0x16

    if-eq p1, v0, :cond_18

    const/16 v0, 0x15

    if-eq p1, v0, :cond_18

    const/16 v0, 0x13

    if-eq p1, v0, :cond_18

    const/16 v0, 0x14

    if-ne p1, v0, :cond_23

    .line 890
    :cond_18
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 891
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 892
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 893
    const/4 v0, 0x1

    .line 1016
    :goto_22
    return v0

    .line 894
    :cond_23
    const/16 v0, 0x17

    if-ne p1, v0, :cond_32

    .line 897
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 898
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 899
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 900
    const/4 v0, 0x1

    goto :goto_22

    .line 904
    :cond_32
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 905
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    .line 907
    iget v12, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    .line 909
    .local v12, selectionDay:I
    sparse-switch p1, :sswitch_data_140

    .line 983
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_22

    .line 912
    :sswitch_42
    iget-object v11, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 913
    .local v11, selectedEvent:Lcom/android/calendar/Event;
    if-nez v11, :cond_48

    .line 914
    const/4 v0, 0x0

    goto :goto_22

    .line 916
    :cond_48
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 918
    iget-wide v1, v11, Lcom/android/calendar/Event;->startMillis:J

    .line 919
    .local v1, begin:J
    iget-wide v3, v11, Lcom/android/calendar/Event;->endMillis:J

    .line 920
    .local v3, end:J
    iget-wide v5, v11, Lcom/android/calendar/Event;->id:J

    .line 921
    .local v5, id:J
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    const/4 v7, -0x1

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJI)V

    .line 922
    const/4 v0, 0x1

    goto :goto_22

    .line 924
    .end local v1           #begin:J
    .end local v3           #end:J
    .end local v5           #id:J
    .end local v11           #selectedEvent:Lcom/android/calendar/Event;
    :sswitch_5b
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/CalendarView;->switchViews(Z)V

    .line 925
    const/4 v0, 0x1

    goto :goto_22

    .line 927
    :sswitch_61
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 928
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarActivity;->finish()V

    .line 929
    const/4 v0, 0x1

    goto :goto_22

    .line 931
    :sswitch_6d
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v0, :cond_77

    .line 932
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v0, v0, Lcom/android/calendar/Event;->nextLeft:Lcom/android/calendar/Event;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 934
    :cond_77
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-nez v0, :cond_7d

    .line 935
    add-int/lit8 v12, v12, -0x1

    .line 937
    :cond_7d
    const/4 v10, 0x1

    .line 986
    .local v10, redraw:Z
    :goto_7e
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    if-lt v12, v0, :cond_86

    iget v0, p0, Lcom/android/calendar/CalendarView;->mLastJulianDay:I

    if-le v12, v0, :cond_124

    .line 988
    :cond_86
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarActivity;->getNextView()Lcom/android/calendar/CalendarView;

    move-result-object v13

    .line 989
    .local v13, view:Lcom/android/calendar/CalendarView;
    iget-object v8, v13, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    .line 990
    .local v8, date:Landroid/text/format/Time;
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v8, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 991
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    if-ge v12, v0, :cond_11a

    .line 992
    iget v0, v8, Landroid/text/format/Time;->monthDay:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    sub-int/2addr v0, v1

    iput v0, v8, Landroid/text/format/Time;->monthDay:I

    .line 993
    const/4 v9, 0x0

    .line 998
    .local v9, forward:Z
    :goto_9f
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 999
    iput v12, v13, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    .line 1001
    invoke-direct {p0, v13}, Lcom/android/calendar/CalendarView;->initView(Lcom/android/calendar/CalendarView;)V

    .line 1002
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v1, v13, Lcom/android/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1003
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/calendar/CalendarActivity;->switchViews(ZFF)Landroid/view/View;

    .line 1004
    const/4 v0, 0x1

    goto/16 :goto_22

    .line 941
    .end local v8           #date:Landroid/text/format/Time;
    .end local v9           #forward:Z
    .end local v10           #redraw:Z
    .end local v13           #view:Lcom/android/calendar/CalendarView;
    :sswitch_b9
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v0, :cond_c3

    .line 942
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v0, v0, Lcom/android/calendar/Event;->nextRight:Lcom/android/calendar/Event;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 944
    :cond_c3
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-nez v0, :cond_c9

    .line 945
    add-int/lit8 v12, v12, 0x1

    .line 947
    :cond_c9
    const/4 v10, 0x1

    .line 948
    .restart local v10       #redraw:Z
    goto :goto_7e

    .line 951
    .end local v10           #redraw:Z
    :sswitch_cb
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v0, :cond_d5

    .line 952
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v0, v0, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 954
    :cond_d5
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-nez v0, :cond_ee

    .line 955
    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    if-nez v0, :cond_ee

    .line 956
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 957
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->adjustHourSelection()V

    .line 958
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 959
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    .line 962
    :cond_ee
    const/4 v10, 0x1

    .line 963
    .restart local v10       #redraw:Z
    goto :goto_7e

    .line 966
    .end local v10           #redraw:Z
    :sswitch_f0
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v0, :cond_fa

    .line 967
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v0, v0, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 969
    :cond_fa
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-nez v0, :cond_105

    .line 970
    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    if-eqz v0, :cond_108

    .line 971
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    .line 979
    :cond_105
    :goto_105
    const/4 v10, 0x1

    .line 980
    .restart local v10       #redraw:Z
    goto/16 :goto_7e

    .line 973
    .end local v10           #redraw:Z
    :cond_108
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 974
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->adjustHourSelection()V

    .line 975
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 976
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    goto :goto_105

    .line 995
    .restart local v8       #date:Landroid/text/format/Time;
    .restart local v10       #redraw:Z
    .restart local v13       #view:Lcom/android/calendar/CalendarView;
    :cond_11a
    iget v0, v8, Landroid/text/format/Time;->monthDay:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    add-int/2addr v0, v1

    iput v0, v8, Landroid/text/format/Time;->monthDay:I

    .line 996
    const/4 v9, 0x1

    .restart local v9       #forward:Z
    goto/16 :goto_9f

    .line 1006
    .end local v8           #date:Landroid/text/format/Time;
    .end local v9           #forward:Z
    .end local v13           #view:Lcom/android/calendar/CalendarView;
    :cond_124
    iput v12, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    .line 1007
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1008
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    .line 1010
    if-eqz v10, :cond_139

    .line 1011
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 1012
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 1013
    const/4 v0, 0x1

    goto/16 :goto_22

    .line 1016
    :cond_139
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_22

    .line 909
    nop

    :sswitch_data_140
    .sparse-switch
        0x4 -> :sswitch_61
        0x13 -> :sswitch_cb
        0x14 -> :sswitch_f0
        0x15 -> :sswitch_6d
        0x16 -> :sswitch_b9
        0x42 -> :sswitch_5b
        0x43 -> :sswitch_42
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 847
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    .line 848
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 850
    .local v0, duration:J
    packed-switch p1, :pswitch_data_40

    .line 879
    :cond_11
    :goto_11
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 852
    :pswitch_16
    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    if-eqz v2, :cond_11

    .line 857
    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    if-ne v2, v6, :cond_27

    .line 862
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 863
    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 864
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    goto :goto_11

    .line 869
    :cond_27
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_34

    .line 870
    invoke-direct {p0, v6}, Lcom/android/calendar/CalendarView;->switchViews(Z)V

    goto :goto_11

    .line 872
    :cond_34
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 873
    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 874
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 875
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->performLongClick()Z

    goto :goto_11

    .line 850
    :pswitch_data_40
    .packed-switch 0x17
        :pswitch_16
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .registers 13
    .parameter "width"
    .parameter "height"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/high16 v7, 0x4140

    .line 586
    iput p1, p0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    .line 587
    iput p2, p0, Lcom/android/calendar/CalendarView;->mViewHeight:I

    .line 588
    iget v5, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    sub-int v2, p1, v5

    .line 589
    .local v2, gridAreaWidth:I
    iget v5, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    mul-int/lit8 v5, v5, 0x1

    sub-int v5, v2, v5

    iget v6, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    div-int/2addr v5, v6

    iput v5, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    .line 591
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 592
    .local v3, p:Landroid/graphics/Paint;
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 593
    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v1, v5

    .line 595
    .local v1, bannerTextHeight:I
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 596
    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/calendar/CalendarView;->mHoursTextHeight:I

    .line 598
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 599
    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    neg-float v0, v5

    .line 600
    .local v0, ascent:F
    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, p0, Lcom/android/calendar/CalendarView;->mEventTextAscent:I

    .line 601
    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v5

    add-float v4, v0, v5

    .line 602
    .local v4, totalHeight:F
    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, p0, Lcom/android/calendar/CalendarView;->mEventTextHeight:I

    .line 604
    iget v5, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_5f

    .line 605
    add-int/lit8 v5, v1, 0xe

    iput v5, p0, Lcom/android/calendar/CalendarView;->mBannerPlusMargin:I

    .line 610
    :goto_5b
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/CalendarView;->remeasure(II)V

    .line 611
    return-void

    .line 607
    :cond_5f
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/calendar/CalendarView;->mBannerPlusMargin:I

    goto :goto_5b
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "ev"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2487
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2489
    .local v0, action:I
    packed-switch v0, :pswitch_data_8e

    .line 2539
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-object v1, v1, Lcom/android/calendar/CalendarActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_89

    move v1, v5

    .line 2542
    :goto_14
    return v1

    .line 2491
    :pswitch_15
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-object v1, v1, Lcom/android/calendar/CalendarActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v1, v5

    .line 2492
    goto :goto_14

    .line 2495
    :pswitch_1e
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-object v1, v1, Lcom/android/calendar/CalendarActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v1, v5

    .line 2496
    goto :goto_14

    .line 2499
    :pswitch_27
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-object v1, v1, Lcom/android/calendar/CalendarActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2500
    iget-boolean v1, p0, Lcom/android/calendar/CalendarView;->mOnFlingCalled:Z

    if-eqz v1, :cond_34

    move v1, v5

    .line 2501
    goto :goto_14

    .line 2503
    :cond_34
    iget v1, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6b

    .line 2504
    iput v6, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    .line 2505
    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_5c

    .line 2507
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget v2, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    if-lez v2, :cond_5a

    move v2, v5

    :goto_4d
    iget v3, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/calendar/CalendarActivity;->switchViews(ZFF)Landroid/view/View;

    .line 2508
    iput v6, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    move v1, v5

    .line 2509
    goto :goto_14

    :cond_5a
    move v2, v6

    .line 2507
    goto :goto_4d

    .line 2514
    :cond_5c
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->recalc()V

    .line 2515
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2516
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 2517
    iput v6, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    .line 2523
    :cond_6b
    iget-boolean v1, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    if-eqz v1, :cond_79

    .line 2524
    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    .line 2525
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->resetSelectedHour()V

    .line 2526
    iput-boolean v5, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 2527
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    :cond_79
    move v1, v5

    .line 2529
    goto :goto_14

    .line 2533
    :pswitch_7b
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-object v1, v1, Lcom/android/calendar/CalendarActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2534
    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    .line 2535
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->resetSelectedHour()V

    move v1, v5

    .line 2536
    goto :goto_14

    .line 2542
    :cond_89
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_14

    .line 2489
    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_15
        :pswitch_27
        :pswitch_1e
        :pswitch_7b
    .end packed-switch
.end method

.method reloadEvents()V
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1123
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    if-nez v0, :cond_7

    .line 1159
    :cond_6
    :goto_6
    return-void

    .line 1127
    :cond_7
    iput-object v5, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1128
    iput-object v5, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1129
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1132
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 1133
    .local v7, weekStart:Landroid/text/format/Time;
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1134
    iput v1, v7, Landroid/text/format/Time;->hour:I

    .line 1135
    iput v1, v7, Landroid/text/format/Time;->minute:I

    .line 1136
    iput v1, v7, Landroid/text/format/Time;->second:I

    .line 1137
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 1140
    .local v3, millis:J
    iget-wide v0, p0, Lcom/android/calendar/CalendarView;->mLastReloadMillis:J

    cmp-long v0, v3, v0

    if-eqz v0, :cond_6

    .line 1143
    iput-wide v3, p0, Lcom/android/calendar/CalendarView;->mLastReloadMillis:J

    .line 1146
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarActivity;->startProgressSpinner()V

    .line 1147
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1148
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEventLoader:Lcom/android/calendar/EventLoader;

    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    new-instance v5, Lcom/android/calendar/CalendarView$2;

    invoke-direct {v5, p0, v2}, Lcom/android/calendar/CalendarView$2;-><init>(Lcom/android/calendar/CalendarView;Ljava/util/ArrayList;)V

    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mCancelCallback:Ljava/lang/Runnable;

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method setDetailedView(Ljava/lang/String;)V
    .registers 2
    .parameter "detailedView"

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/calendar/CalendarView;->mDetailedView:Ljava/lang/String;

    .line 582
    return-void
.end method

.method public setSelectedDay(Landroid/text/format/Time;)V
    .registers 7
    .parameter "time"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 502
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 503
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 504
    iput-object v3, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 505
    iput-object v3, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 506
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 507
    .local v0, millis:J
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    .line 508
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 509
    iput-boolean v4, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    .line 512
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    .line 513
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->recalc()V

    .line 514
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 518
    iput-boolean v4, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 519
    iput-boolean v4, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    .line 520
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 521
    return-void
.end method
