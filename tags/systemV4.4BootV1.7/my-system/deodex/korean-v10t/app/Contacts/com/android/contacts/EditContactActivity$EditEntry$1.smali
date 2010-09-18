.class Lcom/android/contacts/EditContactActivity$EditEntry$1;
.super Ljava/lang/Object;
.source "EditContactActivity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/EditContactActivity$EditEntry;
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
        "Lcom/android/contacts/EditContactActivity$EditEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 3413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/EditContactActivity$EditEntry;
    .registers 7
    .parameter "in"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3388
    new-instance v0, Lcom/android/contacts/EditContactActivity$EditEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/contacts/EditContactActivity$EditEntry;-><init>(Lcom/android/contacts/EditContactActivity$1;)V

    .line 3391
    .local v0, entry:Lcom/android/contacts/EditContactActivity$EditEntry;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->hint:Ljava/lang/String;

    .line 3392
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->hint2:Ljava/lang/String;

    .line 3393
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->column:Ljava/lang/String;

    .line 3394
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->contentDirectory:Ljava/lang/String;

    .line 3395
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->data2:Ljava/lang/String;

    .line 3396
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->data3:Ljava/lang/String;

    .line 3397
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->data4:Ljava/lang/String;

    .line 3398
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->time:J

    .line 3399
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->contentType:I

    .line 3400
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->type:I

    .line 3401
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->lines:I

    .line 3402
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_72

    move v1, v3

    :goto_51
    iput-boolean v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->isPrimary:Z

    .line 3403
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_74

    move v1, v3

    :goto_5a
    iput-boolean v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->isDeleted:Z

    .line 3404
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_76

    move v1, v3

    :goto_63
    iput-boolean v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->isStaticLabel:Z

    .line 3405
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_78

    move v1, v3

    :goto_6c
    iput-boolean v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->syncDataWithView:Z

    .line 3408
    invoke-virtual {v0, p1}, Lcom/android/contacts/EditContactActivity$EditEntry;->readFromParcel(Landroid/os/Parcel;)V

    .line 3410
    return-object v0

    :cond_72
    move v1, v4

    .line 3402
    goto :goto_51

    :cond_74
    move v1, v4

    .line 3403
    goto :goto_5a

    :cond_76
    move v1, v4

    .line 3404
    goto :goto_63

    :cond_78
    move v1, v4

    .line 3405
    goto :goto_6c
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 3413
    invoke-virtual {p0, p1}, Lcom/android/contacts/EditContactActivity$EditEntry$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/contacts/EditContactActivity$EditEntry;
    .registers 3
    .parameter "size"

    .prologue
    .line 3414
    new-array v0, p1, [Lcom/android/contacts/EditContactActivity$EditEntry;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 3413
    invoke-virtual {p0, p1}, Lcom/android/contacts/EditContactActivity$EditEntry$1;->newArray(I)[Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v0

    return-object v0
.end method
