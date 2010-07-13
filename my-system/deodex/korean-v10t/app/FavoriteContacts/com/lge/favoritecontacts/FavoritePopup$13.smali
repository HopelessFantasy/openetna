.class Lcom/lge/favoritecontacts/FavoritePopup$13;
.super Ljava/lang/Object;
.source "FavoritePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/favoritecontacts/FavoritePopup;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/favoritecontacts/FavoritePopup;


# direct methods
.method constructor <init>(Lcom/lge/favoritecontacts/FavoritePopup;)V
    .registers 2
    .parameter

    .prologue
    .line 801
    iput-object p1, p0, Lcom/lge/favoritecontacts/FavoritePopup$13;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x60

    const v6, 0x9c45

    const/4 v5, 0x1

    .line 803
    packed-switch p2, :pswitch_data_74

    .line 837
    :goto_a
    return-void

    .line 805
    :pswitch_b
    sget-object v3, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/lge/favoritecontacts/FavoritePopup$13;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-static {v4}, Lcom/lge/favoritecontacts/FavoritePopup;->access$1000(Lcom/lge/favoritecontacts/FavoritePopup;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 807
    .local v0, personUri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoritePopup$13;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-virtual {v3}, Lcom/lge/favoritecontacts/FavoritePopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, v8}, Landroid/provider/Contacts$People;->setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B)V

    .line 810
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoritePopup$13;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-virtual {v3, v6}, Lcom/lge/favoritecontacts/FavoritePopup;->setResult(I)V

    .line 811
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoritePopup$13;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-virtual {v3}, Lcom/lge/favoritecontacts/FavoritePopup;->finish()V

    goto :goto_a

    .line 814
    .end local v0           #personUri:Landroid/net/Uri;
    :pswitch_2b
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 816
    .local v2, tintent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoritePopup$13;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-virtual {v3, v6, v2}, Lcom/lge/favoritecontacts/FavoritePopup;->setResult(ILandroid/content/Intent;)V

    .line 819
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoritePopup$13;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-virtual {v3}, Lcom/lge/favoritecontacts/FavoritePopup;->finish()V

    goto :goto_a

    .line 822
    .end local v2           #tintent:Landroid/content/Intent;
    :pswitch_3d
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 824
    .local v1, pintent:Landroid/content/Intent;
    const-string v3, "image/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    const-string v3, "crop"

    const-string v4, "true"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 826
    const-string v3, "aspectX"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 827
    const-string v3, "aspectY"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 828
    const-string v3, "outputX"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 829
    const-string v3, "outputY"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 830
    const-string v3, "return-data"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 831
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoritePopup$13;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-virtual {v3, v6, v1}, Lcom/lge/favoritecontacts/FavoritePopup;->setResult(ILandroid/content/Intent;)V

    .line 834
    iget-object v3, p0, Lcom/lge/favoritecontacts/FavoritePopup$13;->this$0:Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-virtual {v3}, Lcom/lge/favoritecontacts/FavoritePopup;->finish()V

    goto :goto_a

    .line 803
    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_b
        :pswitch_2b
        :pswitch_3d
    .end packed-switch
.end method
