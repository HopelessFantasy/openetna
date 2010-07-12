.class Landroid/server/search/SearchDialogWrapper$SearchDialogHandler;
.super Landroid/os/Handler;
.source "SearchDialogWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/search/SearchDialogWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchDialogHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/search/SearchDialogWrapper;


# direct methods
.method public constructor <init>(Landroid/server/search/SearchDialogWrapper;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 236
    iput-object p1, p0, Landroid/server/search/SearchDialogWrapper$SearchDialogHandler;->this$0:Landroid/server/search/SearchDialogWrapper;

    .line 237
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 238
    return-void
.end method

.method private handleStartSearchMessage(Landroid/os/Message;)V
    .registers 13
    .parameter "msg"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 262
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    .line 263
    .local v8, msgData:Landroid/os/Bundle;
    const-string v0, "q"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, initialQuery:Ljava/lang/String;
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_34

    move v2, v10

    .line 265
    .local v2, selectInitialQuery:Z
    :goto_11
    const-string v0, "a"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 267
    .local v3, launchActivity:Landroid/content/ComponentName;
    const-string v0, "d"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 268
    .local v4, appSearchData:Landroid/os/Bundle;
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_36

    move v5, v10

    .line 269
    .local v5, globalSearch:Z
    :goto_24
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ISearchManagerCallback;

    .line 270
    .local v6, searchManagerCallback:Landroid/app/ISearchManagerCallback;
    const-string v0, "i"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 271
    .local v7, ident:I
    iget-object v0, p0, Landroid/server/search/SearchDialogWrapper$SearchDialogHandler;->this$0:Landroid/server/search/SearchDialogWrapper;

    invoke-virtual/range {v0 .. v7}, Landroid/server/search/SearchDialogWrapper;->performStartSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;ZLandroid/app/ISearchManagerCallback;I)V

    .line 273
    return-void

    .end local v2           #selectInitialQuery:Z
    .end local v3           #launchActivity:Landroid/content/ComponentName;
    .end local v4           #appSearchData:Landroid/os/Bundle;
    .end local v5           #globalSearch:Z
    .end local v6           #searchManagerCallback:Landroid/app/ISearchManagerCallback;
    .end local v7           #ident:I
    :cond_34
    move v2, v9

    .line 264
    goto :goto_11

    .restart local v2       #selectInitialQuery:Z
    .restart local v3       #launchActivity:Landroid/content/ComponentName;
    .restart local v4       #appSearchData:Landroid/os/Bundle;
    :cond_36
    move v5, v9

    .line 268
    goto :goto_24
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 242
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_28

    .line 259
    .end local p0
    :goto_5
    return-void

    .line 244
    .restart local p0
    :pswitch_6
    iget-object v0, p0, Landroid/server/search/SearchDialogWrapper$SearchDialogHandler;->this$0:Landroid/server/search/SearchDialogWrapper;

    invoke-static {v0}, Landroid/server/search/SearchDialogWrapper;->access$000(Landroid/server/search/SearchDialogWrapper;)V

    goto :goto_5

    .line 247
    :pswitch_c
    invoke-direct {p0, p1}, Landroid/server/search/SearchDialogWrapper$SearchDialogHandler;->handleStartSearchMessage(Landroid/os/Message;)V

    goto :goto_5

    .line 250
    :pswitch_10
    iget-object v0, p0, Landroid/server/search/SearchDialogWrapper$SearchDialogHandler;->this$0:Landroid/server/search/SearchDialogWrapper;

    invoke-virtual {v0}, Landroid/server/search/SearchDialogWrapper;->performStopSearch()V

    goto :goto_5

    .line 253
    :pswitch_16
    iget-object v0, p0, Landroid/server/search/SearchDialogWrapper$SearchDialogHandler;->this$0:Landroid/server/search/SearchDialogWrapper;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/server/search/SearchDialogWrapper;->performActivityResuming(I)V

    goto :goto_5

    .line 256
    :pswitch_1e
    iget-object v0, p0, Landroid/server/search/SearchDialogWrapper$SearchDialogHandler;->this$0:Landroid/server/search/SearchDialogWrapper;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/server/search/SearchDialogWrapper;->performClosingSystemDialogs(Ljava/lang/String;)V

    goto :goto_5

    .line 242
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
        :pswitch_10
        :pswitch_16
        :pswitch_1e
    .end packed-switch
.end method
