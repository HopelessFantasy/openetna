.class Lcom/android/browser/BrowserSettings$Observer;
.super Ljava/lang/Object;
.source "BrowserSettings.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Observer"
.end annotation


# instance fields
.field private mSettings:Landroid/webkit/WebSettings;


# direct methods
.method constructor <init>(Landroid/webkit/WebSettings;)V
    .registers 2
    .parameter "w"

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/android/browser/BrowserSettings$Observer;->mSettings:Landroid/webkit/WebSettings;

    .line 152
    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 10
    .parameter "o"
    .parameter "arg"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 155
    move-object v0, p1

    check-cast v0, Lcom/android/browser/BrowserSettings;

    move-object v1, v0

    .line 156
    .local v1, b:Lcom/android/browser/BrowserSettings;
    iget-object v2, p0, Lcom/android/browser/BrowserSettings$Observer;->mSettings:Landroid/webkit/WebSettings;

    .line 158
    .local v2, s:Landroid/webkit/WebSettings;
    iget-object v3, v1, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 159
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$000(Lcom/android/browser/BrowserSettings;)I

    move-result v3

    if-nez v3, :cond_a9

    .line 161
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$100()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a4

    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a4

    .line 162
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 171
    :cond_2a
    :goto_2a
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$200(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 172
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$300(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 173
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$400(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 174
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$500(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 175
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$600(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setPluginsPath(Ljava/lang/String;)V

    .line 176
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$700(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 178
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$800(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$900()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 180
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$1000()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    .line 181
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$1100()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 182
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$1200()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 183
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$1300(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setNavDump(Z)V

    .line 184
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$1400()Landroid/webkit/WebSettings$TextSize;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 185
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$1500(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 186
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$1600(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 187
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$1700(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 190
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 192
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 194
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 195
    return-void

    .line 165
    :cond_a4
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_2a

    .line 166
    :cond_a9
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$000(Lcom/android/browser/BrowserSettings;)I

    move-result v3

    if-ne v3, v6, :cond_b6

    .line 167
    const-string v3, "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_5; en-us) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.2 Safari/525.20.1"

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto/16 :goto_2a

    .line 168
    :cond_b6
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$000(Lcom/android/browser/BrowserSettings;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 169
    const-string v3, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 2_2 like Mac OS X; en-us) AppleWebKit/525.18.1 (KHTML, like Gecko) Version/3.1.1 Mobile/5G77 Safari/525.20"

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto/16 :goto_2a
.end method
