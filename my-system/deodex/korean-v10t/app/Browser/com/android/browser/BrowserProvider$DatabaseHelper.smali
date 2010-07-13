.class Lcom/android/browser/BrowserProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BrowserProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 182
    const-string v0, "browser.db"

    const/4 v1, 0x0

    const/16 v2, 0x13

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 183
    iput-object p1, p0, Lcom/android/browser/BrowserProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 184
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 25
    .parameter "db"

    .prologue
    .line 188
    const-string v20, "CREATE TABLE bookmarks (_id INTEGER PRIMARY KEY,title TEXT,url TEXT,visits INTEGER,date LONG,created LONG,description TEXT,bookmark INTEGER,favicon BLOB DEFAULT NULL,readonly INTEGER DEFAULT 0);"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 207
    const/4 v13, 0x0

    .line 208
    .local v13, nBookmarkCnt:I
    const/4 v3, 0x0

    .line 209
    .local v3, Name:Ljava/lang/String;
    const/4 v4, 0x0

    .line 210
    .local v4, Url:Ljava/lang/String;
    const/4 v8, 0x0

    .line 211
    .local v8, flexValues:Ljava/lang/String;
    const/4 v15, 0x0

    .line 213
    .local v15, readOnly:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "BOOKMARKDB_CNT"

    invoke-static/range {v20 .. v21}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 214
    if-eqz v8, :cond_26

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_109

    .line 215
    :cond_26
    const-string v20, "BrowserProvider"

    const-string v21, "[flex] BOOKMARKDB_CNT=null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_2d
    :goto_2d
    if-lez v13, :cond_2f3

    .line 224
    mul-int/lit8 v20, v13, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object v6, v0

    .line 226
    .local v6, bookmarks:[Ljava/lang/CharSequence;
    const/4 v14, 0x0

    .line 227
    .local v14, nLen:I
    const/4 v10, 0x0

    .line 228
    .local v10, indexOfComma:I
    const/4 v11, 0x0

    .line 229
    .local v11, indexOfStart:I
    const/16 v19, 0x0

    .line 231
    .local v19, subStr:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3c
    if-ge v9, v13, :cond_9f

    .line 233
    new-instance v18, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "BOOKMARKDB_NAME_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v9, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "_I"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 234
    .local v18, strIndex:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 235
    if-eqz v8, :cond_7c

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_136

    .line 236
    :cond_7c
    const-string v20, "BrowserProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[flex] "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "=null"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    move v13, v9

    .line 288
    .end local v18           #strIndex:Ljava/lang/String;
    :cond_9f
    :goto_9f
    move-object v0, v6

    array-length v0, v0

    move/from16 v17, v0

    .line 299
    .local v17, size:I
    const/4 v9, 0x0

    :goto_a4
    move v0, v9

    move/from16 v1, v17

    if-ge v0, v1, :cond_2f3

    .line 300
    :try_start_a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    add-int/lit8 v21, v9, 0x1

    aget-object v21, v6, v21

    invoke-static/range {v20 .. v21}, Lcom/android/browser/BrowserProvider;->access$000(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 301
    .local v5, bookmarkDestination:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    add-int/lit8 v21, v9, 0x2

    aget-object v21, v6, v21

    invoke-static/range {v20 .. v21}, Lcom/android/browser/BrowserProvider;->access$000(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 302
    .local v16, readOnlyDestination:Ljava/lang/CharSequence;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "INSERT INTO bookmarks (title, url, readonly, visits, date, created, bookmark) VALUES(\'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-object v21, v6, v9

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\', \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\', "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", 0, 0, 0, 1);"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_106
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a9 .. :try_end_106} :catch_2f2

    .line 299
    add-int/lit8 v9, v9, 0x3

    goto :goto_a4

    .line 217
    .end local v5           #bookmarkDestination:Ljava/lang/CharSequence;
    .end local v6           #bookmarks:[Ljava/lang/CharSequence;
    .end local v9           #i:I
    .end local v10           #indexOfComma:I
    .end local v11           #indexOfStart:I
    .end local v14           #nLen:I
    .end local v16           #readOnlyDestination:Ljava/lang/CharSequence;
    .end local v17           #size:I
    .end local v19           #subStr:Ljava/lang/String;
    :cond_109
    const-string v20, "BrowserProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[flex] BOOKMARKDB_CNT="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 219
    if-eqz v8, :cond_2d

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_2d

    .line 220
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    goto/16 :goto_2d

    .line 239
    .restart local v6       #bookmarks:[Ljava/lang/CharSequence;
    .restart local v9       #i:I
    .restart local v10       #indexOfComma:I
    .restart local v11       #indexOfStart:I
    .restart local v14       #nLen:I
    .restart local v18       #strIndex:Ljava/lang/String;
    .restart local v19       #subStr:Ljava/lang/String;
    :cond_136
    const-string v20, "BrowserProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[flex] "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/16 v20, 0x2c

    move-object v0, v8

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    if-gez v20, :cond_1d2

    .line 242
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 243
    move-object v3, v8

    .line 262
    :cond_16f
    new-instance v18, Ljava/lang/String;

    .end local v18           #strIndex:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "BOOKMARKDB_URL_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v9, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "_I"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 263
    .restart local v18       #strIndex:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 264
    if-eqz v8, :cond_1ad

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_221

    .line 265
    :cond_1ad
    const-string v20, "BrowserProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[flex] "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "=null"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    move v13, v9

    goto/16 :goto_9f

    .line 246
    :cond_1d2
    const/4 v11, 0x0

    move v10, v11

    .line 247
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    .line 248
    new-instance v3, Ljava/lang/String;

    .end local v3           #Name:Ljava/lang/String;
    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 249
    .restart local v3       #Name:Ljava/lang/String;
    :goto_1dd
    if-ge v11, v14, :cond_16f

    .line 250
    const/16 v20, 0x2c

    move-object v0, v8

    move/from16 v1, v20

    move v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 251
    if-ltz v10, :cond_16f

    .line 253
    invoke-virtual {v8, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 254
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 255
    if-eqz v19, :cond_21e

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_21e

    .line 256
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x10

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 257
    :cond_21e
    add-int/lit8 v11, v10, 0x1

    goto :goto_1dd

    .line 268
    :cond_221
    const-string v20, "BrowserProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[flex] "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 272
    new-instance v18, Ljava/lang/String;

    .end local v18           #strIndex:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "BOOKMARKDB_READONLY_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v9, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "_I"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 273
    .restart local v18       #strIndex:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 274
    if-eqz v8, :cond_28c

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_2b1

    .line 275
    :cond_28c
    const-string v20, "BrowserProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[flex] "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "=null"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    move v13, v9

    goto/16 :goto_9f

    .line 278
    :cond_2b1
    const-string v20, "BrowserProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[flex] "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 282
    mul-int/lit8 v20, v9, 0x3

    aput-object v3, v6, v20

    .line 283
    mul-int/lit8 v20, v9, 0x3

    add-int/lit8 v20, v20, 0x1

    aput-object v4, v6, v20

    .line 284
    mul-int/lit8 v20, v9, 0x3

    add-int/lit8 v20, v20, 0x2

    aput-object v15, v6, v20

    .line 231
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3c

    .line 310
    .end local v18           #strIndex:Ljava/lang/String;
    .restart local v17       #size:I
    :catch_2f2
    move-exception v20

    .line 316
    .end local v6           #bookmarks:[Ljava/lang/CharSequence;
    .end local v9           #i:I
    .end local v10           #indexOfComma:I
    .end local v11           #indexOfStart:I
    .end local v14           #nLen:I
    .end local v17           #size:I
    .end local v19           #subStr:Ljava/lang/String;
    :cond_2f3
    const-string v20, "CREATE TABLE searches (_id INTEGER PRIMARY KEY,search TEXT,date LONG);"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "BRW_SETTINGDB_HOME_URL_I"

    invoke-static/range {v20 .. v21}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 322
    .local v7, flexHomeUrl:Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    const-string v20, "lgeWapService.prov.persister.INSTALL_BROWSER"

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .local v12, intent:Landroid/content/Intent;
    const-string v20, "homeuri"

    move-object v0, v12

    move-object/from16 v1, v20

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "android.permission.RECEIVE_WAP_SERVICE"

    move-object/from16 v0, v20

    move-object v1, v12

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 329
    const-string v0, "BrowserProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/16 v0, 0x12

    if-ne p2, v0, :cond_32

    .line 332
    const-string v0, "DROP TABLE IF EXISTS labels"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 338
    :goto_31
    return-void

    .line 334
    :cond_32
    const-string v0, "DROP TABLE IF EXISTS bookmarks"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 335
    const-string v0, "DROP TABLE IF EXISTS searches"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_31
.end method
