.class Lcom/lge/homecube/Search$2;
.super Ljava/lang/Object;
.source "Search.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/homecube/Search;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/homecube/Search;


# direct methods
.method constructor <init>(Lcom/lge/homecube/Search;)V
    .registers 2
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/lge/homecube/Search$2;->this$0:Lcom/lge/homecube/Search;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3
    .parameter "animation"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lge/homecube/Search$2;->this$0:Lcom/lge/homecube/Search;

    invoke-virtual {v0}, Lcom/lge/homecube/Search;->clearAnimation()V

    .line 133
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 134
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 135
    return-void
.end method
