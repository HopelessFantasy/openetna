.class Lcom/android/browser/BrowserSettings;
.super Ljava/util/Observable;
.source "BrowserSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserSettings$Observer;
    }
.end annotation


# static fields
.field private static final DESKTOP_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_5; en-us) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.2 Safari/525.20.1"

.field private static final IPHONE_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (iPhone; U; CPU iPhone OS 2_2 like Mac OS X; en-us) AppleWebKit/525.18.1 (KHTML, like Gecko) Version/3.1.1 Mobile/5G77 Safari/525.20"

.field private static final LOG_TAG:Ljava/lang/String; = "browser"

.field public static final MAX_TEXTVIEW_LEN:I = 0x50

.field public static final PREF_CLEAR_CACHE:Ljava/lang/String; = "privacy_clear_cache"

.field public static final PREF_CLEAR_COOKIES:Ljava/lang/String; = "privacy_clear_cookies"

.field public static final PREF_CLEAR_FORM_DATA:Ljava/lang/String; = "privacy_clear_form_data"

.field public static final PREF_CLEAR_HISTORY:Ljava/lang/String; = "privacy_clear_history"

.field public static final PREF_CLEAR_PASSWORDS:Ljava/lang/String; = "privacy_clear_passwords"

.field public static final PREF_DEBUG_SETTINGS:Ljava/lang/String; = "debug_menu"

.field public static final PREF_DEFAULT_TEXT_ENCODING:Ljava/lang/String; = "default_text_encoding"

.field public static final PREF_EXTRAS_RESET_DEFAULTS:Ljava/lang/String; = "reset_default_preferences"

.field public static final PREF_GEARS_SETTINGS:Ljava/lang/String; = "gears_settings"

.field public static final PREF_HOMEPAGE:Ljava/lang/String; = "homepage"

.field public static final PREF_TEXT_SIZE:Ljava/lang/String; = "text_size"

.field private static defaultFixedFontSize:I

.field private static defaultFontSize:I

.field private static flexUaString:Ljava/lang/String;

.field private static minimumFontSize:I

.field private static minimumLogicalFontSize:I

.field private static sSingleton:Lcom/android/browser/BrowserSettings;

.field private static textSize:Landroid/webkit/WebSettings$TextSize;


# instance fields
.field private autoFitPage:Z

.field private defaultTextEncodingName:Ljava/lang/String;

.field private doFlick:Z

.field private homeUrl:Ljava/lang/String;

.field private javaScriptCanOpenWindowsAutomatically:Z

.field private javaScriptEnabled:Z

.field public layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

.field private lightTouch:Z

.field private loadsImagesAutomatically:Z

.field private loginInitialized:Z

.field private mTabControl:Lcom/android/browser/TabControl;

.field private mWebSettingsToObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/webkit/WebSettings;",
            "Lcom/android/browser/BrowserSettings$Observer;",
            ">;"
        }
    .end annotation
.end field

.field private navDump:Z

.field private openInBackground:Z

.field private pluginsEnabled:Z

.field private pluginsPath:Ljava/lang/String;

.field private rememberPasswords:Z

.field private saveFormData:Z

.field private showDebugSettings:Z

.field private showSecurityWarnings:Z

.field private tracing:Z

.field private useWideViewPort:Z

.field private userAgent:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x8

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/android/browser/BrowserSettings;->flexUaString:Ljava/lang/String;

    .line 96
    sput v1, Lcom/android/browser/BrowserSettings;->minimumFontSize:I

    .line 97
    sput v1, Lcom/android/browser/BrowserSettings;->minimumLogicalFontSize:I

    .line 98
    const/16 v0, 0x10

    sput v0, Lcom/android/browser/BrowserSettings;->defaultFontSize:I

    .line 99
    const/16 v0, 0xd

    sput v0, Lcom/android/browser/BrowserSettings;->defaultFixedFontSize:I

    .line 100
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    sput-object v0, Lcom/android/browser/BrowserSettings;->textSize:Landroid/webkit/WebSettings$TextSize;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 480
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 66
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->loadsImagesAutomatically:Z

    .line 67
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->javaScriptEnabled:Z

    .line 68
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->pluginsEnabled:Z

    .line 70
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->javaScriptCanOpenWindowsAutomatically:Z

    .line 71
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->showSecurityWarnings:Z

    .line 72
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->rememberPasswords:Z

    .line 73
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->saveFormData:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->openInBackground:Z

    .line 76
    const-string v0, "http://www.google.com/m?client=ms-"

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->homeUrl:Ljava/lang/String;

    .line 77
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->loginInitialized:Z

    .line 78
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->autoFitPage:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    .line 85
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 87
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->useWideViewPort:Z

    .line 88
    iput v1, p0, Lcom/android/browser/BrowserSettings;->userAgent:I

    .line 89
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->tracing:Z

    .line 90
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->lightTouch:Z

    .line 91
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->navDump:Z

    .line 93
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->doFlick:Z

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mWebSettingsToObservers:Ljava/util/HashMap;

    .line 481
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/BrowserSettings;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/browser/BrowserSettings;->userAgent:I

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/browser/BrowserSettings;->flexUaString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()I
    .registers 1

    .prologue
    .line 59
    sget v0, Lcom/android/browser/BrowserSettings;->minimumLogicalFontSize:I

    return v0
