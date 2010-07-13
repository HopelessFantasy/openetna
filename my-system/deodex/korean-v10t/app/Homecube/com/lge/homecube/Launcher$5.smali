.class Lcom/lge/homecube/Launcher$5;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/homecube/Launcher;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/homecube/Launcher;


# direct methods
.method constructor <init>(Lcom/lge/homecube/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 937
    iput-object p1, p0, Lcom/lge/homecube/Launcher$5;->this$0:Lcom/lge/homecube/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    const-string v2, "Launcher"

    .line 939
    iget-object v0, p0, Lcom/lge/homecube/Launcher$5;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v0}, Lcom/lge/homecube/Launcher;->access$100(Lcom/lge/homecube/Launcher;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 940
    iget-object v0, p0, Lcom/lge/homecube/Launcher$5;->this$0:Lcom/lge/homecube/Launcher;

    iget-boolean v0, v0, Lcom/lge/homecube/Launcher;->mIsRotate:Z

    if-eqz v0, :cond_56

    .line 941
    iget-object v0, p0, Lcom/lge/homecube/Launcher$5;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v1, p0, Lcom/lge/homecube/Launcher$5;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v1, v1, Lcom/lge/homecube/Launcher;->mReuseData:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Launcher;->getAllAppsData(Ljava/lang/Object;)V

    .line 942
    const-string v0, "Launcher"

    const-string v0, "is mReuseData!"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :goto_21
    iget-object v0, p0, Lcom/lge/homecube/Launcher$5;->this$0:Lcom/lge/homecube/Launcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/homecube/Launcher;->access$102(Lcom/lge/homecube/Launcher;Z)Z

    .line 954
    :cond_27
    const-string v0, "Homecube"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thom21 Home.setupViews.click 11 mDrawer.isOpened: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/homecube/Launcher$5;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v2, v2, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v2}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-object v0, p0, Lcom/lge/homecube/Launcher$5;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->open()V

    .line 956
    iget-object v0, p0, Lcom/lge/homecube/Launcher$5;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 958
    return-void

    .line 945
    :cond_56
    iget-object v0, p0, Lcom/lge/homecube/Launcher$5;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mReuseData:Ljava/lang/Object;

    if-eqz v0, :cond_6d

    .line 946
    iget-object v0, p0, Lcom/lge/homecube/Launcher$5;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v1, p0, Lcom/lge/homecube/Launcher$5;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v1, v1, Lcom/lge/homecube/Launcher;->mReuseData:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Launcher;->getAllAppsData(Ljava/lang/Object;)V

    .line 949
    :goto_65
    const-string v0, "Launcher"

    const-string v0, "is not mReuseData!"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 948
    :cond_6d
    iget-object v0, p0, Lcom/lge/homecube/Launcher$5;->this$0:Lcom/lge/homecube/Launcher;

    invoke-virtual {v0}, Lcom/lge/homecube/Launcher;->getAllAppsDataOrg()V

    goto :goto_65
.end method
