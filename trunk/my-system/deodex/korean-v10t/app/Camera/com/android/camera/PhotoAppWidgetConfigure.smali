.class public Lcom/android/camera/PhotoAppWidgetConfigure;
.super Landroid/app/Activity;
.source "PhotoAppWidgetConfigure.java"


# static fields
.field static final REQUEST_GET_PHOTO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PhotoAppWidgetConfigure"


# instance fields
.field appWidgetId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/PhotoAppWidgetConfigure;->appWidgetId:I

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, -0x1

    .line 72
    if-ne p2, v6, :cond_48

    iget v5, p0, Lcom/android/camera/PhotoAppWidgetConfigure;->appWidgetId:I

    if-eq v5, v6, :cond_48

    .line 74
    const-string v5, "data"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 76
    .local v1, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Lcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 77
    .local v2, helper:Lcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;
    iget v5, p0, Lcom/android/camera/PhotoAppWidgetConfigure;->appWidgetId:I

    invoke-virtual {v2, v5, v1}, Lcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;->setPhoto(ILandroid/graphics/Bitmap;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 78
    const/4 p2, -0x1

    .line 81
    iget v5, p0, Lcom/android/camera/PhotoAppWidgetConfigure;->appWidgetId:I

    invoke-static {p0, v5, v2}, Lcom/android/camera/PhotoAppWidgetProvider;->buildUpdate(Landroid/content/Context;ILcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 82
    .local v4, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 83
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/camera/PhotoAppWidgetConfigure;->appWidgetId:I

    aput v7, v5, v6

    invoke-virtual {v0, v5, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 85
    .end local v0           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v4           #views:Landroid/widget/RemoteViews;
    :cond_32
    invoke-virtual {v2}, Lcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;->close()V

    .line 91
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #helper:Lcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;
    :goto_35
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 92
    .local v3, resultValue:Landroid/content/Intent;
    const-string v5, "appWidgetId"

    iget v6, p0, Lcom/android/camera/PhotoAppWidgetConfigure;->appWidgetId:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0, p2, v3}, Lcom/android/camera/PhotoAppWidgetConfigure;->setResult(ILandroid/content/Intent;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/camera/PhotoAppWidgetConfigure;->finish()V

    .line 95
    return-void

    .line 87
    .end local v3           #resultValue:Landroid/content/Intent;
    :cond_48
    const/4 p2, 0x0

    goto :goto_35
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "icicle"

    .prologue
    const/16 v5, 0xc0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/camera/PhotoAppWidgetConfigure;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PhotoAppWidgetConfigure;->appWidgetId:I

    .line 50
    iget v1, p0, Lcom/android/camera/PhotoAppWidgetConfigure;->appWidgetId:I

    if-ne v1, v4, :cond_1e

    .line 51
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/PhotoAppWidgetConfigure;->setResult(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/camera/PhotoAppWidgetConfigure;->finish()V

    .line 57
    :cond_1e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 58
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    const-string v1, "noFaceDetection"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/PhotoAppWidgetConfigure;->startActivityForResult(Landroid/content/Intent;I)V

    .line 68
    return-void
.end method
