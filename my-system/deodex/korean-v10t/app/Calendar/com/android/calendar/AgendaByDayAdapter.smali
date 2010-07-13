.class public Lcom/android/calendar/AgendaByDayAdapter;
.super Landroid/widget/BaseAdapter;
.source "AgendaByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AgendaByDayAdapter$1;,
        Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;,
        Lcom/android/calendar/AgendaByDayAdapter$RowInfo;,
        Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TYPE_DAY:I = 0x0

.field private static final TYPE_LAST:I = 0x2

.field private static final TYPE_MEETING:I = 0x1


# instance fields
.field private final mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mRowInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/AgendaByDayAdapter$RowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTime:Landroid/text/format/Time;

.field private mTodayJulianDay:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/AgendaAdapter;)V
    .registers 4
    .parameter "context"
    .parameter "agendaAdapter"

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mTime:Landroid/text/format/Time;

    .line 47
    iput-object p1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    .line 49
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 50
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public calculateDays(Landroid/database/Cursor;)V
    .registers 26
    .parameter "cursor"

    .prologue
    .line 149
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v18, rowInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/AgendaByDayAdapter$RowInfo;>;"
    const/16 v17, -0x1

    .line 151
    .local v17, prevStartDay:I
    new-instance v20, Landroid/text/format/Time;

    invoke-direct/range {v20 .. v20}, Landroid/text/format/Time;-><init>()V

    .line 152
    .local v20, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 153
    .local v14, now:J
    move-object/from16 v0, v20

    move-wide v1, v14

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 154
    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v21, v0

    move-wide v0, v14

    move-wide/from16 v2, v21

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/AgendaByDayAdapter;->mTodayJulianDay:I

    .line 155
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 156
    .local v13, multipleDayList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;>;"
    const/16 v16, 0x0

    .local v16, position:I
    :goto_30
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v21

    if-eqz v21, :cond_11b

    .line 157
    const/16 v21, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    if-eqz v21, :cond_aa

    const/16 v21, 0x1

    move/from16 v4, v21

    .line 158
    .local v4, allDay:Z
    :goto_46
    const/16 v21, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 160
    .local v19, startDay:I
    move/from16 v0, v19

    move/from16 v1, v17

    if-eq v0, v1, :cond_74

    .line 162
    const/16 v21, -0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_af

    .line 163
    new-instance v21, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_72
    :goto_72
    move/from16 v17, v19

    .line 201
    :cond_74
    new-instance v21, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    const/16 v21, 0xb

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 206
    .local v7, endDay:I
    move v0, v7

    move/from16 v1, v19

    if-le v0, v1, :cond_a7

    .line 207
    new-instance v21, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;

    move-object/from16 v0, v21

    move/from16 v1, v16

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;-><init>(II)V

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_a7
    add-int/lit8 v16, v16, 0x1

    goto :goto_30

    .line 157
    .end local v4           #allDay:Z
    .end local v7           #endDay:I
    .end local v19           #startDay:I
    :cond_aa
    const/16 v21, 0x0

    move/from16 v4, v21

    goto :goto_46

    .line 168
    .restart local v4       #allDay:Z
    .restart local v19       #startDay:I
    :cond_af
    const/4 v6, 0x0

    .line 169
    .local v6, dayHeaderAdded:Z
    add-int/lit8 v5, v17, 0x1

    .local v5, currentDay:I
    :goto_b2
    move v0, v5

    move/from16 v1, v19

    if-gt v0, v1, :cond_103

    .line 170
    const/4 v6, 0x0

    .line 171
    invoke-virtual {v13}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 172
    .local v9, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;>;"
    :goto_bc
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_100

    .line 173
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;

    .line 176
    .local v8, info:Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;
    move-object v0, v8

    iget v0, v0, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    move/from16 v21, v0

    move/from16 v0, v21

    move v1, v5

    if-ge v0, v1, :cond_d6

    .line 177
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_bc

    .line 183
    :cond_d6
    if-nez v6, :cond_ec

    .line 184
    new-instance v21, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    const/4 v6, 0x1

    .line 187
    :cond_ec
    new-instance v21, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    const/16 v22, 0x1

    move-object v0, v8

    iget v0, v0, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    move/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_bc

    .line 169
    .end local v8           #info:Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;
    :cond_100
    add-int/lit8 v5, v5, 0x1

    goto :goto_b2

    .line 193
    .end local v9           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;>;"
    :cond_103
    if-nez v6, :cond_72

    .line 194
    new-instance v21, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_72

    .line 213
    .end local v4           #allDay:Z
    .end local v5           #currentDay:I
    .end local v6           #dayHeaderAdded:Z
    .end local v19           #startDay:I
    :cond_11b
    if-lez v17, :cond_19d

    .line 217
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 218
    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/text/format/Time;->month:I

    .line 219
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 220
    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v11

    .line 221
    .local v11, millis:J
    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v21, v0

    move-wide v0, v11

    move-wide/from16 v2, v21

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v10

    .line 223
    .local v10, lastDayOfMonth:I
    add-int/lit8 v5, v17, 0x1

    .restart local v5       #currentDay:I
    :goto_14f
    if-gt v5, v10, :cond_19d

    .line 224
    const/4 v6, 0x0

    .line 225
    .restart local v6       #dayHeaderAdded:Z
    invoke-virtual {v13}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 226
    .restart local v9       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;>;"
    :goto_156
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_19a

    .line 227
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;

    .line 230
    .restart local v8       #info:Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;
    move-object v0, v8

    iget v0, v0, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    move/from16 v21, v0

    move/from16 v0, v21

    move v1, v5

    if-ge v0, v1, :cond_170

    .line 231
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_156

    .line 237
    :cond_170
    if-nez v6, :cond_186

    .line 238
    new-instance v21, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    const/4 v6, 0x1

    .line 241
    :cond_186
    new-instance v21, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    const/16 v22, 0x1

    move-object v0, v8

    iget v0, v0, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    move/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_156

    .line 223
    .end local v8           #info:Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;
    :cond_19a
    add-int/lit8 v5, v5, 0x1

    goto :goto_14f

    .line 245
    .end local v5           #currentDay:I
    .end local v6           #dayHeaderAdded:Z
    .end local v9           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;>;"
    .end local v10           #lastDayOfMonth:I
    .end local v11           #millis:J
    :cond_19d
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    .line 246
    return-void
