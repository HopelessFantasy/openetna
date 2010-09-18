.class Landroid/webkit/gears/ApacheHttpRequestAndroid$DataPacket;
.super Ljava/lang/Object;
.source "ApacheHttpRequestAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/gears/ApacheHttpRequestAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataPacket"
.end annotation


# instance fields
.field private mContent:[B

.field private mLength:I

.field final synthetic this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;


# direct methods
.method public constructor <init>(Landroid/webkit/gears/ApacheHttpRequestAndroid;[BI)V
    .registers 4
    .parameter
    .parameter "content"
    .parameter "length"

    .prologue
    .line 306
    iput-object p1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$DataPacket;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p2, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$DataPacket;->mContent:[B

    .line 308
    iput p3, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$DataPacket;->mLength:I

    .line 309
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$DataPacket;->mContent:[B

    return-object v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 314
    iget v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$DataPacket;->mLength:I

    return v0
.end method
