.class public Lcom/android/phone/CellBroadcastSms;
.super Landroid/preference/PreferenceActivity;
.source "CellBroadcastSms.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CellBroadcastSms$1;,
        Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;,
        Lcom/android/phone/CellBroadcastSms$MyHandler;
    }
.end annotation


# static fields
.field private static final BUTTON_ADMINISTRATIVE_KEY:Ljava/lang/String; = "button_administrative"

.field private static final BUTTON_ADVERTISEMENTS_KEY:Ljava/lang/String; = "button_advertisements"

.field private static final BUTTON_ATR_KEY:Ljava/lang/String; = "button_atr"

.field private static final BUTTON_EMERGENCY_BROADCAST_KEY:Ljava/lang/String; = "button_emergency_broadcast"

.field private static final BUTTON_ENABLE_DISABLE_BC_SMS_KEY:Ljava/lang/String; = "button_enable_disable_cell_bc_sms"

.field private static final BUTTON_EO_KEY:Ljava/lang/String; = "button_eo"

.field private static final BUTTON_INTERNATIONAL_BF_NEWS_KEY:Ljava/lang/String; = "button_international_bf_news"

.field private static final BUTTON_INTERNATIONAL_ENTERTAINMENT_NEWS_KEY:Ljava/lang/String; = "button_international_entertainment_news"

.field private static final BUTTON_INTERNATIONAL_GENERAL_NEWS_KEY:Ljava/lang/String; = "button_international_general_news"

.field private static final BUTTON_INTERNATIONAL_SPORTS_NEWS_KEY:Ljava/lang/String; = "button_international_sports_news"

.field private static final BUTTON_LAFS_KEY:Ljava/lang/String; = "button_lafs"

.field private static final BUTTON_LOCAL_BF_NEWS_KEY:Ljava/lang/String; = "button_local_bf_news"

.field private static final BUTTON_LOCAL_ENTERTAINMENT_NEWS_KEY:Ljava/lang/String; = "button_local_entertainment_news"

.field private static final BUTTON_LOCAL_GENERAL_NEWS_KEY:Ljava/lang/String; = "button_local_general_news"

.field private static final BUTTON_LOCAL_SPORTS_NEWS_KEY:Ljava/lang/String; = "button_local_sports_news"

.field private static final BUTTON_LOCAL_WEATHER_KEY:Ljava/lang/String; = "button_local_weather"

.field private static final BUTTON_LODGINGS_KEY:Ljava/lang/String; = "button_lodgings"

.field private static final BUTTON_MAINTENANCE_KEY:Ljava/lang/String; = "button_maintenance"

.field private static final BUTTON_MHH_KEY:Ljava/lang/String; = "button_mhh"

.field private static final BUTTON_MULTI_CATEGORY_KEY:Ljava/lang/String; = "button_multi_category"

.field private static final BUTTON_NATIONAL_BF_NEWS_KEY:Ljava/lang/String; = "button_national_bf_news"

.field private static final BUTTON_NATIONAL_ENTERTAINMENT_NEWS_KEY:Ljava/lang/String; = "button_national_entertainment_news"

.field private static final BUTTON_NATIONAL_GENERAL_NEWS_KEY:Ljava/lang/String; = "button_national_general_news"

.field private static final BUTTON_NATIONAL_SPORTS_NEWS_KEY:Ljava/lang/String; = "button_national_sports_news"

.field private static final BUTTON_REGIONAL_BF_NEWS_KEY:Ljava/lang/String; = "button_regional_bf_news"

.field private static final BUTTON_REGIONAL_ENTERTAINMENT_NEWS_KEY:Ljava/lang/String; = "button_regional_entertainment_news"

.field private static final BUTTON_REGIONAL_GENERAL_NEWS_KEY:Ljava/lang/String; = "button_regional_general_news"

.field private static final BUTTON_REGIONAL_SPORTS_NEWS_KEY:Ljava/lang/String; = "button_regional_sports_news"

.field private static final BUTTON_RESTAURANTS_KEY:Ljava/lang/String; = "button_restaurants"

.field private static final BUTTON_RETAIL_DIRECTORY_KEY:Ljava/lang/String; = "button_retail_directory"

