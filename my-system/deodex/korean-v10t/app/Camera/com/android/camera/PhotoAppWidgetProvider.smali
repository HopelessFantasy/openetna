.class public Lcom/android/camera/PhotoAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "PhotoAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;
    }
.end annotation


# static fields
.field static final LOGD:Z = true

.field static final TAG:Ljava/lang/String; = "PhotoAppWidgetProvider"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 106
    return-void
.end method

.method static buildUpdate(Landroid/content/Context;ILcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;)Landroid/widget/RemoteViews;
    .registers 7
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "helper"

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 98
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-virtual {p2, p1}, Lcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;->getPhoto(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 99
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_19

    .line 100
    new-instance v1, Landroid/widget/RemoteViews;

    .end local v1           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03000c

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 101
    .restart local v1       #views:Landroid/widget/RemoteViews;
    const v2, 0x7f0b0039

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 103
    :cond_19
    return-object v1
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .registers 8
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 86
    new-instance v2, Lcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;

    invoke-direct {v2, p1}, Lcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 87
    .local v2, helper:Lcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;
    move-object v1, p2

    .local v1, arr$:[I
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_8
    if-ge v3, v4, :cond_12

    aget v0, v1, v3

    .line 88
    .local v0, appWidgetId:I
    invoke-virtual {v2, v0}, Lcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;->deletePhoto(I)V

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 90
    .end local v0           #appWidgetId:I
    :cond_12
    invoke-virtual {v2}, Lcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;->close()V

    .line 91
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 14
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 73
    new-instance v2, Lcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;

    invoke-direct {v2, p1}, Lcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 74
    .local v2, helper:Lcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;
    move-object v1, p3

    .local v1, arr$:[I
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_8
    if-ge v3, v4, :cond_3e

    aget v0, v1, v3

    .line 75
    .local v0, appWidgetId:I
    const/4 v7, 0x1

    new-array v5, v7, [I

    const/4 v7, 0x0

    aput v0, v5, v7

    .line 76
    .local v5, specificAppWidget:[I
    invoke-static {p1, v0, v2}, Lcom/android/camera/PhotoAppWidgetProvider;->buildUpdate(Landroid/content/Context;ILcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;)Landroid/widget/RemoteViews;

    move-result-object v6

    .line 77
    .local v6, views:Landroid/widget/RemoteViews;
    const-string v7, "PhotoAppWidgetProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sending out views="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p2, v5, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 80
    .end local v0           #appWidgetId:I
    .end local v5           #specificAppWidget:[I
    .end local v6           #views:Landroid/widget/RemoteViews;
    :cond_3e
    invoke-virtual {v2}, Lcom/android/camera/PhotoAppWidgetProvider$PhotoDatabaseHelper;->close()V

    .line 81
    return-void
.end method
