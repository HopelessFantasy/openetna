.class public Landroid/syncml/pim/vcard/VCardComposer;
.super Ljava/lang/Object;
.source "VCardComposer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VCardComposer"

.field public static final VERSION_VCARD21_INT:I = 0x1

.field public static final VERSION_VCARD30_INT:I = 0x2

.field private static final emailTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final emailTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final phoneTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final phoneTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNewline:Ljava/lang/String;

.field private mResult:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 51
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "CELL"

    aput-object v3, v1, v2

    const-string v2, "AOL"

    aput-object v2, v1, v4

    const-string v2, "APPLELINK"

    aput-object v2, v1, v5

    const-string v2, "ATTMAIL"

    aput-object v2, v1, v6

    const-string v2, "CIS"

    aput-object v2, v1, v7

    const-string v2, "EWORLD"

    aput-object v2, v1, v8

    const/4 v2, 0x6

    const-string v3, "INTERNET"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "IBMMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "MCIMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "POWERSHARE"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "PRODIGY"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "TLX"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "X400"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/syncml/pim/vcard/VCardComposer;->emailTypes:Ljava/util/HashSet;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "PREF"

    aput-object v3, v1, v2

    const-string v2, "WORK"

    aput-object v2, v1, v4

    const-string v2, "HOME"

    aput-object v2, v1, v5

    const-string v2, "VOICE"

    aput-object v2, v1, v6

    const-string v2, "FAX"

    aput-object v2, v1, v7

    const-string v2, "MSG"

    aput-object v2, v1, v8

    const/4 v2, 0x6

    const-string v3, "CELL"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "PAGER"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "BBS"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "MODEM"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "CAR"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "ISDN"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "VIDEO"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/syncml/pim/vcard/VCardComposer;->phoneTypes:Ljava/util/HashSet;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/syncml/pim/vcard/VCardComposer;->phoneTypeMap:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/syncml/pim/vcard/VCardComposer;->emailTypeMap:Ljava/util/HashMap;

    .line 70
    sget-object v0, Landroid/syncml/pim/vcard/VCardComposer;->phoneTypeMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HOME"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Landroid/syncml/pim/vcard/VCardComposer;->phoneTypeMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CELL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Landroid/syncml/pim/vcard/VCardComposer;->phoneTypeMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WORK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Landroid/syncml/pim/vcard/VCardComposer;->phoneTypeMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WORK;FAX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Landroid/syncml/pim/vcard/VCardComposer;->phoneTypeMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HOME;FAX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Landroid/syncml/pim/vcard/VCardComposer;->phoneTypeMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PAGER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Landroid/syncml/pim/vcard/VCardComposer;->phoneTypeMap:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-OTHER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Landroid/syncml/pim/vcard/VCardComposer;->emailTypeMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HOME"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Landroid/syncml/pim/vcard/VCardComposer;->emailTypeMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WORK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method private appendContactMethodStr(Ljava/util/List;I)V
    .registers 13
    .parameter
    .parameter "version"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, contactMList:Ljava/util/List;,"Ljava/util/List<Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;>;"
    const/4 v9, 0x1

    .line 310
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 311
    .local v2, emailMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-ne p2, v9, :cond_79

    const-string v7, ";"

    move-object v4, v7

    .line 312
    .local v4, joinMark:Ljava/lang/String;
    :goto_b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;

    .line 314
    .local v0, contactMethod:Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;
    iget v7, v0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;->kind:I

    packed-switch v7, :pswitch_data_fc

    goto :goto_f

    .line 316
    :pswitch_21
    const-string v5, "INTERNET"

    .line 317
    .local v5, mailType:Ljava/lang/String;
    iget-object v7, v0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;->data:Ljava/lang/String;

    invoke-direct {p0, v7}, Landroid/syncml/pim/vcard/VCardComposer;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 318
    new-instance v7, Ljava/lang/Integer;

    iget v8, v0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;->type:I

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 319
    .local v6, methodType:I
    sget-object v7, Landroid/syncml/pim/vcard/VCardComposer;->emailTypeMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 320
    sget-object v7, Landroid/syncml/pim/vcard/VCardComposer;->emailTypeMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #mailType:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 325
    .restart local v5       #mailType:Ljava/lang/String;
    :cond_4e
    :goto_4e
    iget-object v7, v0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;->data:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_73

    .line 326
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;->data:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 329
    :cond_73
    iget-object v7, v0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;->data:Ljava/lang/String;

    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 311
    .end local v0           #contactMethod:Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #joinMark:Ljava/lang/String;
    .end local v5           #mailType:Ljava/lang/String;
    .end local v6           #methodType:I
    :cond_79
    const-string v7, ","

    move-object v4, v7

    goto :goto_b

    .line 321
    .restart local v0       #contactMethod:Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #joinMark:Ljava/lang/String;
    .restart local v5       #mailType:Ljava/lang/String;
    .restart local v6       #methodType:I
    :cond_7d
    sget-object v7, Landroid/syncml/pim/vcard/VCardComposer;->emailTypes:Ljava/util/HashSet;

    iget-object v8, v0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;->label:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 323
    iget-object v7, v0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;->label:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    goto :goto_4e

    .line 333
    .end local v5           #mailType:Ljava/lang/String;
    .end local v6           #methodType:I
    :pswitch_92
    iget-object v7, v0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;->data:Ljava/lang/String;

    invoke-direct {p0, v7}, Landroid/syncml/pim/vcard/VCardComposer;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 334
    iget-object v7, p0, Landroid/syncml/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v8, "ADR;TYPE=POSTAL:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;->data:Ljava/lang/String;

    invoke-direct {p0, v8, p2}, Landroid/syncml/pim/vcard/VCardComposer;->foldingString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/syncml/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 343
    .end local v0           #contactMethod:Landroid/syncml/pim/vcard/ContactStruct$ContactMethod;
    :cond_b3
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_bb
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_fa

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 344
    .local v1, email:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-ne p2, v9, :cond_f2

    .line 345
    iget-object v7, p0, Landroid/syncml/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v8, "EMAIL;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    :goto_d0
    iget-object v8, p0, Landroid/syncml/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/syncml/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bb

    .line 347
    :cond_f2
    iget-object v7, p0, Landroid/syncml/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v8, "EMAIL;TYPE="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d0

    .line 352
    .end local v1           #email:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_fa
    return-void

    .line 314
    nop

    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_21
        :pswitch_92
    .end packed-switch
