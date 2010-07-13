.class public Ljava/util/zip/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/zip/ZipFile$RAFStream;
    }
.end annotation


# static fields
.field public static final OPEN_DELETE:I = 0x4

.field public static final OPEN_READ:I = 0x1


# instance fields
.field fileName:Ljava/lang/String;

.field fileToDeleteOnClose:Ljava/io/File;

.field ler:Ljava/util/zip/ZipEntry$LittleEndianReader;

.field private mEntryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFastLookup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRaf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 8
    .parameter "file"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    new-instance v2, Ljava/util/zip/ZipEntry$LittleEndianReader;

    invoke-direct {v2}, Ljava/util/zip/ZipEntry$LittleEndianReader;-><init>()V

    iput-object v2, p0, Ljava/util/zip/ZipFile;->ler:Ljava/util/zip/ZipEntry$LittleEndianReader;

    .line 101
    const/4 v2, 0x5

    if-ne p2, v2, :cond_56

    .line 102
    iput-object p1, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    .line 106
    :cond_f
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/zip/ZipFile;->fileName:Ljava/lang/String;

    .line 107
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Ljava/util/zip/ZipFile;->fileName:Ljava/lang/String;

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ljava/util/zip/ZipFile;->mEntryList:Ljava/util/ArrayList;

    .line 111
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->readCentralDir()V

    .line 117
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Ljava/util/zip/ZipFile;->mEntryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Ljava/util/zip/ZipFile;->mFastLookup:Ljava/util/HashMap;

    .line 118
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3a
    iget-object v2, p0, Ljava/util/zip/ZipFile;->mEntryList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_61

    .line 119
    iget-object v2, p0, Ljava/util/zip/ZipFile;->mEntryList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 121
    .local v0, entry:Ljava/util/zip/ZipEntry;
    iget-object v2, p0, Ljava/util/zip/ZipFile;->mFastLookup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 103
    .end local v0           #entry:Ljava/util/zip/ZipEntry;
    .end local v1           #i:I
    :cond_56
    const/4 v2, 0x1

    if-eq p2, v2, :cond_f

    .line 104
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid mode"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    .restart local v1       #i:I
    :cond_61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 136
    return-void
.end method

