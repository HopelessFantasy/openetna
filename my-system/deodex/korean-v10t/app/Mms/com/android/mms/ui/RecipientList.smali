.class public Lcom/android/mms/ui/RecipientList;
.super Ljava/lang/Object;
.source "RecipientList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/RecipientList$Recipient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecipientList"


# instance fields
.field private mCountcommapre:I

.field private final mInvalidRecipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/RecipientList$Recipient;",
            ">;"
        }
    .end annotation
.end field

.field private mNameandnumber:Ljava/lang/String;

.field private final mRecipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/RecipientList$Recipient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientList;->mInvalidRecipients:Ljava/util/ArrayList;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/RecipientList;->mCountcommapre:I

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/RecipientList;->mNameandnumber:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static from(Ljava/lang/String;Landroid/content/Context;)Lcom/android/mms/ui/RecipientList;
    .registers 13
    .parameter "address"
    .parameter "context"

    .prologue
    .line 268
    new-instance v5, Lcom/android/mms/ui/RecipientList;

    invoke-direct {v5}, Lcom/android/mms/ui/RecipientList;-><init>()V

    .line 269
    .local v5, list:Lcom/android/mms/ui/RecipientList;
    invoke-static {}, Lcom/android/mms/util/ContactInfoCache;->getInstance()Lcom/android/mms/util/ContactInfoCache;

    move-result-object v1

    .line 271
    .local v1, cache:Lcom/android/mms/util/ContactInfoCache;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8e

    .line 272
    const-string v9, ";"

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 273
    .local v7, phoneNumbers:[Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_18
    if-ge v3, v4, :cond_8e

    aget-object v6, v0, v3

    .line 274
    .local v6, number:Ljava/lang/String;
    new-instance v8, Lcom/android/mms/ui/RecipientList$Recipient;

    invoke-direct {v8}, Lcom/android/mms/ui/RecipientList$Recipient;-><init>()V

    .line 275
    .local v8, recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    const-string v9, "%bcc%"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_31

    .line 276
    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    .line 277
    const/4 v9, 0x5

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 285
    :cond_31
    invoke-virtual {v1, p1, v6}, Lcom/android/mms/util/ContactInfoCache;->getContactInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    move-result-object v2

    .line 286
    .local v2, entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    iget-wide v9, v2, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->person_id:J

    iput-wide v9, v8, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    .line 287
    iget-object v9, v2, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_79

    .line 288
    iget-object v9, v2, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->phoneNumber:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_74

    .line 289
    const v9, 0x7f070013

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    .line 297
    :goto_52
    invoke-static {v6}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7e

    .line 298
    iput-object v6, v8, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    .line 299
    invoke-virtual {v1, p1, v6}, Lcom/android/mms/util/ContactInfoCache;->getDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    .line 304
    :goto_60
    iget-object v9, v8, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    iget-object v10, v8, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/mms/ui/RecipientList$Recipient;->buildNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/mms/ui/RecipientList$Recipient;->nameAndNumber:Ljava/lang/String;

    .line 306
    invoke-virtual {v8}, Lcom/android/mms/ui/RecipientList$Recipient;->filter()Lcom/android/mms/ui/RecipientList$Recipient;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/android/mms/ui/RecipientList;->add(Lcom/android/mms/ui/RecipientList$Recipient;)V

    .line 273
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 291
    :cond_74
    iget-object v9, v2, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->phoneNumber:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    goto :goto_52

    .line 294
    :cond_79
    iget-object v9, v2, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    goto :goto_52

    .line 301
    :cond_7e
    iget-object v9, v2, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->phoneLabel:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/mms/ui/RecipientList$Recipient;->label:Ljava/lang/CharSequence;

    .line 302
    iget-object v9, v2, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->phoneNumber:Ljava/lang/String;

    if-nez v9, :cond_8b

    const-string v9, ""

    :goto_88
    iput-object v9, v8, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    goto :goto_60

    :cond_8b
    iget-object v9, v2, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->phoneNumber:Ljava/lang/String;

    goto :goto_88

    .line 309
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #number:Ljava/lang/String;
    .end local v7           #phoneNumbers:[Ljava/lang/String;
    .end local v8           #recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    :cond_8e
    return-object v5
.end method


# virtual methods
.method public add(Lcom/android/mms/ui/RecipientList$Recipient;)V
    .registers 7
    .parameter "r"

    .prologue
    const/4 v4, 0x0

    .line 64
    if-eqz p1, :cond_47

    iget-object v2, p1, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/ui/RecipientList$Recipient;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 65
    invoke-virtual {p1}, Lcom/android/mms/ui/RecipientList$Recipient;->filter()Lcom/android/mms/ui/RecipientList$Recipient;

    move-result-object v1

    .line 66
    .local v1, tmprecipient:Lcom/android/mms/ui/RecipientList$Recipient;
    iget-object v2, v1, Lcom/android/mms/ui/RecipientList$Recipient;->nameAndNumber:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/RecipientList;->countcomma(Ljava/lang/String;)I

    move-result v0

    .line 68
    .local v0, Countcomma:I
    if-nez v0, :cond_2f

    .line 69
    iput v4, p0, Lcom/android/mms/ui/RecipientList;->mCountcommapre:I

    .line 77
    :cond_19
    :goto_19
    iget v2, p0, Lcom/android/mms/ui/RecipientList;->mCountcommapre:I

    if-nez v2, :cond_40

    .line 78
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v2, v1, Lcom/android/mms/ui/RecipientList$Recipient;->nameAndNumber:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/mms/ui/RecipientList;->mNameandnumber:Ljava/lang/String;

    .line 80
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList;->mNameandnumber:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/RecipientList;->countcomma(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/RecipientList;->mCountcommapre:I

    .line 91
    .end local v0           #Countcomma:I
    .end local v1           #tmprecipient:Lcom/android/mms/ui/RecipientList$Recipient;
    :goto_2e
    return-void

    .line 72
    .restart local v0       #Countcomma:I
    .restart local v1       #tmprecipient:Lcom/android/mms/ui/RecipientList$Recipient;
    :cond_2f
    iget v2, p0, Lcom/android/mms/ui/RecipientList;->mCountcommapre:I

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/mms/ui/RecipientList;->mNameandnumber:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/mms/ui/RecipientList$Recipient;->nameAndNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 73
    iput v4, p0, Lcom/android/mms/ui/RecipientList;->mCountcommapre:I

    goto :goto_19

    .line 83
    :cond_40
    iget v2, p0, Lcom/android/mms/ui/RecipientList;->mCountcommapre:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/mms/ui/RecipientList;->mCountcommapre:I

    goto :goto_2e

    .line 89
    .end local v0           #Countcomma:I
    .end local v1           #tmprecipient:Lcom/android/mms/ui/RecipientList$Recipient;
    :cond_47
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList;->mInvalidRecipients:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e
.end method

.method public containsBcc()Z
    .registers 4

    .prologue
    .line 345
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 346
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_1a

    .line 347
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/RecipientList$Recipient;

    iget-boolean v2, v2, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    if-eqz v2, :cond_17

    .line 348
    const/4 v2, 0x1

    .line 351
    :goto_16
    return v2

    .line 346
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 351
    :cond_1a
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public containsEmail()Z
    .registers 4

    .prologue
    .line 355
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 356
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_1e

    .line 357
    iget-object v2, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/RecipientList$Recipient;

    iget-object v2, v2, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 358
    const/4 v2, 0x1

    .line 361
    :goto_1a
    return v2

    .line 356
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 361
    :cond_1e
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public countInvalidRecipients()I
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mInvalidRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public countcomma(Ljava/lang/String;)I
    .registers 6
    .parameter "r"

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, count:I
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, tmpstring:[Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .line 61
    return v0
.end method

.method public getBccNumbers()[Ljava/lang/String;
    .registers 6

    .prologue
    .line 365
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v2, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 367
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v0, :cond_2a

    .line 368
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/RecipientList$Recipient;

    .line 369
    .local v3, recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    iget-boolean v4, v3, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    if-eqz v4, :cond_27

    iget-object v4, v3, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 370
    iget-object v4, v3, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 373
    .end local v3           #recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    :cond_2a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getInvalidRecipientString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 412
    .local v3, sb:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList;->mInvalidRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 413
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v0, :cond_2e

    .line 414
    if-eqz v1, :cond_15

    .line 415
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    :cond_15
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList;->mInvalidRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/RecipientList$Recipient;

    .line 419
    .local v2, recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    iget-boolean v4, v2, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    if-eqz v4, :cond_26

    .line 420
    const-string v4, "%bcc%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    :cond_26
    iget-object v4, v2, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 424
    .end local v2           #recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    :cond_2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getNumbers()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 377
    iget-object v3, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 378
    .local v0, count:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 379
    .local v2, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v0, :cond_1e

    .line 380
    iget-object v3, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/RecipientList$Recipient;

    iget-object v3, v3, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 382
    :cond_1e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSingleRecipient()Lcom/android/mms/ui/RecipientList$Recipient;
    .registers 4

    .prologue
    .line 329
    iget-object v1, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 330
    .local v0, count:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    .line 331
    const/4 v1, 0x0

    .line 333
    .end local p0
    :goto_a
    return-object v1

    .restart local p0
    :cond_b
    iget-object v1, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/mms/ui/RecipientList$Recipient;

    move-object v1, p0

    goto :goto_a
.end method

.method public getSingleRecipientNumber()Ljava/lang/String;
    .registers 3

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientList;->getSingleRecipient()Lcom/android/mms/ui/RecipientList$Recipient;

    move-result-object v0

    .line 338
    .local v0, first:Lcom/android/mms/ui/RecipientList$Recipient;
    if-nez v0, :cond_8

    .line 339
    const/4 v1, 0x0

    .line 341
    :goto_7
    return-object v1

    :cond_8
    iget-object v1, v0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    goto :goto_7
.end method

.method public getToNumbers()[Ljava/lang/String;
    .registers 6

    .prologue
    .line 313
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v2, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 315
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v0, :cond_2a

    .line 316
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/RecipientList$Recipient;

    .line 317
    .local v3, recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    iget-boolean v4, v3, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    if-nez v4, :cond_27

    iget-object v4, v3, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 318
    iget-object v4, v3, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 321
    .end local v3           #recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    :cond_2a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public hasInvalidRecipient()Z
    .registers 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mInvalidRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasValidRecipient()Z
    .registers 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/mms/ui/RecipientList$Recipient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public serialize()Ljava/lang/String;
    .registers 6

    .prologue
    .line 386
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .local v3, sb:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 388
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v0, :cond_2e

    .line 389
    if-eqz v1, :cond_15

    .line 390
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_15
    iget-object v4, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/RecipientList$Recipient;

    .line 394
    .local v2, recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    iget-boolean v4, v2, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    if-eqz v4, :cond_26

    .line 395
    const-string v4, "%bcc%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_26
    iget-object v4, v2, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 399
    .end local v2           #recipient:Lcom/android/mms/ui/RecipientList$Recipient;
    :cond_2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public size()I
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
