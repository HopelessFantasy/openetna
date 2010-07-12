.class Landroid/webkit/WebView$UpdateTextEntryAdapter;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateTextEntryAdapter"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mUpdateMessage:Landroid/os/Message;

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter
    .parameter "name"
    .parameter "url"
    .parameter "msg"

    .prologue
    .line 3036
    iput-object p1, p0, Landroid/webkit/WebView$UpdateTextEntryAdapter;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3037
    iput-object p2, p0, Landroid/webkit/WebView$UpdateTextEntryAdapter;->mName:Ljava/lang/String;

    .line 3038
    iput-object p3, p0, Landroid/webkit/WebView$UpdateTextEntryAdapter;->mUrl:Ljava/lang/String;

    .line 3039
    iput-object p4, p0, Landroid/webkit/WebView$UpdateTextEntryAdapter;->mUpdateMessage:Landroid/os/Message;

    .line 3040
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 3043
    iget-object v2, p0, Landroid/webkit/WebView$UpdateTextEntryAdapter;->this$0:Landroid/webkit/WebView;

    invoke-static {v2}, Landroid/webkit/WebView;->access$700(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/WebView$UpdateTextEntryAdapter;->mUrl:Ljava/lang/String;

    iget-object v4, p0, Landroid/webkit/WebView$UpdateTextEntryAdapter;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebViewDatabase;->getFormData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3044
    .local v1, pastEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2f

    .line 3045
    new-instance v0, Landroid/webkit/TextDialog$AutoCompleteAdapter;

    iget-object v2, p0, Landroid/webkit/WebView$UpdateTextEntryAdapter;->this$0:Landroid/webkit/WebView;

    invoke-static {v2}, Landroid/webkit/WebView;->access$800(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/webkit/TextDialog$AutoCompleteAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 3047
    .local v0, adapter:Landroid/webkit/TextDialog$AutoCompleteAdapter;
    iget-object v2, p0, Landroid/webkit/WebView$UpdateTextEntryAdapter;->mUpdateMessage:Landroid/os/Message;

    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "adapter"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3048
    iget-object v2, p0, Landroid/webkit/WebView$UpdateTextEntryAdapter;->mUpdateMessage:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3050
    .end local v0           #adapter:Landroid/webkit/TextDialog$AutoCompleteAdapter;
    :cond_2f
    return-void
.end method
