.class public Lcom/lge/sns/account/Account;
.super Ljava/lang/Object;
.source "Account.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/lge/sns/account/Account;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/sns/account/Account;",
            ">;"
        }
    .end annotation
.end field

.field public static NOT_ASSIGNED:I = 0x0

.field public static final SNS_ID_BEBO:Ljava/lang/String; = "BB"

.field public static final SNS_ID_FACEBOOK:Ljava/lang/String; = "FB"

.field public static final SNS_ID_TWITTER:Ljava/lang/String; = "TW"

.field public static final snsIds:[Ljava/lang/String;


# instance fields
.field bitmapRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field credential:Lcom/lge/sns/account/Credential;

.field drawableRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field feedUpdated:Ljava/util/Date;

.field friendListUpdated:Ljava/util/Date;

.field iconImage:[B

.field id:J

.field notify:Z

.field published:Ljava/util/Date;

.field snsId:Ljava/lang/String;

.field tabOrder:I

.field title:Ljava/lang/String;

.field updated:Ljava/util/Date;

.field url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "FB"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "BB"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "TW"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sns/account/Account;->snsIds:[Ljava/lang/String;

    .line 37
    const/4 v0, -0x1

    sput v0, Lcom/lge/sns/account/Account;->NOT_ASSIGNED:I

    .line 402
    new-instance v0, Lcom/lge/sns/account/Account$1;

    invoke-direct {v0}, Lcom/lge/sns/account/Account$1;-><init>()V

    sput-object v0, Lcom/lge/sns/account/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget v0, Lcom/lge/sns/account/Account;->NOT_ASSIGNED:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/lge/sns/account/Account;->id:J

    .line 45
    sget v0, Lcom/lge/sns/account/Account;->NOT_ASSIGNED:I

    iput v0, p0, Lcom/lge/sns/account/Account;->tabOrder:I

    .line 293
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;I[BLjava/util/Date;Ljava/util/Date;Lcom/lge/sns/account/Credential;)V
    .registers 15
    .parameter "id"
    .parameter "snsId"
    .parameter "title"
    .parameter "url"
    .parameter "updated"
    .parameter "published"
    .parameter "tabOrder"
    .parameter "iconImage"
    .parameter "feedUpdated"
    .parameter "friendListUpdated"
    .parameter "credential"

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget v0, Lcom/lge/sns/account/Account;->NOT_ASSIGNED:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/lge/sns/account/Account;->id:J

    .line 45
    sget v0, Lcom/lge/sns/account/Account;->NOT_ASSIGNED:I

    iput v0, p0, Lcom/lge/sns/account/Account;->tabOrder:I

    .line 320
    iput-wide p1, p0, Lcom/lge/sns/account/Account;->id:J

    .line 321
    iput-object p3, p0, Lcom/lge/sns/account/Account;->snsId:Ljava/lang/String;

    .line 322
    iput-object p4, p0, Lcom/lge/sns/account/Account;->title:Ljava/lang/String;

    .line 323
    iput-object p5, p0, Lcom/lge/sns/account/Account;->url:Ljava/lang/String;

    .line 324
    iput-object p6, p0, Lcom/lge/sns/account/Account;->updated:Ljava/util/Date;

    .line 325
    iput-object p7, p0, Lcom/lge/sns/account/Account;->published:Ljava/util/Date;

    .line 326
    iput p8, p0, Lcom/lge/sns/account/Account;->tabOrder:I

    .line 327
    iput-object p9, p0, Lcom/lge/sns/account/Account;->iconImage:[B

    .line 328
    iput-object p10, p0, Lcom/lge/sns/account/Account;->feedUpdated:Ljava/util/Date;

    .line 329
    iput-object p11, p0, Lcom/lge/sns/account/Account;->friendListUpdated:Ljava/util/Date;

    .line 330
    iput-object p12, p0, Lcom/lge/sns/account/Account;->credential:Lcom/lge/sns/account/Credential;

    .line 331
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget v0, Lcom/lge/sns/account/Account;->NOT_ASSIGNED:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/lge/sns/account/Account;->id:J

    .line 45
    sget v0, Lcom/lge/sns/account/Account;->NOT_ASSIGNED:I

    iput v0, p0, Lcom/lge/sns/account/Account;->tabOrder:I

    .line 296
    invoke-virtual {p0, p1}, Lcom/lge/sns/account/Account;->readFromParcel(Landroid/os/Parcel;)V

    .line 297
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/lge/sns/account/Account;)I
    .registers 4
    .parameter "another"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/lge/sns/account/Account;->title:Ljava/lang/String;

    iget-object v1, p1, Lcom/lge/sns/account/Account;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 31
    check-cast p1, Lcom/lge/sns/account/Account;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lge/sns/account/Account;->compareTo(Lcom/lge/sns/account/Account;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    .line 374
    instance-of v2, p1, Lcom/lge/sns/account/Account;

    if-eqz v2, :cond_1e

    .line 375
    move-object v0, p1

    check-cast v0, Lcom/lge/sns/account/Account;

    move-object v1, v0

    .line 376
    .local v1, account:Lcom/lge/sns/account/Account;
    iget-wide v2, p0, Lcom/lge/sns/account/Account;->id:J

    iget-wide v4, v1, Lcom/lge/sns/account/Account;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1c

    iget-object v2, p0, Lcom/lge/sns/account/Account;->snsId:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/sns/account/Account;->snsId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    .line 378
    .end local v1           #account:Lcom/lge/sns/account/Account;
    :goto_1b
    return v2

    .line 376
    .restart local v1       #account:Lcom/lge/sns/account/Account;
    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b

    .line 378
    .end local v1           #account:Lcom/lge/sns/account/Account;
    :cond_1e
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1b
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/lge/sns/account/Account;->iconImage:[B

    if-eqz v1, :cond_24

    .line 261
    iget-object v1, p0, Lcom/lge/sns/account/Account;->bitmapRef:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_11

    .line 262
    iget-object v1, p0, Lcom/lge/sns/account/Account;->bitmapRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 264
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_11
    if-nez v0, :cond_24

    .line 265
    iget-object v1, p0, Lcom/lge/sns/account/Account;->iconImage:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lge/sns/account/Account;->iconImage:[B

    array-length v3, v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 266
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/lge/sns/account/Account;->bitmapRef:Ljava/lang/ref/SoftReference;

    .line 269
    :cond_24
    return-object v0
.end method

.method public getCredential()Lcom/lge/sns/account/Credential;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/lge/sns/account/Account;->credential:Lcom/lge/sns/account/Credential;

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 277
    const/4 v1, 0x0

    .line 278
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/lge/sns/account/Account;->iconImage:[B

    if-eqz v2, :cond_23

    .line 279
    iget-object v2, p0, Lcom/lge/sns/account/Account;->drawableRef:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_11

    .line 280
    iget-object v2, p0, Lcom/lge/sns/account/Account;->drawableRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 282
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_11
    if-nez v1, :cond_23

    .line 283
    invoke-virtual {p0}, Lcom/lge/sns/account/Account;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 284
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 285
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/lge/sns/account/Account;->drawableRef:Ljava/lang/ref/SoftReference;

    .line 288
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_23
    return-object v1
.end method

.method public getFeedUpdated()Ljava/util/Date;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lge/sns/account/Account;->feedUpdated:Ljava/util/Date;

    return-object v0
.end method

.method public getFriendListUpdated()Ljava/util/Date;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lge/sns/account/Account;->friendListUpdated:Ljava/util/Date;

    return-object v0
.end method

.method public getIconImage()[B
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/lge/sns/account/Account;->iconImage:[B

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/lge/sns/account/Account;->id:J

    return-wide v0
.end method

.method public getPublished()Ljava/util/Date;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/lge/sns/account/Account;->published:Ljava/util/Date;

    return-object v0
.end method

.method public getSnsId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/lge/sns/account/Account;->snsId:Ljava/lang/String;

    return-object v0
.end method

.method public getTabOrder()I
    .registers 2

    .prologue
    .line 227
    iget v0, p0, Lcom/lge/sns/account/Account;->tabOrder:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lge/sns/account/Account;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated()Ljava/util/Date;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/lge/sns/account/Account;->updated:Ljava/util/Date;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lge/sns/account/Account;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isActivated()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 366
    iget-object v0, p0, Lcom/lge/sns/account/Account;->credential:Lcom/lge/sns/account/Credential;

    if-eqz v0, :cond_11

    .line 367
    iget-object v0, p0, Lcom/lge/sns/account/Account;->credential:Lcom/lge/sns/account/Credential;

    invoke-virtual {v0}, Lcom/lge/sns/account/Credential;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    .line 369
    :goto_e
    return v0

    :cond_f
    move v0, v1

    .line 367
    goto :goto_e

    :cond_11
    move v0, v1

    .line 369
    goto :goto_e
.end method

.method public isInitilaized()Z
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lge/sns/account/Account;->feedUpdated:Ljava/util/Date;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isNotify()Z
    .registers 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/lge/sns/account/Account;->notify:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 11
    .parameter "in"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/sns/account/Account;->id:J

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/account/Account;->snsId:Ljava/lang/String;

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/account/Account;->title:Ljava/lang/String;

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 338
    .local v0, value:J
    cmp-long v2, v0, v5

    if-eqz v2, :cond_9a

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_24
    iput-object v2, p0, Lcom/lge/sns/account/Account;->updated:Ljava/util/Date;

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 340
    cmp-long v2, v0, v5

    if-eqz v2, :cond_9c

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_33
    iput-object v2, p0, Lcom/lge/sns/account/Account;->published:Ljava/util/Date;

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/lge/sns/account/Account;->tabOrder:I

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/account/Account;->iconImage:[B

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 345
    cmp-long v2, v0, v5

    if-eqz v2, :cond_9e

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_4e
    iput-object v2, p0, Lcom/lge/sns/account/Account;->feedUpdated:Ljava/util/Date;

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 347
    cmp-long v2, v0, v5

    if-eqz v2, :cond_a0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_5d
    iput-object v2, p0, Lcom/lge/sns/account/Account;->friendListUpdated:Ljava/util/Date;

    .line 348
    new-instance v2, Lcom/lge/sns/account/Credential;

    invoke-direct {v2}, Lcom/lge/sns/account/Credential;-><init>()V

    iput-object v2, p0, Lcom/lge/sns/account/Account;->credential:Lcom/lge/sns/account/Credential;

    .line 349
    iget-object v2, p0, Lcom/lge/sns/account/Account;->credential:Lcom/lge/sns/account/Credential;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/sns/account/Credential;->setUserId(Ljava/lang/String;)V

    .line 350
    iget-object v2, p0, Lcom/lge/sns/account/Account;->credential:Lcom/lge/sns/account/Credential;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/sns/account/Credential;->setUserPassword(Ljava/lang/String;)V

    .line 351
    iget-object v2, p0, Lcom/lge/sns/account/Account;->credential:Lcom/lge/sns/account/Credential;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_a2

    move v3, v8

    :goto_81
    invoke-virtual {v2, v3}, Lcom/lge/sns/account/Credential;->setRemeber(Z)V

    .line 352
    iget-object v2, p0, Lcom/lge/sns/account/Account;->credential:Lcom/lge/sns/account/Credential;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_a4

    move v3, v8

    :goto_8d
    invoke-virtual {v2, v3}, Lcom/lge/sns/account/Credential;->setAutoUpdated(Z)V

    .line 353
    iget-object v2, p0, Lcom/lge/sns/account/Account;->credential:Lcom/lge/sns/account/Credential;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/sns/account/Credential;->setUid(Ljava/lang/String;)V

    .line 354
    return-void

    :cond_9a
    move-object v2, v4

    .line 338
    goto :goto_24

    :cond_9c
    move-object v2, v4

    .line 340
    goto :goto_33

    :cond_9e
    move-object v2, v4

    .line 345
    goto :goto_4e

    :cond_a0
    move-object v2, v4

    .line 347
    goto :goto_5d

    :cond_a2
    move v3, v7

    .line 351
    goto :goto_81

    :cond_a4
    move v3, v7

    .line 352
    goto :goto_8d
.end method

.method public setCredential(Lcom/lge/sns/account/Credential;)V
    .registers 2
    .parameter "credential"

    .prologue
    .line 251
    iput-object p1, p0, Lcom/lge/sns/account/Account;->credential:Lcom/lge/sns/account/Credential;

    .line 252
    return-void
.end method

.method public setFeedUpdated(Ljava/util/Date;)V
    .registers 2
    .parameter "feedUpdated"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/lge/sns/account/Account;->feedUpdated:Ljava/util/Date;

    .line 108
    return-void
.end method

.method public setFriendListUpdated(Ljava/util/Date;)V
    .registers 2
    .parameter "friendListUpdated"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/lge/sns/account/Account;->friendListUpdated:Ljava/util/Date;

    .line 124
    return-void
.end method

.method public setIconImage([B)V
    .registers 2
    .parameter "iconImage"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/lge/sns/account/Account;->iconImage:[B

    .line 220
    return-void
.end method

.method public setId(J)V
    .registers 3
    .parameter "id"

    .prologue
    .line 139
    iput-wide p1, p0, Lcom/lge/sns/account/Account;->id:J

    .line 140
    return-void
.end method

.method public setNotify(Z)V
    .registers 2
    .parameter "notify"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/lge/sns/account/Account;->notify:Z

    .line 84
    return-void
.end method

.method public setPublished(Ljava/util/Date;)V
    .registers 2
    .parameter "published"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/lge/sns/account/Account;->published:Ljava/util/Date;

    .line 204
    return-void
.end method

.method public setSnsId(Ljava/lang/String;)V
    .registers 2
    .parameter "snsId"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/lge/sns/account/Account;->snsId:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setTabOrder(I)V
    .registers 2
    .parameter "tabOrder"

    .prologue
    .line 235
    iput p1, p0, Lcom/lge/sns/account/Account;->tabOrder:I

    .line 236
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .parameter "title"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/lge/sns/account/Account;->title:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setUpdated(Ljava/util/Date;)V
    .registers 2
    .parameter "updated"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/lge/sns/account/Account;->updated:Ljava/util/Date;

    .line 188
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "url"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lge/sns/account/Account;->url:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0xa

    .line 382
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 383
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/sns/account/Account;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 384
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "snsId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/account/Account;->snsId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/account/Account;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "tabOrder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/lge/sns/account/Account;->tabOrder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 389
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "iconImage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/account/Account;->iconImage:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 390
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "credential="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/account/Account;->credential:Lcom/lge/sns/account/Credential;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 391
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toUri()Landroid/net/Uri;
    .registers 4

    .prologue
    .line 358
    sget-object v0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/lge/sns/account/Account;->id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    .line 300
    iget-wide v0, p0, Lcom/lge/sns/account/Account;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 301
    iget-object v0, p0, Lcom/lge/sns/account/Account;->snsId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/lge/sns/account/Account;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/lge/sns/account/Account;->updated:Ljava/util/Date;

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/lge/sns/account/Account;->updated:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_1d
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 304
    iget-object v0, p0, Lcom/lge/sns/account/Account;->published:Ljava/util/Date;

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/lge/sns/account/Account;->published:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_2a
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 305
    iget v0, p0, Lcom/lge/sns/account/Account;->tabOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    iget-object v0, p0, Lcom/lge/sns/account/Account;->iconImage:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 307
    iget-object v0, p0, Lcom/lge/sns/account/Account;->feedUpdated:Ljava/util/Date;

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/lge/sns/account/Account;->feedUpdated:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_41
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 308
    iget-object v0, p0, Lcom/lge/sns/account/Account;->friendListUpdated:Ljava/util/Date;

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/lge/sns/account/Account;->friendListUpdated:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_4e
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 309
    iget-object v0, p0, Lcom/lge/sns/account/Account;->credential:Lcom/lge/sns/account/Credential;

    invoke-virtual {v0}, Lcom/lge/sns/account/Credential;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/lge/sns/account/Account;->credential:Lcom/lge/sns/account/Credential;

    invoke-virtual {v0}, Lcom/lge/sns/account/Credential;->getUserPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/lge/sns/account/Account;->credential:Lcom/lge/sns/account/Credential;

    invoke-virtual {v0}, Lcom/lge/sns/account/Credential;->isRemeber()Z

    move-result v0

    if-eqz v0, :cond_8d

    move v0, v4

    :goto_6c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    iget-object v0, p0, Lcom/lge/sns/account/Account;->credential:Lcom/lge/sns/account/Credential;

    invoke-virtual {v0}, Lcom/lge/sns/account/Credential;->isAutoUpdated()Z

    move-result v0

    if-eqz v0, :cond_8f

    move v0, v4

    :goto_78
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    iget-object v0, p0, Lcom/lge/sns/account/Account;->credential:Lcom/lge/sns/account/Credential;

    invoke-virtual {v0}, Lcom/lge/sns/account/Credential;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    return-void

    :cond_85
    move-wide v0, v2

    .line 303
    goto :goto_1d

    :cond_87
    move-wide v0, v2

    .line 304
    goto :goto_2a

    :cond_89
    move-wide v0, v2

    .line 307
    goto :goto_41

    :cond_8b
    move-wide v0, v2

    .line 308
    goto :goto_4e

    :cond_8d
    move v0, v5

    .line 311
    goto :goto_6c

    :cond_8f
    move v0, v5

    .line 312
    goto :goto_78
.end method