.field private static final BUTTON_STOCK_QUOTES_KEY:Ljava/lang/String; = "button_stock_quotes"

.field private static final BUTTON_TECHNOLOGY_NEWS_KEY:Ljava/lang/String; = "button_technology_news"

.field private static final DBG:Z = true

.field private static final LIST_LANGUAGE_KEY:Ljava/lang/String; = "list_language"

.field private static final LOG_TAG:Ljava/lang/String; = "CellBroadcastSms"

.field private static final MAX_LENGTH_RESULT:I = 0x5e

.field private static final MESSAGE_ACTIVATE_CB_SMS:I = 0x1

.field private static final MESSAGE_GET_CB_SMS_CONFIG:I = 0x2

.field private static final MESSAGE_SET_CB_SMS_CONFIG:I = 0x3

.field private static final NO_OF_INTS_STRUCT_1:I = 0x3

.field private static final NO_OF_SERVICE_CATEGORIES:I = 0x1f


# instance fields
.field private mButtonAdministrative:Landroid/preference/CheckBoxPreference;

.field private mButtonAdvertisements:Landroid/preference/CheckBoxPreference;

.field private mButtonAtr:Landroid/preference/CheckBoxPreference;

.field private mButtonBcSms:Landroid/preference/CheckBoxPreference;

.field private mButtonEmergencyBroadcast:Landroid/preference/CheckBoxPreference;

.field private mButtonEo:Landroid/preference/CheckBoxPreference;

.field private mButtonInternational1:Landroid/preference/CheckBoxPreference;

.field private mButtonInternational2:Landroid/preference/CheckBoxPreference;

.field private mButtonInternational3:Landroid/preference/CheckBoxPreference;

.field private mButtonInternational4:Landroid/preference/CheckBoxPreference;

.field private mButtonLafs:Landroid/preference/CheckBoxPreference;

.field private mButtonLocal1:Landroid/preference/CheckBoxPreference;

.field private mButtonLocal2:Landroid/preference/CheckBoxPreference;

.field private mButtonLocal3:Landroid/preference/CheckBoxPreference;

.field private mButtonLocal4:Landroid/preference/CheckBoxPreference;

.field private mButtonLocalWeather:Landroid/preference/CheckBoxPreference;

.field private mButtonLodgings:Landroid/preference/CheckBoxPreference;

.field private mButtonMaintenance:Landroid/preference/CheckBoxPreference;

.field private mButtonMhh:Landroid/preference/CheckBoxPreference;

.field private mButtonMultiCategory:Landroid/preference/CheckBoxPreference;

.field private mButtonNational1:Landroid/preference/CheckBoxPreference;

.field private mButtonNational2:Landroid/preference/CheckBoxPreference;

.field private mButtonNational3:Landroid/preference/CheckBoxPreference;

.field private mButtonNational4:Landroid/preference/CheckBoxPreference;

.field private mButtonRegional1:Landroid/preference/CheckBoxPreference;

.field private mButtonRegional2:Landroid/preference/CheckBoxPreference;

.field private mButtonRegional3:Landroid/preference/CheckBoxPreference;

.field private mButtonRegional4:Landroid/preference/CheckBoxPreference;

.field private mButtonRestaurants:Landroid/preference/CheckBoxPreference;

.field private mButtonRetailDirectory:Landroid/preference/CheckBoxPreference;

.field private mButtonStockQuotes:Landroid/preference/CheckBoxPreference;

.field private mButtonTechnologyNews:Landroid/preference/CheckBoxPreference;

.field private mHandler:Lcom/android/phone/CellBroadcastSms$MyHandler;

