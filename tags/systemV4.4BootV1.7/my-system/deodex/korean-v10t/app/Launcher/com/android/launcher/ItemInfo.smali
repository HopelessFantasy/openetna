.class Lcom/android/launcher/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"


# static fields
.field static final NO_ID:I = -0x1


# instance fields
.field cellX:I

.field cellY:I

.field container:J

.field id:J

.field isGesture:Z

.field itemType:I

.field screen:I

.field spanX:I

.field spanY:I


# direct methods
.method constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide v2, p0, Lcom/android/launcher/ItemInfo;->id:J

    .line 52
    iput-wide v2, p0, Lcom/android/launcher/ItemInfo;->container:J

    .line 57
    iput v0, p0, Lcom/android/launcher/ItemInfo;->screen:I

    .line 62
    iput v0, p0, Lcom/android/launcher/ItemInfo;->cellX:I

    .line 67
    iput v0, p0, Lcom/android/launcher/ItemInfo;->cellY:I

    .line 72
    iput v1, p0, Lcom/android/launcher/ItemInfo;->spanX:I

    .line 77
    iput v1, p0, Lcom/android/launcher/ItemInfo;->spanY:I

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/ItemInfo;->isGesture:Z

    .line 85
    return-void
.end method

.method constructor <init>(Lcom/android/launcher/ItemInfo;)V
    .registers 6
    .parameter "info"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide v2, p0, Lcom/android/launcher/ItemInfo;->id:J

    .line 52
    iput-wide v2, p0, Lcom/android/launcher/ItemInfo;->container:J

    .line 57
    iput v0, p0, Lcom/android/launcher/ItemInfo;->screen:I

    .line 62
    iput v0, p0, Lcom/android/launcher/ItemInfo;->cellX:I

    .line 67
    iput v0, p0, Lcom/android/launcher/ItemInfo;->cellY:I

    .line 72
    iput v1, p0, Lcom/android/launcher/ItemInfo;->spanX:I

    .line 77
    iput v1, p0, Lcom/android/launcher/ItemInfo;->spanY:I

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/ItemInfo;->isGesture:Z

    .line 88
    iget-wide v0, p1, Lcom/android/launcher/ItemInfo;->id:J

    iput-wide v0, p0, Lcom/android/launcher/ItemInfo;->id:J

    .line 89
    iget v0, p1, Lcom/android/launcher/ItemInfo;->cellX:I

    iput v0, p0, Lcom/android/launcher/ItemInfo;->cellX:I

    .line 90
    iget v0, p1, Lcom/android/launcher/ItemInfo;->cellY:I

    iput v0, p0, Lcom/android/launcher/ItemInfo;->cellY:I

    .line 91
    iget v0, p1, Lcom/android/launcher/ItemInfo;->spanX:I

    iput v0, p0, Lcom/android/launcher/ItemInfo;->spanX:I

    .line 92
    iget v0, p1, Lcom/android/launcher/ItemInfo;->spanY:I

    iput v0, p0, Lcom/android/launcher/ItemInfo;->spanY:I

    .line 93
    iget v0, p1, Lcom/android/launcher/ItemInfo;->screen:I

    iput v0, p0, Lcom/android/launcher/ItemInfo;->screen:I

    .line 94
    iget v0, p1, Lcom/android/launcher/ItemInfo;->itemType:I

    iput v0, p0, Lcom/android/launcher/ItemInfo;->itemType:I

    .line 95
    iget-wide v0, p1, Lcom/android/launcher/ItemInfo;->container:J

    iput-wide v0, p0, Lcom/android/launcher/ItemInfo;->container:J

    .line 96
    return-void
.end method

.method static writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V
    .registers 7
    .parameter "values"
    .parameter "bitmap"

    .prologue
    .line 116
    if-eqz p1, :cond_28

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x4

    .line 120
    .local v2, size:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 122
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_12
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 123
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 124
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 126
    const-string v3, "icon"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_28} :catch_29

    .line 131
    .end local v1           #out:Ljava/io/ByteArrayOutputStream;
    .end local v2           #size:I
    :cond_28
    :goto_28
    return-void

    .line 127
    .restart local v1       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #size:I
    :catch_29
    move-exception v3

    move-object v0, v3

    .line 128
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Favorite"

    const-string v4, "Could not write icon"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method


# virtual methods
.method onAddToDatabase(Landroid/content/ContentValues;)V
    .registers 5
    .parameter "values"

    .prologue
    .line 104
    const-string v0, "itemType"

    iget v1, p0, Lcom/android/launcher/ItemInfo;->itemType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    iget-boolean v0, p0, Lcom/android/launcher/ItemInfo;->isGesture:Z

    if-nez v0, :cond_51

    .line 106
    const-string v0, "container"

    iget-wide v1, p0, Lcom/android/launcher/ItemInfo;->container:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 107
    const-string v0, "screen"

    iget v1, p0, Lcom/android/launcher/ItemInfo;->screen:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v0, "cellX"

    iget v1, p0, Lcom/android/launcher/ItemInfo;->cellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    const-string v0, "cellY"

    iget v1, p0, Lcom/android/launcher/ItemInfo;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string v0, "spanX"

    iget v1, p0, Lcom/android/launcher/ItemInfo;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    const-string v0, "spanY"

    iget v1, p0, Lcom/android/launcher/ItemInfo;->spanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    :cond_51
    return-void
.end method
