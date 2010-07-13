.class public Lcom/android/camera/PhotoAppWidgetBind;
.super Landroid/app/Activity;
.source "PhotoAppWidgetBind.java"


# static fields
.field static final EXTRA_APPWIDGET_BITMAPS:Ljava/lang/String; = "com.android.camera.appwidgetbitmaps"

.field static final TAG:Ljava/lang/String; = "PhotoAppWidgetBind"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "icicle"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/camera/PhotoAppWidgetBind;->finish()V

    .line 47
    invoke-virtual {p0}, Lcom/android/camera/PhotoAppWidgetBind;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 48
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 50
    .local v4, extras:Landroid/os/Bundle;
    const-string v9, "appWidgetIds"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 51
    .local v1, appWidgetIds:[I
    const-string v9, "com.android.camera.appwidgetbitmaps"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 53
    .local v3, bitmaps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_25

    if-eqz v3, :cond_25

    array-length v9, v1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v9, v10, :cond_2d

    .line 55
    :cond_25
    const-string v9, "PhotoAppWidgetBind"

    const-string v10, "Problem parsing photo widget bind request"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_2c
    return-void

    .line 59
    :cond_2d
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 60
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v5, Lcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;

    invoke-direct {v5, p0}, Lcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 61
    .local v5, helper:Lcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_37
    array-length v9, v1

    if-ge v6, v9, :cond_55

    .line 63
    aget v0, v1, v6

    .line 64
    .local v0, appWidgetId:I
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    invoke-virtual {v5, v0, v9}, Lcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;->setPhoto(ILandroid/graphics/Bitmap;)Z

    .line 67
    invoke-static {p0, v0, v5}, Lcom/android/camera/PhotoAppWidgetProvider;->buildUpdate(Landroid/content/Context;ILcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;)Landroid/widget/RemoteViews;

    move-result-object v8

    .line 68
    .local v8, views:Landroid/widget/RemoteViews;
    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v0, v9, v10

    invoke-virtual {v2, v9, v8}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 61
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    .line 70
    .end local v0           #appWidgetId:I
    .end local v8           #views:Landroid/widget/RemoteViews;
    :cond_55
    invoke-virtual {v5}, Lcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;->close()V

    goto :goto_2c
.end method
