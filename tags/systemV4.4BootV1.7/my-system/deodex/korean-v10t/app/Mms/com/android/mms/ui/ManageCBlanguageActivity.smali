.class public Lcom/android/mms/ui/ManageCBlanguageActivity;
.super Landroid/app/ListActivity;
.source "ManageCBlanguageActivity.java"


# static fields
.field private static final CBLANGUAGE_PROJECTION:[Ljava/lang/String; = null

.field private static final MENU_DESELECT_ALL:I = 0x2

.field private static final MENU_SELECT_ALL:I = 0x1

.field static final TAG:Ljava/lang/String; = "ManageCBlanguageActivity"

.field private static indexArabic:I

.field private static indexBulgarian:I

.field private static indexChinesesi:I

.field private static indexChinesetr:I

.field private static indexCzech:I

.field private static indexDanish:I

.field private static indexDeutsch:I

.field private static indexDutch:I

.field private static indexEnglish:I

.field private static indexFrench:I

.field private static indexGreek:I

.field private static indexHebrew:I

.field private static indexHungarian:I

.field private static indexItaliano:I

.field private static indexKorean:I

.field private static indexPolish:I

.field private static indexPortuguese:I

.field private static indexRomanian:I

.field private static indexRussian:I

.field private static indexSerbocroat:I

.field private static indexSlovak:I

.field private static indexSlovenian:I

.field private static indexSpanish:I

.field private static indexSwedish:I

.field private static indexTurkish:I

.field private static isArabicCheck:I

.field private static isBulgarianCheck:I

.field private static isChinesesiCheck:I

.field private static isChinesetrCheck:I

.field private static isCzechCheck:I

.field private static isDanishCheck:I

.field private static isDeutschCheck:I

.field private static isDutchCheck:I

.field private static isEnglishCheck:I

.field private static isFrenchCheck:I

.field private static isGreekCheck:I

.field private static isHebrewCheck:I

.field private static isHungarianCheck:I

.field private static isItalianoCheck:I

.field private static isKoreanCheck:I

.field private static isPolishCheck:I

.field private static isPortugueseCheck:I

.field private static isRomanianCheck:I

.field private static isRussianCheck:I

.field private static isSerbocroatCheck:I

.field private static isSlovakCheck:I

.field private static isSlovenianCheck:I

.field private static isSpanishCheck:I

.field private static isSwedishCheck:I

.field private static isTurkishCheck:I


# instance fields
.field private CBLANGUAGES:[Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field mUriInit:Landroid/net/Uri;

.field private mccCode:Ljava/lang/String;

.field private operatorCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    sput v3, Lcom/android/mms/ui/ManageCBlanguageActivity;->isEnglishCheck:I

    .line 34
    sput v3, Lcom/android/mms/ui/ManageCBlanguageActivity;->isItalianoCheck:I

    .line 35
    sput v3, Lcom/android/mms/ui/ManageCBlanguageActivity;->isDeutschCheck:I

    .line 36
    sput v3, Lcom/android/mms/ui/ManageCBlanguageActivity;->isFrenchCheck:I

    .line 37
    sput v3, Lcom/android/mms/ui/ManageCBlanguageActivity;->isSpanishCheck:I

    .line 38
    sput v3, Lcom/android/mms/ui/ManageCBlanguageActivity;->isGreekCheck:I

    .line 39
    sput v3, Lcom/android/mms/ui/ManageCBlanguageActivity;->isDutchCheck:I

    .line 40
    sput v3, Lcom/android/mms/ui/ManageCBlanguageActivity;->isPortugueseCheck:I

    .line 41
    sput v3, Lcom/android/mms/ui/ManageCBlanguageActivity;->isSwedishCheck:I

    .line 42
    sput v3, Lcom/android/mms/ui/ManageCBlanguageActivity;->isDanishCheck:I

    .line 43
    sput v3, Lcom/android/mms/ui/ManageCBlanguageActivity;->isRomanianCheck:I

    .line 44
    sput v3, Lcom/android/mms/ui/ManageCBlanguageActivity;->isTurkishCheck:I

    .line 45
    sput v3, Lcom/android/mms/ui/ManageCBlanguageActivity;->isHungarianCheck:I

    .line 46
    sput v3, Lcom/android/mms/ui/ManageCBlanguageActivity;->isSlovakCheck:I

    .line 47
    sput v3, Lcom/android/mms/ui/ManageCBlanguageActivity;->isCzechCheck:I

    .line 48
    sput v3, Lcom/android/mms/ui/ManageCBlanguageActivity;->isSerbocroatCheck:I

    .line 49
    sput v3, Lcom/android/mms/ui/ManageCBlanguageActivity;->isBulgarianCheck:I

    .line 50
    sput v3, Lcom/android/mms/ui/ManageCBlanguageActivity;->isPolishCheck:I

    .line 51
    sput v3, Lcom/android/mms/ui/ManageCBlanguageActivity;->isSlovenianCheck:I

    .line 52
    sput v3, Lcom/android/mms/ui/ManageCBlanguageActivity;->isChinesetrCheck:I

    .line 53
    sput v3, Lcom/android/mms/ui/ManageCBlanguageActivity;->isChinesesiCheck:I

    .line 54
    sput v3, Lcom/android/mms/ui/ManageCBlanguageActivity;->isKoreanCheck:I

    .line 56
    sput v3, Lcom/android/mms/ui/ManageCBlanguageActivity;->isHebrewCheck:I

    .line 57
    sput v3, Lcom/android/mms/ui/ManageCBlanguageActivity;->isArabicCheck:I

    .line 58
    sput v3, Lcom/android/mms/ui/ManageCBlanguageActivity;->isRussianCheck:I

    .line 60
    sput v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexEnglish:I

    .line 61
    sput v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexItaliano:I

    .line 62
    sput v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexDeutsch:I

    .line 63
    sput v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexFrench:I

    .line 64
    sput v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexSpanish:I

    .line 65
    sput v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexGreek:I

    .line 66
    sput v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexDutch:I

    .line 67
    sput v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexPortuguese:I

    .line 68
    sput v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexSwedish:I

    .line 69
    sput v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexDanish:I

    .line 70
    sput v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexRomanian:I

    .line 71
    sput v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexTurkish:I

    .line 72
    sput v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexHungarian:I

    .line 73
    sput v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexSlovak:I

    .line 74
    sput v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexCzech:I

    .line 75
    sput v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexSerbocroat:I

    .line 76
    sput v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexBulgarian:I

    .line 77
    sput v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexPolish:I

    .line 78
    sput v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexSlovenian:I

    .line 79
    sput v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexChinesetr:I

    .line 80
    sput v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexChinesesi:I

    .line 81
    sput v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexKorean:I

    .line 83
    sput v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexHebrew:I

    .line 84
    sput v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexArabic:I

    .line 85
    sput v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexRussian:I

    .line 95
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "cbmilanguageenglish"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "cbmilanguageitaliano"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "cbmilanguagedeutsch"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "cbmilanguagefrench"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cbmilanguagespanish"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cbmilanguagegreek"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cbmilanguagedutch"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cbmilanguageportuguese"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "cbmilanguageswedish"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "cbmilanguagedanish"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "cbmilanguageromanian"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "cbmilanguageturkish"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "cbmilanguagehungarian"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "cbmilanguageslovak"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "cbmilanguageczech"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "cbmilanguageserbocroat"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "cbmilanguagebularian"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "cbmilanguagepolish"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "cbmilanguageslovenian"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "cbmilanguagechinesetr"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "cbmilanguagechinesesi"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "cbmilanguagekorean"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "cbmilanguagehebrew"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "cbmilanguagearabic"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "cbmilanguagerussian"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->CBLANGUAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const-string v1, ""

    .line 27
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 87
    const-string v0, ""

    iput-object v1, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->operatorCode:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v1, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->countryCode:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v1, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->mccCode:Ljava/lang/String;

    return-void
.end method

.method private doDeselectallAction()V
    .registers 5

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBlanguageActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 502
    .local v2, listViewDesel:Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->CBLANGUAGES:[Ljava/lang/String;

    array-length v0, v3

    .line 503
    .local v0, cblanglengthdesel:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v0, :cond_11

    .line 504
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 503
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 506
    :cond_11
    return-void
.end method

.method private doFirstInserAction()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const-string v5, "content://cblang/languages"

    const-string v4, "ManageCBlanguageActivity"

    .line 521
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->mUriInit:Landroid/net/Uri;

    .line 522
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 524
    .local v0, valuesFirst:Landroid/content/ContentValues;
    const-string v1, "ManageCBlanguageActivity"

    const-string v1, "doFirstInserAction() START "

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const-string v1, "cbmilanguageenglish"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 527
    const-string v1, "cbmilanguageitaliano"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 528
    const-string v1, "cbmilanguagedeutsch"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 529
    const-string v1, "cbmilanguagefrench"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 530
    const-string v1, "cbmilanguagespanish"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 531
    const-string v1, "cbmilanguagegreek"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 532
    const-string v1, "cbmilanguagedutch"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 533
    const-string v1, "cbmilanguageportuguese"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 534
    const-string v1, "cbmilanguageswedish"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 535
    const-string v1, "cbmilanguagedanish"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 536
    const-string v1, "cbmilanguageromanian"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 537
    const-string v1, "cbmilanguageturkish"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 538
    const-string v1, "cbmilanguagehungarian"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 539
    const-string v1, "cbmilanguageslovak"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 540
    const-string v1, "cbmilanguageczech"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 541
    const-string v1, "cbmilanguageserbocroat"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 542
    const-string v1, "cbmilanguagebularian"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 543
    const-string v1, "cbmilanguagepolish"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 544
    const-string v1, "cbmilanguageslovenian"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 545
    const-string v1, "cbmilanguagechinesetr"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 546
    const-string v1, "cbmilanguagechinesesi"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 547
    const-string v1, "cbmilanguagekorean"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 548
    const-string v1, "cbmilanguagehebrew"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 549
    const-string v1, "cbmilanguagearabic"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 550
    const-string v1, "cbmilanguagerussian"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 552
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBlanguageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://cblang/languages"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->mUriInit:Landroid/net/Uri;

    .line 554
    iget-object v1, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->mUriInit:Landroid/net/Uri;

    if-nez v1, :cond_12a

    .line 555
    const-string v1, "ManageCBlanguageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to insert first new language into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "content://cblang/languages"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBlanguageActivity;->finish()V

    .line 559
    :cond_12a
    return-void
.end method

.method private doSaveAction()V
    .registers 13

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v11, "cbmilanguagearabic"

    const-string v10, "cbmilanguagekorean"

    const-string v9, "cbmilanguageenglish"

    .line 561
    const/4 v1, 0x0

    .line 563
    .local v1, mUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBlanguageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://cblang/languages"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 565
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 566
    .local v2, valuesSetting:Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBlanguageActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 569
    .local v0, listViewSave:Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->operatorCode:Ljava/lang/String;

    const-string v4, "Cellcom"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e7

    iget-object v3, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->countryCode:Ljava/lang/String;

    const-string v4, "IL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e7

    .line 570
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 571
    const-string v3, "cbmilanguageenglish"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 576
    :goto_44
    invoke-virtual {v0, v8}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_bf

    .line 577
    const-string v3, "cbmilanguagehebrew"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 582
    :goto_53
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_c9

    .line 583
    const-string v3, "cbmilanguagearabic"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 588
    :goto_63
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_d3

    .line 589
    const-string v3, "cbmilanguagerussian"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 594
    :goto_73
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 595
    const-string v3, "cbmilanguagekorean"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 885
    :goto_83
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBlanguageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://cblang/languages"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 888
    if-nez v1, :cond_64b

    .line 889
    const-string v3, "ManageCBlanguageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to insert new language into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "content://cblang/languages"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBlanguageActivity;->finish()V

    .line 896
    :goto_b4
    return-void

    .line 573
    :cond_b5
    const-string v3, "cbmilanguageenglish"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_44

    .line 579
    :cond_bf
    const-string v3, "cbmilanguagehebrew"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_53

    .line 585
    :cond_c9
    const-string v3, "cbmilanguagearabic"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_63

    .line 591
    :cond_d3
    const-string v3, "cbmilanguagerussian"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_73

    .line 597
    :cond_dd
    const-string v3, "cbmilanguagekorean"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_83

    .line 599
    :cond_e7
    iget-object v3, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->mccCode:Ljava/lang/String;

    const-string v4, "424"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_137

    iget-object v3, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->mccCode:Ljava/lang/String;

    const-string v4, "432"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_137

    iget-object v3, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->mccCode:Ljava/lang/String;

    const-string v4, "410"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_137

    iget-object v3, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->mccCode:Ljava/lang/String;

    const-string v4, "420"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_137

    iget-object v3, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->mccCode:Ljava/lang/String;

    const-string v4, "416"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_137

    iget-object v3, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->mccCode:Ljava/lang/String;

    const-string v4, "417"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_137

    iget-object v3, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->mccCode:Ljava/lang/String;

    const-string v4, "425"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_137

    iget-object v3, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->mccCode:Ljava/lang/String;

    const-string v4, "602"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3eb

    .line 603
    :cond_137
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_2d8

    .line 604
    const-string v3, "cbmilanguageenglish"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 609
    :goto_146
    invoke-virtual {v0, v8}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_2e3

    .line 610
    const-string v3, "cbmilanguageitaliano"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 615
    :goto_155
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_2ee

    .line 616
    const-string v3, "cbmilanguagedeutsch"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 621
    :goto_165
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_2f9

    .line 622
    const-string v3, "cbmilanguagefrench"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 627
    :goto_175
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_304

    .line 628
    const-string v3, "cbmilanguagespanish"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 633
    :goto_185
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_30f

    .line 634
    const-string v3, "cbmilanguagegreek"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 639
    :goto_195
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_31a

    .line 640
    const-string v3, "cbmilanguagedutch"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 645
    :goto_1a5
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_325

    .line 646
    const-string v3, "cbmilanguageportuguese"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 651
    :goto_1b5
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_330

    .line 652
    const-string v3, "cbmilanguageswedish"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 657
    :goto_1c6
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_33b

    .line 658
    const-string v3, "cbmilanguagedanish"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 663
    :goto_1d7
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_346

    .line 664
    const-string v3, "cbmilanguageromanian"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 669
    :goto_1e8
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_351

    .line 670
    const-string v3, "cbmilanguageturkish"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 675
    :goto_1f9
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_35c

    .line 676
    const-string v3, "cbmilanguagehungarian"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 681
    :goto_20a
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_367

    .line 682
    const-string v3, "cbmilanguageslovak"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 687
    :goto_21b
    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_372

    .line 688
    const-string v3, "cbmilanguageczech"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 693
    :goto_22c
    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_37d

    .line 694
    const-string v3, "cbmilanguageserbocroat"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 699
    :goto_23d
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_388

    .line 700
    const-string v3, "cbmilanguagebularian"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 705
    :goto_24e
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_393

    .line 706
    const-string v3, "cbmilanguagepolish"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 711
    :goto_25f
    const/16 v3, 0x12

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_39e

    .line 712
    const-string v3, "cbmilanguageslovenian"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 717
    :goto_270
    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_3a9

    .line 718
    const-string v3, "cbmilanguagehebrew"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 723
    :goto_281
    const/16 v3, 0x14

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_3b4

    .line 724
    const-string v3, "cbmilanguagearabic"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 729
    :goto_292
    const/16 v3, 0x15

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_3bf

    .line 730
    const-string v3, "cbmilanguagerussian"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 735
    :goto_2a3
    const/16 v3, 0x16

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_3ca

    .line 736
    const-string v3, "cbmilanguagechinesetr"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 741
    :goto_2b4
    const/16 v3, 0x17

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_3d5

    .line 742
    const-string v3, "cbmilanguagechinesesi"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 747
    :goto_2c5
    const/16 v3, 0x18

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_3e0

    .line 748
    const-string v3, "cbmilanguagekorean"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_83

    .line 606
    :cond_2d8
    const-string v3, "cbmilanguageenglish"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_146

    .line 612
    :cond_2e3
    const-string v3, "cbmilanguageitaliano"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_155

    .line 618
    :cond_2ee
    const-string v3, "cbmilanguagedeutsch"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_165

    .line 624
    :cond_2f9
    const-string v3, "cbmilanguagefrench"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_175

    .line 630
    :cond_304
    const-string v3, "cbmilanguagespanish"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_185

    .line 636
    :cond_30f
    const-string v3, "cbmilanguagegreek"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_195

    .line 642
    :cond_31a
    const-string v3, "cbmilanguagedutch"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1a5

    .line 648
    :cond_325
    const-string v3, "cbmilanguageportuguese"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1b5

    .line 654
    :cond_330
    const-string v3, "cbmilanguageswedish"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1c6

    .line 660
    :cond_33b
    const-string v3, "cbmilanguagedanish"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1d7

    .line 666
    :cond_346
    const-string v3, "cbmilanguageromanian"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1e8

    .line 672
    :cond_351
    const-string v3, "cbmilanguageturkish"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1f9

    .line 678
    :cond_35c
    const-string v3, "cbmilanguagehungarian"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_20a

    .line 684
    :cond_367
    const-string v3, "cbmilanguageslovak"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_21b

    .line 690
    :cond_372
    const-string v3, "cbmilanguageczech"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_22c

    .line 696
    :cond_37d
    const-string v3, "cbmilanguageserbocroat"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_23d

    .line 702
    :cond_388
    const-string v3, "cbmilanguagebularian"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_24e

    .line 708
    :cond_393
    const-string v3, "cbmilanguagepolish"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_25f

    .line 714
    :cond_39e
    const-string v3, "cbmilanguageslovenian"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_270

    .line 720
    :cond_3a9
    const-string v3, "cbmilanguagehebrew"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_281

    .line 726
    :cond_3b4
    const-string v3, "cbmilanguagearabic"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_292

    .line 732
    :cond_3bf
    const-string v3, "cbmilanguagerussian"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2a3

    .line 738
    :cond_3ca
    const-string v3, "cbmilanguagechinesetr"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2b4

    .line 744
    :cond_3d5
    const-string v3, "cbmilanguagechinesesi"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2c5

    .line 750
    :cond_3e0
    const-string v3, "cbmilanguagekorean"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_83

    .line 753
    :cond_3eb
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_559

    .line 754
    const-string v3, "cbmilanguageenglish"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 759
    :goto_3fa
    invoke-virtual {v0, v8}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_564

    .line 760
    const-string v3, "cbmilanguageitaliano"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 765
    :goto_409
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_56f

    .line 766
    const-string v3, "cbmilanguagedeutsch"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 771
    :goto_419
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_57a

    .line 772
    const-string v3, "cbmilanguagefrench"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 777
    :goto_429
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_585

    .line 778
    const-string v3, "cbmilanguagespanish"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 783
    :goto_439
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_590

    .line 784
    const-string v3, "cbmilanguagegreek"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 789
    :goto_449
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_59b

    .line 790
    const-string v3, "cbmilanguagedutch"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 795
    :goto_459
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_5a6

    .line 796
    const-string v3, "cbmilanguageportuguese"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 801
    :goto_469
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_5b1

    .line 802
    const-string v3, "cbmilanguageswedish"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 807
    :goto_47a
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_5bc

    .line 808
    const-string v3, "cbmilanguagedanish"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 813
    :goto_48b
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_5c7

    .line 814
    const-string v3, "cbmilanguageromanian"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 819
    :goto_49c
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_5d2

    .line 820
    const-string v3, "cbmilanguageturkish"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 825
    :goto_4ad
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_5dd

    .line 826
    const-string v3, "cbmilanguagehungarian"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 831
    :goto_4be
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_5e8

    .line 832
    const-string v3, "cbmilanguageslovak"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 837
    :goto_4cf
    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_5f3

    .line 838
    const-string v3, "cbmilanguageczech"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 843
    :goto_4e0
    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_5fe

    .line 844
    const-string v3, "cbmilanguageserbocroat"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 849
    :goto_4f1
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_609

    .line 850
    const-string v3, "cbmilanguagebularian"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 855
    :goto_502
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_614

    .line 856
    const-string v3, "cbmilanguagepolish"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 861
    :goto_513
    const/16 v3, 0x12

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_61f

    .line 862
    const-string v3, "cbmilanguageslovenian"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 867
    :goto_524
    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_62a

    .line 868
    const-string v3, "cbmilanguagechinesetr"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 873
    :goto_535
    const/16 v3, 0x14

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_635

    .line 874
    const-string v3, "cbmilanguagechinesesi"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 879
    :goto_546
    const/16 v3, 0x15

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_640

    .line 880
    const-string v3, "cbmilanguagekorean"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_83

    .line 756
    :cond_559
    const-string v3, "cbmilanguageenglish"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3fa

    .line 762
    :cond_564
    const-string v3, "cbmilanguageitaliano"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_409

    .line 768
    :cond_56f
    const-string v3, "cbmilanguagedeutsch"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_419

    .line 774
    :cond_57a
    const-string v3, "cbmilanguagefrench"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_429

    .line 780
    :cond_585
    const-string v3, "cbmilanguagespanish"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_439

    .line 786
    :cond_590
    const-string v3, "cbmilanguagegreek"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_449

    .line 792
    :cond_59b
    const-string v3, "cbmilanguagedutch"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_459

    .line 798
    :cond_5a6
    const-string v3, "cbmilanguageportuguese"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_469

    .line 804
    :cond_5b1
    const-string v3, "cbmilanguageswedish"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_47a

    .line 810
    :cond_5bc
    const-string v3, "cbmilanguagedanish"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_48b

    .line 816
    :cond_5c7
    const-string v3, "cbmilanguageromanian"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_49c

    .line 822
    :cond_5d2
    const-string v3, "cbmilanguageturkish"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4ad

    .line 828
    :cond_5dd
    const-string v3, "cbmilanguagehungarian"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4be

    .line 834
    :cond_5e8
    const-string v3, "cbmilanguageslovak"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4cf

    .line 840
    :cond_5f3
    const-string v3, "cbmilanguageczech"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4e0

    .line 846
    :cond_5fe
    const-string v3, "cbmilanguageserbocroat"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4f1

    .line 852
    :cond_609
    const-string v3, "cbmilanguagebularian"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_502

    .line 858
    :cond_614
    const-string v3, "cbmilanguagepolish"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_513

    .line 864
    :cond_61f
    const-string v3, "cbmilanguageslovenian"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_524

    .line 870
    :cond_62a
    const-string v3, "cbmilanguagechinesetr"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_535

    .line 876
    :cond_635
    const-string v3, "cbmilanguagechinesesi"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_546

    .line 882
    :cond_640
    const-string v3, "cbmilanguagekorean"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_83

    .line 894
    :cond_64b
    const v3, 0x7f07011e

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 895
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBlanguageActivity;->finish()V

    goto/16 :goto_b4
.end method

.method private doSelectallAction()V
    .registers 5

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBlanguageActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 494
    .local v2, listViewSel:Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->CBLANGUAGES:[Ljava/lang/String;

    array-length v0, v3

    .line 495
    .local v0, cblanglengthsel:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v0, :cond_11

    .line 496
    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 495
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 498
    :cond_11
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const-string v0, "ManageCBlanguageActivity"

    const-string v1, "[LGE_Rian]ManageCBlanguageActivity START!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->operatorCode:Ljava/lang/String;

    .line 133
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->countryCode:Ljava/lang/String;

    .line 134
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getMccCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->mccCode:Ljava/lang/String;

    .line 135
    const-string v0, "ManageCBlanguageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "operatorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->operatorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  countryCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->countryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  MCC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->mccCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->operatorCode:Ljava/lang/String;

    const-string v1, "Cellcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_554

    iget-object v0, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->countryCode:Ljava/lang/String;

    const-string v1, "IL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_554

    .line 139
    const-string v0, "ManageCBlanguageActivity"

    const-string v1, "This is Israel Cellcom CB language screen"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    .line 141
    .local v11, loc:Ljava/lang/String;
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 142
    const-string v0, "ar"

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8f

    const-string v0, "iw"

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8f

    const-string v0, "fa"

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_545

    .line 143
    :cond_8f
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBlanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->CBLANGUAGES:[Ljava/lang/String;

    .line 158
    .end local v11           #loc:Ljava/lang/String;
    :goto_9c
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090010

    iget-object v2, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->CBLANGUAGES:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageCBlanguageActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    const-string v0, "ManageCBlanguageActivity"

    const-string v1, "Before managedQuery"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sget-object v1, Lcom/android/mms/CbLanguage$CbLanguages;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->CBLANGUAGE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "cbmilanguageenglish ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ManageCBlanguageActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 163
    .local v6, cbLanguage_cursor:Landroid/database/Cursor;
    const/4 v12, -0x1

    .line 164
    .local v12, rowsNumber:I
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 166
    const-string v0, "ManageCBlanguageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cbLanguage_cursor rows number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v0, "ManageCBlanguageActivity"

    const-string v1, "After managedQuery"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    if-nez v12, :cond_f3

    .line 170
    invoke-direct {p0}, Lcom/android/mms/ui/ManageCBlanguageActivity;->doFirstInserAction()V

    .line 171
    sget-object v1, Lcom/android/mms/CbLanguage$CbLanguages;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->CBLANGUAGE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "cbmilanguageenglish ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ManageCBlanguageActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 175
    :cond_f3
    if-eqz v6, :cond_5d0

    .line 176
    const/4 v9, 0x0

    .line 177
    .local v9, isSuccess:Z
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    .line 178
    const-string v0, "ManageCBlanguageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v0, "cbmilanguageenglish"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexEnglish:I

    .line 181
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexEnglish:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isEnglishCheck:I

    .line 182
    const-string v0, "ManageCBlanguageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Does CB English language check? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->isEnglishCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v0, "cbmilanguageitaliano"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexItaliano:I

    .line 185
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexItaliano:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isItalianoCheck:I

    .line 186
    const-string v0, "ManageCBlanguageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Does CB Italiano language check? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->isItalianoCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v0, "cbmilanguagedeutsch"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexDeutsch:I

    .line 189
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexDeutsch:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isDeutschCheck:I

    .line 190
    const-string v0, "ManageCBlanguageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Does CB Deutsch language check? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->isDeutschCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string v0, "cbmilanguagefrench"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexFrench:I

    .line 193
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexFrench:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isFrenchCheck:I

    .line 194
    const-string v0, "ManageCBlanguageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Does CB French language check? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->isFrenchCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v0, "cbmilanguagespanish"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexSpanish:I

    .line 197
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexSpanish:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isSpanishCheck:I

    .line 198
    const-string v0, "ManageCBlanguageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Does CB Spanish language check? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->isSpanishCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v0, "cbmilanguagegreek"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexGreek:I

    .line 201
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexGreek:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isGreekCheck:I

    .line 202
    const-string v0, "ManageCBlanguageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Does CB Greek language check? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->isGreekCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v0, "cbmilanguagedutch"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexDutch:I

    .line 205
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexDutch:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isDutchCheck:I

    .line 206
    const-string v0, "ManageCBlanguageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Does CB Dutch language check? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->isDutchCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string v0, "cbmilanguageportuguese"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexPortuguese:I

    .line 209
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexPortuguese:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isPortugueseCheck:I

    .line 210
    const-string v0, "ManageCBlanguageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Does CB Portuguese language check? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->isPortugueseCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v0, "cbmilanguageswedish"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexSwedish:I

    .line 213
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexSwedish:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isSwedishCheck:I

    .line 214
    const-string v0, "ManageCBlanguageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Does CB Swedish language check? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->isSwedishCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v0, "cbmilanguagedanish"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexDanish:I

    .line 217
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexDanish:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isDanishCheck:I

    .line 218
    const-string v0, "ManageCBlanguageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Does CB Danish language check? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->isDanishCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v0, "cbmilanguageromanian"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexRomanian:I

    .line 221
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexRomanian:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isRomanianCheck:I

    .line 222
    const-string v0, "ManageCBlanguageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Does CB Romanian language check? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->isRomanianCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v0, "cbmilanguageturkish"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexTurkish:I

    .line 225
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexTurkish:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isTurkishCheck:I

    .line 226
    const-string v0, "ManageCBlanguageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Does CB Turkish language check? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->isTurkishCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v0, "cbmilanguagehungarian"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexHungarian:I

    .line 229
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexHungarian:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isHungarianCheck:I

    .line 230
    const-string v0, "ManageCBlanguageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Does CB Hungarian language check? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->isHungarianCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v0, "cbmilanguageslovak"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexSlovak:I

    .line 233
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexSlovak:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isSlovakCheck:I

    .line 234
    const-string v0, "ManageCBlanguageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Does CB Slovak language check? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->isSlovakCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string v0, "cbmilanguageczech"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexCzech:I

    .line 237
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexCzech:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isCzechCheck:I

    .line 238
    const-string v0, "ManageCBlanguageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Does CB Czech language check? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->isCzechCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v0, "cbmilanguageserbocroat"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexSerbocroat:I

    .line 241
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexSerbocroat:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isSerbocroatCheck:I

    .line 242
    const-string v0, "ManageCBlanguageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Does CB Serbocroat language check? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->isSerbocroatCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v0, "cbmilanguagebularian"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexBulgarian:I

    .line 245
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexBulgarian:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isBulgarianCheck:I

    .line 246
    const-string v0, "ManageCBlanguageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Does CB Bulgarian language check? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->isBulgarianCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v0, "cbmilanguagepolish"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexPolish:I

    .line 249
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexPolish:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isPolishCheck:I

    .line 250
    const-string v0, "ManageCBlanguageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Does CB Polish language check? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->isPolishCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-string v0, "cbmilanguageslovenian"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexSlovenian:I

    .line 253
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexSlovenian:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isSlovenianCheck:I

    .line 254
    const-string v0, "ManageCBlanguageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Does CB Slovenian language check? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->isSlovenianCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v0, "cbmilanguagechinesetr"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexChinesetr:I

    .line 257
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexChinesetr:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isChinesetrCheck:I

    .line 258
    const-string v0, "ManageCBlanguageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Does CB Chinesetr language check? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->isChinesetrCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v0, "cbmilanguagechinesesi"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexChinesesi:I

    .line 261
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexChinesesi:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isChinesesiCheck:I

    .line 262
    const-string v0, "ManageCBlanguageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Does CB Chinesesi language check? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->isChinesesiCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string v0, "cbmilanguagekorean"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexKorean:I

    .line 265
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexKorean:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isKoreanCheck:I

    .line 266
    const-string v0, "ManageCBlanguageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Does CB Korean language check? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->isKoreanCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string v0, "cbmilanguagehebrew"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexHebrew:I

    .line 270
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexHebrew:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isHebrewCheck:I

    .line 271
    const-string v0, "ManageCBlanguageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Does CB Hebrew language check? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->isHebrewCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v0, "cbmilanguagearabic"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexArabic:I

    .line 275
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexArabic:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isArabicCheck:I

    .line 276
    const-string v0, "ManageCBlanguageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Does CB Arabic language check? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->isArabicCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v0, "cbmilanguagerussian"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexRussian:I

    .line 280
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->indexRussian:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isRussianCheck:I

    .line 281
    const-string v0, "ManageCBlanguageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Does CB Russian language check? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ManageCBlanguageActivity;->isRussianCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .end local v9           #isSuccess:Z
    :goto_52c
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBlanguageActivity;->getListView()Landroid/widget/ListView;

    move-result-object v10

    .line 287
    .local v10, listView:Landroid/widget/ListView;
    iget-object v0, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->CBLANGUAGES:[Ljava/lang/String;

    array-length v7, v0

    .line 289
    .local v7, cblanglength:I
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 290
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 293
    const/4 v8, 0x0

    .local v8, i:I
    :goto_53c
    if-ge v8, v7, :cond_5d9

    .line 294
    const/4 v0, 0x0

    invoke-virtual {v10, v8, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 293
    add-int/lit8 v8, v8, 0x1

    goto :goto_53c

    .line 145
    .end local v6           #cbLanguage_cursor:Landroid/database/Cursor;
    .end local v7           #cblanglength:I
    .end local v8           #i:I
    .end local v10           #listView:Landroid/widget/ListView;
    .end local v12           #rowsNumber:I
    .restart local v11       #loc:Ljava/lang/String;
    :cond_545
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBlanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->CBLANGUAGES:[Ljava/lang/String;

    goto/16 :goto_9c

    .line 147
    .end local v11           #loc:Ljava/lang/String;
    :cond_554
    iget-object v0, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->mccCode:Ljava/lang/String;

    const-string v1, "424"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5a4

    iget-object v0, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->mccCode:Ljava/lang/String;

    const-string v1, "432"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5a4

    iget-object v0, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->mccCode:Ljava/lang/String;

    const-string v1, "410"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5a4

    iget-object v0, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->mccCode:Ljava/lang/String;

    const-string v1, "420"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5a4

    iget-object v0, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->mccCode:Ljava/lang/String;

    const-string v1, "416"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5a4

    iget-object v0, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->mccCode:Ljava/lang/String;

    const-string v1, "417"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5a4

    iget-object v0, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->mccCode:Ljava/lang/String;

    const-string v1, "425"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5a4

    iget-object v0, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->mccCode:Ljava/lang/String;

    const-string v1, "602"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5ba

    .line 151
    :cond_5a4
    const-string v0, "ManageCBlanguageActivity"

    const-string v1, "This is Arabic countries CB language screen"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBlanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->CBLANGUAGES:[Ljava/lang/String;

    goto/16 :goto_9c

    .line 154
    :cond_5ba
    const-string v0, "ManageCBlanguageActivity"

    const-string v1, "This is Euro Base CB language screen"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBlanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->CBLANGUAGES:[Ljava/lang/String;

    goto/16 :goto_9c

    .line 283
    .restart local v6       #cbLanguage_cursor:Landroid/database/Cursor;
    .restart local v12       #rowsNumber:I
    :cond_5d0
    const-string v0, "ManageCBlanguageActivity"

    const-string v1, "Error for cbLanguage_cursor "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_52c

    .line 298
    .restart local v7       #cblanglength:I
    .restart local v8       #i:I
    .restart local v10       #listView:Landroid/widget/ListView;
    :cond_5d9
    iget-object v0, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->operatorCode:Ljava/lang/String;

    const-string v1, "Cellcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_620

    iget-object v0, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->countryCode:Ljava/lang/String;

    const-string v1, "IL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_620

    .line 299
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isEnglishCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5f7

    .line 300
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 302
    :cond_5f7
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isHebrewCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_601

    .line 303
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 305
    :cond_601
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isArabicCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_60b

    .line 306
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 308
    :cond_60b
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isRussianCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_615

    .line 309
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 311
    :cond_615
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isKoreanCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_61f

    .line 312
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 461
    :cond_61f
    :goto_61f
    return-void

    .line 314
    :cond_620
    iget-object v0, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->mccCode:Ljava/lang/String;

    const-string v1, "424"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_670

    iget-object v0, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->mccCode:Ljava/lang/String;

    const-string v1, "432"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_670

    iget-object v0, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->mccCode:Ljava/lang/String;

    const-string v1, "410"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_670

    iget-object v0, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->mccCode:Ljava/lang/String;

    const-string v1, "420"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_670

    iget-object v0, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->mccCode:Ljava/lang/String;

    const-string v1, "416"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_670

    iget-object v0, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->mccCode:Ljava/lang/String;

    const-string v1, "417"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_670

    iget-object v0, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->mccCode:Ljava/lang/String;

    const-string v1, "425"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_670

    iget-object v0, p0, Lcom/android/mms/ui/ManageCBlanguageActivity;->mccCode:Ljava/lang/String;

    const-string v1, "602"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77d

    .line 318
    :cond_670
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isEnglishCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_67a

    .line 319
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 321
    :cond_67a
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isItalianoCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_684

    .line 322
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 324
    :cond_684
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isDeutschCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_68e

    .line 325
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 327
    :cond_68e
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isFrenchCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_698

    .line 328
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 330
    :cond_698
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isSpanishCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6a2

    .line 331
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 333
    :cond_6a2
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isGreekCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6ac

    .line 334
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 336
    :cond_6ac
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isDutchCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6b6

    .line 337
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 339
    :cond_6b6
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isPortugueseCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6c0

    .line 340
    const/4 v0, 0x7

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 342
    :cond_6c0
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isSwedishCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6cb

    .line 343
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 345
    :cond_6cb
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isDanishCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6d6

    .line 346
    const/16 v0, 0x9

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 348
    :cond_6d6
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isRomanianCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6e1

    .line 349
    const/16 v0, 0xa

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 351
    :cond_6e1
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isTurkishCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6ec

    .line 352
    const/16 v0, 0xb

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 354
    :cond_6ec
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isHungarianCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6f7

    .line 355
    const/16 v0, 0xc

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 357
    :cond_6f7
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isSlovakCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_702

    .line 358
    const/16 v0, 0xd

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 360
    :cond_702
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isCzechCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_70d

    .line 361
    const/16 v0, 0xe

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 363
    :cond_70d
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isSerbocroatCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_718

    .line 364
    const/16 v0, 0xf

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 366
    :cond_718
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isBulgarianCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_723

    .line 367
    const/16 v0, 0x10

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 369
    :cond_723
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isPolishCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_72e

    .line 370
    const/16 v0, 0x11

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 372
    :cond_72e
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isSlovenianCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_739

    .line 373
    const/16 v0, 0x12

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 375
    :cond_739
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isHebrewCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_744

    .line 376
    const/16 v0, 0x13

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 378
    :cond_744
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isArabicCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_74f

    .line 379
    const/16 v0, 0x14

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 381
    :cond_74f
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isRussianCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_75a

    .line 382
    const/16 v0, 0x15

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 384
    :cond_75a
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isChinesetrCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_765

    .line 385
    const/16 v0, 0x16

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 387
    :cond_765
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isChinesesiCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_770

    .line 388
    const/16 v0, 0x17

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 390
    :cond_770
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isKoreanCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_61f

    .line 391
    const/16 v0, 0x18

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto/16 :goto_61f

    .line 394
    :cond_77d
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isEnglishCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_787

    .line 395
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 397
    :cond_787
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isItalianoCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_791

    .line 398
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 400
    :cond_791
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isDeutschCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_79b

    .line 401
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 403
    :cond_79b
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isFrenchCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7a5

    .line 404
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 406
    :cond_7a5
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isSpanishCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7af

    .line 407
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 409
    :cond_7af
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isGreekCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7b9

    .line 410
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 412
    :cond_7b9
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isDutchCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7c3

    .line 413
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 415
    :cond_7c3
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isPortugueseCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7cd

    .line 416
    const/4 v0, 0x7

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 418
    :cond_7cd
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isSwedishCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7d8

    .line 419
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 421
    :cond_7d8
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isDanishCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7e3

    .line 422
    const/16 v0, 0x9

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 424
    :cond_7e3
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isRomanianCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7ee

    .line 425
    const/16 v0, 0xa

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 427
    :cond_7ee
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isTurkishCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7f9

    .line 428
    const/16 v0, 0xb

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 430
    :cond_7f9
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isHungarianCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_804

    .line 431
    const/16 v0, 0xc

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 433
    :cond_804
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isSlovakCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_80f

    .line 434
    const/16 v0, 0xd

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 436
    :cond_80f
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isCzechCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_81a

    .line 437
    const/16 v0, 0xe

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 439
    :cond_81a
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isSerbocroatCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_825

    .line 440
    const/16 v0, 0xf

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 442
    :cond_825
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isBulgarianCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_830

    .line 443
    const/16 v0, 0x10

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 445
    :cond_830
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isPolishCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_83b

    .line 446
    const/16 v0, 0x11

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 448
    :cond_83b
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isSlovenianCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_846

    .line 449
    const/16 v0, 0x12

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 451
    :cond_846
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isChinesetrCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_851

    .line 452
    const/16 v0, 0x13

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 454
    :cond_851
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isChinesesiCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_85c

    .line 455
    const/16 v0, 0x14

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 457
    :cond_85c
    sget v0, Lcom/android/mms/ui/ManageCBlanguageActivity;->isKoreanCheck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_61f

    .line 458
    const/16 v0, 0x15

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto/16 :goto_61f
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 466
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 467
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBlanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070119

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 471
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/mms/ui/ManageCBlanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07011a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020003

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 474
    return v4
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 510
    packed-switch p1, :pswitch_data_e

    .line 517
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_7
    return v0

    .line 512
    :pswitch_8
    invoke-direct {p0}, Lcom/android/mms/ui/ManageCBlanguageActivity;->doSaveAction()V

    .line 513
    const/4 v0, 0x1

    goto :goto_7

    .line 510
    nop

    :pswitch_data_e
    .packed-switch 0x4
        :pswitch_8
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 480
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 489
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 482
    :pswitch_d
    invoke-direct {p0}, Lcom/android/mms/ui/ManageCBlanguageActivity;->doSelectallAction()V

    move v0, v1

    .line 483
    goto :goto_c

    .line 486
    :pswitch_12
    invoke-direct {p0}, Lcom/android/mms/ui/ManageCBlanguageActivity;->doDeselectallAction()V

    move v0, v1

    .line 487
    goto :goto_c

    .line 480
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_d
        :pswitch_12
    .end packed-switch
.end method