.end method

.method public clearDayHeaderInfo()V
    .registers 2

    .prologue
    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    .line 146
    return-void
.end method

.method public findDayPositionNearestTime(Landroid/text/format/Time;)I
    .registers 13
    .parameter "time"

    .prologue
    const/4 v10, 0x0

    .line 283
    iget-object v9, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-nez v9, :cond_7

    move v9, v10

    .line 307
    :goto_6
    return v9

    .line 286
    :cond_7
    invoke-virtual {p1, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 287
    .local v4, millis:J
    iget-wide v9, p1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v4, v5, v9, v10}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 288
    .local v2, julianDay:I
    const/16 v6, 0x3e8

    .line 289
    .local v6, minDistance:I
    const/4 v7, 0x0

    .line 290
    .local v7, minIndex:I
    iget-object v9, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 291
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1b
    if-ge v1, v3, :cond_3c

    .line 292
    iget-object v9, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    .line 293
    .local v8, row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    iget v9, v8, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v9, :cond_39

    .line 294
    iget v9, v8, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    sub-int v9, v2, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 295
    .local v0, distance:I
    if-nez v0, :cond_35

    move v9, v1

    .line 296
    goto :goto_6

    .line 298
    :cond_35
    if-ge v0, v6, :cond_39

    .line 299
    move v6, v0

    .line 300
    move v7, v1

    .line 291
    .end local v0           #distance:I
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .end local v8           #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_3c
    move v9, v7

    .line 307
    goto :goto_6
.end method

.method public findJulianDayFromPosition(I)I
    .registers 7
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 317
    iget-object v3, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    if-gez p1, :cond_9

    :cond_7
    move v3, v4

    .line 330
    :goto_8
    return v3

    .line 321
    :cond_9
    iget-object v3, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 322
    .local v1, len:I
    if-lt p1, v1, :cond_13

    move v3, v4

    goto :goto_8

    .line 324
    :cond_13
    move v0, p1

    .local v0, index:I
    :goto_14
    if-ltz v0, :cond_28

    .line 325
    iget-object v3, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    .line 326
    .local v2, row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    iget v3, v2, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v3, :cond_25

    .line 327
    iget v3, v2, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    goto :goto_8

    .line 324
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .end local v2           #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_28
    move v3, v4

    .line 330
    goto :goto_8
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 54
    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 56
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaAdapter;->getCount()I

    move-result v0

    goto :goto_a
.end method