.method static synthetic access$000(Ljava/util/zip/ZipFile;)Ljava/io/RandomAccessFile;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/zip/ZipFile;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Ljava/util/zip/ZipFile;->mEntryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private readCentralDir()V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v18

    const-wide/16 v20, 0x16

    sub-long v13, v18, v20

    .line 306
    .local v13, scanOffset:J
    const-wide/16 v18, 0x0

    cmp-long v18, v13, v18

    if-gez v18, :cond_1c

    .line 307
    new-instance v18, Ljava/util/zip/ZipException;

    const-string v19, "too short to be Zip"

    invoke-direct/range {v18 .. v19}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 309
    :cond_1c
    const-wide/32 v18, 0x10000

    sub-long v15, v13, v18

    .line 310
    .local v15, stopOffset:J
    const-wide/16 v18, 0x0

    cmp-long v18, v15, v18

    if-gez v18, :cond_29

    .line 311
    const-wide/16 v15, 0x0

    .line 314
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/util/zip/ZipEntry;->readIntLE(Ljava/io/RandomAccessFile;)J

    move-result-wide v18

    const-wide/32 v20, 0x6054b50

    cmp-long v18, v18, v20

    if-nez v18, :cond_d5

    .line 332
    new-instance v12, Ljava/util/zip/ZipFile$RAFStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v19

    move-object v0, v12

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-direct {v0, v1, v2, v3}, Ljava/util/zip/ZipFile$RAFStream;-><init>(Ljava/io/RandomAccessFile;J)V

    .line 333
    .local v12, rafs:Ljava/util/zip/ZipFile$RAFStream;
    new-instance v4, Ljava/io/BufferedInputStream;

    const/16 v18, 0x16

    move-object v0, v4

    move-object v1, v12

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 339
    .local v4, bin:Ljava/io/BufferedInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->ler:Ljava/util/zip/ZipEntry$LittleEndianReader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipEntry$LittleEndianReader;->readShortLE(Ljava/io/InputStream;)I

    move-result v7

    .line 340
    .local v7, diskNumber:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->ler:Ljava/util/zip/ZipEntry$LittleEndianReader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipEntry$LittleEndianReader;->readShortLE(Ljava/io/InputStream;)I

    move-result v8

    .line 341
    .local v8, diskWithCentralDir:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->ler:Ljava/util/zip/ZipEntry$LittleEndianReader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipEntry$LittleEndianReader;->readShortLE(Ljava/io/InputStream;)I

    move-result v11

    .line 342
    .local v11, numEntries:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->ler:Ljava/util/zip/ZipEntry$LittleEndianReader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipEntry$LittleEndianReader;->readShortLE(Ljava/io/InputStream;)I

    move-result v17

    .line 343
    .local v17, totalNumEntries:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->ler:Ljava/util/zip/ZipEntry$LittleEndianReader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipEntry$LittleEndianReader;->readIntLE(Ljava/io/InputStream;)J

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->ler:Ljava/util/zip/ZipEntry$LittleEndianReader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipEntry$LittleEndianReader;->readIntLE(Ljava/io/InputStream;)J

    move-result-wide v5

    .line 345
    .local v5, centralDirOffset:J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->ler:Ljava/util/zip/ZipEntry$LittleEndianReader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipEntry$LittleEndianReader;->readShortLE(Ljava/io/InputStream;)I

    .line 347
    move v0, v11

    move/from16 v1, v17

    if-ne v0, v1, :cond_cd

    if-nez v7, :cond_cd

    if-eqz v8, :cond_e5

    .line 350
    :cond_cd
    new-instance v18, Ljava/util/zip/ZipException;

    const-string v19, "spanned archives not supported"

    invoke-direct/range {v18 .. v19}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 319
    .end local v4           #bin:Ljava/io/BufferedInputStream;
    .end local v5           #centralDirOffset:J
    .end local v7           #diskNumber:I
    .end local v8           #diskWithCentralDir:I
    .end local v11           #numEntries:I
    .end local v12           #rafs:Ljava/util/zip/ZipFile$RAFStream;
    .end local v17           #totalNumEntries:I
    :cond_d5
    const-wide/16 v18, 0x1

    sub-long v13, v13, v18

    .line 320
    cmp-long v18, v13, v15

    if-gez v18, :cond_29

    .line 321
    new-instance v18, Ljava/util/zip/ZipException;

    const-string v19, "EOCD not found; not a Zip archive?"

    invoke-direct/range {v18 .. v19}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 355
    .restart local v4       #bin:Ljava/io/BufferedInputStream;
    .restart local v5       #centralDirOffset:J
    .restart local v7       #diskNumber:I
    .restart local v8       #diskWithCentralDir:I
    .restart local v11       #numEntries:I
    .restart local v12       #rafs:Ljava/util/zip/ZipFile$RAFStream;
    .restart local v17       #totalNumEntries:I
    :cond_e5
    new-instance v12, Ljava/util/zip/ZipFile$RAFStream;

    .end local v12           #rafs:Ljava/util/zip/ZipFile$RAFStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v18, v0

    move-object v0, v12

    move-object/from16 v1, v18

    move-wide v2, v5

    invoke-direct {v0, v1, v2, v3}, Ljava/util/zip/ZipFile$RAFStream;-><init>(Ljava/io/RandomAccessFile;J)V

    .line 356
    .restart local v12       #rafs:Ljava/util/zip/ZipFile$RAFStream;
    new-instance v4, Ljava/io/BufferedInputStream;

    .end local v4           #bin:Ljava/io/BufferedInputStream;
    const/16 v18, 0x1000

    move-object v0, v4

    move-object v1, v12

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 357
    .restart local v4       #bin:Ljava/io/BufferedInputStream;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_100
    if-ge v9, v11, :cond_120

    .line 360
    new-instance v10, Ljava/util/zip/ZipEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->ler:Ljava/util/zip/ZipEntry$LittleEndianReader;

    move-object/from16 v18, v0

    move-object v0, v10

    move-object/from16 v1, v18

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry$LittleEndianReader;Ljava/io/InputStream;)V

    .line 361
    .local v10, newEntry:Ljava/util/zip/ZipEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mEntryList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    add-int/lit8 v9, v9, 0x1

    goto :goto_100

    .line 363
    .end local v10           #newEntry:Ljava/util/zip/ZipEntry;
    :cond_120
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 151
    iget-object v0, p0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    .line 153
    .local v0, raf:Ljava/io/RandomAccessFile;
    if-eqz v0, :cond_1b

    .line 154
    monitor-enter v0

    .line 155
    const/4 v1, 0x0

    :try_start_7
    iput-object v1, p0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    .line 156
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 157
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_1c

    .line 158
    iget-object v1, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    if-eqz v1, :cond_1b

    .line 159
    new-instance v1, Ljava/util/zip/ZipFile$1;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile$1;-><init>(Ljava/util/zip/ZipFile;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 166
    iput-object v2, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    .line 169
    :cond_1b
    return-void

    .line 157
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public entries()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Ljava/util/zip/ZipFile$2;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile$2;-><init>(Ljava/util/zip/ZipFile;)V

    return-object v0
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V

    .line 141
    return-void
.end method

.method public getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .registers 6
    .parameter "entryName"

    .prologue
    .line 206
    if-eqz p1, :cond_28

    .line 207
    iget-object v1, p0, Ljava/util/zip/ZipFile;->mFastLookup:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 208
    .local v0, ze:Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_27

    iget-object v1, p0, Ljava/util/zip/ZipFile;->mFastLookup:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ze:Ljava/util/zip/ZipEntry;
    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 209
    .restart local v0       #ze:Ljava/util/zip/ZipEntry;
    :cond_27
    return-object v0

    .line 211
    .end local v0           #ze:Ljava/util/zip/ZipEntry;
    :cond_28
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method

.method public getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .registers 9
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    .line 230
    if-nez p1, :cond_c

    .line 231
    const/4 v3, 0x0

    .line 253
    :goto_b
    return-object v3

    .line 236
    :cond_c
    iget-object v1, p0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    .line 237
    .local v1, raf:Ljava/io/RandomAccessFile;
    if-eqz v1, :cond_48

    .line 238
    monitor-enter v1

    .line 244
    :try_start_11
    new-instance v2, Ljava/util/zip/ZipFile$RAFStream;

    iget-wide v3, p1, Ljava/util/zip/ZipEntry;->mLocalHeaderRelOffset:J

    const-wide/16 v5, 0x1c

    add-long/2addr v3, v5

    invoke-direct {v2, v1, v3, v4}, Ljava/util/zip/ZipFile$RAFStream;-><init>(Ljava/io/RandomAccessFile;J)V

    .line 245
    .local v2, rafstrm:Ljava/util/zip/ZipFile$RAFStream;
    iget-object v3, p0, Ljava/util/zip/ZipFile;->ler:Ljava/util/zip/ZipEntry$LittleEndianReader;

    invoke-virtual {v3, v2}, Ljava/util/zip/ZipEntry$LittleEndianReader;->readShortLE(Ljava/io/InputStream;)I

    move-result v0

    .line 248
    .local v0, localExtraLenOrWhatever:I
    iget v3, p1, Ljava/util/zip/ZipEntry;->nameLen:I

    add-int/2addr v3, v0

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/zip/ZipFile$RAFStream;->skip(J)J

    .line 249
    iget-wide v3, v2, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    iget-wide v5, p1, Ljava/util/zip/ZipEntry;->compressedSize:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    .line 250
    iget v3, p1, Ljava/util/zip/ZipEntry;->compressionMethod:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_45

    .line 251
    new-instance v3, Ljava/util/zip/InflaterInputStream;

    new-instance v4, Ljava/util/zip/Inflater;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v3, v2, v4}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    monitor-exit v1

    goto :goto_b

    .line 255
    .end local v0           #localExtraLenOrWhatever:I
    .end local v2           #rafstrm:Ljava/util/zip/ZipFile$RAFStream;
    :catchall_42
    move-exception v3

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_11 .. :try_end_44} :catchall_42

    throw v3

    .line 253
    .restart local v0       #localExtraLenOrWhatever:I
    .restart local v2       #rafstrm:Ljava/util/zip/ZipFile$RAFStream;
    :cond_45
    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_42

    move-object v3, v2

    goto :goto_b

    .line 257
    .end local v0           #localExtraLenOrWhatever:I
    .end local v2           #rafstrm:Ljava/util/zip/ZipFile$RAFStream;
    :cond_48
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Zip File closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Ljava/util/zip/ZipFile;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Ljava/util/zip/ZipFile;->mEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
