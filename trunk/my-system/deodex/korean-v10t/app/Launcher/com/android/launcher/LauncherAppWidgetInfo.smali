.class Lcom/android/launcher/LauncherAppWidgetInfo;
.super Lcom/android/launcher/ItemInfo;
.source "LauncherAppWidgetInfo.java"


# instance fields
.field appWidgetId:I

.field hostView:Landroid/appwidget/AppWidgetHostView;


# direct methods
.method constructor <init>(I)V
    .registers 3
    .parameter "appWidgetId"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/launcher/ItemInfo;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 39
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/LauncherAppWidgetInfo;->itemType:I

    .line 40
    iput p1, p0, Lcom/android/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 41
    return-void
.end method


# virtual methods
.method onAddToDatabase(Landroid/content/ContentValues;)V
    .registers 4
    .parameter "values"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/android/launcher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 46
    const-string v0, "appWidgetId"

    iget v1, p0, Lcom/android/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcom/android/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
