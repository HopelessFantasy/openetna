.class public Landroid/webkit/WebHistoryItem;
.super Ljava/lang/Object;
.source "WebHistoryItem.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static sNextId:I


# instance fields
.field private mFavicon:Landroid/graphics/Bitmap;

.field private mFlattenedData:[B

.field private final mId:I

.field private mOriginalUrl:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput v0, Landroid/webkit/WebHistoryItem;->sNextId:I

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-class v0, Landroid/webkit/WebHistoryItem;

    monitor-enter v0

    .line 49
    :try_start_6
    sget v1, Landroid/webkit/WebHistoryItem;->sNextId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Landroid/webkit/WebHistoryItem;->sNextId:I

    iput v1, p0, Landroid/webkit/WebHistoryItem;->mId:I

    .line 50
    monitor-exit v0

    .line 51
    return-void

    .line 50
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private constructor <init>(Landroid/webkit/WebHistoryItem;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iget-object v0, p1, Landroid/webkit/WebHistoryItem;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Landroid/webkit/WebHistoryItem;->mUrl:Ljava/lang/String;

    .line 71
    iget-object v0, p1, Landroid/webkit/WebHistoryItem;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Landroid/webkit/WebHistoryItem;->mTitle:Ljava/lang/String;

    .line 72
    iget-object v0, p1, Landroid/webkit/WebHistoryItem;->mFlattenedData:[B

    iput-object v0, p0, Landroid/webkit/WebHistoryItem;->mFlattenedData:[B

    .line 73
    iget-object v0, p1, Landroid/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    .line 74
    iget v0, p1, Landroid/webkit/WebHistoryItem;->mId:I

    iput v0, p0, Landroid/webkit/WebHistoryItem;->mId:I

    .line 75
    return-void
.end method

.method constructor <init>([B)V
    .registers 5
    .parameter "data"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebHistoryItem;->mUrl:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Landroid/webkit/WebHistoryItem;->mFlattenedData:[B

    .line 60
    const-class v0, Landroid/webkit/WebHistoryItem;

    monitor-enter v0

    .line 61
    :try_start_b
    sget v1, Landroid/webkit/WebHistoryItem;->sNextId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Landroid/webkit/WebHistoryItem;->sNextId:I

    iput v1, p0, Landroid/webkit/WebHistoryItem;->mId:I

    .line 62
    monitor-exit v0

    .line 63
    return-void

    .line 62
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw v1
.end method

.method private native inflate(I[B)V
.end method

.method private update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B)V
    .registers 6
    .parameter "url"
    .parameter "originalUrl"
    .parameter "title"
    .parameter "favicon"
    .parameter "data"

    .prologue
    .line 171
    iput-object p1, p0, Landroid/webkit/WebHistoryItem;->mUrl:Ljava/lang/String;

    .line 172
    iput-object p2, p0, Landroid/webkit/WebHistoryItem;->mOriginalUrl:Ljava/lang/String;

    .line 173
    iput-object p3, p0, Landroid/webkit/WebHistoryItem;->mTitle:Ljava/lang/String;

    .line 174
    iput-object p4, p0, Landroid/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    .line 175
    iput-object p5, p0, Landroid/webkit/WebHistoryItem;->mFlattenedData:[B

    .line 176
    return-void
.end method


# virtual methods
.method protected declared-synchronized clone()Landroid/webkit/WebHistoryItem;
    .registers 2

    .prologue
    .line 161
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkit/WebHistoryItem;

    invoke-direct {v0, p0}, Landroid/webkit/WebHistoryItem;-><init>(Landroid/webkit/WebHistoryItem;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/webkit/WebHistoryItem;->clone()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    return-object v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getFlattenedData()[B
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mFlattenedData:[B

    return-object v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Landroid/webkit/WebHistoryItem;->mId:I

    return v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mOriginalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method inflate(I)V
    .registers 3
    .parameter "nativeFrame"

    .prologue
    .line 154
    iget-object v0, p0, Landroid/webkit/WebHistoryItem;->mFlattenedData:[B

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebHistoryItem;->inflate(I[B)V

    .line 155
    return-void
.end method

.method setFavicon(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "icon"

    .prologue
    .line 136
    iput-object p1, p0, Landroid/webkit/WebHistoryItem;->mFavicon:Landroid/graphics/Bitmap;

    .line 137
    return-void
.end method
