.class Landroid/pim/ContactsAsyncHelper$WorkerHandler;
.super Landroid/os/Handler;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/pim/ContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/pim/ContactsAsyncHelper;


# direct methods
.method public constructor <init>(Landroid/pim/ContactsAsyncHelper;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 177
    iput-object p1, p0, Landroid/pim/ContactsAsyncHelper$WorkerHandler;->this$0:Landroid/pim/ContactsAsyncHelper;

    .line 178
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 179
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 182
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;

    .line 184
    .local v0, args:Landroid/pim/ContactsAsyncHelper$WorkerArgs;
    iget v3, p1, Landroid/os/Message;->arg1:I

    packed-switch v3, :pswitch_data_38

    .line 212
    :goto_9
    iget-object v3, p0, Landroid/pim/ContactsAsyncHelper$WorkerHandler;->this$0:Landroid/pim/ContactsAsyncHelper;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Landroid/pim/ContactsAsyncHelper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 213
    .local v2, reply:Landroid/os/Message;
    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 214
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 215
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 216
    return-void

    .line 191
    .end local v2           #reply:Landroid/os/Message;
    :pswitch_1d
    iget-object v3, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    iget-object v4, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-static {v3, v4}, Landroid/provider/Contacts$People;->getDisplayPhotoInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 196
    .local v1, inputStream:Ljava/io/InputStream;
    if-eqz v1, :cond_34

    .line 197
    iget-object v3, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_9

    .line 202
    :cond_34
    const/4 v3, 0x0

    iput-object v3, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_9

    .line 184
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_1d
    .end packed-switch
.end method
