.class public Lcom/android/phone/SimContacts;
.super Lcom/android/phone/SortedADNList;
.source "SimContacts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SimContacts$ImportAllThread;
    }
.end annotation


# static fields
.field private static final DUPLICATE_POPUP_ID:I = 0xc8

.field private static final IMPORTALL_KEY:Ljava/lang/String; = "import"

.field private static final IMPORT_ONE_NAME_KEY:Ljava/lang/String; = "sim_name"

.field private static final IMPORT_ONE_NUMBER_KEY:Ljava/lang/String; = "sim_number"

.field private static final IMPORT_ONE_POSITION_KEY:Ljava/lang/String; = "position"

.field private static final MENU_DELETE_ONE:I = 0x3

.field private static final MENU_IMPORT_ALL:I = 0x2

.field private static final MENU_IMPORT_ONE:I = 0x1

.field private static volatile mThread:Lcom/android/phone/SimContacts$ImportAllThread;


# instance fields
.field private mImportOneContactName:Ljava/lang/String;

.field private mImportOneContactNumber:Ljava/lang/String;

.field private mImportOneContactPosition:I

.field private mIsImportAll:Z

.field private mMIImportAll:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/phone/SortedADNList;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SimContacts;->mIsImportAll:Z

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SimContacts;Ljava/lang/String;[Ljava/lang/Object;)Landroid/net/Uri;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/phone/SimContacts;->parseName(Ljava/lang/String;[Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/SimContacts$ImportAllThread;)Lcom/android/phone/SimContacts$ImportAllThread;
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    sput-object p0, Lcom/android/phone/SimContacts;->mThread:Lcom/android/phone/SimContacts$ImportAllThread;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/phone/SimContacts;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mImportOneContactName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/SimContacts;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mImportOneContactNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/SimContacts;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/phone/SimContacts;->importOne(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkDuplicate(Ljava/lang/String;)Z
    .registers 14
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 504
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 505
    .local v9, sqlMaker:Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    .line 506
    .local v8, length:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_b
    if-ge v7, v8, :cond_23

    .line 507
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    .line 508
    .local v10, text:C
    const/16 v1, 0x27

    if-ne v10, v1, :cond_20

    .line 509
    add-int/lit8 v1, v7, 0x1

    const-string v3, "\'\'"

    invoke-virtual {v9, v7, v1, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    add-int/lit8 v7, v7, 0x1

    .line 511
    add-int/lit8 v8, v8, 0x1

    .line 506
    :cond_20
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 514
    .end local v10           #text:C
    :cond_23
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 515
    .local v11, whereArg:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 517
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "name ASC"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 525
    .local v6, checkCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_5c

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5c

    .line 526
    if-eqz v6, :cond_5a

    .line 527
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 528
    :cond_5a
    const/4 v1, 0x1

    .line 533
    :goto_5b
    return v1

    .line 531
    :cond_5c
    if-eqz v6, :cond_61

    .line 532
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 533
    :cond_61
    const/4 v1, 0x0

    goto :goto_5b
.end method

.method private importOne(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "name"
    .parameter "number"

    .prologue
    const/4 v7, 0x0

    const-string v8, "ADNList"

    .line 580
    if-eqz p1, :cond_7

    if-nez p2, :cond_8

    .line 615
    :cond_7
    :goto_7
    return-void

    .line 584
    :cond_8
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 585
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 586
    .local v2, map:Landroid/content/ContentValues;
    const/4 v5, 0x2

    new-array v3, v5, [Ljava/lang/Object;

    .line 588
    .local v3, parsed:[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 590
    .local v4, personUrl:Landroid/net/Uri;
    :try_start_15
    invoke-direct {p0, p1, v3}, Lcom/android/phone/SimContacts;->parseName(Ljava/lang/String;[Ljava/lang/Object;)Landroid/net/Uri;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_45

    move-result-object v4

    .line 599
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 600
    const-string v6, "name"

    const/4 v5, 0x0

    aget-object v5, v3, v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-static {v0, v2}, Landroid/provider/Contacts$People;->createPersonInMyContactsGroup(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 602
    if-nez v4, :cond_6f

    .line 603
    const-string v5, "ADNList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error inserting person "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 592
    :catch_45
    move-exception v1

    .line 593
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "ADNList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "importOne error parseName("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 606
    .end local v1           #e:Ljava/lang/Exception;
    :cond_6f
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 607
    const-string v5, "number"

    invoke-virtual {v2, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string v6, "type"

    const/4 v5, 0x1

    aget-object v5, v3, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 609
    const-string v5, "phones"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 613
    iput-object v7, p0, Lcom/android/phone/SimContacts;->mImportOneContactName:Ljava/lang/String;

    .line 614
    iput-object v7, p0, Lcom/android/phone/SimContacts;->mImportOneContactNumber:Ljava/lang/String;

    goto/16 :goto_7
.end method

.method private parseName(Ljava/lang/String;[Ljava/lang/Object;)Landroid/net/Uri;
    .registers 11
    .parameter "name"
    .parameter "parsed"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 626
    const/4 v2, 0x2

    .line 629
    .local v2, type:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 630
    .local v1, nameLen:I
    sub-int v3, v1, v5

    if-ltz v3, :cond_2b

    sub-int v3, v1, v5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_2b

    .line 631
    sub-int v3, v1, v7

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 632
    .local v0, c:C
    const/16 v3, 0x57

    if-ne v0, v3, :cond_35

    .line 633
    const/4 v2, 0x3

    .line 641
    :cond_25
    :goto_25
    sub-int v3, v1, v5

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 643
    .end local v0           #c:C
    :cond_2b
    aput-object p1, p2, v6

    .line 644
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v7

    .line 646
    const/4 v3, 0x0

    return-object v3

    .line 634
    .restart local v0       #c:C
    :cond_35
    const/16 v3, 0x4d

    if-ne v0, v3, :cond_3b

    .line 635
    const/4 v2, 0x2

    goto :goto_25

    .line 636
    :cond_3b
    const/16 v3, 0x48

    if-ne v0, v3, :cond_41

    .line 637
    const/4 v2, 0x1

    goto :goto_25

    .line 638
    :cond_41
    const/16 v3, 0x4f

    if-ne v0, v3, :cond_25

    .line 639
    const/4 v2, 0x2

    goto :goto_25
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 10
    .parameter "item"

    .prologue
    const-string v7, "ADNList"

    .line 433
    const/4 v3, 0x0

    .line 434
    .local v3, menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_80

    .line 471
    :cond_a
    :goto_a
    :pswitch_a
    invoke-super {p0, p1}, Lcom/android/phone/SortedADNList;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    :goto_e
    return v5

    .line 437
    :pswitch_f
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v3

    .line 438
    instance-of v5, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v5, :cond_a

    .line 439
    move-object v0, v3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v5, v0

    iget v4, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 440
    .local v4, position:I
    iget-object v5, p0, Lcom/android/phone/SimContacts;->mADNList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/SortedADNList$ADNItem;

    .line 441
    .local v2, listitem:Lcom/android/phone/SortedADNList$ADNItem;
    iget-object v5, v2, Lcom/android/phone/SortedADNList$ADNItem;->mName:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/phone/SimContacts;->mImportOneContactName:Ljava/lang/String;

    .line 442
    iget-object v5, v2, Lcom/android/phone/SortedADNList$ADNItem;->mNumber:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/phone/SimContacts;->mImportOneContactNumber:Ljava/lang/String;

    .line 443
    iget-object v5, p0, Lcom/android/phone/SimContacts;->mImportOneContactName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/phone/SimContacts;->checkDuplicate(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 444
    const/16 v5, 0xc8

    invoke-virtual {p0, v5}, Lcom/android/phone/SimContacts;->showDialog(I)V

    goto :goto_a

    .line 447
    :cond_3b
    :try_start_3b
    iget-object v5, p0, Lcom/android/phone/SimContacts;->mImportOneContactName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/SimContacts;->mImportOneContactNumber:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/phone/SimContacts;->importOne(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const v5, 0x7f0901e2

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4d} :catch_4e

    goto :goto_a

    .line 449
    :catch_4e
    move-exception v5

    move-object v1, v5

    .line 450
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "ADNList"

    const-string v5, "contact save fail."

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 457
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #listitem:Lcom/android/phone/SortedADNList$ADNItem;
    .end local v4           #position:I
    :pswitch_58
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v3

    .line 458
    instance-of v5, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v5, :cond_a

    .line 459
    move-object v0, v3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v5, v0

    iget v4, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 462
    .restart local v4       #position:I
    :try_start_66
    invoke-virtual {p0, v4}, Lcom/android/phone/SimContacts;->deleteItem(I)V

    .line 463
    const v5, 0x7f0901e3

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_74} :catch_76

    .line 467
    :goto_74
    const/4 v5, 0x1

    goto :goto_e

    .line 464
    :catch_76
    move-exception v5

    move-object v1, v5

    .line 465
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v5, "ADNList"

    const-string v5, "contact delete fail."

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 434
    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_f
        :pswitch_a
        :pswitch_58
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    const/4 v2, -0x1

    .line 91
    invoke-super {p0, p1}, Lcom/android/phone/SortedADNList;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/SimContacts;->registerForContextMenu(Landroid/view/View;)V

    .line 93
    const-string v0, "SimContacts"

    const-string v1, " [[[[     onCreate     ]]]]  "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iput v2, p0, Lcom/android/phone/SimContacts;->mImportOneContactPosition:I

    .line 97
    if-eqz p1, :cond_36

    .line 98
    const-string v0, "import"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/SimContacts;->mIsImportAll:Z

    .line 99
    const-string v0, "position"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/SimContacts;->mImportOneContactPosition:I

    .line 100
    const-string v0, "sim_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SimContacts;->mImportOneContactName:Ljava/lang/String;

    .line 101
    const-string v0, "sim_number"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SimContacts;->mImportOneContactNumber:Ljava/lang/String;

    .line 104
    :cond_36
    sget-object v0, Lcom/android/phone/SimContacts;->mThread:Lcom/android/phone/SimContacts$ImportAllThread;

    if-eqz v0, :cond_43

    .line 105
    iget-boolean v0, p0, Lcom/android/phone/SimContacts;->mIsImportAll:Z

    if-eqz v0, :cond_43

    .line 106
    sget-object v0, Lcom/android/phone/SimContacts;->mThread:Lcom/android/phone/SimContacts$ImportAllThread;

    invoke-virtual {v0, p0}, Lcom/android/phone/SimContacts$ImportAllThread;->createProgressPopup(Landroid/app/Activity;)V

    .line 109
    :cond_43
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 10
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v5, 0x0

    .line 539
    instance-of v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v3, :cond_2b

    .line 540
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    .line 542
    .local v1, itemInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 543
    .local v2, textView:Landroid/widget/TextView;
    if-eqz v2, :cond_1d

    .line 544
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 546
    :cond_1d
    const/4 v3, 0x1

    const v4, 0x7f0901da

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 547
    const/4 v3, 0x3

    const v4, 0x7f090169

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 549
    .end local v1           #itemInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v2           #textView:Landroid/widget/TextView;
    :cond_2b
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 478
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_2e

    .line 479
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0901e7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0901e5

    new-instance v3, Lcom/android/phone/SimContacts$1;

    invoke-direct {v3, p0}, Lcom/android/phone/SimContacts$1;-><init>(Lcom/android/phone/SimContacts;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0901e6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 494
    .local v0, ret:Landroid/app/AlertDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    move-object v1, v0

    .line 497
    .end local v0           #ret:Landroid/app/AlertDialog;
    :goto_2d
    return-object v1

    :cond_2e
    invoke-super {p0, p1}, Lcom/android/phone/SortedADNList;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_2d
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 388
    invoke-super {p0, p1}, Lcom/android/phone/SortedADNList;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 389
    const/4 v0, 0x2

    const v1, 0x7f0901db

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SimContacts;->mMIImportAll:Landroid/view/MenuItem;

    .line 390
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 159
    const-string v0, "SimContacts"

    const-string v1, " [[[[     onDestroy     ]]]]  "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object v0, Lcom/android/phone/SimContacts;->mThread:Lcom/android/phone/SimContacts$ImportAllThread;

    if-eqz v0, :cond_10

    .line 163
    sget-object v0, Lcom/android/phone/SimContacts;->mThread:Lcom/android/phone/SimContacts$ImportAllThread;

    invoke-virtual {v0}, Lcom/android/phone/SimContacts$ImportAllThread;->enterDestroy()V

    .line 165
    :cond_10
    invoke-super {p0}, Lcom/android/phone/SortedADNList;->onDestroy()V

    .line 166
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    .line 651
    packed-switch p1, :pswitch_data_48

    .line 672
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/phone/SortedADNList;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    :goto_8
    return v4

    .line 653
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getSelectedItemPosition()I

    move-result v3

    .line 654
    .local v3, position:I
    iget-object v4, p0, Lcom/android/phone/SimContacts;->mADNList:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/SimContacts;->mADNList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 655
    iget-object v4, p0, Lcom/android/phone/SimContacts;->mADNList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/SortedADNList$ADNItem;

    .line 656
    .local v1, item:Lcom/android/phone/SortedADNList$ADNItem;
    iget-object v2, v1, Lcom/android/phone/SortedADNList$ADNItem;->mNumber:Ljava/lang/String;

    .line 657
    .local v2, number:Ljava/lang/String;
    if-eqz v2, :cond_2b

    invoke-static {v2}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2d

    :cond_2b
    move v4, v7

    .line 660
    goto :goto_8

    .line 662
    :cond_2d
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    const-string v5, "tel"

    const/4 v6, 0x0

    invoke-static {v5, v2, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 664
    .local v0, intent:Landroid/content/Intent;
    const/high16 v4, 0x1080

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 666
    invoke-virtual {p0, v0}, Lcom/android/phone/SimContacts;->startActivity(Landroid/content/Intent;)V

    .line 667
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->finish()V

    move v4, v7

    .line 668
    goto :goto_8

    .line 651
    :pswitch_data_48
    .packed-switch 0x5
        :pswitch_9
    .end packed-switch
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 10
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 555
    iget-object v2, p0, Lcom/android/phone/SimContacts;->mADNList:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/SortedADNList$ADNItem;

    .line 556
    .local v1, listitem:Lcom/android/phone/SortedADNList$ADNItem;
    iget-object v2, v1, Lcom/android/phone/SortedADNList$ADNItem;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/SimContacts;->mImportOneContactName:Ljava/lang/String;

    .line 557
    iget-object v2, v1, Lcom/android/phone/SortedADNList$ADNItem;->mNumber:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/SimContacts;->mImportOneContactNumber:Ljava/lang/String;

    .line 558
    iget-object v2, p0, Lcom/android/phone/SimContacts;->mImportOneContactName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/SimContacts;->checkDuplicate(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 559
    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Lcom/android/phone/SimContacts;->showDialog(I)V

    .line 568
    :goto_1d
    return-void

    .line 562
    :cond_1e
    :try_start_1e
    iget-object v2, p0, Lcom/android/phone/SimContacts;->mImportOneContactName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/SimContacts;->mImportOneContactNumber:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/phone/SimContacts;->importOne(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const v2, 0x7f0901e2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_30} :catch_31

    goto :goto_1d

    .line 564
    :catch_31
    move-exception v2

    move-object v0, v2

    .line 565
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ADNList"

    const-string v3, "contact save fail."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 411
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_3e

    .line 428
    invoke-super {p0, p1}, Lcom/android/phone/SortedADNList;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_c
    return v1

    .line 413
    :pswitch_d
    iput-boolean v3, p0, Lcom/android/phone/SimContacts;->mIsImportAll:Z

    .line 414
    new-instance v1, Lcom/android/phone/SimContacts$ImportAllThread;

    invoke-direct {v1, p0}, Lcom/android/phone/SimContacts$ImportAllThread;-><init>(Lcom/android/phone/SimContacts;)V

    sput-object v1, Lcom/android/phone/SimContacts;->mThread:Lcom/android/phone/SimContacts$ImportAllThread;

    .line 415
    sget-object v1, Lcom/android/phone/SimContacts;->mThread:Lcom/android/phone/SimContacts$ImportAllThread;

    iget-object v2, p0, Lcom/android/phone/SimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/phone/SimContacts$ImportAllThread;->setCursor(I)V

    .line 416
    sget-object v1, Lcom/android/phone/SimContacts;->mThread:Lcom/android/phone/SimContacts$ImportAllThread;

    iget-object v2, p0, Lcom/android/phone/SimContacts;->mADNList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/phone/SimContacts$ImportAllThread;->setList(Ljava/util/ArrayList;)V

    .line 417
    sget-object v1, Lcom/android/phone/SimContacts;->mThread:Lcom/android/phone/SimContacts$ImportAllThread;

    invoke-virtual {v1, p0}, Lcom/android/phone/SimContacts$ImportAllThread;->createProgressPopup(Landroid/app/Activity;)V

    .line 418
    sget-object v1, Lcom/android/phone/SimContacts;->mThread:Lcom/android/phone/SimContacts$ImportAllThread;

    invoke-virtual {v1}, Lcom/android/phone/SimContacts$ImportAllThread;->start()V

    .line 421
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_IMPORTED_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/phone/SimContacts;->sendBroadcast(Landroid/content/Intent;)V

    move v1, v3

    .line 425
    goto :goto_c

    .line 411
    :pswitch_data_3e
    .packed-switch 0x2
        :pswitch_d
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 130
    invoke-super {p0}, Lcom/android/phone/SortedADNList;->onPause()V

    .line 131
    const-string v0, "SimContacts"

    const-string v1, " [[[[     onPause     ]]]]  "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-object v0, Lcom/android/phone/SimContacts;->mThread:Lcom/android/phone/SimContacts$ImportAllThread;

    if-eqz v0, :cond_13

    .line 136
    sget-object v0, Lcom/android/phone/SimContacts;->mThread:Lcom/android/phone/SimContacts$ImportAllThread;

    invoke-virtual {v0}, Lcom/android/phone/SimContacts$ImportAllThread;->onPause()V

    .line 144
    :cond_13
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/SimContacts;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_c
    sget-object v0, Lcom/android/phone/SimContacts;->mThread:Lcom/android/phone/SimContacts$ImportAllThread;

    if-eqz v0, :cond_1b

    .line 399
    :cond_10
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mMIImportAll:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 403
    :goto_16
    invoke-super {p0, p1}, Lcom/android/phone/SortedADNList;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 401
    :cond_1b
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mMIImportAll:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_16
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 113
    invoke-super {p0}, Lcom/android/phone/SortedADNList;->onResume()V

    .line 114
    const-string v0, "SimContacts"

    const-string v1, " [[[[     onResume     ]]]]  "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-object v0, Lcom/android/phone/SimContacts;->mThread:Lcom/android/phone/SimContacts$ImportAllThread;

    if-eqz v0, :cond_13

    .line 117
    sget-object v0, Lcom/android/phone/SimContacts;->mThread:Lcom/android/phone/SimContacts$ImportAllThread;

    invoke-virtual {v0}, Lcom/android/phone/SimContacts$ImportAllThread;->onResume()V

    .line 119
    :cond_13
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->query()V

    .line 126
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 677
    const-string v0, "import"

    iget-boolean v1, p0, Lcom/android/phone/SimContacts;->mIsImportAll:Z

    if-eqz v1, :cond_2d

    sget-object v1, Lcom/android/phone/SimContacts;->mThread:Lcom/android/phone/SimContacts$ImportAllThread;

    if-eqz v1, :cond_2d

    sget-object v1, Lcom/android/phone/SimContacts;->mThread:Lcom/android/phone/SimContacts$ImportAllThread;

    iget-boolean v1, v1, Lcom/android/phone/SimContacts$ImportAllThread;->mFinished:Z

    if-nez v1, :cond_2d

    const/4 v1, 0x1

    :goto_11
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 678
    const-string v0, "position"

    iget v1, p0, Lcom/android/phone/SimContacts;->mImportOneContactPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 679
    const-string v0, "sim_name"

    iget-object v1, p0, Lcom/android/phone/SimContacts;->mImportOneContactName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v0, "sim_number"

    iget-object v1, p0, Lcom/android/phone/SimContacts;->mImportOneContactNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-super {p0, p1}, Lcom/android/phone/SortedADNList;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 682
    return-void

    .line 677
    :cond_2d
    const/4 v1, 0x0

    goto :goto_11
.end method

.method protected resolveIntent()Landroid/net/Uri;
    .registers 4

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 378
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "content://icc/adn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 379
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 381
    const-string v1, "index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/phone/SimContacts;->mInitialSelection:I

    .line 383
    :cond_24
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
