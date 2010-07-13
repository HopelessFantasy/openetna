.class public Lcom/android/providers/calendar/MetaData;
.super Ljava/lang/Object;
.source "MetaData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/MetaData$Fields;
    }
.end annotation


# static fields
.field private static final METADATA_INDEX_LOCAL_TIMEZONE:I = 0x0

.field private static final METADATA_INDEX_MAX_BUSYBIT:I = 0x4

.field private static final METADATA_INDEX_MAX_INSTANCE:I = 0x2

.field private static final METADATA_INDEX_MIN_BUSYBIT:I = 0x3

.field private static final METADATA_INDEX_MIN_INSTANCE:I = 0x1

.field private static final sCalendarMetaDataProjection:[Ljava/lang/String;


# instance fields
.field private mFields:Lcom/android/providers/calendar/MetaData$Fields;

.field private mInitialized:Z

.field private final mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 60
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "localTimezone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "minInstance"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "maxInstance"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "minBusyBits"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "maxBusyBits"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/MetaData;->sCalendarMetaDataProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .registers 3
    .parameter "openHelper"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/providers/calendar/MetaData$Fields;

    invoke-direct {v0, p0}, Lcom/android/providers/calendar/MetaData$Fields;-><init>(Lcom/android/providers/calendar/MetaData;)V

    iput-object v0, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    .line 74
    iput-object p1, p0, Lcom/android/providers/calendar/MetaData;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 75
    return-void
.end method

.method private readLocked(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 20
    .parameter "db"

    .prologue
    .line 139
    const/16 v17, 0x0

    .line 140
    .local v17, timezone:Ljava/lang/String;
    const-wide/16 v15, 0x0

    .local v15, minInstance:J
    const-wide/16 v12, 0x0

    .line 141
    .local v12, maxInstance:J
    const/4 v14, 0x0

    .local v14, minBusyBit:I
    const/4 v11, 0x0

    .line 145
    .local v11, maxBusyBit:I
    const-string v3, "CalendarMetaData"

    sget-object v4, Lcom/android/providers/calendar/MetaData;->sCalendarMetaDataProjection:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 148
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_17
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 149
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 150
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 151
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 152
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 153
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_35
    .catchall {:try_start_17 .. :try_end_35} :catchall_68

    move-result v11

    .line 156
    :cond_36
    if-eqz v10, :cond_3b

    .line 157
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 162
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    move-object v2, v0

    move-object/from16 v0, v17

    move-object v1, v2

    iput-object v0, v1, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    move-object v2, v0

    iput-wide v15, v2, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    move-object v2, v0

    iput-wide v12, v2, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    move-object v2, v0

    iput v14, v2, Lcom/android/providers/calendar/MetaData$Fields;->minBusyBit:I

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    move-object v2, v0

    iput v11, v2, Lcom/android/providers/calendar/MetaData$Fields;->maxBusyBit:I

    .line 169
    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/providers/calendar/MetaData;->mInitialized:Z

    .line 170
    return-void

    .line 156
    :catchall_68
    move-exception v2

    if-eqz v10, :cond_6e

    .line 157
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6e
    throw v2
.end method


# virtual methods
.method public clearBusyBitRange()V
    .registers 10

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/providers/calendar/MetaData;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 268
    .local v8, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 272
    :try_start_9
    iget-boolean v0, p0, Lcom/android/providers/calendar/MetaData;->mInitialized:Z

    if-nez v0, :cond_10

    .line 273
    invoke-direct {p0, v8}, Lcom/android/providers/calendar/MetaData;->readLocked(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 275
    :cond_10
    iget-object v0, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget-object v1, v0, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget-wide v2, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    iget-object v0, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget-wide v4, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/calendar/MetaData;->writeLocked(Ljava/lang/String;JJII)V

    .line 277
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_29

    .line 279
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 281
    return-void

    .line 279
    :catchall_29
    move-exception v0

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public clearInstanceRange()V
    .registers 10

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/providers/calendar/MetaData;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 248
    .local v8, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 252
    :try_start_9
    iget-boolean v0, p0, Lcom/android/providers/calendar/MetaData;->mInitialized:Z

    if-nez v0, :cond_10

    .line 253
    invoke-direct {p0, v8}, Lcom/android/providers/calendar/MetaData;->readLocked(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 255
    :cond_10
    iget-object v0, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget-object v1, v0, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/calendar/MetaData;->writeLocked(Ljava/lang/String;JJII)V

    .line 257
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_25

    .line 259
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 261
    return-void

    .line 259
    :catchall_25
    move-exception v0

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public getFields()Lcom/android/providers/calendar/MetaData$Fields;
    .registers 5

    .prologue
    .line 84
    new-instance v1, Lcom/android/providers/calendar/MetaData$Fields;

    invoke-direct {v1, p0}, Lcom/android/providers/calendar/MetaData$Fields;-><init>(Lcom/android/providers/calendar/MetaData;)V

    .line 85
    .local v1, fields:Lcom/android/providers/calendar/MetaData$Fields;
    iget-object v2, p0, Lcom/android/providers/calendar/MetaData;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 86
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 90
    :try_start_e
    iget-boolean v2, p0, Lcom/android/providers/calendar/MetaData;->mInitialized:Z

    if-nez v2, :cond_15

    .line 91
    invoke-direct {p0, v0}, Lcom/android/providers/calendar/MetaData;->readLocked(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 93
    :cond_15
    iget-object v2, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget-object v2, v2, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    .line 94
    iget-object v2, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget-wide v2, v2, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    iput-wide v2, v1, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    .line 95
    iget-object v2, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget-wide v2, v2, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    iput-wide v2, v1, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    .line 96
    iget-object v2, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget v2, v2, Lcom/android/providers/calendar/MetaData$Fields;->minBusyBit:I

    iput v2, v1, Lcom/android/providers/calendar/MetaData$Fields;->minBusyBit:I

    .line 97
    iget-object v2, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget v2, v2, Lcom/android/providers/calendar/MetaData$Fields;->maxBusyBit:I

    iput v2, v1, Lcom/android/providers/calendar/MetaData$Fields;->maxBusyBit:I

    .line 98
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_36
    .catchall {:try_start_e .. :try_end_36} :catchall_3a

    .line 100
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 102
    return-object v1

    .line 100
    :catchall_3a
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public getFieldsLocked()Lcom/android/providers/calendar/MetaData$Fields;
    .registers 5

    .prologue
    .line 116
    new-instance v1, Lcom/android/providers/calendar/MetaData$Fields;

    invoke-direct {v1, p0}, Lcom/android/providers/calendar/MetaData$Fields;-><init>(Lcom/android/providers/calendar/MetaData;)V

    .line 120
    .local v1, fields:Lcom/android/providers/calendar/MetaData$Fields;
    iget-boolean v2, p0, Lcom/android/providers/calendar/MetaData;->mInitialized:Z

    if-nez v2, :cond_12

    .line 121
    iget-object v2, p0, Lcom/android/providers/calendar/MetaData;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 122
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v0}, Lcom/android/providers/calendar/MetaData;->readLocked(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 124
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_12
    iget-object v2, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget-object v2, v2, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    .line 125
    iget-object v2, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget-wide v2, v2, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    iput-wide v2, v1, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    .line 126
    iget-object v2, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget-wide v2, v2, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    iput-wide v2, v1, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    .line 127
    iget-object v2, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget v2, v2, Lcom/android/providers/calendar/MetaData$Fields;->minBusyBit:I

    iput v2, v1, Lcom/android/providers/calendar/MetaData$Fields;->minBusyBit:I

    .line 128
    iget-object v2, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget v2, v2, Lcom/android/providers/calendar/MetaData$Fields;->maxBusyBit:I

    iput v2, v1, Lcom/android/providers/calendar/MetaData$Fields;->maxBusyBit:I

    .line 129
    return-object v1
.end method

.method public write(Ljava/lang/String;JJII)V
    .registers 10
    .parameter "timezone"
    .parameter "begin"
    .parameter "end"
    .parameter "startDay"
    .parameter "endDay"

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/providers/calendar/MetaData;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 185
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 187
    :try_start_9
    invoke-virtual/range {p0 .. p7}, Lcom/android/providers/calendar/MetaData;->writeLocked(Ljava/lang/String;JJII)V

    .line 188
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_13

    .line 190
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 192
    return-void

    .line 190
    :catchall_13
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public writeLocked(Ljava/lang/String;JJII)V
    .registers 15
    .parameter "timezone"
    .parameter "begin"
    .parameter "end"
    .parameter "startDay"
    .parameter "endDay"

    .prologue
    const/4 v5, 0x0

    .line 210
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 211
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "_id"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 212
    const-string v3, "localTimezone"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v3, "minInstance"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 214
    const-string v3, "maxInstance"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 215
    const-string v3, "minBusyBits"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    const-string v3, "maxBusyBits"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    :try_start_39
    iget-object v3, p0, Lcom/android/providers/calendar/MetaData;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 221
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "CalendarMetaData"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_45
    .catch Ljava/lang/RuntimeException; {:try_start_39 .. :try_end_45} :catch_5a

    .line 231
    iget-object v3, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iput-object p1, v3, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    .line 232
    iget-object v3, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iput-wide p2, v3, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    .line 233
    iget-object v3, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iput-wide p4, v3, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    .line 234
    iget-object v3, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iput p6, v3, Lcom/android/providers/calendar/MetaData$Fields;->minBusyBit:I

    .line 235
    iget-object v3, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iput p7, v3, Lcom/android/providers/calendar/MetaData$Fields;->maxBusyBit:I

    .line 236
    return-void

    .line 222
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_5a
    move-exception v3

    move-object v1, v3

    .line 224
    .local v1, e:Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iput-object v5, v3, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    .line 225
    iget-object v3, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget-object v4, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    iput-wide v5, v3, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    .line 226
    iget-object v3, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget-object v4, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/providers/calendar/MetaData$Fields;->maxBusyBit:I

    iput v5, v3, Lcom/android/providers/calendar/MetaData$Fields;->minBusyBit:I

    .line 227
    throw v1
.end method
