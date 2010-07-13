.class public Lcom/lge/android/memo/DialogLauncher$MinimiseButton;
.super Landroid/view/View;
.source "DialogLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/memo/DialogLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MinimiseButton"
.end annotation


# instance fields
.field private final StateDefault:I

.field private final StatePressed:I

.field private mBitmapDefault:Landroid/graphics/drawable/BitmapDrawable;

.field private mBitmapPressed:Landroid/graphics/drawable/BitmapDrawable;

.field private mState:I

.field private onClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/lge/android/memo/DialogLauncher;


# direct methods
.method public constructor <init>(Lcom/lge/android/memo/DialogLauncher;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 280
    iput-object p1, p0, Lcom/lge/android/memo/DialogLauncher$MinimiseButton;->this$0:Lcom/lge/android/memo/DialogLauncher;

    .line 281
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 276
    iput v2, p0, Lcom/lge/android/memo/DialogLauncher$MinimiseButton;->StateDefault:I

    .line 277
    const/4 v1, 0x2

    iput v1, p0, Lcom/lge/android/memo/DialogLauncher$MinimiseButton;->StatePressed:I

    .line 278
    iput v2, p0, Lcom/lge/android/memo/DialogLauncher$MinimiseButton;->mState:I

    .line 319
    new-instance v1, Lcom/lge/android/memo/DialogLauncher$MinimiseButton$1;

    invoke-direct {v1, p0}, Lcom/lge/android/memo/DialogLauncher$MinimiseButton$1;-><init>(Lcom/lge/android/memo/DialogLauncher$MinimiseButton;)V

    iput-object v1, p0, Lcom/lge/android/memo/DialogLauncher$MinimiseButton;->onClickListener:Landroid/view/View$OnClickListener;

    .line 282
    invoke-virtual {p0}, Lcom/lge/android/memo/DialogLauncher$MinimiseButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 283
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/lge/android/memo/DialogLauncher$MinimiseButton;->mBitmapDefault:Landroid/graphics/drawable/BitmapDrawable;

    .line 286
    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/lge/android/memo/DialogLauncher$MinimiseButton;->mBitmapPressed:Landroid/graphics/drawable/BitmapDrawable;

    .line 289
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$MinimiseButton;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1}, Lcom/lge/android/memo/DialogLauncher$MinimiseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 2

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/lge/android/memo/DialogLauncher$MinimiseButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 309
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/android/memo/DialogLauncher$MinimiseButton;->mState:I

    .line 316
    :goto_9
    invoke-virtual {p0}, Lcom/lge/android/memo/DialogLauncher$MinimiseButton;->invalidate()V

    .line 317
    return-void

    .line 311
    :cond_d
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/android/memo/DialogLauncher$MinimiseButton;->mState:I

    goto :goto_9
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    const/16 v2, 0x23

    const/4 v1, 0x0

    .line 294
    iget v0, p0, Lcom/lge/android/memo/DialogLauncher$MinimiseButton;->mState:I

    packed-switch v0, :pswitch_data_20

    .line 304
    :goto_8
    :pswitch_8
    return-void

    .line 296
    :pswitch_9
    iget-object v0, p0, Lcom/lge/android/memo/DialogLauncher$MinimiseButton;->mBitmapDefault:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1, v1, v2, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 297
    iget-object v0, p0, Lcom/lge/android/memo/DialogLauncher$MinimiseButton;->mBitmapDefault:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_8

    .line 300
    :pswitch_14
    iget-object v0, p0, Lcom/lge/android/memo/DialogLauncher$MinimiseButton;->mBitmapPressed:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1, v1, v2, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 301
    iget-object v0, p0, Lcom/lge/android/memo/DialogLauncher$MinimiseButton;->mBitmapPressed:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_8

    .line 294
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_14
    .end packed-switch
.end method
