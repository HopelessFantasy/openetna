.class Lcom/lge/homecube/AddToHomeScreen$AddToHomeRunnable;
.super Ljava/lang/Object;
.source "AddToHomeScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/AddToHomeScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddToHomeRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/homecube/AddToHomeScreen;


# direct methods
.method private constructor <init>(Lcom/lge/homecube/AddToHomeScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/lge/homecube/AddToHomeScreen$AddToHomeRunnable;->this$0:Lcom/lge/homecube/AddToHomeScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/homecube/AddToHomeScreen;Lcom/lge/homecube/AddToHomeScreen$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/lge/homecube/AddToHomeScreen$AddToHomeRunnable;-><init>(Lcom/lge/homecube/AddToHomeScreen;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/lge/homecube/AddToHomeScreen$AddToHomeRunnable;->this$0:Lcom/lge/homecube/AddToHomeScreen;

    invoke-static {v0}, Lcom/lge/homecube/AddToHomeScreen;->access$100(Lcom/lge/homecube/AddToHomeScreen;)I

    move-result v0

    if-nez v0, :cond_17

    .line 153
    iget-object v0, p0, Lcom/lge/homecube/AddToHomeScreen$AddToHomeRunnable;->this$0:Lcom/lge/homecube/AddToHomeScreen;

    invoke-static {v0}, Lcom/lge/homecube/AddToHomeScreen;->access$200(Lcom/lge/homecube/AddToHomeScreen;)Lcom/lge/homecube/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/homecube/Launcher;->closeAllApplications()V

    .line 154
    iget-object v0, p0, Lcom/lge/homecube/AddToHomeScreen$AddToHomeRunnable;->this$0:Lcom/lge/homecube/AddToHomeScreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/homecube/AddToHomeScreen;->access$102(Lcom/lge/homecube/AddToHomeScreen;I)I

    .line 156
    :cond_17
    return-void
.end method
