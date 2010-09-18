.class Lcom/lge/homecube/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"


# static fields
.field static final NO_ID:I = -0x1


# instance fields
.field cellX:I

.field cellY:I

.field container:J

.field group_id:I

.field id:J

.field itemType:I

.field origin_group_id:I

.field origin_position:I

.field position:I

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

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide v2, p0, Lcom/lge/homecube/ItemInfo;->id:J

    .line 52
    iput-wide v2, p0, Lcom/lge/homecube/ItemInfo;->container:J

    .line 57
    iput v0, p0, Lcom/lge/homecube/ItemInfo;->screen:I

    .line 62
    iput v0, p0, Lcom/lge/homecube/ItemInfo;->cellX:I

    .line 67
    iput v0, p0, Lcom/lge/homecube/ItemInfo;->cellY:I

    .line 72
    iput v1, p0, Lcom/lge/homecube/ItemInfo;->spanX:I

    .line 77
    iput v1, p0, Lcom/lge/homecube/ItemInfo;->spanY:I

    .line 83
    iput v0, p0, Lcom/lge/homecube/ItemInfo;->position:I

    .line 88
    iput v0, p0, Lcom/lge/homecube/ItemInfo;->group_id:I

    .line 93
    iput v0, p0, Lcom/lge/homecube/ItemInfo;->origin_position:I

    .line 98
    iput v0, p0, Lcom/lge/homecube/ItemInfo;->origin_group_id:I

    .line 104
    return-void
.end method

.method constructor <init>(Lcom/lge/homecube/ItemInfo;)V
    .registers 6
    .parameter "info"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide v2, p0, Lcom/lge/homecube/ItemInfo;->id:J

    .line 52
    iput-wide v2, p0, Lcom/lge/homecube/ItemInfo;->container:J

    .line 57
    iput v0, p0, Lcom/lge/homecube/ItemInfo;->screen:I

    .line 62
    iput v0, p0, Lcom/lge/homecube/ItemInfo;->cellX:I

    .line 67
    iput v0, p0, Lcom/lge/homecube/ItemInfo;->cellY:I

    .line 72
    iput v1, p0, Lcom/lge/homecube/ItemInfo;->spanX:I

    .line 77
    iput v1, p0, Lcom/lge/homecube/ItemInfo;->spanY:I

    .line 83
    iput v0, p0, Lcom/lge/homecube/ItemInfo;->position:I

    .line 88
    iput v0, p0, Lcom/lge/homecube/ItemInfo;->group_id:I

    .line 93
    iput v0, p0, Lcom/lge/homecube/ItemInfo;->origin_position:I

    .line 98
    iput v0, p0, Lcom/lge/homecube/ItemInfo;->origin_group_id:I

    .line 107
    iget-wide v0, p1, Lcom/lge/homecube/ItemInfo;->id:J

    iput-wide v0, p0, Lcom/lge/homecube/ItemInfo;->id:J

    .line 108
    iget v0, p1, Lcom/lge/homecube/ItemInfo;->cellX:I

    iput v0, p0, Lcom/lge/homecube/ItemInfo;->cellX:I

    .line 109
    iget v0, p1, Lcom/lge/homecube/ItemInfo;->cellY:I

    iput v0, p0, Lcom/lge/homecube/ItemInfo;->cellY:I

    .line 110
    iget v0, p1, Lcom/lge/homecube/ItemInfo;->spanX:I

    iput v0, p0, Lcom/lge/homecube/ItemInfo;->spanX:I

    .line 111
    iget v0, p1, Lcom/lge/homecube/ItemInfo;->spanY:I

    iput v0, p0, Lcom/lge/homecube/ItemInfo;->spanY:I

    .line 112
    iget v0, p1, Lcom/lge/homecube/ItemInfo;->screen:I

    iput v0, p0, Lcom/lge/homecube/ItemInfo;->screen:I

    .line 113
    iget v0, p1, Lcom/lge/homecube/ItemInfo;->itemType:I

    iput v0, p0, Lcom/lge/homecube/ItemInfo;->itemType:I

    .line 114
    iget-wide v0, p1, Lcom/lge/homecube/ItemInfo;->container:J

    iput-wide v0, p0, Lcom/lge/homecube/ItemInfo;->container:J

    .line 117
    iget v0, p1, Lcom/lge/homecube/ItemInfo;->position:I

    iput v0, p0, Lcom/lge/homecube/ItemInfo;->position:I

    .line 118
    iget v0, p1, Lcom/lge/homecube/ItemInfo;->group_id:I

    iput v0, p0, Lcom/lge/homecube/ItemInfo;->group_id:I

    .line 119
    iget v0, p1, Lcom/lge/homecube/ItemInfo;->origin_position:I

    iput v0, p0, Lcom/lge/homecube/ItemInfo;->origin_position:I

    .line 120
    iget v0, p1, Lcom/lge/homecube/ItemInfo;->origin_group_id:I

    iput v0, p0, Lcom/lge/homecube/ItemInfo;->origin_group_id:I

    .line 122
    return-void
.end method

.method static writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V
    .registers 7
    .parameter "values"
    .parameter "bitmap"

    .prologue
    .line 156
    if-eqz p1, :cond_28

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x4

    .line 160
    .local v2, size:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 162
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_12
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 163
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 164
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 166
    const-string v3, "icon"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_28} :catch_29

    .line 171
    .end local v1           #out:Ljava/io/ByteArrayOutputStream;
    .end local v2           #size:I
    :cond_28
    :goto_28
    return-void

    .line 167
    .restart local v1       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #size:I
    :catch_29
    move-exception v3

    move-object v0, v3

    .line 168
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Favorite"

    const-string v4, "Could not write icon"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method


# virtual methods
.method onAddToAllAppsDatabase(Landroid/content/ContentValues;)V
    .registers 5
    .parameter "values"

    .prologue
    .line 147
    const-string v0, "container"

    iget-wide v1, p0, Lcom/lge/homecube/ItemInfo;->container:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 148
    const-string v0, "position"

    iget v1, p0, Lcom/lge/homecube/ItemInfo;->position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    const-string v0, "group_id"

    iget v1, p0, Lcom/lge/homecube/ItemInfo;->group_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    const-string v0, "original_position"

    iget v1, p0, Lcom/lge/homecube/ItemInfo;->origin_position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    const-string v0, "original_group_id"

    iget v1, p0, Lcom/lge/homecube/ItemInfo;->origin_group_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    return-void
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .registers 5
    .parameter "values"

    .prologue
    .line 130
    const-string v0, "itemType"

    iget v1, p0, Lcom/lge/homecube/ItemInfo;->itemType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    const-string v0, "container"

    iget-wide v1, p0, Lcom/lge/homecube/ItemInfo;->container:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 132
    const-string v0, "screen"

    iget v1, p0, Lcom/lge/homecube/ItemInfo;->screen:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    const-string v0, "cellX"

    iget v1, p0, Lcom/lge/homecube/ItemInfo;->cellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    const-string v0, "cellY"

    iget v1, p0, Lcom/lge/homecube/ItemInfo;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    const-string v0, "spanX"

    iget v1, p0, Lcom/lge/homecube/ItemInfo;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    const-string v0, "spanY"

    iget v1, p0, Lcom/lge/homecube/ItemInfo;->spanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    return-void
.end method
