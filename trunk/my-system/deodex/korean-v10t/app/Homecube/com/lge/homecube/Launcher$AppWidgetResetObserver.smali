.class Lcom/lge/homecube/Launcher$AppWidgetResetObserver;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppWidgetResetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/homecube/Launcher;


# direct methods
.method public constructor <init>(Lcom/lge/homecube/Launcher;)V
    .registers 3
    .parameter

    .prologue
    .line 3705
    iput-object p1, p0, Lcom/lge/homecube/Launcher$AppWidgetResetObserver;->this$0:Lcom/lge/homecube/Launcher;

    .line 3706
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3707
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 3711
    iget-object v0, p0, Lcom/lge/homecube/Launcher$AppWidgetResetObserver;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v0}, Lcom/lge/homecube/Launcher;->access$2500(Lcom/lge/homecube/Launcher;)V

    .line 3712
    return-void
.end method
