.class public Lcom/lge/newbay/client/IProfile$SnsUserProfile;
.super Ljava/lang/Object;
.source "IProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/IProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnsUserProfile"
.end annotation


# instance fields
.field activities:Ljava/lang/String;

.field affiliations:Ljava/lang/String;

.field avatar:Ljava/lang/String;

.field birthDay:Ljava/lang/String;

.field birthDt:Ljava/lang/String;

.field deepLink:Ljava/lang/String;

.field displayName:Ljava/lang/String;

.field email:Ljava/lang/String;

.field fanCnt:I

.field friendCnt:I

.field gender:Ljava/lang/String;

.field hometown:Ljava/lang/String;

.field id:Ljava/lang/String;

.field interests:Ljava/lang/String;

.field music:Ljava/lang/String;

.field otherPhoneNumber:Ljava/lang/String;

.field phoneNumber:Ljava/lang/String;

.field politics:Ljava/lang/String;

.field publisherCnt:I

.field snsId:Ljava/lang/String;

.field status:Ljava/lang/String;

.field storage:Lcom/lge/newbay/client/IProfile$Storage;

.field username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const-string v1, ""

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const-string v0, ""

    iput-object v1, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->username:Ljava/lang/String;

    .line 152
    const-string v0, ""

    iput-object v1, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->displayName:Ljava/lang/String;

    .line 626
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/newbay/client/IProfile$Storage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 27
    .parameter "id"
    .parameter "snsId"
    .parameter "username"
    .parameter "displayName"
    .parameter "avatar"
    .parameter "email"
    .parameter "phoneNumber"
    .parameter "otherPhoneNumber"
    .parameter "gender"
    .parameter "status"
    .parameter "storage"
    .parameter "birthDt"
    .parameter "birthDay"
    .parameter "hometown"
    .parameter "politics"
    .parameter "interests"
    .parameter "activities"
    .parameter "music"
    .parameter "affiliations"
    .parameter "deepLink"
    .parameter "fanCnt"
    .parameter "friendCnt"
    .parameter "publisherCnt"

    .prologue
    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const-string v2, ""

    iput-object v2, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->username:Ljava/lang/String;

    .line 152
    const-string v2, ""

    iput-object v2, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->displayName:Ljava/lang/String;

    .line 597
    iput-object p1, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->id:Ljava/lang/String;

    .line 598
    iput-object p2, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->snsId:Ljava/lang/String;

    .line 599
    iput-object p3, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->username:Ljava/lang/String;

    .line 600
    iput-object p4, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->displayName:Ljava/lang/String;

    .line 601
    iput-object p5, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->avatar:Ljava/lang/String;

    .line 602
    iput-object p6, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->email:Ljava/lang/String;

    .line 603
    iput-object p7, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->phoneNumber:Ljava/lang/String;

    .line 604
    iput-object p8, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->otherPhoneNumber:Ljava/lang/String;

    .line 605
    iput-object p9, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->gender:Ljava/lang/String;

    .line 606
    iput-object p10, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->status:Ljava/lang/String;

    .line 607
    iput-object p11, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->storage:Lcom/lge/newbay/client/IProfile$Storage;

    .line 608
    iput-object p12, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->birthDt:Ljava/lang/String;

    .line 609
    move-object/from16 v0, p13

    move-object v1, p0

    iput-object v0, v1, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->birthDay:Ljava/lang/String;

    .line 610
    move-object/from16 v0, p14

    move-object v1, p0

    iput-object v0, v1, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->hometown:Ljava/lang/String;

    .line 611
    move-object/from16 v0, p15

    move-object v1, p0

    iput-object v0, v1, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->politics:Ljava/lang/String;

    .line 612
    move-object/from16 v0, p16

    move-object v1, p0

    iput-object v0, v1, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->interests:Ljava/lang/String;

    .line 613
    move-object/from16 v0, p17

    move-object v1, p0

    iput-object v0, v1, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->activities:Ljava/lang/String;

    .line 614
    move-object/from16 v0, p18

    move-object v1, p0

    iput-object v0, v1, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->music:Ljava/lang/String;

    .line 615
    move-object/from16 v0, p19

    move-object v1, p0

    iput-object v0, v1, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->affiliations:Ljava/lang/String;

    .line 616
    move-object/from16 v0, p20

    move-object v1, p0

    iput-object v0, v1, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->deepLink:Ljava/lang/String;

    .line 617
    move/from16 v0, p21

    move-object v1, p0

    iput v0, v1, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->fanCnt:I

    .line 618
    move/from16 v0, p22

    move-object v1, p0

    iput v0, v1, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->friendCnt:I

    .line 619
    move/from16 v0, p23

    move-object v1, p0

    iput v0, v1, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->publisherCnt:I

    .line 620
    return-void
.end method


# virtual methods
.method public getActivities()Ljava/lang/String;
    .registers 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->activities:Ljava/lang/String;

    return-object v0
.end method

.method public getAffiliations()Ljava/lang/String;
    .registers 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->affiliations:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthDay()Ljava/lang/String;
    .registers 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->birthDay:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthDt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->birthDt:Ljava/lang/String;

    return-object v0
.end method

