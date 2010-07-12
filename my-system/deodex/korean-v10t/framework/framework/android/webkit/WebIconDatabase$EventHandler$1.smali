.class Landroid/webkit/WebIconDatabase$EventHandler$1;
.super Landroid/os/Handler;
.source "WebIconDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebIconDatabase$EventHandler;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebIconDatabase$EventHandler;


# direct methods
.method constructor <init>(Landroid/webkit/WebIconDatabase$EventHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Landroid/webkit/WebIconDatabase$EventHandler$1;->this$1:Landroid/webkit/WebIconDatabase$EventHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    .line 87
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_4e

    .line 119
    .end local p0
    :cond_5
    :goto_5
    return-void

    .line 89
    .restart local p0
    :pswitch_6
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/webkit/WebIconDatabase;->access$100(Ljava/lang/String;)V

    goto :goto_5

    .line 93
    .restart local p0
    :pswitch_e
    invoke-static {}, Landroid/webkit/WebIconDatabase;->access$200()V

    goto :goto_5

    .line 97
    :pswitch_12
    invoke-static {}, Landroid/webkit/WebIconDatabase;->access$300()V

    goto :goto_5

    .line 101
    :pswitch_16
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/webkit/WebIconDatabase$IconListener;

    .line 102
    .local v1, l:Landroid/webkit/WebIconDatabase$IconListener;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, url:Ljava/lang/String;
    invoke-static {v2}, Landroid/webkit/WebIconDatabase;->access$400(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    .local v0, icon:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 105
    iget-object v3, p0, Landroid/webkit/WebIconDatabase$EventHandler$1;->this$1:Landroid/webkit/WebIconDatabase$EventHandler;

    const/4 v4, 0x0

    const/16 v5, 0xa

    new-instance v6, Landroid/webkit/WebIconDatabase$EventHandler$IconResult;

    iget-object v7, p0, Landroid/webkit/WebIconDatabase$EventHandler$1;->this$1:Landroid/webkit/WebIconDatabase$EventHandler;

    invoke-direct {v6, v7, v2, v0, v1}, Landroid/webkit/WebIconDatabase$EventHandler$IconResult;-><init>(Landroid/webkit/WebIconDatabase$EventHandler;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/webkit/WebIconDatabase$IconListener;)V

    invoke-static {v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebIconDatabase$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 112
    .end local v0           #icon:Landroid/graphics/Bitmap;
    .end local v1           #l:Landroid/webkit/WebIconDatabase$IconListener;
    .end local v2           #url:Ljava/lang/String;
    :pswitch_3e
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/webkit/WebIconDatabase;->access$500(Ljava/lang/String;)V

    goto :goto_5

    .line 116
    .restart local p0
    :pswitch_46
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/webkit/WebIconDatabase;->access$600(Ljava/lang/String;)V

    goto :goto_5

    .line 87
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_e
        :pswitch_12
        :pswitch_16
        :pswitch_3e
        :pswitch_46
    .end packed-switch
.end method
