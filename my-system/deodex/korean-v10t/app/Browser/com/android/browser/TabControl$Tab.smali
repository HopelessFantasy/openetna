.class public Lcom/android/browser/TabControl$Tab;
.super Ljava/lang/Object;
.source "TabControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/TabControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Tab"
.end annotation


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mChildTabs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/browser/TabControl$Tab;",
            ">;"
        }
    .end annotation
.end field

.field private mCloseOnExit:Ljava/lang/Boolean;

.field private mMainView:Landroid/webkit/WebView;

.field private mOriginalUrl:Ljava/lang/String;

.field private mParentTab:Lcom/android/browser/TabControl$Tab;

.field private mSavedState:Landroid/os/Bundle;

.field private mSubView:Landroid/webkit/WebView;

.field private mSubViewChromeClient:Lcom/android/browser/TabControl$SubWindowChromeClient;

.field private mSubViewClient:Lcom/android/browser/TabControl$SubWindowClient;

.field private mSubViewContainer:Landroid/view/View;

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/browser/TabControl;


# direct methods
.method private constructor <init>(Lcom/android/browser/TabControl;Landroid/webkit/WebView;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter "w"
    .parameter "closeOnExit"
    .parameter "appId"
    .parameter "url"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/browser/TabControl$Tab;->this$0:Lcom/android/browser/TabControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p2, p0, Lcom/android/browser/TabControl$Tab;->mMainView:Landroid/webkit/WebView;

    .line 187
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/TabControl$Tab;->mCloseOnExit:Ljava/lang/Boolean;

    .line 188
    iput-object p4, p0, Lcom/android/browser/TabControl$Tab;->mAppId:Ljava/lang/String;

    .line 189
    iput-object p5, p0, Lcom/android/browser/TabControl$Tab;->mOriginalUrl:Ljava/lang/String;

    .line 190
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/TabControl;Landroid/webkit/WebView;ZLjava/lang/String;Ljava/lang/String;Lcom/android/browser/TabControl$1;)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 149
    invoke-direct/range {p0 .. p5}, Lcom/android/browser/TabControl$Tab;-><init>(Lcom/android/browser/TabControl;Landroid/webkit/WebView;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/browser/TabControl$Tab;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/browser/TabControl$Tab;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/browser/TabControl$Tab;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/browser/TabControl$Tab;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/browser/TabControl$Tab;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/browser/TabControl$Tab;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/browser/TabControl$Tab;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/browser/TabControl$Tab;->mAppId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/browser/TabControl$Tab;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/browser/TabControl$Tab;->mOriginalUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/browser/TabControl$Tab;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/browser/TabControl$Tab;->mOriginalUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/browser/TabControl$Tab;)Lcom/android/browser/TabControl$SubWindowClient;
    .registers 2
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/browser/TabControl$Tab;->mSubViewClient:Lcom/android/browser/TabControl$SubWindowClient;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/browser/TabControl$Tab;Lcom/android/browser/TabControl$SubWindowClient;)Lcom/android/browser/TabControl$SubWindowClient;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/browser/TabControl$Tab;->mSubViewClient:Lcom/android/browser/TabControl$SubWindowClient;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/browser/TabControl$Tab;)Lcom/android/browser/TabControl$SubWindowChromeClient;
    .registers 2
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/browser/TabControl$Tab;->mSubViewChromeClient:Lcom/android/browser/TabControl$SubWindowChromeClient;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/browser/TabControl$Tab;Lcom/android/browser/TabControl$SubWindowChromeClient;)Lcom/android/browser/TabControl$SubWindowChromeClient;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/browser/TabControl$Tab;->mSubViewChromeClient:Lcom/android/browser/TabControl$SubWindowChromeClient;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/browser/TabControl$Tab;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/browser/TabControl$Tab;->mSubViewContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/browser/TabControl$Tab;Landroid/view/View;)Landroid/view/View;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/browser/TabControl$Tab;->mSubViewContainer:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/browser/TabControl$Tab;)Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/browser/TabControl$Tab;->mCloseOnExit:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/browser/TabControl$Tab;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/browser/TabControl$Tab;->mCloseOnExit:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/browser/TabControl$Tab;)Lcom/android/browser/TabControl$Tab;
    .registers 2
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/browser/TabControl$Tab;->mParentTab:Lcom/android/browser/TabControl$Tab;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/browser/TabControl$Tab;->mMainView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/browser/TabControl$Tab;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/browser/TabControl$Tab;->mMainView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/browser/TabControl$Tab;)Landroid/webkit/WebView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/browser/TabControl$Tab;->mSubView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/browser/TabControl$Tab;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/browser/TabControl$Tab;->mSubView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/browser/TabControl$Tab;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/browser/TabControl$Tab;->removeFromTree()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/browser/TabControl$Tab;)Ljava/util/Vector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/browser/TabControl$Tab;->mChildTabs:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/browser/TabControl$Tab;Lcom/android/browser/TabControl$Tab;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/browser/TabControl$Tab;->setParentTab(Lcom/android/browser/TabControl$Tab;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/browser/TabControl$Tab;)Landroid/os/Bundle;
    .registers 2
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/browser/TabControl$Tab;->mSavedState:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/browser/TabControl$Tab;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/browser/TabControl$Tab;->mSavedState:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/browser/TabControl$Tab;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/browser/TabControl$Tab;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/browser/TabControl$Tab;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/browser/TabControl$Tab;->mUrl:Ljava/lang/String;

    return-object p1