.method public getCursorPosition(I)I
    .registers 5
    .parameter "listPos"

    .prologue
    .line 341
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_16

    if-ltz p1, :cond_16

    .line 342
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    .line 343
    .local v0, row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    iget v1, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 344
    iget v1, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    .line 347
    .end local v0           #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :goto_15
    return v1

    :cond_16
    move v1, p1

    goto :goto_15
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 5
    .parameter "position"

    .prologue
    .line 60
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1b

    .line 61
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    .line 62
    .local v0, row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    iget v1, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v1, :cond_12

    move-object v1, v0

    .line 68
    .end local v0           #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :goto_11
    return-object v1

    .line 65
    .restart local v0       #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_12
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    iget v2, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/AgendaAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_11

    .line 68
    .end local v0           #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_1b
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    invoke-virtual {v1, p1}, Lcom/android/calendar/AgendaAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_11
.end method

.method public getItemId(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1b

    .line 73
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    .line 74
    .local v0, row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    iget v1, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v1, :cond_12

    .line 75
    int-to-long v1, p1

    .line 80
    .end local v0           #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :goto_11
    return-wide v1

    .line 77
    .restart local v0       #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_12
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    iget v2, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/AgendaAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_11

    .line 80
    .end local v0           #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_1b
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    invoke-virtual {v1, p1}, Lcom/android/calendar/AgendaAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_11
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_17

    iget-object v0, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    iget v0, p0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    :goto_16
    return v0

    .restart local p0
    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 99
    iget-object v8, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le p1, v8, :cond_13

    .line 101
    :cond_c
    iget-object v8, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    invoke-virtual {v8, p1, p2, p3}, Lcom/android/calendar/AgendaAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 137
    :goto_12
    return-object v8

    .line 104
    :cond_13
    iget-object v8, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    .line 105
    .local v7, row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    iget v8, v7, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v8, :cond_a9

    .line 108
    if-eqz p2, :cond_27

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_93

    .line 111
    :cond_27
    new-instance v4, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;

    const/4 v8, 0x0

    invoke-direct {v4, v8}, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;-><init>(Lcom/android/calendar/AgendaByDayAdapter$1;)V

    .line 112
    .local v4, holder:Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;
    iget-object v8, p0, Lcom/android/calendar/AgendaByDayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030001

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 113
    .local v0, agendaDayView:Landroid/view/View;
    const v8, 0x7f0c0001

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v4, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    .line 114
    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 121
    :goto_45
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mTime:Landroid/text/format/Time;

    .line 122
    .local v1, date:Landroid/text/format/Time;
    iget v8, v7, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    invoke-virtual {v1, v8}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v5

    .line 123
    .local v5, millis:J
    const/16 v3, 0x14

    .line 126
    .local v3, flags:I
    iget v8, v7, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    iget v9, p0, Lcom/android/calendar/AgendaByDayAdapter;->mTodayJulianDay:I

    if-ne v8, v9, :cond_9b

    .line 127
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08003a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, dayText:Ljava/lang/String;
    iget-object v8, v4, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v10, v5, v6, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v2           #dayText:Ljava/lang/String;
    :goto_91
    move-object v8, v0

    .line 135
    goto :goto_12

    .line 116
    .end local v0           #agendaDayView:Landroid/view/View;
    .end local v1           #date:Landroid/text/format/Time;
    .end local v3           #flags:I
    .end local v4           #holder:Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;
    .end local v5           #millis:J
    :cond_93
    move-object v0, p2

    .line 117
    .restart local v0       #agendaDayView:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;

    .restart local v4       #holder:Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;
    goto :goto_45

    .line 130
    .restart local v1       #date:Landroid/text/format/Time;
    .restart local v3       #flags:I
    .restart local v5       #millis:J
    :cond_9b
    or-int/lit8 v3, v3, 0x2

    .line 131
    iget-object v8, v4, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9, v5, v6, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_91

    .line 136
    .end local v0           #agendaDayView:Landroid/view/View;
    .end local v1           #date:Landroid/text/format/Time;
    .end local v3           #flags:I
    .end local v4           #holder:Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;
    .end local v5           #millis:J
    :cond_a9
    iget v8, v7, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b8

    .line 137
    iget-object v8, p0, Lcom/android/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/AgendaAdapter;

    iget v9, v7, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    invoke-virtual {v8, v9, p2, p3}, Lcom/android/calendar/AgendaAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    goto/16 :goto_12

    .line 140
    :cond_b8
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown event type:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .registers 5
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    .line 357
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1d

    .line 358
    iget-object v1, p0, Lcom/android/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;

    .line 359
    .local v0, row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    iget v1, v0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    if-ne v1, v2, :cond_1b

    move v1, v2

    .line 361
    .end local v0           #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :goto_1a
    return v1

    .line 359
    .restart local v0       #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a

    .end local v0           #row:Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
    :cond_1d
    move v1, v2

    .line 361
    goto :goto_1a
.end method
