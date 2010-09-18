.class Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider$2;
.super Ljava/lang/Object;
.source "OrangePhotoWidgetProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->checkReload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;


# direct methods
.method constructor <init>(Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider$2;->this$0:Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider$2;->this$0:Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;

    invoke-virtual {v0}, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->checkReload()V

    .line 157
    return-void
.end method