.end method

.method private removeFromTree()V
    .registers 4

    .prologue
    .line 282
    iget-object v2, p0, Lcom/android/browser/TabControl$Tab;->mChildTabs:Ljava/util/Vector;

    if-eqz v2, :cond_1b

    .line 283
    iget-object v2, p0, Lcom/android/browser/TabControl$Tab;->mChildTabs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/TabControl$Tab;

    .line 284
    .local v1, t:Lcom/android/browser/TabControl$Tab;
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/browser/TabControl$Tab;->setParentTab(Lcom/android/browser/TabControl$Tab;)V

    goto :goto_a

    .line 289
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #t:Lcom/android/browser/TabControl$Tab;
    :cond_1b
    iget-object v2, p0, Lcom/android/browser/TabControl$Tab;->mParentTab:Lcom/android/browser/TabControl$Tab;

    if-eqz v2, :cond_26

    .line 290
    iget-object v2, p0, Lcom/android/browser/TabControl$Tab;->mParentTab:Lcom/android/browser/TabControl$Tab;

    iget-object v2, v2, Lcom/android/browser/TabControl$Tab;->mChildTabs:Ljava/util/Vector;

    invoke-virtual {v2, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 292
    :cond_26
    return-void
.end method

.method private setParentTab(Lcom/android/browser/TabControl$Tab;)V
    .registers 5
    .parameter "parent"

    .prologue
    const-string v2, "parentTab"

    .line 253
    iput-object p1, p0, Lcom/android/browser/TabControl$Tab;->mParentTab:Lcom/android/browser/TabControl$Tab;

    .line 258
    iget-object v0, p0, Lcom/android/browser/TabControl$Tab;->mSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_11

    .line 259
    if-nez p1, :cond_12

    .line 260
    iget-object v0, p0, Lcom/android/browser/TabControl$Tab;->mSavedState:Landroid/os/Bundle;

    const-string v1, "parentTab"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 265
    :cond_11
    :goto_11
    return-void

    .line 262
    :cond_12
    iget-object v0, p0, Lcom/android/browser/TabControl$Tab;->mSavedState:Landroid/os/Bundle;

    const-string v1, "parentTab"

    iget-object v1, p0, Lcom/android/browser/TabControl$Tab;->this$0:Lcom/android/browser/TabControl;

    invoke-virtual {v1, p1}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/TabControl$Tab;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_11
.end method


# virtual methods
.method public addChildTab(Lcom/android/browser/TabControl$Tab;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/browser/TabControl$Tab;->mChildTabs:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 274
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/browser/TabControl$Tab;->mChildTabs:Ljava/util/Vector;

    .line 276
    :cond_b
    iget-object v0, p0, Lcom/android/browser/TabControl$Tab;->mChildTabs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-direct {p1, p0}, Lcom/android/browser/TabControl$Tab;->setParentTab(Lcom/android/browser/TabControl$Tab;)V

    .line 278
    return-void
.end method

.method public closeOnExit()Z
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/browser/TabControl$Tab;->mCloseOnExit:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getParentTab()Lcom/android/browser/TabControl$Tab;
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/browser/TabControl$Tab;->mParentTab:Lcom/android/browser/TabControl$Tab;

    return-object v0
.end method

.method public getSubWebView()Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/browser/TabControl$Tab;->mSubView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public getSubWebViewContainer()Landroid/view/View;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/browser/TabControl$Tab;->mSubViewContainer:Landroid/view/View;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/browser/TabControl$Tab;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTopWindow()Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/browser/TabControl$Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v0, :cond_7

    .line 199
    iget-object v0, p0, Lcom/android/browser/TabControl$Tab;->mSubView:Landroid/webkit/WebView;

    .line 201
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/browser/TabControl$Tab;->mMainView:Landroid/webkit/WebView;

    goto :goto_6
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/browser/TabControl$Tab;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/browser/TabControl$Tab;->mMainView:Landroid/webkit/WebView;

    return-object v0
.end method
