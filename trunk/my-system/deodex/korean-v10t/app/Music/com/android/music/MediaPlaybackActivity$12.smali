.class Lcom/android/music/MediaPlaybackActivity$12;
.super Landroid/os/Handler;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1269
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$12;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 1270
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_58

    .line 1300
    :goto_5
    :pswitch_5
    return-void

    .line 1272
    :pswitch_6
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$12;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v2}, Lcom/android/music/MediaPlaybackActivity;->access$2000(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1273
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$12;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v2}, Lcom/android/music/MediaPlaybackActivity;->access$2000(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    goto :goto_5

    .line 1277
    :pswitch_22
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$12;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v2}, Lcom/android/music/MediaPlaybackActivity;->access$600(Lcom/android/music/MediaPlaybackActivity;)J

    move-result-wide v0

    .line 1278
    .local v0, next:J
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$12;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v2, v0, v1}, Lcom/android/music/MediaPlaybackActivity;->access$2100(Lcom/android/music/MediaPlaybackActivity;J)V

    goto :goto_5

    .line 1284
    .end local v0           #next:J
    :pswitch_2e
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$12;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f070041

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070042

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070043

    new-instance v4, Lcom/android/music/MediaPlaybackActivity$12$1;

    invoke-direct {v4, p0}, Lcom/android/music/MediaPlaybackActivity$12$1;-><init>(Lcom/android/music/MediaPlaybackActivity$12;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_5

    .line 1270
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_22
        :pswitch_2e
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