.end method

.method private appendNameStr(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 243
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v1, "FN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/syncml/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v1, "N:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/syncml/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    return-void
.end method

.method private appendPhoneStr(Ljava/util/List;I)V
    .registers 14
    .parameter
    .parameter "version"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/syncml/pim/vcard/ContactStruct$PhoneData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, phoneList:Ljava/util/List;,"Ljava/util/List<Landroid/syncml/pim/vcard/ContactStruct$PhoneData;>;"
    const/4 v9, 0x1

    const-string v10, ","

    const-string v8, ";"

    .line 257
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 258
    .local v3, numMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-ne p2, v9, :cond_6a

    const-string v6, ";"

    move-object v1, v8

    .line 260
    .local v1, joinMark:Ljava/lang/String;
    :goto_f
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/syncml/pim/vcard/ContactStruct$PhoneData;

    .line 262
    .local v4, phone:Landroid/syncml/pim/vcard/ContactStruct$PhoneData;
    iget-object v6, v4, Landroid/syncml/pim/vcard/ContactStruct$PhoneData;->data:Ljava/lang/String;

    invoke-direct {p0, v6}, Landroid/syncml/pim/vcard/VCardComposer;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 263
    invoke-direct {p0, v4}, Landroid/syncml/pim/vcard/VCardComposer;->getPhoneTypeStr(Landroid/syncml/pim/vcard/ContactStruct$PhoneData;)Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, type:Ljava/lang/String;
    const/4 v6, 0x2

    if-ne p2, v6, :cond_3f

    const-string v6, ";"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3f

    .line 265
    const-string v6, ";"

    const-string v6, ","

    invoke-virtual {v5, v8, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 267
    :cond_3f
    iget-object v6, v4, Landroid/syncml/pim/vcard/ContactStruct$PhoneData;->data:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_64

    .line 268
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Landroid/syncml/pim/vcard/ContactStruct$PhoneData;->data:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 270
    :cond_64
    iget-object v6, v4, Landroid/syncml/pim/vcard/ContactStruct$PhoneData;->data:Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 258
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #joinMark:Ljava/lang/String;
    .end local v4           #phone:Landroid/syncml/pim/vcard/ContactStruct$PhoneData;
    .end local v5           #type:Ljava/lang/String;
    :cond_6a
    const-string v6, ","

    move-object v1, v10

    goto :goto_f

    .line 274
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #joinMark:Ljava/lang/String;
    :cond_6e
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_76
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 275
    .local v2, num:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-ne p2, v9, :cond_ad

    .line 276
    iget-object v6, p0, Landroid/syncml/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v7, "TEL;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :goto_8b
    iget-object v7, p0, Landroid/syncml/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/syncml/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_76

    .line 278
    :cond_ad
    iget-object v6, p0, Landroid/syncml/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v7, "TEL;TYPE="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    .line 283
    .end local v2           #num:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b5
    return-void
.end method

.method private appendPhotoStr([BLjava/lang/String;I)V
    .registers 11
    .parameter "bytes"
    .parameter "type"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 195
    :try_start_1
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {p1, v5}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v4, p3}, Landroid/syncml/pim/vcard/VCardComposer;->foldingString(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_55

    move-result-object v3

    .line 201
    .local v3, value:Ljava/lang/String;
    invoke-direct {p0, p2}, Landroid/syncml/pim/vcard/VCardComposer;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JPEG"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_61

    .line 202
    :cond_21
    const-string p2, "JPEG"

    .line 217
    :goto_23
    iget-object v4, p0, Landroid/syncml/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v5, "LOGO;TYPE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    if-ne p3, v6, :cond_97

    .line 219
    const-string v1, ";ENCODING=BASE64:"

    .line 220
    .local v1, encodingStr:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/syncml/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 226
    :goto_45
    iget-object v4, p0, Landroid/syncml/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/syncml/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .end local v1           #encodingStr:Ljava/lang/String;
    :cond_54
    return-void

    .line 197
    .end local v3           #value:Ljava/lang/String;
    :catch_55
    move-exception v4

    move-object v0, v4

    .line 198
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Landroid/syncml/pim/vcard/VCardException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 203
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #value:Ljava/lang/String;
    :cond_61
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GIF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_70

    .line 204
    const-string p2, "GIF"

    goto :goto_23

    .line 205
    :cond_70
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BMP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_7f

    .line 206
    const-string p2, "BMP"

    goto :goto_23

    .line 209
    :cond_7f
    const-string v4, "/"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 210
    .local v2, indexOfSlash:I
    if-ltz v2, :cond_92

    .line 211
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    goto :goto_23

    .line 213
    :cond_92
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    goto :goto_23

    .line 221
    .end local v2           #indexOfSlash:I
    :cond_97
    const/4 v4, 0x2

    if-ne p3, v4, :cond_54

    .line 222
    const-string v1, ";ENCODING=b:"

    .restart local v1       #encodingStr:Ljava/lang/String;
    goto :goto_45
.end method

.method private foldingString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .parameter "str"
    .parameter "version"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string v2, "\n"

    .line 163
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 164
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 171
    :goto_17
    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 172
    if-ne p2, v3, :cond_3e

    .line 173
    const-string v0, "\n"

    const-string v0, "\r\n "

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    :goto_29
    return-object v0

    .line 165
    :cond_2a
    const-string v0, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_17

    :cond_3c
    move-object v0, v5

    .line 168
    goto :goto_29

    .line 174
    :cond_3e
    if-ne p2, v4, :cond_49

    .line 175
    const-string v0, "\n"

    const-string v0, "\n "

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_49
    move-object v0, v5

    .line 177
    goto :goto_29
.end method

.method private getPhoneTypeStr(Landroid/syncml/pim/vcard/ContactStruct$PhoneData;)Ljava/lang/String;
    .registers 7
    .parameter "phone"

    .prologue
    .line 287
    iget v1, p1, Landroid/syncml/pim/vcard/ContactStruct$PhoneData;->type:I

    .line 290
    .local v1, phoneType:I
    sget-object v3, Landroid/syncml/pim/vcard/VCardComposer;->phoneTypeMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 291
    sget-object v3, Landroid/syncml/pim/vcard/VCardComposer;->phoneTypeMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 303
    .local v2, typeStr:Ljava/lang/String;
    :goto_1a
    return-object v2

    .line 292
    .end local v2           #typeStr:Ljava/lang/String;
    :cond_1b
    if-nez v1, :cond_49

    .line 293
    iget-object v3, p1, Landroid/syncml/pim/vcard/ContactStruct$PhoneData;->label:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, label:Ljava/lang/String;
    sget-object v3, Landroid/syncml/pim/vcard/VCardComposer;->phoneTypes:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    const-string v3, "X-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 295
    :cond_33
    move-object v2, v0

    .restart local v2       #typeStr:Ljava/lang/String;
    goto :goto_1a

    .line 297
    .end local v2           #typeStr:Ljava/lang/String;
    :cond_35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "X-CUSTOM-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #typeStr:Ljava/lang/String;
    goto :goto_1a

    .line 301
    .end local v0           #label:Ljava/lang/String;
    .end local v2           #typeStr:Ljava/lang/String;
    :cond_49
    const-string v2, "VOICE"

    .restart local v2       #typeStr:Ljava/lang/String;
    goto :goto_1a
.end method

.method private isNull(Ljava/lang/String;)Z
    .registers 4
    .parameter "str"

    .prologue
    .line 230
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 231
    :cond_e
    const/4 v0, 0x1

    .line 233
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public createVCard(Landroid/syncml/pim/vcard/ContactStruct;I)Ljava/lang/String;
    .registers 7
    .parameter "struct"
    .parameter "vcardversion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/syncml/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/syncml/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    .line 99
    iget-object v0, p1, Landroid/syncml/pim/vcard/ContactStruct;->name:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v0, p1, Landroid/syncml/pim/vcard/ContactStruct;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 100
    :cond_1b
    new-instance v0, Landroid/syncml/pim/vcard/VCardException;

    const-string v1, " struct.name MUST have value."

    invoke-direct {v0, v1}, Landroid/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_23
    if-ne p2, v3, :cond_f0

    .line 103
    const-string v0, "\r\n"

    iput-object v0, p0, Landroid/syncml/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    .line 111
    :goto_29
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v1, "BEGIN:VCARD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/syncml/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    if-ne p2, v3, :cond_101

    .line 114
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v1, "VERSION:2.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/syncml/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :goto_45
    iget-object v0, p1, Landroid/syncml/pim/vcard/ContactStruct;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/syncml/pim/vcard/VCardComposer;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 120
    iget-object v0, p1, Landroid/syncml/pim/vcard/ContactStruct;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/syncml/pim/vcard/VCardComposer;->appendNameStr(Ljava/lang/String;)V

    .line 123
    :cond_52
    iget-object v0, p1, Landroid/syncml/pim/vcard/ContactStruct;->company:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/syncml/pim/vcard/VCardComposer;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 124
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v1, "ORG:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/syncml/pim/vcard/ContactStruct;->company:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/syncml/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_6d
    iget-object v0, p1, Landroid/syncml/pim/vcard/ContactStruct;->notes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a0

    iget-object v0, p1, Landroid/syncml/pim/vcard/ContactStruct;->notes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/syncml/pim/vcard/VCardComposer;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a0

    .line 128
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v1, "NOTE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p1, Landroid/syncml/pim/vcard/ContactStruct;->notes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Landroid/syncml/pim/vcard/VCardComposer;->foldingString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/syncml/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_a0
    iget-object v0, p1, Landroid/syncml/pim/vcard/ContactStruct;->title:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/syncml/pim/vcard/VCardComposer;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_bf

    .line 133
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v1, "TITLE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/syncml/pim/vcard/ContactStruct;->title:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Landroid/syncml/pim/vcard/VCardComposer;->foldingString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/syncml/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_bf
    iget-object v0, p1, Landroid/syncml/pim/vcard/ContactStruct;->photoBytes:[B

    if-eqz v0, :cond_ca

    .line 138
    iget-object v0, p1, Landroid/syncml/pim/vcard/ContactStruct;->photoBytes:[B

    iget-object v1, p1, Landroid/syncml/pim/vcard/ContactStruct;->photoType:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p2}, Landroid/syncml/pim/vcard/VCardComposer;->appendPhotoStr([BLjava/lang/String;I)V

    .line 141
    :cond_ca
    iget-object v0, p1, Landroid/syncml/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    if-eqz v0, :cond_d3

    .line 142
    iget-object v0, p1, Landroid/syncml/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    invoke-direct {p0, v0, p2}, Landroid/syncml/pim/vcard/VCardComposer;->appendPhoneStr(Ljava/util/List;I)V

    .line 145
    :cond_d3
    iget-object v0, p1, Landroid/syncml/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    if-eqz v0, :cond_dc

    .line 146
    iget-object v0, p1, Landroid/syncml/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    invoke-direct {p0, v0, p2}, Landroid/syncml/pim/vcard/VCardComposer;->appendContactMethodStr(Ljava/util/List;I)V

    .line 149
    :cond_dc
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v1, "END:VCARD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/syncml/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 104
    :cond_f0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_f9

    .line 105
    const-string v0, "\n"

    iput-object v0, p0, Landroid/syncml/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    goto/16 :goto_29

    .line 107
    :cond_f9
    new-instance v0, Landroid/syncml/pim/vcard/VCardException;

    const-string v1, " version not match VERSION_VCARD21 or VERSION_VCARD30."

    invoke-direct {v0, v1}, Landroid/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_101
    iget-object v0, p0, Landroid/syncml/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v1, "VERSION:3.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/syncml/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_45
.end method
