.class public Lcom/android/launcher/LauncherAppWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "LauncherAppWidgetHost.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .parameter "context"
    .parameter "hostId"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .registers 5
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "appWidget"

    .prologue
    .line 37
    new-instance v0, Lcom/android/launcher/LauncherAppWidgetHostView;

    invoke-direct {v0, p1}, Lcom/android/launcher/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