.field private mListLanguage:Landroid/preference/ListPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 577
    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/CellBroadcastSms;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/phone/CellBroadcastSms;->enableDisableAllCbConfigButtons(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/CellBroadcastSms;[I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/phone/CellBroadcastSms;->setAllCbConfigButtons([I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/CellBroadcastSms;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonBcSms:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/CellBroadcastSms;)Lcom/android/phone/CellBroadcastSms$MyHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mHandler:Lcom/android/phone/CellBroadcastSms$MyHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/CellBroadcastSms;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private enableDisableAllCbConfigButtons(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEmergencyBroadcast:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 453
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mListLanguage:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 454
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdministrative:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 455
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMaintenance:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 456
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocalWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 457
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAtr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 458
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLafs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 459
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRestaurants:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 460
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLodgings:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 461
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRetailDirectory:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 462
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdvertisements:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 463
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonStockQuotes:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 464
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 465
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMhh:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 466
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonTechnologyNews:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 467
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMultiCategory:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 469
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 470
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 471
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 472
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 474
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 475
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 476
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 477
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 479
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 480
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 481
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 482
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 484
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 485
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 486
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 487
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 488
    return-void
.end method

.method private setAllCbConfigButtons([I)V
    .registers 6
    .parameter "configArray"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 493
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEmergencyBroadcast:Landroid/preference/CheckBoxPreference;

    aget v1, p1, v2

    if-eqz v1, :cond_179

    move v1, v2

    :goto_9
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 495
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mListLanguage:Landroid/preference/ListPreference;

    invoke-static {}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$600()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 496
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdministrative:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x2

    aget v1, p1, v1

    if-eqz v1, :cond_17c

    move v1, v2

    :goto_1e
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 497
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMaintenance:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x3

    aget v1, p1, v1

    if-eqz v1, :cond_17f

    move v1, v2

    :goto_29
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 498
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocalWeather:Landroid/preference/CheckBoxPreference;

    const/16 v1, 0x14

    aget v1, p1, v1

    if-eqz v1, :cond_182

    move v1, v2

    :goto_35
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 499
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAtr:Landroid/preference/CheckBoxPreference;

    const/16 v1, 0x15

    aget v1, p1, v1

    if-eqz v1, :cond_185

    move v1, v2

    :goto_41
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 500
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLafs:Landroid/preference/CheckBoxPreference;

    const/16 v1, 0x16

    aget v1, p1, v1

    if-eqz v1, :cond_188

    move v1, v2

    :goto_4d
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 501
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRestaurants:Landroid/preference/CheckBoxPreference;

    const/16 v1, 0x17

    aget v1, p1, v1

    if-eqz v1, :cond_18b

    move v1, v2

    :goto_59
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 502
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLodgings:Landroid/preference/CheckBoxPreference;

    const/16 v1, 0x18

    aget v1, p1, v1

    if-eqz v1, :cond_18e

    move v1, v2

    :goto_65
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 503
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRetailDirectory:Landroid/preference/CheckBoxPreference;

    const/16 v1, 0x19

    aget v1, p1, v1

    if-eqz v1, :cond_191

    move v1, v2

    :goto_71
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 504
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdvertisements:Landroid/preference/CheckBoxPreference;

    const/16 v1, 0x1a

    aget v1, p1, v1

    if-eqz v1, :cond_194

    move v1, v2

    :goto_7d
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 505
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonStockQuotes:Landroid/preference/CheckBoxPreference;

    const/16 v1, 0x1b

    aget v1, p1, v1

    if-eqz v1, :cond_197

    move v1, v2

    :goto_89
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 506
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEo:Landroid/preference/CheckBoxPreference;

    const/16 v1, 0x1c

    aget v1, p1, v1

    if-eqz v1, :cond_19a

    move v1, v2

    :goto_95
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 507
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMhh:Landroid/preference/CheckBoxPreference;

    const/16 v1, 0x1d

    aget v1, p1, v1

    if-eqz v1, :cond_19d

    move v1, v2

    :goto_a1
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 508
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonTechnologyNews:Landroid/preference/CheckBoxPreference;

    const/16 v1, 0x1e

    aget v1, p1, v1

    if-eqz v1, :cond_1a0

    move v1, v2

    :goto_ad
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 509
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMultiCategory:Landroid/preference/CheckBoxPreference;

    const/16 v1, 0x1f

    aget v1, p1, v1

    if-eqz v1, :cond_1a3

    move v1, v2

    :goto_b9
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 511
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal1:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x4

    aget v1, p1, v1

    if-eqz v1, :cond_1a6

    move v1, v2

    :goto_c4
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 512
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional1:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x5

    aget v1, p1, v1

    if-eqz v1, :cond_1a9

    move v1, v2

    :goto_cf
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 513
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational1:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x6

    aget v1, p1, v1

    if-eqz v1, :cond_1ac

    move v1, v2

    :goto_da
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 514
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational1:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x7

    aget v1, p1, v1

    if-eqz v1, :cond_1af

    move v1, v2

    :goto_e5
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 516
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal2:Landroid/preference/CheckBoxPreference;

    const/16 v1, 0x8

    aget v1, p1, v1

    if-eqz v1, :cond_1b2

    move v1, v2

    :goto_f1
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 517
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional2:Landroid/preference/CheckBoxPreference;

    const/16 v1, 0x9

    aget v1, p1, v1

    if-eqz v1, :cond_1b5

    move v1, v2

    :goto_fd
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 518
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational2:Landroid/preference/CheckBoxPreference;

    const/16 v1, 0xa

    aget v1, p1, v1

    if-eqz v1, :cond_1b8

    move v1, v2

    :goto_109
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 519
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational2:Landroid/preference/CheckBoxPreference;

    const/16 v1, 0xb

    aget v1, p1, v1

    if-eqz v1, :cond_1bb

    move v1, v2

    :goto_115
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 521
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal3:Landroid/preference/CheckBoxPreference;

    const/16 v1, 0xc

    aget v1, p1, v1

    if-eqz v1, :cond_1be

    move v1, v2

    :goto_121
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 522
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional3:Landroid/preference/CheckBoxPreference;

    const/16 v1, 0xd

    aget v1, p1, v1

    if-eqz v1, :cond_1c1

    move v1, v2

    :goto_12d
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 523
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational3:Landroid/preference/CheckBoxPreference;

    const/16 v1, 0xe

    aget v1, p1, v1

    if-eqz v1, :cond_1c4

    move v1, v2

    :goto_139
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 524
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational3:Landroid/preference/CheckBoxPreference;

    const/16 v1, 0xf

    aget v1, p1, v1

    if-eqz v1, :cond_1c7

    move v1, v2

    :goto_145
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 526
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal4:Landroid/preference/CheckBoxPreference;

    const/16 v1, 0x10

    aget v1, p1, v1

    if-eqz v1, :cond_1ca

    move v1, v2

    :goto_151
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 527
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional4:Landroid/preference/CheckBoxPreference;

    const/16 v1, 0x11

    aget v1, p1, v1

    if-eqz v1, :cond_1cc

    move v1, v2

    :goto_15d
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 528
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational4:Landroid/preference/CheckBoxPreference;

    const/16 v1, 0x12

    aget v1, p1, v1

    if-eqz v1, :cond_1ce

    move v1, v2

    :goto_169
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 529
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational4:Landroid/preference/CheckBoxPreference;

    const/16 v1, 0x13

    aget v1, p1, v1

    if-eqz v1, :cond_1d0

    move v1, v2

    :goto_175
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 530
    return-void

    :cond_179
    move v1, v3

    .line 493
    goto/16 :goto_9

    :cond_17c
    move v1, v3

    .line 496
    goto/16 :goto_1e

    :cond_17f
    move v1, v3

    .line 497
    goto/16 :goto_29

    :cond_182
    move v1, v3

    .line 498
    goto/16 :goto_35

    :cond_185
    move v1, v3

    .line 499
    goto/16 :goto_41

    :cond_188
    move v1, v3

    .line 500
    goto/16 :goto_4d

    :cond_18b
    move v1, v3

    .line 501
    goto/16 :goto_59

    :cond_18e
    move v1, v3

    .line 502
    goto/16 :goto_65

    :cond_191
    move v1, v3

    .line 503
    goto/16 :goto_71

    :cond_194
    move v1, v3

    .line 504
    goto/16 :goto_7d

    :cond_197
    move v1, v3

    .line 505
    goto/16 :goto_89

    :cond_19a
    move v1, v3

    .line 506
    goto/16 :goto_95

    :cond_19d
    move v1, v3

    .line 507
    goto/16 :goto_a1

    :cond_1a0
    move v1, v3

    .line 508
    goto/16 :goto_ad

    :cond_1a3
    move v1, v3

    .line 509
    goto/16 :goto_b9

    :cond_1a6
    move v1, v3

    .line 511
    goto/16 :goto_c4

    :cond_1a9
    move v1, v3

    .line 512
    goto/16 :goto_cf

    :cond_1ac
    move v1, v3

    .line 513
    goto/16 :goto_da

    :cond_1af
    move v1, v3

    .line 514
    goto/16 :goto_e5

    :cond_1b2
    move v1, v3

    .line 516
    goto/16 :goto_f1

    :cond_1b5
    move v1, v3

    .line 517
    goto/16 :goto_fd

    :cond_1b8
    move v1, v3

    .line 518
    goto/16 :goto_109

    :cond_1bb
    move v1, v3

    .line 519
    goto/16 :goto_115

    :cond_1be
    move v1, v3

    .line 521
    goto/16 :goto_121

    :cond_1c1
    move v1, v3

    .line 522
    goto/16 :goto_12d

    :cond_1c4
    move v1, v3

    .line 523
    goto/16 :goto_139

    :cond_1c7
    move v1, v3

    .line 524
    goto/16 :goto_145

    :cond_1ca
    move v1, v3

    .line 526
    goto :goto_151

    :cond_1cc
    move v1, v3

    .line 527
    goto :goto_15d

    :cond_1ce
    move v1, v3

    .line 528
    goto :goto_169

    :cond_1d0
    move v1, v3

    .line 529
    goto :goto_175
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    .line 337
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 339
    const v1, 0x7f050007

    invoke-virtual {p0, v1}, Lcom/android/phone/CellBroadcastSms;->addPreferencesFromResource(I)V

    .line 341
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 342
    new-instance v1, Lcom/android/phone/CellBroadcastSms$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/CellBroadcastSms$MyHandler;-><init>(Lcom/android/phone/CellBroadcastSms;Lcom/android/phone/CellBroadcastSms$1;)V

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mHandler:Lcom/android/phone/CellBroadcastSms$MyHandler;

    .line 344
    invoke-virtual {p0}, Lcom/android/phone/CellBroadcastSms;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 346
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "button_enable_disable_cell_bc_sms"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonBcSms:Landroid/preference/CheckBoxPreference;

    .line 348
    const-string v1, "list_language"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mListLanguage:Landroid/preference/ListPreference;

    .line 351
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mListLanguage:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 352
    const-string v1, "button_emergency_broadcast"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEmergencyBroadcast:Landroid/preference/CheckBoxPreference;

    .line 354
    const-string v1, "button_administrative"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdministrative:Landroid/preference/CheckBoxPreference;

    .line 356
    const-string v1, "button_maintenance"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMaintenance:Landroid/preference/CheckBoxPreference;

    .line 358
    const-string v1, "button_local_weather"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocalWeather:Landroid/preference/CheckBoxPreference;

    .line 360
    const-string v1, "button_atr"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAtr:Landroid/preference/CheckBoxPreference;

    .line 362
    const-string v1, "button_lafs"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLafs:Landroid/preference/CheckBoxPreference;

    .line 364
    const-string v1, "button_restaurants"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRestaurants:Landroid/preference/CheckBoxPreference;

    .line 366
    const-string v1, "button_lodgings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLodgings:Landroid/preference/CheckBoxPreference;

    .line 368
    const-string v1, "button_retail_directory"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRetailDirectory:Landroid/preference/CheckBoxPreference;

    .line 370
    const-string v1, "button_advertisements"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdvertisements:Landroid/preference/CheckBoxPreference;

    .line 372
    const-string v1, "button_stock_quotes"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonStockQuotes:Landroid/preference/CheckBoxPreference;

    .line 374
    const-string v1, "button_eo"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEo:Landroid/preference/CheckBoxPreference;

    .line 376
    const-string v1, "button_mhh"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMhh:Landroid/preference/CheckBoxPreference;

    .line 378
    const-string v1, "button_technology_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonTechnologyNews:Landroid/preference/CheckBoxPreference;

    .line 380
    const-string v1, "button_multi_category"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMultiCategory:Landroid/preference/CheckBoxPreference;

    .line 383
    const-string v1, "button_local_general_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal1:Landroid/preference/CheckBoxPreference;

    .line 385
    const-string v1, "button_regional_general_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional1:Landroid/preference/CheckBoxPreference;

    .line 387
    const-string v1, "button_national_general_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational1:Landroid/preference/CheckBoxPreference;

    .line 389
    const-string v1, "button_international_general_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational1:Landroid/preference/CheckBoxPreference;

    .line 392
    const-string v1, "button_local_bf_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal2:Landroid/preference/CheckBoxPreference;

    .line 394
    const-string v1, "button_regional_bf_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional2:Landroid/preference/CheckBoxPreference;

    .line 396
    const-string v1, "button_national_bf_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational2:Landroid/preference/CheckBoxPreference;

    .line 398
    const-string v1, "button_international_bf_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational2:Landroid/preference/CheckBoxPreference;

    .line 401
    const-string v1, "button_local_sports_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal3:Landroid/preference/CheckBoxPreference;

    .line 403
    const-string v1, "button_regional_sports_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional3:Landroid/preference/CheckBoxPreference;

    .line 405
    const-string v1, "button_national_sports_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational3:Landroid/preference/CheckBoxPreference;

    .line 407
    const-string v1, "button_international_sports_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational3:Landroid/preference/CheckBoxPreference;

    .line 410
    const-string v1, "button_local_entertainment_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal4:Landroid/preference/CheckBoxPreference;

    .line 412
    const-string v1, "button_regional_entertainment_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional4:Landroid/preference/CheckBoxPreference;

    .line 414
    const-string v1, "button_national_entertainment_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational4:Landroid/preference/CheckBoxPreference;

    .line 416
    const-string v1, "button_international_entertainment_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational4:Landroid/preference/CheckBoxPreference;

    .line 418
    return-void
.end method

.method protected onPause()V
    .registers 5

    .prologue
    .line 443
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 445
    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$400(I)V

    .line 447
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$500()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mHandler:Lcom/android/phone/CellBroadcastSms$MyHandler;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    .line 449
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mListLanguage:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_11

    .line 328
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mListLanguage:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$200(I)V

    .line 333
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 182
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonBcSms:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_55

    .line 183
    const-string v0, "CellBroadcastSms"

    const-string v1, "onPreferenceTreeClick: preference == mButtonBcSms."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonBcSms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 185
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mHandler:Lcom/android/phone/CellBroadcastSms$MyHandler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    .line 187
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cdma_cell_broadcast_sms"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 190
    invoke-direct {p0, v2}, Lcom/android/phone/CellBroadcastSms;->enableDisableAllCbConfigButtons(Z)V

    :cond_35
    :goto_35
    move v0, v2

    .line 322
    :goto_36
    return v0

    .line 192
    :cond_37
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mHandler:Lcom/android/phone/CellBroadcastSms$MyHandler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    .line 194
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cdma_cell_broadcast_sms"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 197
    invoke-direct {p0, v3}, Lcom/android/phone/CellBroadcastSms;->enableDisableAllCbConfigButtons(Z)V

    goto :goto_35

    .line 199
    :cond_55
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mListLanguage:Landroid/preference/ListPreference;

    if-eq p2, v0, :cond_35

    .line 201
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEmergencyBroadcast:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_70

    .line 202
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEmergencyBroadcast:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 204
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEmergencyBroadcast:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto :goto_35

    .line 206
    :cond_70
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdministrative:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_87

    .line 207
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdministrative:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 209
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdministrative:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto :goto_35

    .line 210
    :cond_87
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMaintenance:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_9e

    .line 211
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMaintenance:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0, v4}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 213
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMaintenance:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0, v4}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto :goto_35

    .line 214
    :cond_9e
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocalWeather:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_ba

    .line 215
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocalWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 217
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocalWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_35

    .line 218
    :cond_ba
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAtr:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_d6

    .line 219
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAtr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x15

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 220
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAtr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x15

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_35

    .line 221
    :cond_d6
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLafs:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_f2

    .line 222
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLafs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x16

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 223
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLafs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x16

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_35

    .line 224
    :cond_f2
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRestaurants:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_10e

    .line 225
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRestaurants:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x17

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 227
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRestaurants:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x17

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_35

    .line 228
    :cond_10e
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLodgings:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_12a

    .line 229
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLodgings:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 230
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLodgings:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_35

    .line 231
    :cond_12a
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRetailDirectory:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_146

    .line 232
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRetailDirectory:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 234
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRetailDirectory:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_35

    .line 235
    :cond_146
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdvertisements:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_162

    .line 236
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdvertisements:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 238
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdvertisements:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_35

    .line 239
    :cond_162
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonStockQuotes:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_17e

    .line 240
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonStockQuotes:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x1b

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 242
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonStockQuotes:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x1b

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_35

    .line 243
    :cond_17e
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEo:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_19a

    .line 244
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 245
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_35

    .line 246
    :cond_19a
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMhh:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1b6

    .line 247
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMhh:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x1d

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 248
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMhh:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x1d

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_35

    .line 249
    :cond_1b6
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonTechnologyNews:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1d2

    .line 250
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonTechnologyNews:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 252
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonTechnologyNews:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_35

    .line 253
    :cond_1d2
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMultiCategory:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1ee

    .line 254
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMultiCategory:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 256
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMultiCategory:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_35

    .line 257
    :cond_1ee
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal1:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_206

    .line 258
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0, v5}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 259
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0, v5}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_35

    .line 260
    :cond_206
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional1:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_220

    .line 261
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 263
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_35

    .line 264
    :cond_220
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational1:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_23a

    .line 265
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 267
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_35

    .line 268
    :cond_23a
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational1:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_254

    .line 269
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 271
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_35

    .line 272
    :cond_254
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal2:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_270

    .line 273
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 274
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_35

    .line 275
    :cond_270
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional2:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_28c

    .line 276
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 278
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_35

    .line 279
    :cond_28c
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational2:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2a8

    .line 280
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 282
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_35

    .line 283
    :cond_2a8
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational2:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2c4

    .line 284
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 286
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_35

    .line 287
    :cond_2c4
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal3:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2e0

    .line 288
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 289
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_35

    .line 290
    :cond_2e0
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional3:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2fc

    .line 291
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 293
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_35

    .line 294
    :cond_2fc
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational3:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_318

    .line 295
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 297
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_35

    .line 298
    :cond_318
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational3:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_334

    .line 299
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 301
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_35

    .line 302
    :cond_334
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal4:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_350

    .line 303
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 304
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_35

    .line 305
    :cond_350
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional4:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_36c

    .line 306
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 308
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_35

    .line 309
    :cond_36c
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational4:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_388

    .line 310
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x12

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 312
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x12

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_35

    .line 313
    :cond_388
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational4:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3a4

    .line 314
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x13

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 316
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x13

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_35

    .line 318
    :cond_3a4
    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    move v0, v3

    .line 319
    goto/16 :goto_36
.end method

.method protected onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 422
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 424
    invoke-virtual {p0}, Lcom/android/phone/CellBroadcastSms;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 426
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cdma_cell_broadcast_sms"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 430
    .local v0, settingCbSms:I
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonBcSms:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_3c

    move v2, v3

    :goto_21
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 432
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonBcSms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 433
    invoke-direct {p0, v3}, Lcom/android/phone/CellBroadcastSms;->enableDisableAllCbConfigButtons(Z)V

    .line 438
    :goto_2f
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mHandler:Lcom/android/phone/CellBroadcastSms$MyHandler;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    .line 439
    return-void

    :cond_3c
    move v2, v4

    .line 430
    goto :goto_21

    .line 435
    :cond_3e
    invoke-direct {p0, v4}, Lcom/android/phone/CellBroadcastSms;->enableDisableAllCbConfigButtons(Z)V

    goto :goto_2f
.end method
