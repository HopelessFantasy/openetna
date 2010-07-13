.class Lcom/android/providers/media/MediaScannerCursor;
.super Landroid/database/AbstractCursor;
.source "MediaScannerCursor.java"


# static fields
.field private static final kColumnNames:[Ljava/lang/String;


# instance fields
.field private mVolumeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "volume"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/media/MediaScannerCursor;->kColumnNames:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "volumeName"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/providers/media/MediaScannerCursor;->mVolumeName:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    sget-object v0, Lcom/android/providers/media/MediaScannerCursor;->kColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public getDouble(I)D
    .registers 4
    .parameter "column"

    .prologue
    .line 80
    const-wide/high16 v0, -0x4010

    return-wide v0
.end method

.method public getFloat(I)F
    .registers 3
    .parameter "column"

    .prologue
    .line 75
    const/high16 v0, -0x4080

    return v0
.end method

.method public getInt(I)I
    .registers 3
    .parameter "column"

    .prologue
    .line 65
    const/4 v0, -0x1

    return v0
.end method

.method public getLong(I)J
    .registers 4
    .parameter "column"

    .prologue
    .line 70
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getShort(I)S
    .registers 3
    .parameter "column"

    .prologue
    .line 60
    const/4 v0, -0x1

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .parameter "column"

    .prologue
    .line 51
    if-nez p1, :cond_5

    .line 52
    iget-object v0, p0, Lcom/android/providers/media/MediaScannerCursor;->mVolumeName:Ljava/lang/String;

    .line 54
    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public isNull(I)Z
    .registers 3
    .parameter "column"

    .prologue
    .line 85
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