.method public getDeepLink()Ljava/lang/String;
    .registers 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->deepLink:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFanCnt()I
    .registers 2

    .prologue
    .line 526
    iget v0, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->fanCnt:I

    return v0
.end method

.method public getFriendCnt()I
    .registers 2

    .prologue
    .line 540
    iget v0, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->friendCnt:I

    return v0
.end method

.method public getGender()Ljava/lang/String;
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getHometown()Ljava/lang/String;
    .registers 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->hometown:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInterests()Ljava/lang/String;
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->interests:Ljava/lang/String;

    return-object v0
.end method

.method public getMusic()Ljava/lang/String;
    .registers 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->music:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->otherPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPolitics()Ljava/lang/String;
    .registers 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->politics:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisherCnt()I
    .registers 2

    .prologue
    .line 554
    iget v0, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->publisherCnt:I

    return v0
.end method

.method public getSnsId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->snsId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStorage()Lcom/lge/newbay/client/IProfile$Storage;
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->storage:Lcom/lge/newbay/client/IProfile$Storage;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setActivities(Ljava/lang/String;)V
    .registers 2
    .parameter "activities"

    .prologue
    .line 477
    iput-object p1, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->activities:Ljava/lang/String;

    .line 478
    return-void
.end method

.method public setAffiliations(Ljava/lang/String;)V
    .registers 2
    .parameter "affiliations"

    .prologue
    .line 505
    iput-object p1, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->affiliations:Ljava/lang/String;

    .line 506
    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .registers 2
    .parameter "avatar"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->avatar:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setBirthDay(Ljava/lang/String;)V
    .registers 2
    .parameter "birthDay"

    .prologue
    .line 421
    iput-object p1, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->birthDay:Ljava/lang/String;

    .line 422
    return-void
.end method

.method public setBirthDt(Ljava/lang/String;)V
    .registers 2
    .parameter "birthDt"

    .prologue
    .line 407
    iput-object p1, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->birthDt:Ljava/lang/String;

    .line 408
    return-void
.end method

.method public setDeepLink(Ljava/lang/String;)V
    .registers 2
    .parameter "deepLink"

    .prologue
    .line 519
    iput-object p1, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->deepLink:Ljava/lang/String;

    .line 520
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .registers 3
    .parameter "displayName"

    .prologue
    .line 290
    invoke-static {p1}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 291
    iput-object p1, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->displayName:Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->username:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 293
    iput-object p1, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->username:Ljava/lang/String;

    .line 296
    :cond_e
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2
    .parameter "email"

    .prologue
    .line 323
    iput-object p1, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->email:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public setFanCnt(I)V
    .registers 2
    .parameter "fanCnt"

    .prologue
    .line 533
    iput p1, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->fanCnt:I

    .line 534
    return-void
.end method

.method public setFriendCnt(I)V
    .registers 2
    .parameter "friendCnt"

    .prologue
    .line 547
    iput p1, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->friendCnt:I

    .line 548
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .registers 2
    .parameter "gender"

    .prologue
    .line 365
    iput-object p1, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->gender:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setHometown(Ljava/lang/String;)V
    .registers 2
    .parameter "hometown"

    .prologue
    .line 435
    iput-object p1, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->hometown:Ljava/lang/String;

    .line 436
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .parameter "id"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->id:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setInterests(Ljava/lang/String;)V
    .registers 2
    .parameter "interests"

    .prologue
    .line 463
    iput-object p1, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->interests:Ljava/lang/String;

    .line 464
    return-void
.end method

.method public setMusic(Ljava/lang/String;)V
    .registers 2
    .parameter "music"

    .prologue
    .line 491
    iput-object p1, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->music:Ljava/lang/String;

    .line 492
    return-void
.end method

.method public setOtherPhoneNumber(Ljava/lang/String;)V
    .registers 2
    .parameter "otherPhoneNumber"

    .prologue
    .line 351
    iput-object p1, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->otherPhoneNumber:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .registers 2
    .parameter "phoneNumber"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->phoneNumber:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public setPolitics(Ljava/lang/String;)V
    .registers 2
    .parameter "politics"

    .prologue
    .line 449
    iput-object p1, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->politics:Ljava/lang/String;

    .line 450
    return-void
.end method

.method public setPublisherCnt(I)V
    .registers 2
    .parameter "publisherCnt"

    .prologue
    .line 561
    iput p1, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->publisherCnt:I

    .line 562
    return-void
.end method

.method public setSnsId(Ljava/lang/String;)V
    .registers 2
    .parameter "snsId"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->snsId:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2
    .parameter "status"

    .prologue
    .line 379
    iput-object p1, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->status:Ljava/lang/String;

    .line 380
    return-void
.end method

.method public setStorage(Lcom/lge/newbay/client/IProfile$Storage;)V
    .registers 2
    .parameter "storage"

    .prologue
    .line 393
    iput-object p1, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->storage:Lcom/lge/newbay/client/IProfile$Storage;

    .line 394
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .registers 3
    .parameter "username"

    .prologue
    .line 271
    invoke-static {p1}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 272
    iput-object p1, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->username:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->displayName:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 274
    iput-object p1, p0, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->displayName:Ljava/lang/String;

    .line 277
    :cond_e
    return-void
.end method
