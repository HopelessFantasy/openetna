.class Lcom/lge/sns/message/MessageThread$1;
.super Ljava/lang/Object;
.source "MessageThread.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/message/MessageThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/lge/sns/message/MessageThread;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/sns/message/MessageThread;
    .registers 3
    .parameter "in"

    .prologue
    .line 370
    new-instance v0, Lcom/lge/sns/message/MessageThread;

    invoke-direct {v0, p1}, Lcom/lge/sns/message/MessageThread;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 376
    invoke-virtual {p0, p1}, Lcom/lge/sns/message/MessageThread$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/sns/message/MessageThread;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/sns/message/MessageThread;
    .registers 3
    .parameter "size"

    .prologue
    .line 377
    new-array v0, p1, [Lcom/lge/sns/message/MessageThread;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 376
    invoke-virtual {p0, p1}, Lcom/lge/sns/message/MessageThread$1;->newArray(I)[Lcom/lge/sns/message/MessageThread;

    move-result-object v0

    return-object v0
.end method