.end method

.method static synthetic access$1100()I
    .registers 1

    .prologue
    .line 59
    sget v0, Lcom/android/browser/BrowserSettings;->defaultFontSize:I

    return v0
.end method

.method static synthetic access$1200()I
    .registers 1

    .prologue
    .line 59
    sget v0, Lcom/android/browser/BrowserSettings;->defaultFixedFontSize:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/browser/BrowserSettings;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->navDump:Z

    return v0
.end method

.method static synthetic access$1400()Landroid/webkit/WebSettings$TextSize;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/browser/BrowserSettings;->textSize:Landroid/webkit/WebSettings$TextSize;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/browser/BrowserSettings;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->lightTouch:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/browser/BrowserSettings;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->saveFormData:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/browser/BrowserSettings;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->rememberPasswords:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/browser/BrowserSettings;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->useWideViewPort:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/browser/BrowserSettings;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->loadsImagesAutomatically:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/browser/BrowserSettings;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->javaScriptEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/browser/BrowserSettings;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->pluginsEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->pluginsPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/browser/BrowserSettings;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->javaScriptCanOpenWindowsAutomatically:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->defaultTextEncodingName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()I
    .registers 1

    .prologue
    .line 59
    sget v0, Lcom/android/browser/BrowserSettings;->minimumFontSize:I

    return v0
.end method

.method static getInstance()Lcom/android/browser/BrowserSettings;
    .registers 1

    .prologue
    .line 411
    sget-object v0, Lcom/android/browser/BrowserSettings;->sSingleton:Lcom/android/browser/BrowserSettings;

    if-nez v0, :cond_b

    .line 412
    new-instance v0, Lcom/android/browser/BrowserSettings;

    invoke-direct {v0}, Lcom/android/browser/BrowserSettings;-><init>()V

    sput-object v0, Lcom/android/browser/BrowserSettings;->sSingleton:Lcom/android/browser/BrowserSettings;

    .line 414
    :cond_b
    sget-object v0, Lcom/android/browser/BrowserSettings;->sSingleton:Lcom/android/browser/BrowserSettings;

    return-object v0
.end method


