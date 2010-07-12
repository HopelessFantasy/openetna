.class public final Landroid/view/MotionEvent;
.super Ljava/lang/Object;
.source "MotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_CANCEL:I = 0x3

.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_MOVE:I = 0x2

.field public static final ACTION_OUTSIDE:I = 0x4

.field public static final ACTION_UP:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EDGE_BOTTOM:I = 0x2

.field public static final EDGE_LEFT:I = 0x4

.field public static final EDGE_RIGHT:I = 0x8

.field public static final EDGE_TOP:I = 0x1

.field private static final MAX_RECYCLED:I = 0xa

.field private static final TRACK_RECYCLED_LOCATION:Z

.field private static gRecyclerLock:Ljava/lang/Object;

.field private static gRecyclerTop:Landroid/view/MotionEvent;

.field private static gRecyclerUsed:I


# instance fields
.field private mAction:I

.field private mDeviceId:I

.field private mDownTime:J

.field private mEdgeFlags:I

.field private mEventTime:J

.field private mHistory:[F

.field private mHistoryTimes:[J

.field private mMetaState:I

.field private mNext:Landroid/view/MotionEvent;

.field private mNumHistory:I

.field private mPressure:F

.field private mRawX:F

.field private mRawY:F

.field private mRecycled:Z

.field private mRecycledLocation:Ljava/lang/RuntimeException;

.field private mScanCode:I

.field private mSize:F

.field private mX:F

.field private mXPrecision:F

.field private mY:F

.field private mYPrecision:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    .line 85
    const/4 v0, 0x0

    sput v0, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 86
    const/4 v0, 0x0

    sput-object v0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 688
    new-instance v0, Landroid/view/MotionEvent$1;

    invoke-direct {v0}, Landroid/view/MotionEvent$1;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method static synthetic access$000()Landroid/view/MotionEvent;
    .registers 1

    .prologue
    .line 29
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/MotionEvent;Landroid/os/Parcel;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/view/MotionEvent;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private static obtain()Landroid/view/MotionEvent;
    .registers 4

    .prologue
    .line 115
    sget-object v1, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 116
    :try_start_3
    sget-object v2, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    if-nez v2, :cond_f

    .line 117
    new-instance v2, Landroid/view/MotionEvent;

    invoke-direct {v2}, Landroid/view/MotionEvent;-><init>()V

    monitor-exit v1

    move-object v1, v2

    .line 124
    :goto_e
    return-object v1

    .line 119
    :cond_f
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 120
    .local v0, ev:Landroid/view/MotionEvent;
    iget-object v2, v0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    sput-object v2, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 121
    sget v2, Landroid/view/MotionEvent;->gRecyclerUsed:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sput v2, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 122
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/view/MotionEvent;->mRecycledLocation:Ljava/lang/RuntimeException;

    .line 123
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/MotionEvent;->mRecycled:Z

    .line 124
    monitor-exit v1

    move-object v1, v0

    goto :goto_e

    .line 125
    .end local v0           #ev:Landroid/view/MotionEvent;
    :catchall_24
    move-exception v2

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v2
.end method

.method public static obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;
    .registers 16
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "metaState"
    .parameter "xPrecision"
    .parameter "yPrecision"
    .parameter "deviceId"
    .parameter "edgeFlags"

    .prologue
    .line 162
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 163
    .local v0, ev:Landroid/view/MotionEvent;
    iput p12, v0, Landroid/view/MotionEvent;->mDeviceId:I

    .line 164
    iput p13, v0, Landroid/view/MotionEvent;->mEdgeFlags:I

    .line 165
    iput-wide p0, v0, Landroid/view/MotionEvent;->mDownTime:J

    .line 166
    iput-wide p2, v0, Landroid/view/MotionEvent;->mEventTime:J

    .line 167
    iput p4, v0, Landroid/view/MotionEvent;->mAction:I

    .line 168
    iput p5, v0, Landroid/view/MotionEvent;->mRawX:F

    iput p5, v0, Landroid/view/MotionEvent;->mX:F

    .line 169
    iput p6, v0, Landroid/view/MotionEvent;->mRawY:F

    iput p6, v0, Landroid/view/MotionEvent;->mY:F

    .line 170
    iput p7, v0, Landroid/view/MotionEvent;->mPressure:F

    .line 171
    iput p8, v0, Landroid/view/MotionEvent;->mSize:F

    .line 172
    iput p9, v0, Landroid/view/MotionEvent;->mMetaState:I

    .line 173
    iput p10, v0, Landroid/view/MotionEvent;->mXPrecision:F

    .line 174
    iput p11, v0, Landroid/view/MotionEvent;->mYPrecision:F

    .line 175
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/MotionEvent;->mScanCode:I

    .line 177
    return-object v0
.end method

.method public static obtain(JJIFFFFIFFIII)Landroid/view/MotionEvent;
    .registers 16
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "metaState"
    .parameter "xPrecision"
    .parameter "yPrecision"
    .parameter "deviceId"
    .parameter "edgeFlags"
    .parameter "scanCode"

    .prologue
    .line 191
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 192
    .local v0, ev:Landroid/view/MotionEvent;
    iput p12, v0, Landroid/view/MotionEvent;->mDeviceId:I

    .line 193
    iput p13, v0, Landroid/view/MotionEvent;->mEdgeFlags:I

    .line 194
    iput-wide p0, v0, Landroid/view/MotionEvent;->mDownTime:J

    .line 195
    iput-wide p2, v0, Landroid/view/MotionEvent;->mEventTime:J

    .line 196
    iput p4, v0, Landroid/view/MotionEvent;->mAction:I

    .line 197
    iput p5, v0, Landroid/view/MotionEvent;->mRawX:F

    iput p5, v0, Landroid/view/MotionEvent;->mX:F

    .line 198
    iput p6, v0, Landroid/view/MotionEvent;->mRawY:F

    iput p6, v0, Landroid/view/MotionEvent;->mY:F

    .line 199
    iput p7, v0, Landroid/view/MotionEvent;->mPressure:F

    .line 200
    iput p8, v0, Landroid/view/MotionEvent;->mSize:F

    .line 201
    iput p9, v0, Landroid/view/MotionEvent;->mMetaState:I

    .line 202
    iput p10, v0, Landroid/view/MotionEvent;->mXPrecision:F

    .line 203
    iput p11, v0, Landroid/view/MotionEvent;->mYPrecision:F

    .line 204
    iput p14, v0, Landroid/view/MotionEvent;->mScanCode:I

    .line 205
    return-object v0
.end method

.method public static obtain(JJIFFI)Landroid/view/MotionEvent;
    .registers 11
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "metaState"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 227
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 228
    .local v0, ev:Landroid/view/MotionEvent;
    iput v2, v0, Landroid/view/MotionEvent;->mDeviceId:I

    .line 229
    iput v2, v0, Landroid/view/MotionEvent;->mEdgeFlags:I

    .line 230
    iput-wide p0, v0, Landroid/view/MotionEvent;->mDownTime:J

    .line 231
    iput-wide p2, v0, Landroid/view/MotionEvent;->mEventTime:J

    .line 232
    iput p4, v0, Landroid/view/MotionEvent;->mAction:I

    .line 233
    iput p5, v0, Landroid/view/MotionEvent;->mRawX:F

    iput p5, v0, Landroid/view/MotionEvent;->mX:F

    .line 234
    iput p6, v0, Landroid/view/MotionEvent;->mRawY:F

    iput p6, v0, Landroid/view/MotionEvent;->mY:F

    .line 235
    iput v1, v0, Landroid/view/MotionEvent;->mPressure:F

    .line 236
    iput v1, v0, Landroid/view/MotionEvent;->mSize:F

    .line 237
    iput p7, v0, Landroid/view/MotionEvent;->mMetaState:I

    .line 238
    iput v1, v0, Landroid/view/MotionEvent;->mXPrecision:F

    .line 239
    iput v1, v0, Landroid/view/MotionEvent;->mYPrecision:F

    .line 240
    iput v2, v0, Landroid/view/MotionEvent;->mScanCode:I

    .line 242
    return-object v0
.end method

.method public static obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 5
    .parameter "o"

    .prologue
    .line 295
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v1

    .line 296
    .local v1, ev:Landroid/view/MotionEvent;
    iget v2, p0, Landroid/view/MotionEvent;->mDeviceId:I

    iput v2, v1, Landroid/view/MotionEvent;->mDeviceId:I

    .line 297
    iget v2, p0, Landroid/view/MotionEvent;->mEdgeFlags:I

    iput v2, v1, Landroid/view/MotionEvent;->mEdgeFlags:I

    .line 298
    iget-wide v2, p0, Landroid/view/MotionEvent;->mDownTime:J

    iput-wide v2, v1, Landroid/view/MotionEvent;->mDownTime:J

    .line 299
    iget-wide v2, p0, Landroid/view/MotionEvent;->mEventTime:J

    iput-wide v2, v1, Landroid/view/MotionEvent;->mEventTime:J

    .line 300
    iget v2, p0, Landroid/view/MotionEvent;->mAction:I

    iput v2, v1, Landroid/view/MotionEvent;->mAction:I

    .line 301
    iget v2, p0, Landroid/view/MotionEvent;->mX:F

    iput v2, v1, Landroid/view/MotionEvent;->mX:F

    .line 302
    iget v2, p0, Landroid/view/MotionEvent;->mRawX:F

    iput v2, v1, Landroid/view/MotionEvent;->mRawX:F

    .line 303
    iget v2, p0, Landroid/view/MotionEvent;->mY:F

    iput v2, v1, Landroid/view/MotionEvent;->mY:F

    .line 304
    iget v2, p0, Landroid/view/MotionEvent;->mRawY:F

    iput v2, v1, Landroid/view/MotionEvent;->mRawY:F

    .line 305
    iget v2, p0, Landroid/view/MotionEvent;->mPressure:F

    iput v2, v1, Landroid/view/MotionEvent;->mPressure:F

    .line 306
    iget v2, p0, Landroid/view/MotionEvent;->mSize:F

    iput v2, v1, Landroid/view/MotionEvent;->mSize:F

    .line 307
    iget v2, p0, Landroid/view/MotionEvent;->mMetaState:I

    iput v2, v1, Landroid/view/MotionEvent;->mMetaState:I

    .line 308
    iget v2, p0, Landroid/view/MotionEvent;->mXPrecision:F

    iput v2, v1, Landroid/view/MotionEvent;->mXPrecision:F

    .line 309
    iget v2, p0, Landroid/view/MotionEvent;->mYPrecision:F

    iput v2, v1, Landroid/view/MotionEvent;->mYPrecision:F

    .line 310
    iget v2, p0, Landroid/view/MotionEvent;->mScanCode:I

    iput v2, v1, Landroid/view/MotionEvent;->mScanCode:I

    .line 311
    iget v0, p0, Landroid/view/MotionEvent;->mNumHistory:I

    .line 312
    .local v0, N:I
    iput v0, v1, Landroid/view/MotionEvent;->mNumHistory:I

    .line 313
    if-lez v0, :cond_5e

    .line 315
    iget-object v2, p0, Landroid/view/MotionEvent;->mHistory:[F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    check-cast v2, [F

    iput-object v2, v1, Landroid/view/MotionEvent;->mHistory:[F

    .line 316
    iget-object v2, p0, Landroid/view/MotionEvent;->mHistoryTimes:[J

    invoke-virtual {v2}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [J

    check-cast p0, [J

    iput-object p0, v1, Landroid/view/MotionEvent;->mHistoryTimes:[J

    .line 318
    :cond_5e
    return-object v1
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .parameter "in"

    .prologue
    .line 738
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/view/MotionEvent;->mDownTime:J

    .line 739
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/view/MotionEvent;->mEventTime:J

    .line 740
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/view/MotionEvent;->mAction:I

    .line 741
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    iput v5, p0, Landroid/view/MotionEvent;->mX:F

    .line 742
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    iput v5, p0, Landroid/view/MotionEvent;->mY:F

    .line 743
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    iput v5, p0, Landroid/view/MotionEvent;->mPressure:F

    .line 744
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    iput v5, p0, Landroid/view/MotionEvent;->mSize:F

    .line 745
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/view/MotionEvent;->mMetaState:I

    .line 746
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    iput v5, p0, Landroid/view/MotionEvent;->mRawX:F

    .line 747
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    iput v5, p0, Landroid/view/MotionEvent;->mRawY:F

    .line 748
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 749
    .local v0, N:I
    iput v0, p0, Landroid/view/MotionEvent;->mNumHistory:I

    if-lez v0, :cond_78

    .line 750
    mul-int/lit8 v1, v0, 0x4

    .line 751
    .local v1, N4:I
    iget-object v2, p0, Landroid/view/MotionEvent;->mHistory:[F

    .line 752
    .local v2, history:[F
    if-eqz v2, :cond_4d

    array-length v5, v2

    if-ge v5, v1, :cond_53

    .line 753
    :cond_4d
    add-int/lit8 v5, v1, 0x10

    new-array v2, v5, [F

    iput-object v2, p0, Landroid/view/MotionEvent;->mHistory:[F

    .line 755
    :cond_53
    const/4 v3, 0x0

    .local v3, i:I
    :goto_54
    if-ge v3, v1, :cond_5f

    .line 756
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    aput v5, v2, v3

    .line 755
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    .line 758
    :cond_5f
    iget-object v4, p0, Landroid/view/MotionEvent;->mHistoryTimes:[J

    .line 759
    .local v4, times:[J
    if-eqz v4, :cond_66

    array-length v5, v4

    if-ge v5, v0, :cond_6c

    .line 760
    :cond_66
    add-int/lit8 v5, v0, 0x4

    new-array v4, v5, [J

    iput-object v4, p0, Landroid/view/MotionEvent;->mHistoryTimes:[J

    .line 762
    :cond_6c
    const/4 v3, 0x0

    :goto_6d
    if-ge v3, v0, :cond_78

    .line 763
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    aput-wide v5, v4, v3

    .line 762
    add-int/lit8 v3, v3, 0x1

    goto :goto_6d

    .line 766
    .end local v1           #N4:I
    .end local v2           #history:[F
    .end local v3           #i:I
    .end local v4           #times:[J
    :cond_78
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    iput v5, p0, Landroid/view/MotionEvent;->mXPrecision:F

    .line 767
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    iput v5, p0, Landroid/view/MotionEvent;->mYPrecision:F

    .line 768
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/view/MotionEvent;->mDeviceId:I

    .line 769
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/view/MotionEvent;->mEdgeFlags:I

    .line 770
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/view/MotionEvent;->mScanCode:I

    .line 771
    return-void
.end method


# virtual methods
.method public final addBatch(JFFFFI)V
    .registers 20
    .parameter "eventTime"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "metaState"

    .prologue
    .line 640
    iget-object v4, p0, Landroid/view/MotionEvent;->mHistory:[F

    .line 641
    .local v4, history:[F
    iget-object v5, p0, Landroid/view/MotionEvent;->mHistoryTimes:[J

    .line 644
    .local v5, historyTimes:[J
    if-nez v4, :cond_58

    .line 645
    const/16 v9, 0x20

    new-array v4, v9, [F

    iput-object v4, p0, Landroid/view/MotionEvent;->mHistory:[F

    .line 646
    const/16 v9, 0x8

    new-array v5, v9, [J

    iput-object v5, p0, Landroid/view/MotionEvent;->mHistoryTimes:[J

    .line 647
    const/4 v2, 0x0

    .local v2, N:I
    iput v2, p0, Landroid/view/MotionEvent;->mNumHistory:I

    .line 648
    const/16 v3, 0x8

    .line 663
    .local v3, avail:I
    :cond_17
    :goto_17
    iget-wide v9, p0, Landroid/view/MotionEvent;->mEventTime:J

    aput-wide v9, v5, v2

    .line 665
    mul-int/lit8 v8, v2, 0x4

    .line 666
    .local v8, pos:I
    iget v9, p0, Landroid/view/MotionEvent;->mX:F

    aput v9, v4, v8

    .line 667
    add-int/lit8 v9, v8, 0x1

    iget v10, p0, Landroid/view/MotionEvent;->mY:F

    aput v10, v4, v9

    .line 668
    add-int/lit8 v9, v8, 0x2

    iget v10, p0, Landroid/view/MotionEvent;->mPressure:F

    aput v10, v4, v9

    .line 669
    add-int/lit8 v9, v8, 0x3

    iget v10, p0, Landroid/view/MotionEvent;->mSize:F

    aput v10, v4, v9

    .line 670
    add-int/lit8 v9, v2, 0x1

    iput v9, p0, Landroid/view/MotionEvent;->mNumHistory:I

    .line 672
    iput-wide p1, p0, Landroid/view/MotionEvent;->mEventTime:J

    .line 673
    iput p3, p0, Landroid/view/MotionEvent;->mRawX:F

    iput p3, p0, Landroid/view/MotionEvent;->mX:F

    .line 674
    move/from16 v0, p4

    move-object v1, p0

    iput v0, v1, Landroid/view/MotionEvent;->mRawY:F

    move/from16 v0, p4

    move-object v1, p0

    iput v0, v1, Landroid/view/MotionEvent;->mY:F

    .line 675
    move/from16 v0, p5

    move-object v1, p0

    iput v0, v1, Landroid/view/MotionEvent;->mPressure:F

    .line 676
    move/from16 v0, p6

    move-object v1, p0

    iput v0, v1, Landroid/view/MotionEvent;->mSize:F

    .line 677
    iget v9, p0, Landroid/view/MotionEvent;->mMetaState:I

    or-int v9, v9, p7

    iput v9, p0, Landroid/view/MotionEvent;->mMetaState:I

    .line 678
    return-void

    .line 650
    .end local v2           #N:I
    .end local v3           #avail:I
    .end local v8           #pos:I
    :cond_58
    iget v2, p0, Landroid/view/MotionEvent;->mNumHistory:I

    .line 651
    .restart local v2       #N:I
    array-length v9, v4

    div-int/lit8 v3, v9, 0x4

    .line 652
    .restart local v3       #avail:I
    if-ne v2, v3, :cond_17

    .line 653
    add-int/lit8 v3, v3, 0x8

    .line 654
    mul-int/lit8 v9, v3, 0x4

    new-array v6, v9, [F

    .line 655
    .local v6, newHistory:[F
    const/4 v9, 0x0

    const/4 v10, 0x0

    mul-int/lit8 v11, v2, 0x4

    invoke-static {v4, v9, v6, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 656
    move-object v4, v6

    iput-object v6, p0, Landroid/view/MotionEvent;->mHistory:[F

    .line 657
    new-array v7, v3, [J

    .line 658
    .local v7, newHistoryTimes:[J
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v5, v9, v7, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 659
    move-object v5, v7

    iput-object v7, p0, Landroid/view/MotionEvent;->mHistoryTimes:[J

    goto :goto_17
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 702
    const/4 v0, 0x0

    return v0
.end method

.method public final getAction()I
    .registers 2

    .prologue
    .line 353
    iget v0, p0, Landroid/view/MotionEvent;->mAction:I

    return v0
.end method

.method public final getDeviceId()I
    .registers 2

    .prologue
    .line 550
    iget v0, p0, Landroid/view/MotionEvent;->mDeviceId:I

    return v0
.end method

.method public final getDownTime()J
    .registers 3

    .prologue
    .line 361
    iget-wide v0, p0, Landroid/view/MotionEvent;->mDownTime:J

    return-wide v0
.end method

.method public final getEdgeFlags()I
    .registers 2

    .prologue
    .line 572
    iget v0, p0, Landroid/view/MotionEvent;->mEdgeFlags:I

    return v0
.end method

.method public final getEventTime()J
    .registers 3

    .prologue
    .line 368
    iget-wide v0, p0, Landroid/view/MotionEvent;->mEventTime:J

    return-wide v0
.end method

.method public final getHistoricalEventTime(I)J
    .registers 4
    .parameter "pos"

    .prologue
    .line 485
    iget-object v0, p0, Landroid/view/MotionEvent;->mHistoryTimes:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public final getHistoricalPressure(I)F
    .registers 4
    .parameter "pos"

    .prologue
    .line 527
    iget-object v0, p0, Landroid/view/MotionEvent;->mHistory:[F

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalSize(I)F
    .registers 4
    .parameter "pos"

    .prologue
    .line 541
    iget-object v0, p0, Landroid/view/MotionEvent;->mHistory:[F

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalX(I)F
    .registers 4
    .parameter "pos"

    .prologue
    .line 499
    iget-object v0, p0, Landroid/view/MotionEvent;->mHistory:[F

    mul-int/lit8 v1, p1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalY(I)F
    .registers 4
    .parameter "pos"

    .prologue
    .line 513
    iget-object v0, p0, Landroid/view/MotionEvent;->mHistory:[F

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public final getHistorySize()I
    .registers 2

    .prologue
    .line 471
    iget v0, p0, Landroid/view/MotionEvent;->mNumHistory:I

    return v0
.end method

.method public final getMetaState()I
    .registers 2

    .prologue
    .line 419
    iget v0, p0, Landroid/view/MotionEvent;->mMetaState:I

    return v0
.end method

.method public final getPressure()F
    .registers 2

    .prologue
    .line 394
    iget v0, p0, Landroid/view/MotionEvent;->mPressure:F

    return v0
.end method

.method public final getRawX()F
    .registers 2

    .prologue
    .line 429
    iget v0, p0, Landroid/view/MotionEvent;->mRawX:F

    return v0
.end method

.method public final getRawY()F
    .registers 2

    .prologue
    .line 439
    iget v0, p0, Landroid/view/MotionEvent;->mRawY:F

    return v0
.end method

.method public final getScanCode()I
    .registers 2

    .prologue
    .line 558
    iget v0, p0, Landroid/view/MotionEvent;->mScanCode:I

    return v0
.end method

.method public final getSize()F
    .registers 2

    .prologue
    .line 405
    iget v0, p0, Landroid/view/MotionEvent;->mSize:F

    return v0
.end method

.method public final getX()F
    .registers 2

    .prologue
    .line 376
    iget v0, p0, Landroid/view/MotionEvent;->mX:F

    return v0
.end method

.method public final getXPrecision()F
    .registers 2

    .prologue
    .line 449
    iget v0, p0, Landroid/view/MotionEvent;->mXPrecision:F

    return v0
.end method

.method public final getY()F
    .registers 2

    .prologue
    .line 384
    iget v0, p0, Landroid/view/MotionEvent;->mY:F

    return v0
.end method

.method public final getYPrecision()F
    .registers 2

    .prologue
    .line 459
    iget v0, p0, Landroid/view/MotionEvent;->mYPrecision:F

    return v0
.end method

.method public final offsetLocation(FF)V
    .registers 8
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 599
    iget v3, p0, Landroid/view/MotionEvent;->mX:F

    add-float/2addr v3, p1

    iput v3, p0, Landroid/view/MotionEvent;->mX:F

    .line 600
    iget v3, p0, Landroid/view/MotionEvent;->mY:F

    add-float/2addr v3, p2

    iput v3, p0, Landroid/view/MotionEvent;->mY:F

    .line 601
    iget v3, p0, Landroid/view/MotionEvent;->mNumHistory:I

    mul-int/lit8 v0, v3, 0x4

    .line 602
    .local v0, N:I
    if-gtz v0, :cond_11

    .line 610
    :cond_10
    return-void

    .line 605
    :cond_11
    iget-object v2, p0, Landroid/view/MotionEvent;->mHistory:[F

    .line 606
    .local v2, pos:[F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    if-ge v1, v0, :cond_10

    .line 607
    aget v3, v2, v1

    add-float/2addr v3, p1

    aput v3, v2, v1

    .line 608
    add-int/lit8 v3, v1, 0x1

    aget v4, v2, v3

    add-float/2addr v4, p2

    aput v4, v2, v3

    .line 606
    add-int/lit8 v1, v1, 0x4

    goto :goto_14
.end method

.method public recycle()V
    .registers 4

    .prologue
    .line 332
    iget-boolean v0, p0, Landroid/view/MotionEvent;->mRecycled:Z

    if-eqz v0, :cond_21

    .line 333
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recycled twice!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_21
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_24
    sget v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_39

    .line 339
    sget v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 340
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/MotionEvent;->mNumHistory:I

    .line 341
    sget-object v1, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    iput-object v1, p0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    .line 342
    sput-object p0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 344
    :cond_39
    monitor-exit v0

    .line 345
    return-void

    .line 344
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_24 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public scale(F)V
    .registers 7
    .parameter "scale"

    .prologue
    .line 251
    iget v3, p0, Landroid/view/MotionEvent;->mX:F

    mul-float/2addr v3, p1

    iput v3, p0, Landroid/view/MotionEvent;->mX:F

    .line 252
    iget v3, p0, Landroid/view/MotionEvent;->mY:F

    mul-float/2addr v3, p1

    iput v3, p0, Landroid/view/MotionEvent;->mY:F

    .line 253
    iget v3, p0, Landroid/view/MotionEvent;->mRawX:F

    mul-float/2addr v3, p1

    iput v3, p0, Landroid/view/MotionEvent;->mRawX:F

    .line 254
    iget v3, p0, Landroid/view/MotionEvent;->mRawY:F

    mul-float/2addr v3, p1

    iput v3, p0, Landroid/view/MotionEvent;->mRawY:F

    .line 255
    iget v3, p0, Landroid/view/MotionEvent;->mSize:F

    mul-float/2addr v3, p1

    iput v3, p0, Landroid/view/MotionEvent;->mSize:F

    .line 256
    iget v3, p0, Landroid/view/MotionEvent;->mXPrecision:F

    mul-float/2addr v3, p1

    iput v3, p0, Landroid/view/MotionEvent;->mXPrecision:F

    .line 257
    iget v3, p0, Landroid/view/MotionEvent;->mYPrecision:F

    mul-float/2addr v3, p1

    iput v3, p0, Landroid/view/MotionEvent;->mYPrecision:F

    .line 258
    iget-object v3, p0, Landroid/view/MotionEvent;->mHistory:[F

    if-eqz v3, :cond_43

    .line 259
    iget-object v0, p0, Landroid/view/MotionEvent;->mHistory:[F

    .line 260
    .local v0, history:[F
    array-length v2, v0

    .line 261
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2b
    if-ge v1, v2, :cond_43

    .line 262
    aget v3, v0, v1

    mul-float/2addr v3, p1

    aput v3, v0, v1

    .line 263
    add-int/lit8 v3, v1, 0x1

    aget v4, v0, v3

    mul-float/2addr v4, p1

    aput v4, v0, v3

    .line 265
    add-int/lit8 v3, v1, 0x3

    aget v4, v0, v3

    mul-float/2addr v4, p1

    aput v4, v0, v3

    .line 261
    add-int/lit8 v1, v1, 0x4

    goto :goto_2b

    .line 268
    .end local v0           #history:[F
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_43
    return-void
.end method

.method public final setAction(I)V
    .registers 2
    .parameter "action"

    .prologue
    .line 590
    iput p1, p0, Landroid/view/MotionEvent;->mAction:I

    .line 591
    return-void
.end method

.method public final setEdgeFlags(I)V
    .registers 2
    .parameter "flags"

    .prologue
    .line 583
    iput p1, p0, Landroid/view/MotionEvent;->mEdgeFlags:I

    .line 584
    return-void
.end method

.method public final setLocation(FF)V
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 620
    iget v2, p0, Landroid/view/MotionEvent;->mX:F

    sub-float v0, p1, v2

    .line 621
    .local v0, deltaX:F
    iget v2, p0, Landroid/view/MotionEvent;->mY:F

    sub-float v1, p2, v2

    .line 622
    .local v1, deltaY:F
    cmpl-float v2, v0, v3

    if-nez v2, :cond_11

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_14

    .line 623
    :cond_11
    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 625
    :cond_14
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MotionEvent{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/MotionEvent;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/MotionEvent;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/MotionEvent;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pressure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/MotionEvent;->mPressure:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/MotionEvent;->mSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scancode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/MotionEvent;->mScanCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translate(FF)V
    .registers 8
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 276
    iget v3, p0, Landroid/view/MotionEvent;->mX:F

    add-float/2addr v3, p1

    iput v3, p0, Landroid/view/MotionEvent;->mX:F

    .line 277
    iget v3, p0, Landroid/view/MotionEvent;->mY:F

    add-float/2addr v3, p2

    iput v3, p0, Landroid/view/MotionEvent;->mY:F

    .line 278
    iget v3, p0, Landroid/view/MotionEvent;->mRawX:F

    add-float/2addr v3, p1

    iput v3, p0, Landroid/view/MotionEvent;->mRawX:F

    .line 279
    iget v3, p0, Landroid/view/MotionEvent;->mRawY:F

    add-float/2addr v3, p1

    iput v3, p0, Landroid/view/MotionEvent;->mRawY:F

    .line 280
    iget-object v3, p0, Landroid/view/MotionEvent;->mHistory:[F

    if-eqz v3, :cond_2d

    .line 281
    iget-object v0, p0, Landroid/view/MotionEvent;->mHistory:[F

    .line 282
    .local v0, history:[F
    array-length v2, v0

    .line 283
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1c
    if-ge v1, v2, :cond_2d

    .line 284
    aget v3, v0, v1

    add-float/2addr v3, p1

    aput v3, v0, v1

    .line 285
    add-int/lit8 v3, v1, 0x1

    aget v4, v0, v3

    add-float/2addr v4, p2

    aput v4, v0, v3

    .line 283
    add-int/lit8 v1, v1, 0x4

    goto :goto_1c

    .line 289
    .end local v0           #history:[F
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_2d
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 10
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 706
    iget-wide v5, p0, Landroid/view/MotionEvent;->mDownTime:J

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 707
    iget-wide v5, p0, Landroid/view/MotionEvent;->mEventTime:J

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 708
    iget v5, p0, Landroid/view/MotionEvent;->mAction:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 709
    iget v5, p0, Landroid/view/MotionEvent;->mX:F

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeFloat(F)V

    .line 710
    iget v5, p0, Landroid/view/MotionEvent;->mY:F

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeFloat(F)V

    .line 711
    iget v5, p0, Landroid/view/MotionEvent;->mPressure:F

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeFloat(F)V

    .line 712
    iget v5, p0, Landroid/view/MotionEvent;->mSize:F

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeFloat(F)V

    .line 713
    iget v5, p0, Landroid/view/MotionEvent;->mMetaState:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    iget v5, p0, Landroid/view/MotionEvent;->mRawX:F

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeFloat(F)V

    .line 715
    iget v5, p0, Landroid/view/MotionEvent;->mRawY:F

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeFloat(F)V

    .line 716
    iget v0, p0, Landroid/view/MotionEvent;->mNumHistory:I

    .line 717
    .local v0, N:I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 718
    if-lez v0, :cond_55

    .line 719
    mul-int/lit8 v1, v0, 0x4

    .line 721
    .local v1, N4:I
    iget-object v2, p0, Landroid/view/MotionEvent;->mHistory:[F

    .line 722
    .local v2, history:[F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3e
    if-ge v3, v1, :cond_48

    .line 723
    aget v5, v2, v3

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeFloat(F)V

    .line 722
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 725
    :cond_48
    iget-object v4, p0, Landroid/view/MotionEvent;->mHistoryTimes:[J

    .line 726
    .local v4, times:[J
    const/4 v3, 0x0

    :goto_4b
    if-ge v3, v0, :cond_55

    .line 727
    aget-wide v5, v4, v3

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 726
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 730
    .end local v1           #N4:I
    .end local v2           #history:[F
    .end local v3           #i:I
    .end local v4           #times:[J
    :cond_55
    iget v5, p0, Landroid/view/MotionEvent;->mXPrecision:F

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeFloat(F)V

    .line 731
    iget v5, p0, Landroid/view/MotionEvent;->mYPrecision:F

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeFloat(F)V

    .line 732
    iget v5, p0, Landroid/view/MotionEvent;->mDeviceId:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 733
    iget v5, p0, Landroid/view/MotionEvent;->mEdgeFlags:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    iget v5, p0, Landroid/view/MotionEvent;->mScanCode:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    return-void
.end method
