.class Lcom/android/music/MusicBrowserActivity$3;
.super Ljava/lang/Object;
.source "MusicBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MusicBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mBack:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/android/music/MusicBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/MusicBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/music/MusicBrowserActivity$3;->this$0:Lcom/android/music/MusicBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 8
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 258
    if-eqz p2, :cond_3e

    .line 259
    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity$3;->mBack:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_14

    .line 260
    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity$3;->this$0:Lcom/android/music/MusicBrowserActivity;

    invoke-static {v1}, Lcom/android/music/MusicBrowserActivity;->access$100(Lcom/android/music/MusicBrowserActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/MusicBrowserActivity$3;->mBack:Landroid/graphics/drawable/Drawable;

    .line 262
    :cond_14
    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity$3;->this$0:Lcom/android/music/MusicBrowserActivity;

    invoke-virtual {v1}, Lcom/android/music/MusicBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 263
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    new-array v1, v4, [I

    const v2, 0x101009c

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 264
    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity$3;->this$0:Lcom/android/music/MusicBrowserActivity;

    invoke-static {v1}, Lcom/android/music/MusicBrowserActivity;->access$100(Lcom/android/music/MusicBrowserActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 265
    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity$3;->this$0:Lcom/android/music/MusicBrowserActivity;

    invoke-static {v1}, Lcom/android/music/MusicBrowserActivity;->access$100(Lcom/android/music/MusicBrowserActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 270
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    :goto_3d
    return-void

    .line 267
    :cond_3e
    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity$3;->this$0:Lcom/android/music/MusicBrowserActivity;

    invoke-static {v1}, Lcom/android/music/MusicBrowserActivity;->access$100(Lcom/android/music/MusicBrowserActivity;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/MusicBrowserActivity$3;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity$3;->this$0:Lcom/android/music/MusicBrowserActivity;

    invoke-static {v1}, Lcom/android/music/MusicBrowserActivity;->access$100(Lcom/android/music/MusicBrowserActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_3d
.end method