# virtual methods
.method public addObserver(Landroid/webkit/WebSettings;)Lcom/android/browser/BrowserSettings$Observer;
    .registers 5
    .parameter "s"

    .prologue
    .line 384
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mWebSettingsToObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/BrowserSettings$Observer;

    .line 385
    .local v1, old:Lcom/android/browser/BrowserSettings$Observer;
    if-eqz v1, :cond_d

    .line 386
    invoke-super {p0, v1}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 388
    :cond_d
    new-instance v0, Lcom/android/browser/BrowserSettings$Observer;

    invoke-direct {v0, p1}, Lcom/android/browser/BrowserSettings$Observer;-><init>(Landroid/webkit/WebSettings;)V

    .line 389
    .local v0, o:Lcom/android/browser/BrowserSettings$Observer;
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mWebSettingsToObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    invoke-super {p0, v0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 391
    return-object v0
.end method

.method public changeUAString(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "uastring"

    .prologue
    .line 486
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/browser/BrowserSettings;->flexUaString:Ljava/lang/String;

    .line 487
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "BRW_SETTINGDB_UA_STRING_I"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$FlexInfo;->saveFlexValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 488
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[kylee] Save FlexUaString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/browser/BrowserSettings;->flexUaString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return-void
.end method

.method clearCache(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 433
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebIconDatabase;->removeAllIcons()V

    .line 434
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    if-eqz v1, :cond_17

    .line 435
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 436
    .local v0, current:Landroid/webkit/WebView;
    if-eqz v0, :cond_17

    .line 437
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 440
    .end local v0           #current:Landroid/webkit/WebView;
    :cond_17
    return-void
.end method

.method clearCookies(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 443
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 444
    return-void
.end method

.method clearFormData(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 453
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearFormData()V

    .line 454
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    if-eqz v0, :cond_14

    .line 455
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    .line 457
    :cond_14
    return-void
.end method

.method clearHistory(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 447
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 448
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/provider/Browser;->clearHistory(Landroid/content/ContentResolver;)V

    .line 449
    invoke-static {v0}, Landroid/provider/Browser;->clearSearches(Landroid/content/ContentResolver;)V

    .line 450
    return-void
.end method

.method clearPasswords(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 460
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    .line 461
    .local v0, db:Landroid/webkit/WebViewDatabase;
    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearUsernamePassword()V

    .line 462
    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearHttpAuthUsernamePassword()V

    .line 463
    return-void
.end method

.method public deleteObserver(Landroid/webkit/WebSettings;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 399
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mWebSettingsToObservers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserSettings$Observer;

    .line 400
    .local v0, o:Lcom/android/browser/BrowserSettings$Observer;
    if-eqz v0, :cond_12

    .line 401
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mWebSettingsToObservers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    invoke-super {p0, v0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 404
    :cond_12
    return-void
.end method

.method public doFlick()Z
    .registers 2

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->doFlick:Z

    return v0
.end method

.method public getHomePage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->homeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginsPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->pluginsPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTextSize()Landroid/webkit/WebSettings$TextSize;
    .registers 2

    .prologue
    .line 339
    sget-object v0, Lcom/android/browser/BrowserSettings;->textSize:Landroid/webkit/WebSettings$TextSize;

    return-object v0
.end method

.method public isLightTouch()Z
    .registers 2

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->lightTouch:Z

    return v0
.end method

.method public isLoginInitialized()Z
    .registers 2

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->loginInitialized:Z

    return v0
.end method

.method public isNavDump()Z
    .registers 2

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->navDump:Z

    return v0
.end method

.method public isTracing()Z
    .registers 2

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->tracing:Z

    return v0
.end method

.method public loadFromDb(Landroid/content/Context;)V
    .registers 6
    .parameter "ctx"

    .prologue
    const-string v3, "browser"

    .line 208
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 213
    .local v0, p:Landroid/content/SharedPreferences;
    const-string v1, "plugins"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserSettings;->pluginsPath:Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "BRW_SETTINGDB_UA_STRING_I"

    invoke-static {v1, v2}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/browser/BrowserSettings;->flexUaString:Ljava/lang/String;

    .line 219
    sget-object v1, Lcom/android/browser/BrowserSettings;->flexUaString:Ljava/lang/String;

    if-eqz v1, :cond_49

    sget-object v1, Lcom/android/browser/BrowserSettings;->flexUaString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_49

    .line 220
    const-string v1, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[kylee] flexUaString updated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/browser/BrowserSettings;->flexUaString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_45
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserSettings;->syncSharedPreferences(Landroid/content/SharedPreferences;)V

    .line 234
    return-void

    .line 223
    :cond_49
    const/4 v1, 0x0

    sput-object v1, Lcom/android/browser/BrowserSettings;->flexUaString:Ljava/lang/String;

    .line 224
    const-string v1, "browser"

    const-string v1, "[kylee] flexUaString is not updated: gettigns flex failed ! "

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45
.end method

.method public openInBackground()Z
    .registers 2

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->openInBackground:Z

    return v0
.end method

.method resetDefaultPreferences(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 466
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 468
    .local v1, p:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 469
    const/high16 v2, 0x7f05

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 472
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "BRW_SETTINGDB_HOME_URL_I"

    invoke-static {v2, v3}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, flexHomeUrl:Ljava/lang/String;
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2a

    .line 474
    invoke-virtual {p0, p1, v0}, Lcom/android/browser/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 475
    :cond_2a
    const-string v2, "browser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetDefaultPreferences :set home url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return-void
.end method

.method public setHomePage(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "url"

    .prologue
    .line 315
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 317
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "homepage"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 318
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 321
    const-string v1, "browser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[kylee] Save FlexHomeUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iput-object p2, p0, Lcom/android/browser/BrowserSettings;->homeUrl:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public setLoginInitialized(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 331
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->loginInitialized:Z

    .line 332
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 334
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "login_initialized"

    iget-boolean v2, p0, Lcom/android/browser/BrowserSettings;->loginInitialized:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 335
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 336
    return-void
.end method

.method setTabControl(Lcom/android/browser/TabControl;)V
    .registers 2
    .parameter "tabControl"

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    .line 422
    return-void
.end method

.method public showDebugSettings()Z
    .registers 2

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    return v0
.end method

.method public showSecurityWarnings()Z
    .registers 2

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->showSecurityWarnings:Z

    return v0
.end method

.method syncSharedPreferences(Landroid/content/SharedPreferences;)V
    .registers 10
    .parameter "p"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 238
    const-string v3, "homepage"

    iget-object v4, p0, Lcom/android/browser/BrowserSettings;->homeUrl:Ljava/lang/String;

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/BrowserSettings;->homeUrl:Ljava/lang/String;

    .line 241
    const-string v3, "load_images"

    iget-boolean v4, p0, Lcom/android/browser/BrowserSettings;->loadsImagesAutomatically:Z

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/browser/BrowserSettings;->loadsImagesAutomatically:Z

    .line 243
    const-string v3, "enable_javascript"

    iget-boolean v4, p0, Lcom/android/browser/BrowserSettings;->javaScriptEnabled:Z

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/browser/BrowserSettings;->javaScriptEnabled:Z

    .line 245
    const-string v3, "enable_plugins"

    iget-boolean v4, p0, Lcom/android/browser/BrowserSettings;->pluginsEnabled:Z

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/browser/BrowserSettings;->pluginsEnabled:Z

    .line 247
    const-string v3, "plugins_path"

    iget-object v4, p0, Lcom/android/browser/BrowserSettings;->pluginsPath:Ljava/lang/String;

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/BrowserSettings;->pluginsPath:Ljava/lang/String;

    .line 248
    const-string v3, "block_popup_windows"

    iget-boolean v4, p0, Lcom/android/browser/BrowserSettings;->javaScriptCanOpenWindowsAutomatically:Z

    if-nez v4, :cond_131

    move v4, v6

    :goto_3b
    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_134

    move v3, v6

    :goto_42
    iput-boolean v3, p0, Lcom/android/browser/BrowserSettings;->javaScriptCanOpenWindowsAutomatically:Z

    .line 251
    const-string v3, "show_security_warnings"

    iget-boolean v4, p0, Lcom/android/browser/BrowserSettings;->showSecurityWarnings:Z

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/browser/BrowserSettings;->showSecurityWarnings:Z

    .line 253
    const-string v3, "remember_passwords"

    iget-boolean v4, p0, Lcom/android/browser/BrowserSettings;->rememberPasswords:Z

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/browser/BrowserSettings;->rememberPasswords:Z

    .line 255
    const-string v3, "save_formdata"

    iget-boolean v4, p0, Lcom/android/browser/BrowserSettings;->saveFormData:Z

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/browser/BrowserSettings;->saveFormData:Z

    .line 257
    const-string v3, "accept_cookies"

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/CookieManager;->acceptCookie()Z

    move-result v4

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 259
    .local v0, accept_cookies:Z
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 260
    const-string v3, "open_in_background"

    iget-boolean v4, p0, Lcom/android/browser/BrowserSettings;->openInBackground:Z

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/browser/BrowserSettings;->openInBackground:Z

    .line 261
    const-string v3, "login_initialized"

    iget-boolean v4, p0, Lcom/android/browser/BrowserSettings;->loginInitialized:Z

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/browser/BrowserSettings;->loginInitialized:Z

    .line 262
    const-string v3, "text_size"

    sget-object v4, Lcom/android/browser/BrowserSettings;->textSize:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v4}, Landroid/webkit/WebSettings$TextSize;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/WebSettings$TextSize;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$TextSize;

    move-result-object v3

    sput-object v3, Lcom/android/browser/BrowserSettings;->textSize:Landroid/webkit/WebSettings$TextSize;

    .line 264
    const-string v3, "autofit_pages"

    iget-boolean v4, p0, Lcom/android/browser/BrowserSettings;->autoFitPage:Z

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/browser/BrowserSettings;->autoFitPage:Z

    .line 265
    iput-boolean v6, p0, Lcom/android/browser/BrowserSettings;->useWideViewPort:Z

    .line 266
    iget-boolean v3, p0, Lcom/android/browser/BrowserSettings;->autoFitPage:Z

    if-eqz v3, :cond_137

    .line 267
    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v3, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 271
    :goto_b1
    const-string v3, "default_text_encoding"

    iget-object v4, p0, Lcom/android/browser/BrowserSettings;->defaultTextEncodingName:Ljava/lang/String;

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/BrowserSettings;->defaultTextEncodingName:Ljava/lang/String;

    .line 275
    const-string v3, "debug_menu"

    iget-boolean v4, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    .line 278
    iget-boolean v3, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    if-eqz v3, :cond_12d

    .line 279
    const-string v3, "small_screen"

    iget-object v4, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    sget-object v5, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v4, v5, :cond_13d

    move v4, v6

    :goto_d2
    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 282
    .local v2, small_screen:Z
    if-eqz v2, :cond_13f

    .line 283
    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v3, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 294
    :goto_dc
    const-string v3, "wide_viewport"

    iget-boolean v4, p0, Lcom/android/browser/BrowserSettings;->useWideViewPort:Z

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/browser/BrowserSettings;->useWideViewPort:Z

    .line 295
    const-string v3, "enable_tracing"

    iget-boolean v4, p0, Lcom/android/browser/BrowserSettings;->tracing:Z

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/browser/BrowserSettings;->tracing:Z

    .line 296
    const-string v3, "enable_light_touch"

    iget-boolean v4, p0, Lcom/android/browser/BrowserSettings;->lightTouch:Z

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/browser/BrowserSettings;->lightTouch:Z

    .line 297
    const-string v3, "enable_nav_dump"

    iget-boolean v4, p0, Lcom/android/browser/BrowserSettings;->navDump:Z

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/browser/BrowserSettings;->navDump:Z

    .line 298
    const-string v3, "enable_flick"

    iget-boolean v4, p0, Lcom/android/browser/BrowserSettings;->doFlick:Z

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/browser/BrowserSettings;->doFlick:Z

    .line 299
    const-string v3, "user_agent"

    const-string v4, "0"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/browser/BrowserSettings;->userAgent:I

    .line 300
    iget-object v3, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getBrowserActivity()Lcom/android/browser/BrowserActivity;

    move-result-object v3

    const-string v4, "search_url"

    const-string v5, ""

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/browser/BrowserActivity;->setBaseSearchUrl(Ljava/lang/String;)V

    .line 303
    .end local v2           #small_screen:Z
    :cond_12d
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->update()V

    .line 304
    return-void

    .end local v0           #accept_cookies:Z
    :cond_131
    move v4, v7

    .line 248
    goto/16 :goto_3b

    :cond_134
    move v3, v7

    goto/16 :goto_42

    .line 269
    .restart local v0       #accept_cookies:Z
    :cond_137
    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v3, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    goto/16 :goto_b1

    :cond_13d
    move v4, v7

    .line 279
    goto :goto_d2

    .line 285
    .restart local v2       #small_screen:Z
    :cond_13f
    const-string v3, "normal_layout"

    iget-object v4, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    sget-object v5, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v4, v5, :cond_153

    move v4, v6

    :goto_148
    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 287
    .local v1, normal_layout:Z
    if-eqz v1, :cond_155

    .line 288
    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v3, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    goto :goto_dc

    .end local v1           #normal_layout:Z
    :cond_153
    move v4, v7

    .line 285
    goto :goto_148

    .line 290
    .restart local v1       #normal_layout:Z
    :cond_155
    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v3, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    goto :goto_dc
.end method

.method public toggleDebugSettings()V
    .registers 2

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    .line 372
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    iput-boolean v0, p0, Lcom/android/browser/BrowserSettings;->navDump:Z

    .line 373
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->update()V

    .line 374
    return-void

    .line 371
    :cond_f
    const/4 v0, 0x0

    goto :goto_5
.end method

.method update()V
    .registers 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->setChanged()V

    .line 429
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->notifyObservers()V

    .line 430
    return-void
.end method
